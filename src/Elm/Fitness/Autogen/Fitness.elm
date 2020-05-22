-- Autogenerated from src/Elm/Render/Fitness.hs
module Fitness.Autogen.Fitness exposing (view)

import Plotting.BarCharts exposing (stackedBarChart)
import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (class, css, href, src)
import Html.Styled.Events exposing (onClick)

view : Html msg
view =
  div
  [ class "container" ]
  [ h1 [ css
        [ textAlign center
        , padding (px 20)
        ]
      ] [ text "2020-05-20" ]
  , fromUnstyled <|
     stackedBarChart
       (List.map .day data)
       (List.map (\{ label, accessor } -> ( label, List.map accessor data )) series)
  , form
    []
    -- [ input []
        [ select  []
          [ option [] [ text "a" ]
          , option [] [ text "b" ]
          , option [] [ text "c" ]
          , option [] [ text "d" ]
          ]
        ]
    -- ]
  ]

type alias Workout =
  { day : Int
  , run: Float
  , trailrun: Float
  , abs: Float
  , yoga: Float
  , bouldering: Float
  , rollout: Float
  , wriststabilizer: Float
  , shoulderstabili: Float
  }

series : List { label : String, accessor : Workout -> Float }
series =
  [ {label = "Run", accessor = .run}
  , {label = "TrailRun", accessor = .trailrun}
  , {label = "Abs", accessor = .abs}
  , {label = "Yoga", accessor = .yoga}
  , {label = "Bouldering", accessor = .bouldering}
  , {label = "RollOut", accessor = .rollout}
  , {label = "WristStabilizer", accessor = .wriststabilizer}
  , {label = "ShoulderStabili", accessor = .shoulderstabili}
  ]

data =
  [ Workout 1 0.00 1.69 0.00 0.00 0.00 0.12 0.00 0.00
  , Workout 2 0.00 0.99 0.21 0.00 0.00 0.00 0.00 0.00
  , Workout 3 0.00 1.34 0.20 0.00 0.00 0.16 0.21 8.17e-02
  , Workout 4 1.53 0.00 0.00 0.93 0.33 0.11 0.21 0.00
  , Workout 5 0.00 0.00 0.00 0.00 0.00 0.00 0.00 0.00
  , Workout 6 0.00 0.00 0.00 0.00 0.00 0.00 0.00 0.00
  , Workout 7 0.00 0.00 0.00 0.00 0.00 0.00 0.00 0.00
  ]