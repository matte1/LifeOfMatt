-- Autogenerated from src/Elm/Render/Running.hs
module Running.Page exposing (view)

import Plotting.LinePlots exposing (simpleLinePlot)
import Plotting.BarCharts exposing (stackedBarChart)

import Html exposing (..)
import Html.Attributes exposing (class)

view : model -> Html.Html msg
view _ =
  Html.div
    [ class "container" ]
    [ h1 [] [ text "Week 20" ]
    , ol []
      [ li [] [ text "Total Miles: 37.45005625" ]
      , li [] [ text "Total Time: 5.33" ]
      ]
    -- , simpleLinePlot "Week 20" ("Day", .day) ("Miles", .miles) thisWeek
    , stackedBarChart
        (List.map .day workouts)
        (List.map (\{ label, accessor } -> ( label, List.map accessor workouts )) series)
    ]


type alias Day = Int
type alias Workout =
    { day : Day
    , running : Float
    , climbing : Float
    , stabilizers : Float
    }

series : List { label : String, accessor : Workout -> Float }
series =
    [ { label = "Running"
      , accessor = .running
      }
    , { label = "Climbing"
      , accessor = .climbing
      }
    , { label = "Stabilizers"
      , accessor = .stabilizers
      }
    ]

workouts : List Workout
workouts =
    [ Workout 2 2.2 0 0.5
    , Workout 3 1.5 2.3 0.5
    , Workout 4 0 0 0
    , Workout 5 0 0 0
    , Workout 6 0 0 0
    , Workout 7 0 0 0
    , Workout 8 0 0 0
    ]


type alias RunningMetrics =
  { day : Float
  , miles : Float
  , totalTime : Float
  }

thisWeek : List RunningMetrics
thisWeek =
  [ RunningMetrics 1 12.22 1.42
  , RunningMetrics 2 8.24 0.59
  , RunningMetrics 3 6.93 1.20
  , RunningMetrics 4 10.06 1.32
  , RunningMetrics 5 0.00 0.0
  , RunningMetrics 6 0.00 0.0
  , RunningMetrics 7 0.00 0.0
  ]
