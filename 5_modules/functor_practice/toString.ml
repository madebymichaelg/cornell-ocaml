module type ToString = sig
	type t

	val to_string : t -> string
end

module Print (M:ToString) = struct
	let print x = M.to_string x
end

module Int = struct
	type t = int

	let to_string x = string_of_int x
end

module MyString = struct
	type t = string

	let to_string x = x
end

module PrintInt = Print(Int)
module PrintString = Print(MyString)

module StringWithPrint = struct
	include PrintString
	include String
end