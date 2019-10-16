with Ada.Text_IO; use Ada.Text_IO;
with pkg_times_repeated;     use pkg_times_repeated;

procedure tests_times_repeated is
   
   procedure Test_1 is
      vector : constant T_Vector := (1, 1, 3, 4, 5);
      result : Integer := 0; 
   begin
      Put ("Test 1:  1 se repite una vez....................................");
      times_repeated(vector, 1, result);
      pragma Assert (result = 1);
      Put_Line ("OK");
   end Test_1;
   
   procedure Test_2 is
      vector : constant T_Vector := (1, 2, 3, 4, 5);
      result : Integer := 0; 
   begin
      Put ("Test 2:  No se repite el 1....................................");
      times_repeated(vector, 1, result);
      pragma Assert (result = 0);
      Put_Line ("OK");
   end Test_2;
   

   procedure Test_3 is
      vector : constant T_Vector := (2, 2, 2, 2, 2);
      result : Integer := 0; 
   begin
      Put ("Test 3:  El num 2 se repite 4 veces ....................................");
      times_repeated(vector, 2, result);
      pragma Assert (result = 4);
      Put_Line ("OK");
   end Test_3;  

   procedure Test_4 is
      vector : constant T_Vector := (1, 2, 3, 4, 5);
      result : Integer := 0; 
   begin
      Put ("Test 4:  No se encuentra el valor....................................");
      times_repeated(vector, 6, result);
      pragma Assert (result = Not_Found);
      Put_Line ("OK");
   end Test_4; 
   
   
begin
   Put_Line ("********************* Tests_Times_Repeated");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   
end tests_times_repeated;
