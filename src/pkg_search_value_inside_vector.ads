package pkg_search_value_inside_vector with SPARK_Mode is 

   
   type T_Vector is array (Natural range <>) of Integer; 
   
   function Search_Value_Inside (Vector : in T_Vector; Value : in Integer) return Integer
   
   with
     Global  => null,
     --Depends => (Search_Value_Inside'Result => (Vector, Value)),
     Pre  => TRUE,
     Post => TRUE;
      
   

end pkg_search_value_inside_vector;
