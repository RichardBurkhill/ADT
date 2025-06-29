--  Stack_Pkg.ads
--  Stack ADT for integers, with a fixed maximum size

package Stack_Pkg is
   Max_Size : constant := 100;

   type Stack_Index is range 0 .. Max_Size;
   subtype Stack_Range is Stack_Index range 1 .. Max_Size;

   type Stack is private;

   procedure Initialize(S : out Stack);
   --% initializes S to be an empty stack

   procedure Push(S : in out Stack; X : in Integer);
   --% pushes X onto S
   --% global in out S;
   --% global in X;
   --% pre not Is_Full(S);
   --% post not Is_Empty(S) and
   --%      S.Top = S~.Top + 1 and
   --%      S.Data(S.Top) = X;

   procedure Pop(S : in out Stack; X : out Integer);
   --% pops the top element from S into X
   --% global in out S;
   --% global out X;
   --% pre not Is_Empty(S);
   --% post not Is_Full(S) and
   --%      S.Top = S~.Top - 1 and
   --%      X = S~.Data(S~.Top);

   function Is_Empty(S : Stack) return Boolean;
   --% returns true if S is empty, false otherwise
   --% global in S;
   --% post return = (S.Top = 0);

   function Is_Full(S : Stack) return Boolean;
   --% returns true if S is full, false otherwise
   --% global in S;
   --% post return = (S.Top = Max_Size);

private
   type Stack is record
      Data : array(Stack_Range) of Integer := (others => 0);
      Top  : Stack_Index := 0;
   end record;
end Stack_Pkg;