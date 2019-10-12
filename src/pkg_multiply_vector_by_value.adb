package body pkg_multiply_vector_by_value with SPARK_Mode is

   procedure Multiply_by_Value (Vector : in out T_Vector; Value : in Integer) is 
   
      -- Se le pasa un vector y un valor a multiplicar. El vector con todas las posiciones multiplicadas 
      -- por el valor. 

    
   begin
      
      for I in Vector'First .. Vector'Last loop
         Vector(I) := Vector(I) * Value; 
         
      end loop;
  
         
 
   end Multiply_by_Value;
   
   
end pkg_multiply_vector_by_value;
