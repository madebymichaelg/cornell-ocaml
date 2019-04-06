let rec fib n = if n < 2 then n
	else fib(n-1) + fib(n-2);;

(*Lesson: use rec; or elase it'll use the last implementation of fib*)