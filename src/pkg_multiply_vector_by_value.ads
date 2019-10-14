package pkg_multiply_vector_by_value with SPARK_Mode is
   
   old : Integer :=0; 
   
   type T_Vector is array (Natural range <>) of Integer; 
 
   procedure Multiply_by_Value (Vector : in out T_Vector; Value : in Integer)
   
   with
     Global  => (In_Out => old),
     --Depends => ,
       Pre  => ((Value /= 0) and then
                --Value positivo 
                  (if Value > 0 then
                      (for all J in Vector'Range => 
                      --Vector(J) positivo
                      (if Vector(J) > 0 then 
                          Vector(J) <= Integer'Last/Value else
                     --Vector(J) negativo
                     Vector(J) >= Integer'First/Value))
               else
                   --Value negativo
                      (for all J in Vector'Range => (if Vector(J) > 0 then Vector(J) >= Integer'First/Value
                           else Vector(J)<= Integer'Last/Value)))
                      
                    

                      
               ),
     Post => (for all J in Vector'Range => Vector(J) = Vector'Old(J) * Value );
      
   

end pkg_multiply_vector_by_value;
