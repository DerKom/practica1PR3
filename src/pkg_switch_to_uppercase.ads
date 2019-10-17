with Ada.Characters.Handling; 
package pkg_switch_to_uppercase with SPARK_Mode is

   type Ch_Array is array (Natural range 0..4) of Character; 
   
   char : Character; 
   
   procedure Switch_to_Uppercase (Vector : in out Ch_Array)
   with 
     Global => (Input => Char),
     Depends => (Vector => (Vector, Char)),
     Pre => (Vector'First = 0) and then (Vector'Last /= Vector'First) and then
     (char in 'a' .. 'z') and then (Vector'Length > 0) and then (Vector'Length < 100) 
     ,
     Post => 
     (if Vector /= Vector'Old then 
               (for some J in Vector'Range =>
                    Vector(J) = Ada.Characters.Handling.To_Upper(char)
               )
     ) 
     ;
       
          
          
end pkg_switch_to_uppercase;
