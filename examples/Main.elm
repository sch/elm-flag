module Main exposing (..)

import Flag
import Html exposing (Html)
import Html.Attributes


main : Html msg
main =
    Html.div
        [ Html.Attributes.style
            [ ( "font-family", String.join "," fonts )
            , ( "margin", "0 auto" )
            , ( "max-width", "36em" )
            , ( "line-height", "1.6" )
            , ( "padding", "1em" )
            , ( "padding-top", "10em" )
            ]
        ]
        [ Html.text "With this library, you can embed tiny little flags inline. Perhaps you're from merry old ", Flag.gb, Html.text " England? Or maybe you're a ", Flag.ca, Html.text " Canadian citizen? Whatever country you hail from, this package should have your flag. Checkout ", docsLink "the docs", Html.text " to see the full list of countries or ", repoLink "the github page", Html.text " to see how it's implemented." ]


docsLink : String -> Html msg
docsLink =
    link "http://package.elm-lang.org/packages/sch/elm-flag/latest"


repoLink : String -> Html msg
repoLink =
    link "https://github.com/sch/elm-flag"


link : String -> String -> Html msg
link url text =
    Html.a [ Html.Attributes.href url ] [ Html.text text ]


fonts : List String
fonts =
    [ "-apple-system"
    , "BlinkMacSystemFont"
    , "Segoe UI"
    , "Roboto"
    , "Oxygen"
    , "Ubuntu"
    , "Cantarell"
    , "Open Sans"
    , "Helvetica Neue"
    , "sans-serif"
    ]
