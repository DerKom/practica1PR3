package pkg_sum_of_vectors with SPARK_Mode is
   
   type T_Vector is array (Natural range <>) of Integer; 
   
   function Sum_of_Vectors (Vector1 : in T_Vector; Vector2 : in T_Vector) return T_Vector
   
   with
     --Global  => null,
     --Depends => (Search_Value_Inside'Result => (Vector, Value)),
     Pre  => TRUE,
     Post => TRUE;
      
   

end pkg_sum_of_vectors;
