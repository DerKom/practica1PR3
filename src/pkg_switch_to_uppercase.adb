with Ada.Characters.Handling; use Ada.Characters.Handling;
package body pkg_switch_to_uppercase with SPARK_Mode is

   procedure Switch_to_Uppercase (Vector : in out Ch_Array) is 
      -- El procedimiento convierte los caracteres de un vector en uppercase según el 
      -- caracter seleccionado. Si no se encuentra dicho caracter, el vector se deja igual. 

      times : Natural; 
      I : Natural := 0;
   begin 
      times := Vector'Last; 
   
      while times /= 0 loop
         if Vector(I) = char then
            Vector(I) := To_Upper(Vector(I)); 
         end if; 
         
         times := times-1; 
         I:= I+1; 
         pragma Loop_Invariant(if Vector'Loop_Entry /= Vector then
                                 (for some J in Vector'First .. I-1 =>
                                    Vector(J) = To_Upper(char) 
                                 )
               
                                   
                                 
                              );

         pragma Loop_Invariant(I+times = Vector'Length-1);
         pragma Loop_Variant(Increases => I);
         pragma Loop_Variant(Decreases => times); 
         

         
         
         
      end loop;
      
        
      
      
   end Switch_to_Uppercase;
   

end pkg_switch_to_uppercase;
