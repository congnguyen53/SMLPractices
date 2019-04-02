fun partition (pivot, nil, opLT) = (nil, nil)
|   partition (pivot, first::rest, opLT) =
      let
        val (small, large) = partition (pivot, rest, opLT)
      in
        if opLT (first, pivot)
          then (first::small, large)
          else (small, first::large)
      end;

fun quickSort (nil, opLT) = nil
|   quickSort ([single], opLT) = [single]
|   quickSort (first::rest, opLT) =
      let
        val (small, large) = partition(first, rest, opLT)
      in
        quickSort(small, opLT) @ [first] @ quickSort(large, opLT)
      end;

fun icmp (a, b) = a < b;
fun rcmp (a:real, b) = a < b;
fun rrcmp(a:real, b) = a >b;
fun ircmp (a, b) = a > b;
