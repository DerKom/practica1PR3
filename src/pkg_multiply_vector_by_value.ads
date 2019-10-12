package pkg_multiply_vector_by_value with SPARK_Mode is

   type T_Vector is array (Natural range <>) of Integer; 
   
   procedure Multiply_by_Value (Vector : in out T_Vector; Value : in Integer)
   
   with
     --Global  => null,
     --Depends => (Search_Value_Inside'Result => (Vector, Value)),
     Pre  => TRUE,
     Post => TRUE;
      
   

end pkg_multiply_vector_by_value;
