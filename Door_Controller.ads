--  Door_Controller.ads
--  An abstract state machine for a door system

package Door_Controller is

   type Door_State is (Closed, Open, Locked);
   type Door is private;

   procedure Initialize(D : out Door);
   --% initializes D to be in the Closed state
   --% global out D;
   --% post D.State = Closed;

   procedure Open_Door(D : in out Door);
   --% opens the door D
   --% global in out D;
   --% pre D.State = Closed;
   --% post D.State = Open;

   procedure Close_Door(D : in out Door);
   --% closes the door D
   --% global in out D;
   --% pre D.State = Open;
   --% post D.State = Closed;

   procedure Lock_Door(D : in out Door);
   --% locks the door D
   --% global in out D;
   --% pre D.State = Closed;
   --% post D.State = Locked;

   procedure Unlock_Door(D : in out Door);
   --% unlocks the door D
   --% global in out D;
   --% pre D.State = Locked;
   --% post D.State = Closed;

   function Get_State(D : Door) return Door_State;
   --% returns the current state of door D
   --% global in D;
   --% post return = D.State;

private

   type Door is record
      State : Door_State := Closed;
   end record;

end Door_Controller;