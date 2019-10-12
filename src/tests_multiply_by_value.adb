with Ada.Text_IO; use Ada.Text_IO;
with pkg_multiply_vector_by_value;     use pkg_multiply_vector_by_value;

procedure Tests_Multiply_by_Value is
   
   procedure Test_1 is
      vector : T_Vector := (1, 2, 3, 4, 5);
      result : constant  T_Vector := (2, 4, 6, 8, 10); 
   begin
      Put ("Test 1:  Multiplica por dos ....................................");
      
      Multiply_by_Value(vector,2);
      pragma Assert (vector = result);
      Put_Line ("OK");
   end Test_1;
   
   procedure Test_2 is
      vector : T_Vector := (1, 2, 3, 4, 5);
      result : constant  T_Vector := (0,0, 0, 0, 0); 
   begin
      Put ("Test 2:  Multiplica por cero ....................................");
      
      Multiply_by_Value(vector,0);
      pragma Assert (vector = result);
      Put_Line ("OK");
   end Test_2;
   

   procedure Test_3 is
      vector : T_Vector := (1, 2, 3, 4, 5);
      result : constant  T_Vector := (1, 2, 3, 4, 5);
   begin
      Put ("Test 3:  Multiplica por uno ....................................");
      
      Multiply_by_Value(vector,1);
      pragma Assert (vector = result);
      Put_Line ("OK");
   end Test_3;  

   procedure Test_4 is
      vector : T_Vector := (1, 2, 3, 4, 5);
      result : constant  T_Vector := (100, 200, 300, 400, 500);
   begin
      Put ("Test 4:  Multiplica por cien ....................................");
      
      Multiply_by_Value(vector,100);
      pragma Assert (vector = result);
      Put_Line ("OK");
   end Test_4; 
   
begin
   Put_Line ("********************* Tests_Multiply_by_Value");
   Test_1;
   Test_2;
   Test_3;
   Test_4;   
   
end Tests_Multiply_by_Value;
