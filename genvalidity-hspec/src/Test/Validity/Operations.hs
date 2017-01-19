{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE ScopedTypeVariables   #-}
module Test.Validity.Operations
    ( -- * Properties of operations

    -- ** Identity element

    -- *** Left identity
      leftIdentityOnElemWithEquality
    , leftIdentityOnGenWithEquality
    , leftIdentityOnGen
    , leftIdentityOnValid
    , leftIdentity
    , leftIdentityOnArbitrary

    -- *** Right identity
    , rightIdentityOnElemWithEquality
    , rightIdentityOnGenWithEquality
    , rightIdentityOnGen
    , rightIdentityOnValid
    , rightIdentity
    , rightIdentityOnArbitrary

    -- *** Identity
    , identityOnGen
    , identityOnValid
    , identity
    , identityOnArbitrary

    -- ** Associativity
    , associativeOnGens
    , associativeOnValids
    , associative
    , associativeOnArbitrary

    -- ** Commutativity
    , commutativeOnGens
    , commutativeOnValids
    , commutative
    , commutativeOnArbitrary
    ) where

import           Test.Validity.Operations.Identity
import           Test.Validity.Operations.Associativity
import           Test.Validity.Operations.Commutativity
