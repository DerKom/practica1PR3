with Ada.Text_IO; use Ada.Text_IO;
with pkg_vector;     use pkg_vector;

procedure vectorSearchTest is
   

   procedure Test_1 is
      vector : constant T_Vector := (1, 2, 3, 4, 5);
   begin
      Put ("Test 1:  Encuentra 4....................................");
      
      pragma Assert (Search_Value_Inside(vector, 3) = 2);
      Put_Line ("OK");
   end Test_1;
   
   begin
   Put_Line ("********************* Tests_Vector_Search");
   Test_1;
   --Test_2;
   --Test_3;
   --Test_4;
   --Test_5;
   --Test_6;
   --Test_7;

   
end vectorSearchTest;
