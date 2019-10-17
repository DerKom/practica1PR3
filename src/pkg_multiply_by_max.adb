package body pkg_multiply_by_max with SPARK_Mode is

   procedure Multiply_by_Max (Vector : in out T_Vector; Max : out Integer) is 
      -- Function returns a vector with all his elements multiply by his highest value. 

   begin 
      Max := 0;
      --Cogemos el valor máximo
      for I in Vector'Range loop
         if Vector(I) > Max then
            Max := Vector(I);
         end if; 
         pragma Loop_Invariant(for all J in Vector'First .. I =>
                                 Vector(J) <= Max
                              );
         pragma Loop_Invariant(Max >= Max'Loop_Entry); 
         pragma Loop_Invariant (Max <= Integer'Last/Vector(I) or Max >= Integer'First/Vector(I));
         




      end loop;
      

      --Calculamos el vector resultado
      Multiply_by_Value(Vector, Max); 

      
      
      
   end Multiply_by_Max;
   

end pkg_multiply_by_max;
