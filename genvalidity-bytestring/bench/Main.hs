{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}

module Main where

import Criterion.Main as Criterion
import Data.ByteString as Strict
import Data.ByteString.Lazy as Lazy
import Data.GenValidity
import Data.GenValidity.ByteString ()
import Data.GenValidity.Criterion

main :: IO ()
main =
  Criterion.defaultMain
    [ bgroup
        "Instances"
        [ genValidBench @Strict.ByteString,
          genValidBench @Lazy.ByteString
        ],
      bgroup
        "Approaches"
        [ genBenchSizes "SB.pack <$> genValid" (Strict.pack <$> genValid),
          genBenchSizes "LB.pack <$> genValid" (Lazy.pack <$> genValid)
        ]
    ]
