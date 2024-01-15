(* The following lines of code does the following:
   1. Accepts a list of integers
   2. Emits an error message if the list is not a multiple of 10 in length
   3. Returns or prints a list of integers based on the input list, but with items at positions which are a multiple of 2 or 3 removed
*)

let process_list lst =
  if List.length lst mod 10 <> 0 then
    failwith "Error: List length must be a multiple of 10"
  else
    let rec process_helper acc i = function
      | [] -> List.rev acc
      | x :: xs ->
        if i mod 2 <> 0 && i mod 3 <> 0 then
          process_helper (x :: acc) (i + 1) xs
        else
          process_helper acc (i + 1) xs
    in
    process_helper [] 1 lst
