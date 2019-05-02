type t = int * int

let make n d = (n,d)

let numerator (n,d) = n

let denominator (n,d) = d

let toString (n,d) = "(" ^ (string_of_int n) ^ ", " ^ (string_of_int d) ^ ")"

let toReal (n,d) = let n = (float_of_int n) in let d = (float_of_int d) in n*.d

(* let reduce (n0,d0) (n1,d1) = ((n0,d0) (n1,d1)) *)

let add (n0,d0) (n1,d1) = (d1*n0,d1*d0) (d0*n1,d0*d1)

(* let mul (n0,d0) (n1,d1) = ((n0*n1), (d0*d1)) *)