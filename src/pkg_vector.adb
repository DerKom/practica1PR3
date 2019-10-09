package body pkg_vector with SPARK_Mode is

   function Search_Value_Inside (Vector : in T_Vector; Value : in Integer) return Integer is 
   
      
   begin
      
      --Vector vacío 
      if Vector'Length = 0 then
         return -1;  
      end if; 
      
      for I in Vector'First .. Vector'Last loop
         if Vector(I) = Value then 
             
            return I;
         end if; 
         
      end loop;
      
      return -1; 
         
 
   end Search_Value_Inside;
   

end pkg_vector;
