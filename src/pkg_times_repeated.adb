package body pkg_times_repeated with SPARK_Mode is

   procedure Times_Repeated (Vector : in T_Vector; Value : in Integer; Result : out Integer) is
      

   begin
      Result := 0; 
      for I in Vector'Range loop
         if Vector(I) = Value then
            Result := Result + 1;
            
         end if;
         
      end loop;
      
      if Result > 0 then
         Result := Result - 1; 
      end if; 
      
   

   end Times_Repeated;
   

end pkg_times_repeated;
