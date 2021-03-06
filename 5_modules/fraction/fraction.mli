(* A fraction is a rational number p/q, where q != 0.*)
type t

(* [make n d] is n/d. Requires d != 0. *)
val make : int -> int -> t

val numerator   : t -> int
val denominator : t -> int
val toString    : t -> string
val toReal      : t -> float

val add : t -> t -> t
val mul : t -> t -> t