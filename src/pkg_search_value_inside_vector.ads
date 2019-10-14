package pkg_search_value_inside_vector with SPARK_Mode is 

   Not_Found : constant := -1; 
   type T_Vector is array (Natural range <>) of Integer; 
   
   function Search_Value_Inside (Vector : in T_Vector; Value : in Integer) return Integer
   
   with
     Global  => null,
     Depends => (Search_Value_Inside'Result => (Vector, Value)),
     --Pre  => ,
     Post => (if Search_Value_Inside'Result /= Not_Found then
                Vector(Search_Value_Inside'Result) = Value else
                  (for all J in Vector'Range => Vector(J) /= Value))
                ;
      
   

end pkg_search_value_inside_vector;
