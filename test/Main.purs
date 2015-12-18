module Test.Main where

f :: Partial => Int -> Int
f 0 = 0
f _ = Partial.crashWith "f: partial function"

safely :: Int
safely = Partial.Unsafe.unsafePartial (f 0)

main :: forall a. a -> {}
main _ = {}
