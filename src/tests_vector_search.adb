with Ada.Text_IO; use Ada.Text_IO;
with pkg_search_value_inside_vector;     use pkg_search_value_inside_vector;

procedure Tests_Vector_Search is
   

   procedure Test_1 is
      vector : constant T_Vector := (1, 2, 3, 4, 5);
   begin
      Put ("Test 1:  Encuentra 3....................................");
      
      pragma Assert (Search_Value_Inside(vector, 3) = 2);
      Put_Line ("OK");
   end Test_1;
   
   procedure Test_2 is
      vector : constant T_Vector := (1, 2, 3, 4, 5);
   begin
      Put ("Test 2:  Encuentra 5 al final ....................................");
      
      pragma Assert (Search_Value_Inside(vector, 5) = 4);
      Put_Line ("OK");
   end Test_2;
   

   procedure Test_3 is
      vector : constant T_Vector := (5, 2, 3, 4, 1);
   begin
      Put ("Test 3:  Encuentra 5 al principio....................................");
      
      pragma Assert (Search_Value_Inside(vector, 5) = 0);
      Put_Line ("OK");
   end Test_3;  

   procedure Test_4 is
      vector : constant T_Vector := (0 => 5);
   begin
      Put ("Test 4:  Encuentra 5 al principio, vector de dim 1....................................");
      
      pragma Assert (Search_Value_Inside(vector, 5) = 0);
      Put_Line ("OK");
   end Test_4; 
   
   
   --Preguntar cómo hacer el vector vacío. 
   --procedure Test_5 is
      --vector : constant T_Vector (1..0) := (others => 0);
   --begin
      --Put ("Test 5:  Se le pasa un vector vacío....................................");
      
      --pragma Assert (Search_Value_Inside(vector, 5) = -1);
      --Put_Line ("OK");
   --end Test_5;    
   
   

   
   
   begin
   Put_Line ("********************* Tests_Vector_Search");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   --Test_5;
   --Test_6;
   --Test_7;

   
end Tests_Vector_Search;
