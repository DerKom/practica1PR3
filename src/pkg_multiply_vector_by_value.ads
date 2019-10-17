package pkg_multiply_vector_by_value with SPARK_Mode is
   
   
   
   type T_Vector is array (Natural range <>) of Natural; 
 
   
   procedure Multiply_by_Value (Vector : in out T_Vector; Value : in Integer)
   
   with
     Global  => null,
       Depends => (Vector => (Vector, Value)),
       Pre  => (Vector'Length > 0) and then (Vector'Length < 500) and then 
     (Vector'First = 0) and then (Vector'Last /= Vector'First) and then
     --Casos
     (for all J in Vector'Range =>
        -- Positivo * Positivo // Negativo * Negativo
        (if (Vector(J) > 0 and then Value >0) then
             Vector(J) <= Integer'Last/Value
             
         elsif (Vector(J) <0 and then Value <0) then
             Vector(J) >= Integer'First/Value

         elsif (Vector(J) = 0 or Value = 0) then
             Vector(J) * Value = 0
         -- Distintos signos 
         else
             Integer'Max(Vector(J),Value) <= Integer'Last/Integer'Min(Vector(J),Value)
        )     
     )
   
     ,
     Post => (for all J in Vector'Range => 
                Vector(J) = Vector'Old(J) * Value
             );
   
    
   

end pkg_multiply_vector_by_value;
