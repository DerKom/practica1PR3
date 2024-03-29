package body pkg_search_value_inside_vector with SPARK_Mode is

   function Search_Value_Inside (Vector : in T_Vector; Value : in Integer) return Integer is 
   
      -- Se le pasa un vector y un valor a encontrar dentro de ese vector. Devuelve la posici�n donde se encuentra,
      -- en caso de encontrarlo. 
      
   begin
      
      for I in Vector'First .. Vector'Last loop
         if Vector(I) = Value then 
             
            return I;
         end if; 
         
         pragma Loop_Invariant(for all J in Vector'First .. I =>
                                 Vector(J) /= Value
                               );
         
      end loop;
      
      return Not_Found; 
         
 
   end Search_Value_Inside;
   

end pkg_search_value_inside_vector;
