(* module type ComplexSig = sig
  val zero : float*float
  val add : float*float -> float*float -> float*float
end

module Complex = struct
  let zero = 0., 0.
  let add (r1,i1) (r2,i2) = r1 +. r2, i1 +. i2
end *)

module type ComplexSig = sig
	type point = float * float
	val zero :  point
	val add :  point ->  point ->  point
end

module Complex : ComplexSig = struct
	type point = float * float
	let zero = 0., 0.
	let add (r1,i1) (r2,i2) = r1 +. r2, i1 +. i2
end