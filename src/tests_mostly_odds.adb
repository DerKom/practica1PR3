with Ada.Text_IO; use Ada.Text_IO;
with pkg_mostly_odds; use pkg_mostly_odds; 

procedure tests_mostly_odds is
   
   
   procedure Test_1 is
      vector : constant T_Vector := (1, 2, 3, 4, 5);
      
   begin
      Put ("Test 1: FALSE ....................................");
      
      pragma Assert (Mostly_Odds(vector) = FALSE);
      Put_Line ("OK");
   end Test_1;
   
   procedure Test_2 is
      vector : constant T_Vector := (1, 3, 3, 5, 5);
      
   begin
      Put ("Test 2: FALSE ....................................");
      
      pragma Assert (Mostly_Odds(vector) = FALSE);
      Put_Line ("OK");
   end Test_2;
   
   procedure Test_3 is
      vector : constant T_Vector := (2, 2, 3, 4, 5);
      
   begin
      Put ("Test 3: TRUE ....................................");
      
      pragma Assert (Mostly_Odds(vector) = TRUE);
      Put_Line ("OK");
   end Test_3;   
   
   procedure Test_4 is
      vector : constant T_Vector := (2, 2, 6, 4, 10);
      
   begin
      Put ("Test 4: TRUE ....................................");
      
      pragma Assert (Mostly_Odds(vector) = TRUE);
      Put_Line ("OK");
   end Test_4;   

   
begin
   Put_Line ("********************* Tests_Mostly_Odds");
   Test_1;
   Test_2;
   Test_3;
   Test_4;   
   
end tests_mostly_odds;
