{-# OPTIONS_GHC -fno-warn-orphans #-}

module Data.Validity.HashSet where

import Data.Validity
import Data.Validity.HashMap ()

import Data.HashSet (HashSet)
import qualified Data.HashSet as HS

-- | A 'HashSet' of things is valid if all the elements are valid and
-- the underlying 'HashMap' is valid.
instance Validity v => Validity (HashSet v) where
    validate = delve "HashSet elements" . HS.toMap
