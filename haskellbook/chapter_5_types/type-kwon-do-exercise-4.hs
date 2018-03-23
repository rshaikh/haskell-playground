--Implement missing parts
--munge :: (x -> y) -> (y -> (w, z)) -> x -> w
--munge = ???

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
--munge f g = \x -> undefined
munge f g = \x -> fst(g(f(x)))
