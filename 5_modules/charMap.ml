module CharMap = Map.Make(Char);;

let map = CharMap.empty;;

let map = CharMap.add 'A' "Alpha" map;;
let map = CharMap.add 'E' "Echo" map;;
let map = CharMap.add 'S' "Sierra" map;;
let map = CharMap.add 'V' "Victor" map;;

CharMap.find 'A' map;;

CharMap.mem 'A' map;;

CharMap.min_binding map;;