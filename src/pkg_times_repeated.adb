package body pkg_times_repeated with SPARK_Mode is

   procedure Times_Repeated (Vector : in T_Vector; Value : in Integer; Result : out Integer) is
     
   begin
      Result := 0; 
      for I in Vector'Range loop
         if Vector(I) = Value then
            Result := Result + 1;            
         end if;
         
         pragma Loop_Invariant (Result in 0 .. I+1); 
         pragma Loop_Invariant
           (
              (if Result = 0 then
                (for all J in Vector'First .. I =>
                     Vector(J) /= Value
                )
            else (for some J in Vector'First..I =>
                      Vector(J) = Value
                 )
           )
               
           );
         
      end loop;
      
      if Result > 0 then
         Result := Result - 1; 
      else if Result = 0 then 
            Result := -1;
         end if;
      end if;  
      
   

   end Times_Repeated;
   

end pkg_times_repeated;
