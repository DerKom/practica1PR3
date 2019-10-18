package pkg_mostly_odds with SPARK_Mode is

   type T_Vector is array (Positive range <>) of Integer; 
   
   function Mostly_Odds (Vector : in T_Vector) return Boolean
     
     with
   
       Global => null,
       Depends => (Mostly_Odds'Result => (Vector)),
       Pre => (Vector'Length > 0) and then (Vector'Length < 500) and then 
     (Vector'First = 1) and then (Vector'Last /= Vector'First),
     Post => Mostly_Odds'Result or else Mostly_Odds'Result = FALSE
   ;
   

end pkg_mostly_odds;
