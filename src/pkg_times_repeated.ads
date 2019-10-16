package pkg_times_repeated with SPARK_Mode is

   Not_Found : constant := -1; 
   type T_Vector is array (Natural range <>) of Integer; 
   
   
   procedure Times_Repeated (Vector : in T_Vector; Value : in Integer; Result : out Integer)
   
   with
     Global  => null,
     Depends => (Result => (Vector, Value)),
     Pre  => (Vector'Length < 500) and then (Vector'Length >0) and then
     (Vector'First=0)
     ,
     Post => 
       -- Se encuentra 
     ((if Result /= Not_Found then
        (for some J in Vector'Range => Vector(J) = Value)
       else
        (for all J in Vector'Range => Vector(J) /= Value )) 
      and then
     (Result in Not_Found .. Vector'Length)
     )
   ;
      

end pkg_times_repeated;
