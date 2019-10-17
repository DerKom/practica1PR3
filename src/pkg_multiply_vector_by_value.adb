package body pkg_multiply_vector_by_value with SPARK_Mode is

   procedure Multiply_by_Value (Vector : in out T_Vector; Value : in Integer) is 
   
      -- Se le pasa un vector y un valor a multiplicar. El vector con todas las posiciones multiplicadas 
      -- por el valor. 

      
   begin
      
      for I in Vector'First .. Vector'Last loop
         if Vector(I) = 0 or else Value = 0 then
            Vector(I) := 0;
         end if ;
         
         Vector(I) := Vector(I) * Value; 
         pragma Loop_Invariant(
                               for all J in Vector'First .. I =>
                                 Vector(J) = Vector'Loop_Entry(J) * Value
                              
                                 
                              );
         pragma Loop_Invariant(for all J in I+1 .. Vector'Last => 
                                 Vector(J) = Vector'Loop_Entry(J)
                              );

         
      end loop;
  
         
 
   end Multiply_by_Value;
   
   
end pkg_multiply_vector_by_value;
