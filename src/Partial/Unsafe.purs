-- | Utilities for working with partial functions.
module Partial.Unsafe
  ( unsafePartial
  , unsafePartialBecause
  , unsafeCrashWith
  , unsafeShowAnyAndCrashWith
  ) where

import Partial (crashWith)

-- | Discharge a partiality constraint, unsafely.
foreign import unsafePartial :: forall a. (Partial => a) -> a

foreign import showAny :: forall a. a -> String
foreign import concatString :: String -> String -> String

-- | *deprecated:* use `unsafePartial` instead.
unsafePartialBecause :: forall a. String -> (Partial => a) -> a
unsafePartialBecause _ x = unsafePartial x

-- | A function which crashes with the specified error message.
unsafeCrashWith :: forall a. String -> a
unsafeCrashWith msg = unsafePartial (crashWith msg)

-- | A function which crashes with the specified error message and `show`s the
-- | primitive, underlying representation of the second argument. (This allows
-- | us to debug without incurring a `Show` constraint.)
unsafeShowAnyAndCrashWith :: forall a b. String -> a -> b
unsafeShowAnyAndCrashWith msg a = unsafeCrashWith (concatString msg (showAny a))
