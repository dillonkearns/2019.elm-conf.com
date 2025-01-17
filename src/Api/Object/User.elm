-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.User exposing (AuthoredProposalsOptionalArguments, authoredProposals, createdAt, firstTimeSpeaker, id, isReviewer, name, nodeId, speakerUnderrepresented, updatedAt)

import Api.Enum.ProposalsOrderBy
import Api.InputObject
import Api.Interface
import Api.Object
import Api.Scalar
import Api.ScalarCodecs
import Api.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| A globally unique identifier. Can be used in various places throughout the system to identify this single value.
-}
nodeId : SelectionSet Api.ScalarCodecs.Id Api.Object.User
nodeId =
    Object.selectionForField "ScalarCodecs.Id" "nodeId" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


id : SelectionSet Int Api.Object.User
id =
    Object.selectionForField "Int" "id" [] Decode.int


name : SelectionSet String Api.Object.User
name =
    Object.selectionForField "String" "name" [] Decode.string


firstTimeSpeaker : SelectionSet Bool Api.Object.User
firstTimeSpeaker =
    Object.selectionForField "Bool" "firstTimeSpeaker" [] Decode.bool


speakerUnderrepresented : SelectionSet Bool Api.Object.User
speakerUnderrepresented =
    Object.selectionForField "Bool" "speakerUnderrepresented" [] Decode.bool


isReviewer : SelectionSet Bool Api.Object.User
isReviewer =
    Object.selectionForField "Bool" "isReviewer" [] Decode.bool


createdAt : SelectionSet Api.ScalarCodecs.Datetime Api.Object.User
createdAt =
    Object.selectionForField "ScalarCodecs.Datetime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDatetime |> .decoder)


updatedAt : SelectionSet Api.ScalarCodecs.Datetime Api.Object.User
updatedAt =
    Object.selectionForField "ScalarCodecs.Datetime" "updatedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDatetime |> .decoder)


type alias AuthoredProposalsOptionalArguments =
    { first : OptionalArgument Int
    , offset : OptionalArgument Int
    , orderBy : OptionalArgument (List Api.Enum.ProposalsOrderBy.ProposalsOrderBy)
    , condition : OptionalArgument Api.InputObject.ProposalCondition
    }


{-| Reads and enables pagination through a set of `Proposal`.

  - first - Only read the first `n` values of the set.
  - offset - Skip the first `n` values.
  - orderBy - The method to use when ordering `Proposal`.
  - condition - A condition to be used in determining which values should be returned by the collection.

-}
authoredProposals : (AuthoredProposalsOptionalArguments -> AuthoredProposalsOptionalArguments) -> SelectionSet decodesTo Api.Object.Proposal -> SelectionSet (List decodesTo) Api.Object.User
authoredProposals fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, offset = Absent, orderBy = Absent, condition = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "offset" filledInOptionals.offset Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.ProposalsOrderBy.toString |> Encode.list), Argument.optional "condition" filledInOptionals.condition Api.InputObject.encodeProposalCondition ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "authoredProposals" optionalArgs object_ (identity >> Decode.list)
