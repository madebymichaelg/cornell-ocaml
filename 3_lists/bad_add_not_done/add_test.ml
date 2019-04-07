open OUnit2
open Add

let tests = "test suite for add" >::: [
  "0 + 0"  >:: (fun _ -> assert_equal 0 (add 0 0));
  "3 + 4"  >:: (fun _ -> assert_equal 7 (add 3 4));
  "5 + 7"  >:: (fun _ -> assert_equal 12 (add 5 7));
]

let _ = run_test_tt_main tests