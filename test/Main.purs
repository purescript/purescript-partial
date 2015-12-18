module Test.Main where

data X = X | Y

f :: Partial => X -> X
f X = X

safely :: X
safely = Partial.Unsafe.unsafePartial (f X)

main :: forall a. a -> {}
main _ = {}
