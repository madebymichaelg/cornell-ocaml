type t = int * int

let make n d = (n,d)

let numerator (n,d) = n

let denominator (n,d) = d

let toString (n,d) = "(" ^ (string_of_int n) ^ ", " ^ (string_of_int d) ^ ")"

let toReal (n,d) = (float_of_int n) *. (float_of_int d)
(*
there is a syntax error here that I don't unerstand
the compiler is telling me, if I uncomment any of the following functions
that there is a syntax error and "This is not a function; it cannot be applied"
I've read online that this has to do with how binary functions are evauluated, 
but I'm moving on for now
*)
(* let reduce (n0,d0) (n1,d1) = ((n0,d0) (n1,d1)) *)

(* let add (n0,d0) (n1,d1) = (d1*n0,d1*d0) (d0*n1,d0*d1) *)

(* let mul (n0,d0) (n1,d1) = ((n0*n1), (d0*d1)) *)