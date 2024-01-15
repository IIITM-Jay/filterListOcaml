(* Test Cases to test the written program 
   1. Valid output on valid input
   2. If the list length is not a multiple of 10
   3. Empty list*)

open Main
open Alcotest

let test_cases =
  [
    "Test Case 1 - Genearting a valid filtered list on valid input", `Quick, (fun () ->
      let input_list = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20] in
      let result = process_list input_list in
      let expected_result = [1; 5; 7; 11; 13; 17; 19] in
      Alcotest.(check (list int)) "result" expected_result result
    );

    "Test Case 2 - Error message if the length of the list is not a multiple of 10", `Quick, (fun () ->
      let input_list = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15] in
      try
        ignore (process_list input_list);  
        failwith "Expected an error for a list with more than 10 elements, but no error was raised"
      with
      | Failure msg -> check string "error message" "Error: List length must be a multiple of 10" msg
    );

    "Test Case 3 - Empty List", `Quick, (fun () ->
      let input_list = [] in
      let result = process_list input_list in
      Alcotest.(check (list int)) "result" [] result
    );
  ]

let () =
  let passed_tests = ref 0 in

  Alcotest.run "filter_list_test_suite"
    [ "test_suite",
      List.map
        (fun (name, config, test) ->
          name,
          config,
          (fun () ->
            try
              test ();
              incr passed_tests;
              Printf.printf "Test passed: %s\n" name
            with
            | Alcotest.Test_error -> Printf.printf "Test failed: %s\n" name
          )
        )
        test_cases
    ]; 

  Printf.printf "Passed %d out of %d test cases\n" !passed_tests (List.length test_cases)
