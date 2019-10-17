with Ada.Text_IO; use Ada.Text_IO;
with pkg_switch_to_uppercase;     use pkg_switch_to_uppercase;

procedure tests_switch_to_uppercase is
   
   procedure Test_1 is
      vector : Ch_Array := ('a', 'b', 'c', 'd', 'e');
      
      resultado: constant Ch_Array := ('A', 'b', 'c', 'd', 'e');
   begin
      Put ("Test 1:  Uppercase 'a'....................................");
      char := 'a'; 
      Switch_to_Uppercase(vector);
      pragma Assert (vector = resultado);
      Put_Line ("OK");
   end Test_1;
   
   
   procedure Test_2 is
      vector : Ch_Array := ('b', 'b', 'c', 'd', 'e');
      
      resultado: constant Ch_Array := ('B', 'B', 'c', 'd', 'e');
   begin
      Put ("Test 2:  Uppercase 'b'....................................");
      char := 'b'; 
      Switch_to_Uppercase(vector);
      pragma Assert (vector = resultado);
      Put_Line ("OK");
   end Test_2;   
   
   
   procedure Test_3 is
      vector : Ch_Array := ('a', 'b', 'c', 'd', 'e');
      
      resultado: constant Ch_Array := ('a', 'b', 'c', 'd', 'e');
   begin
      Put ("Test 3:  Uppercase elemento que no está en el array ...............");
      char := 'f'; 
      Switch_to_Uppercase(vector);
      pragma Assert (vector = resultado);
      Put_Line ("OK");
   end Test_3;

   procedure Test_4 is
      vector : Ch_Array := ('e', 'a', 'a', 'a', 'e');
      
      resultado: constant Ch_Array := ('e', 'A', 'A', 'A', 'e');
   begin
      Put ("Test 4:  Uppercase elemento repetido ...............");
      char := 'a'; 
      Switch_to_Uppercase(vector);
      pragma Assert (vector = resultado);
      Put_Line ("OK");
   end Test_4;
   
   

   
   
  

   
   
   begin
   Put_Line ("********************* Tests_Switch_to_Uppercase");
   Test_1;
   Test_2;
   --Test_3;
   Test_4;
   --Test_5;
   --Test_6;
   --Test_7;

   
end tests_switch_to_uppercase;
