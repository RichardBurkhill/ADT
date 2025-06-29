--  Stack_Pkg.adb

package body Stack_Pkg is

   procedure Initialize(S : out Stack) is
   begin
      S.Top := 0;
   end Initialize;

   procedure Push(S : in out Stack; X : in Integer) is
   begin
      S.Top := S.Top + 1;
      S.Data(S.Top) := X;
   end Push;

   procedure Pop(S : in out Stack; X : out Integer) is
   begin
      X := S.Data(S.Top);
      S.Top := S.Top - 1;
   end Pop;

   function Is_Empty(S : Stack) return Boolean is
   begin
      return S.Top = 0;
   end Is_Empty;

   function Is_Full(S : Stack) return Boolean is
   begin
      return S.Top = Max_Size;
   end Is_Full;

end Stack_Pkg;

