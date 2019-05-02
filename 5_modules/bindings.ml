(* the first and third are the same *)

CharMap.(empty |> add 'x' 0 |> add 'y' 1 |> bindings);;

CharMap.(empty |> add 'y' 1 |> add 'x' 0 |> bindings);;

CharMap.(empty |> add 'x' 2 |> add 'y' 1 |> remove 'x' |> add 'x' 0 |> bindings);;