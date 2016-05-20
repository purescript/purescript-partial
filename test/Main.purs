module Test.Main where

import Partial (crashWith)
import Partial.Unsafe (unsafePartial)

f :: Partial => Int -> Int
f 0 = 0
f _ = crashWith "f: partial function"

safely :: Int
safely = unsafePartial (f 0)

main :: forall a. a -> {}
main _ = {}
