package body pkg_mostly_odds with SPARK_Mode is

   function Mostly_Odds (Vector : in T_Vector) return Boolean is 
      -- Se le pasa un vector y devuelve verdadero si la mayoría de sus elementos son pares. 
      -- Devuelve falso en caso contrario. 
      Pares : Integer;
      Impares : Integer;
   begin 
      Pares := 0;
      Impares := 0; 
      for I in Vector'Range loop
         if (Vector(I) mod 2) = 0 then
            Pares := Pares +1 ;
         else 
            Impares := Impares + 1;
         end if; 
         pragma Loop_Invariant (I = Pares+Impares); 
         pragma Loop_Invariant (Pares <= I);
         pragma Loop_Invariant (Impares <= I);
         
         
      end loop;
      
      if Pares > Impares then 
         return TRUE;
      else
         return FALSE; 
      end if;
      
   end Mostly_Odds;
   

end pkg_mostly_odds;
