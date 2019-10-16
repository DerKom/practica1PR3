package pkg_sum_of_vectors with SPARK_Mode is
   
   type T_Vector is array (Natural range <>) of Integer; 
   
   function Sum_of_Vectors (Vector1 : in T_Vector; Vector2 : in T_Vector) return T_Vector
   
   with
     Global  => null,
     Depends => (Sum_of_Vectors'Result => (Vector1, Vector2)),
     Pre  => (Vector1'Length = Vector2'Length) and then (Vector1'First = Vector2'First) and then
     (Vector1'Last = Vector2'Last) and then 
     (for all J in Vector1'Range =>
      --Positivo + Positivo
        (if Vector1(J) >= 0 and then Vector2(J)>=0 then Vector1(J) <= Integer'Last-Vector2(J))and then
      --Negativo + Negativo
          (if Vector1(J)<0 and then Vector2(J) < 0 then Vector1(J) >= Integer'First-Vector2(J)) 
     ),
     Post => (for all J in Vector1'Range => Sum_of_Vectors'Result(J) = Vector1(J)+Vector2(J));
      
   

end pkg_sum_of_vectors;
