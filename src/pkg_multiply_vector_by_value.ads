package pkg_multiply_vector_by_value with SPARK_Mode is
   
   
   
   type T_Vector is array (Natural range <>) of Integer; 
 
   procedure Multiply_by_Value (Vector : in out T_Vector; Value : in Integer)
   
   with
     Global  => null,
     Depends => (Vector => (Vector, Value)),
     Pre  => 
     --Casos
     (for all J in Vector'Range =>
        -- Positivo * Positivo // Negativo * Negativo
        (if (Vector(J) > 0 and then Value >0) then
             Vector(J) 
         <= Integer'Last/Value
        )and then 
          (if(Vector(J) <0 and then Value <0) then
               Vector(J) >= Integer'Last/Value
          )and then
        --Signos distintos 
        (if (Vector(J) > 0 and then Value < 0) or else (Vector(J) <0 and then Value >0) then
             Integer'Max(Vector(J),Value) <= Integer'Last/Integer'Min(Vector(J),Value)
        )
          
     
     )
     ,
     Post => (for all J in Vector'Range => 
                Vector(J) = Vector'Old(J) * Value
             );
   
    
   

end pkg_multiply_vector_by_value;
