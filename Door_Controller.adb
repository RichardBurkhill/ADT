--  Door_Controller.adb

package body Door_Controller is

   pragma SPARK_Code;

   procedure Initialize(D : out Door) is
     pragma SPARK_Code (Own => D,
                         Derives => D from null);
   begin
      D.State := Closed;
   end Initialize;

   procedure Open_Door(D : in out Door) is
     pragma SPARK_Code (Own => D,
                         Derives => D from D);
   begin
      D.State := Open;
   end Open_Door;

   procedure Close_Door(D : in out Door) is
     pragma SPARK_Code (Own => D,
                         Derives => D from D);
   begin
      D.State := Closed;
   end Close_Door;

   procedure Lock_Door(D : in out Door) is
     pragma SPARK_Code (Own => D,
                         Derives => D from D);
   begin
      D.State := Locked;
   end Lock_Door;

   procedure Unlock_Door(D : in out Door) is
     pragma SPARK_Code (Own => D,
                         Derives => D from D);
   begin
      D.State := Closed;
   end Unlock_Door;

   function Get_State(D : Door) return Door_State is
     pragma SPARK_Code (Derives => return from D);
   begin
      return D.State;
   end Get_State;

end Door_Controller;