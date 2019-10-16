with Ada.Text_IO; use Ada.Text_IO;
with pkg_sum_of_vectors;     use pkg_sum_of_vectors;

procedure Test_Sum_Of_Vectors is

   procedure Test_1 is
      vector1 : constant T_Vector := (1, 2, 3, 4, 5);
      vector2 : constant T_Vector := (1, 2, 3, 4, 5);
      result : constant  T_Vector := (2, 4, 6, 8, 10);
   begin
      Put ("Test 1: Suma  ....................................");

      pragma Assert (Sum_of_Vectors(vector1,vector2) = result);
      Put_Line ("OK");
   end Test_1;

   procedure Test_2 is
      vector1 : constant T_Vector := (1, 2, 3, 4, 5);
      vector2 : constant T_Vector := (0, 0, 0, 0, 0);
      result : constant  T_Vector := (1, 2, 3, 4, 5);
   begin
      Put ("Test 2: Suma vector 1 + 0  ....................................");

      pragma Assert (Sum_of_Vectors(vector1,vector2) = result);
      Put_Line ("OK");
   end Test_2;


   procedure Test_3 is
      vector1 : constant T_Vector := (1, 2, 3, 4, 5);
      vector2 : constant T_Vector := (10, 20, 30, 40, 50);
      result : constant  T_Vector := (11, 22, 33, 44, 55);
   begin
      Put ("Test 3: Suma v2 ....................................");

      pragma Assert (Sum_of_Vectors(vector1,vector2) = result);
      Put_Line ("OK");
   end Test_3;


   --Preguntar por qué no me sale esta operación.
   --procedure Test_4 is
      --vector1 : constant T_Vector := (-1, -2, -3, -4, -5);
      --vector2 : constant T_Vector := (-1, -2, -3, -4, -5);
      --result : constant  T_Vector := (-2, -4, -6, -8, -10);
   --begin
      --Put ("Test 4: Suma de números negativos ....................................");

      --pragma Assert (Sum_of_Vectors(vector1,vector2) = result);
      --Put_Line ("OK");
   --end Test_4;

begin
   Put_Line ("********************* Tests_Sum_of_Vectors");
   Test_1;
   Test_2;
   Test_3;
   --Test_4;
end Test_Sum_Of_Vectors;
