module Ui.TextInput exposing
    ( TextInput, textInput, view
    , withValue, onEvents
    , withPlaceholder, withLabel
    , InputType(..), withType
    , withError
    , withStyle
    )

{-|

@docs TextInput, textInput, view

@docs withValue, onEvents

@docs withPlaceholder, withLabel

@docs InputType, withType

@docs withError

@docs withStyle

-}

import Css exposing (Style)
import Html.Styled as Html exposing (Attribute, Html)
import Html.Styled.Attributes as Attributes
import Html.Styled.Events as Events
import Html.Styled.Lazy as Lazy
import Json.Encode exposing (null)
import Ui


type TextInput msg
    = TextInput
        { name : String
        , value : Maybe String
        , placeholder : String
        , label : Maybe String
        , type_ : InputType
        , events :
            { input : String -> msg
            , blur : Maybe msg
            }
        , error : Maybe String
        , style : List Style
        }


textInput : String -> TextInput String
textInput name =
    TextInput
        { name = name
        , value = Nothing
        , placeholder = ""
        , label = Nothing
        , type_ = Text
        , error = Nothing
        , events =
            { input = identity
            , blur = Nothing
            }
        , style = []
        }


withValue : String -> TextInput msg -> TextInput msg
withValue value (TextInput config) =
    TextInput { config | value = Just value }


withPlaceholder : String -> TextInput msg -> TextInput msg
withPlaceholder placeholder (TextInput config) =
    TextInput { config | placeholder = placeholder }


withLabel : String -> TextInput msg -> TextInput msg
withLabel label (TextInput config) =
    TextInput { config | label = Just label }


withError : Maybe String -> TextInput msg -> TextInput msg
withError error (TextInput config) =
    TextInput { config | error = error }


type InputType
    = Text
    | Email
    | Password


withType : InputType -> TextInput msg -> TextInput msg
withType type_ (TextInput config) =
    TextInput { config | type_ = type_ }


onEvents :
    { input : String -> msgB
    , blur : Maybe msgB
    }
    -> TextInput msgA
    -> TextInput msgB
onEvents events (TextInput config) =
    TextInput
        { name = config.name
        , value = config.value
        , placeholder = config.placeholder
        , label = config.label
        , type_ = config.type_
        , style = config.style
        , error = config.error

        -- the new one, of a new type...
        , events = events
        }


withStyle : List Style -> TextInput msg -> TextInput msg
withStyle style (TextInput config) =
    TextInput { config | style = style }


view : TextInput msg -> Html msg
view ((TextInput config) as input_) =
    case config.value of
        Just value ->
            Lazy.lazy (baseView input_) value

        Nothing ->
            baseView input_ ""


baseView : TextInput msg -> String -> Html msg
baseView (TextInput config) value =
    Html.styled Html.div
        config.style
        []
        [ case config.label of
            Just label ->
                Html.styled Html.label
                    [ Ui.sansSerifFont
                    , Css.color <| Css.hex "444444"
                    , Css.fontSize <| Css.px 14
                    , Css.display Css.block
                    , Css.marginBottom <| Css.px 4
                    ]
                    [ Attributes.for config.name ]
                    [ Html.text label ]

            Nothing ->
                Html.text ""
        , Html.styled Html.input
            [ Css.height <| Css.px 40
            , Css.border3 (Css.px 1) Css.solid (Css.hex "444444")
            , Css.borderRadius <| Css.px 5
            , Css.lineHeight <| Css.px 38
            , Css.paddingLeft <| Css.px 16
            , Css.fontSize <| Css.px 18
            , Css.width <| Css.pct 100
            , Css.display Css.block
            , Css.outline Css.zero
            , Ui.sansSerifFont
            , Css.focus
                [ Css.borderColor Ui.primaryColor
                , Css.property "caret-color" <| Ui.primaryColor.value
                ]
            ]
            [ inputTypeToAttr config.type_
            , Attributes.value value
            , Attributes.name config.name
            , Attributes.placeholder config.placeholder

            -- events
            , Events.onInput config.events.input
            , case config.events.blur of
                Just msg ->
                    Events.onBlur msg

                Nothing ->
                    Attributes.property "Ui.TextInput.onBlur" null
            ]
            []
        , case config.error of
            Just error ->
                Html.styled Html.div
                    [ Ui.sansSerifFont
                    , Css.fontSize <| Css.px 14
                    , Css.color Ui.errorColor
                    , Css.marginTop <| Css.px 5
                    ]
                    []
                    [ Html.text error ]

            Nothing ->
                Html.text ""
        ]


inputTypeToAttr : InputType -> Attribute msg
inputTypeToAttr inputType =
    case inputType of
        Text ->
            Attributes.type_ "text"

        Email ->
            Attributes.type_ "email"

        Password ->
            Attributes.type_ "password"
