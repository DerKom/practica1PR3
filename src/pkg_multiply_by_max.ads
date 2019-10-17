with pkg_multiply_vector_by_value; use pkg_multiply_vector_by_value;
package pkg_multiply_by_max with SPARK_Mode is


 
   procedure Multiply_by_Max (Vector : in out T_Vector; Max : out Integer) 
   
   with
     Global  => null,
     Depends => (Vector => Vector, Max => Vector),
     Pre  => 
       (Vector'Length > 0) and then (Vector'Length < 500) and then (Vector'First = 0) and then (Vector'Last /= Vector'First) and then
     (for all J in Vector'Range =>
        Vector(J) < Integer'Last and then Vector(J) > 0 
     ),
     Post => 
       (for all J in Vector'Range => 
          Max >= Vector'Old(J)    
     
       ); 
   
    

end pkg_multiply_by_max;
