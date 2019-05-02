module type ToString = sig
	type t

	val lookup : t -> string
end