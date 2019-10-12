package body pkg_search_value_inside_vector with SPARK_Mode is

   function Search_Value_Inside (Vector : in T_Vector; Value : in Integer) return Integer is 
   
      -- Se le pasa un vector y un valor a encontrar dentro de ese vector. Devuelve la posición donde se encuentra,
      -- en caso de encontrarlo. 
      
   begin
      
      for I in Vector'First .. Vector'Last loop
         if Vector(I) = Value then 
             
            return I;
         end if; 
         
      end loop;
      
      return Vector'Length+1; 
         
 
   end Search_Value_Inside;
   

end pkg_search_value_inside_vector;
