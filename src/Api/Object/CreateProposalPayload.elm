-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.CreateProposalPayload exposing (author, clientMutationId, proposal, query)

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


{-| The exact same `clientMutationId` that was provided in the mutation input, unchanged and unused. May be used by a client to track mutations.
-}
clientMutationId : SelectionSet (Maybe String) Api.Object.CreateProposalPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The `Proposal` that was created by this mutation.
-}
proposal : SelectionSet decodesTo Api.Object.Proposal -> SelectionSet (Maybe decodesTo) Api.Object.CreateProposalPayload
proposal object_ =
    Object.selectionForCompositeField "proposal" [] object_ (identity >> Decode.nullable)


{-| Our root query field type. Allows us to run any query from our mutation payload.
-}
query : SelectionSet decodesTo RootQuery -> SelectionSet (Maybe decodesTo) Api.Object.CreateProposalPayload
query object_ =
    Object.selectionForCompositeField "query" [] object_ (identity >> Decode.nullable)


{-| Reads a single `User` that is related to this `Proposal`.
-}
author : SelectionSet decodesTo Api.Object.User -> SelectionSet (Maybe decodesTo) Api.Object.CreateProposalPayload
author object_ =
    Object.selectionForCompositeField "author" [] object_ (identity >> Decode.nullable)
