## Module Partial

Some partial helper functions.

#### `crash`

``` purescript
crash :: forall a. (Partial) => a
```

A partial function which crashes on any input with a default message.

#### `crashWith`

``` purescript
crashWith :: forall a. (Partial) => String -> a
```

A partial function which crashes on any input with the specified message.


