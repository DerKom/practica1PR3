with Ada.Text_IO; use Ada.Text_IO;
with pkg_multiply_by_max;     use pkg_multiply_by_max;
with pkg_multiply_vector_by_value; use pkg_multiply_vector_by_value;

procedure Tests_Multiply_by_Max is
   
   procedure Test_1 is
      vector : T_Vector := (1, 2, 3, 4, 5);
      result : constant  T_Vector := (5, 10, 15, 20, 25); 
      max : Integer :=0;      
   begin
      Put ("Test 1:  Multiplica por 5 ....................................");
      Multiply_by_Max(vector, max);
      pragma Assert (vector = result);
      Put_Line ("OK");
   end Test_1;
   
   procedure Test_2 is
      vector : T_Vector := (1, 1, 1, 4, 1);
      result : constant  T_Vector := (4, 4, 4, 16, 4); 
      max : Integer :=0;
   begin
      Put ("Test 2:  Multiplica por 4 ....................................");
      Multiply_by_Max(vector, max);
      pragma Assert (vector = result);
      Put_Line ("OK");
   end Test_2;
   

   procedure Test_3 is
      vector : T_Vector := (1, 0, 3, 0, 0);
      result : constant  T_Vector := (3, 0, 9, 0, 0);
      max : Integer :=0;      
   begin
      Put ("Test 3:  Multiplica por 3 ....................................");
      
      Multiply_by_Max(vector, max);
      pragma Assert (vector = result);
      Put_Line ("OK");
   end Test_3;  

   procedure Test_4 is
      vector : T_Vector := (1, 2, 3, 4, 100);
      result : constant  T_Vector := (100, 200, 300, 400, 10000);
      max : Integer :=0;      
   begin
      Put ("Test 4:  Multiplica por cien ....................................");
      
      Multiply_by_Max(vector, max);
      pragma Assert (vector = result);
      Put_Line ("OK");
   end Test_4; 
   
begin
   Put_Line ("********************* Tests_Multiply_by_Max");
   Test_1;
   Test_2;
   Test_3;
   Test_4;   
   
end Tests_Multiply_by_Max;
