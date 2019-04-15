let uncurried_append (a,b) = List.append a b

let uncurried_compare (a,b) = Char.compare a b

let uncurried_max (a,b) = Pervasives.max a b

let uncurry f (a,b) = f a b