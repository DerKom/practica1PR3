package body pkg_sum_of_vectors with SPARK_Mode is

   function Sum_of_Vectors (Vector1 : in T_Vector; Vector2 : in T_Vector) return T_Vector is 
      
      -- A la funci�n se le pasan dos vectores del mismo tama�o y se suman sus valores entre s�. 
      -- La funci�n devuelve otro vector con el resultado. 
      
      result : T_Vector (Vector1'First..Vector1'Last); 
   begin 
      
      for I in Vector1'Range loop
         result(I) := Vector1(I) + Vector2(I); 
      end loop;
      
      return result; 
      
   end Sum_of_Vectors;
   

end pkg_sum_of_vectors ; 
