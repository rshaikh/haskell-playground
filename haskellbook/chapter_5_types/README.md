#Chapter 4 - 
###Types
- Expressions reduced to values; every value has a type
- `data Bool = True | False` ; here `Bool` is type constructor and `True` `False` are data constructor
- Both type and data constructors may have parameters
- `(->)` is a type constructor baked into language, it takes argument but has no data constructor
```
Prelude> :info (->)
data (->) a b
```
- Read more about [Type constructor vs Data constructor](https://stackoverflow.com/a/18205862)
- A type variable can be constrained with Typeclasses
```
Prelude> :type (+)
(+) :: Num a => a -> a -> a
```
- Types can have multiple constraints
```
(Ord a, Num a) => a -> Ordering
```

###Currying
- Possible because of `->`, it's an infix right associative type constructor
- All functions take one argument and return one result
- `->` is type constructor for functions `a -> a -> a` represents successive function application
- Partial application of functions
```
module Exercise1 where

addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

addTen = addStuff 5
fifteen = addTen 5

```

- `addStuff :: Integer -> Integer -> Integer` can be represented as `addStuff :: Integer -> (Integer -> Integer)`; takes
an Integer argument and returns a function which in turn takes Integer arg and return Integer

### Polymorphism 
- Made of many forms
- Type signature may have three kinds of types: concrete, constrained polymorphic and parametrically polymorphic
- Constrained polymorphism also known as ad-hoc polymorphism in haskell
- Parametric polymorphism refers to type variables
- Constrained polymorphism puts typeclass constraints on type variables 
- For example, identity function. `id :: a -> a`, here `a` is not constrained by any type class

### Type inference
- Haskell applies the most generic type when no type declared

### Exercises
- Only one version will typecheck `co :: (b -> c) -> (a -> b) -> (a -> c); co = undefined`. Found very nice explanation at - https://stackoverflow.com/a/22450026/2738828 
  
 
 