package pkg_times_repeated with SPARK_Mode is

   type T_Vector is array (Natural range <>) of Integer; 
   
   procedure Times_Repeated (Vector : in T_Vector; Value : in Integer; Result : out Integer)
   
   with
     --Global  => null,
     --Depends => (Search_Value_Inside'Result => (Vector, Value)),
     Pre  => TRUE,
     Post => TRUE;
      

end pkg_times_repeated;
