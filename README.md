# Filter Operation on a list 
A simple filter operation on a list in OCaml

## Folder Structure
ocmal_project/

|-- main.ml             (* Main source file containing the program logic *)
|-- test_cases.ml       (* Test suite for the project *)
|-- dune
|-- dune-project        (* Project metadata file *)
|-- README.md           (* Project documentation or README file *)

## The Program Logic
The program does the following:
1.Accepts a list of integers as input.
2.Raises an error message if the length of the input list is not a multiple of 10.
3.Returns or displays a list of integers derived from the input list. Items at positions that are multiples of both 2 and 3 are removed from the result.

## The Test Suite:
Test Cases to test the written program icludes the following test cases
   1. Valid output on valid input
   2. If the list length is not a multiple of 10
   3. Empty list

## Test Results
After running dune runtest in the respectcive folder got the following result:




