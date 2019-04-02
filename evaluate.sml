 (*Polynomial Equation*)
 
 fun evaluate( p:real list, x:real): real = (* real number list and real number as x*)
         case p of
           nil => 0.0         
         | a::q => a + x*evaluate(q, x);  (*recursion function*)
