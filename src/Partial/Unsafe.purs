-- | Utilities for working with partial functions.
module Partial.Unsafe 
  ( unsafePartial
  ) where

-- | Discharge a partiality constraint, unsafely.
foreign import unsafePartial :: forall a. (Partial => a) -> a
