(* This is testing whether if the variable is in the list or not*)

fun member(x,[]) = false (*list is empty then false*)
 |   member(x,b::y) = (*recursive*)
       if x=b then true (* if x equal element b in the list then true*)
      else member(x,y);  (*recursive*)
