open Parmap
open Printf
open Unix

let input = [10; 10; 10;];;

let f secs = sleep secs;;

printf("Starting map\n");
parmap ~ncores:4 f (L input);;
printf("Finishing map\n");
