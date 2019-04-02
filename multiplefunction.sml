
fun del3 (a::b::c::d) = [a,b]@d;


fun max x = maxhelper (tl x, hd x)
fun maxhelper ([], n) = n
 |  maxhelper ((x::xs), n) =
      if x > n then maxhelper (xs, x)
      else maxhelper (xs, n);


fun isPrime(a:int) =if(a<2) then false else if (a = 2) 
then true else let fun recur (i)= if ( i * i > a) 
then true else if( ((a mod i )= 0) andalso (i <> a)) 
then false else (recur(i+1)) in recur 2 end;
