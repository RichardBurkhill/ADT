--  Stack_Pkg.ads
--  Stack ADT for integers, with a fixed maximum size

package Stack_Pkg is
   Max_Size : constant := 100;

   type Stack_Index is range 0 .. Max_Size;
   subtype Stack_Range is Stack_Index range 1 .. Max_Size;

   type Stack is private;

   procedure Initialize(S : out Stack);

   procedure Push(S : in out Stack; X : in Integer);

   procedure Pop(S : in out Stack; X : out Integer);

   function Is_Empty(S : Stack) return Boolean;
   function Is_Full(S : Stack) return Boolean;

private
   type Stack is record
      Data : array(Stack_Range) of Integer := (others => 0);
      Top  : Stack_Index := 0;
   end record;
end Stack_Pkg;

