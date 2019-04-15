let twice lst f g = List.map f (List.map g lst))

let once lst f g = List.map (fun x -> f (g x)) lst