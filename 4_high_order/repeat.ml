let rec repeat f n x = if n>1 then repeat f (n-1) (f x) else (f x)

