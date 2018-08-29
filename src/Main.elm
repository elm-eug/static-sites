module Main exposing (decodeModel, view)

import Html exposing (text)
import Json.Decode


view model =
    "My name is "
        ++ model.name
        ++ " and I am "
        ++ (model.age |> toString)
        ++ " years old!"
        |> text


type alias Model =
    { age : Int
    , name : String
    }


decodeModel : Json.Decode.Decoder Model
decodeModel =
    Json.Decode.map2 Model
        (Json.Decode.field "age" Json.Decode.int)
        (Json.Decode.field "name" Json.Decode.string)
