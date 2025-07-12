--  File: Common_Types.ads
--  Description: Specification package defining reusable common types
--  for use across Ada 95 applications.

package Common_Types is

   -- Boolean values (standard)
   subtype Flag is Boolean;

   -- Integer types
   subtype Int8   is Integer range -128 .. 127;
   subtype UInt8  is Integer range 0 .. 255;

   subtype Int16  is Integer range -32_768 .. 32_767;
   subtype UInt16 is Integer range 0 .. 65_535;

   type Int32  is range -2_147_483_648 .. 2_147_483_647;
   type UInt32 is mod 2 ** 32;

   -- Floating-point types
   type Float32 is digits 6 range -1.0E+38 .. 1.0E+38;
   type Float64 is digits 15 range -1.0E+308 .. 1.0E+308;

   -- Fixed-point for embedded precision
   type Fixed_2dp is delta 0.01 range -1000.0 .. 1000.0;

   -- Character and string types
   subtype Byte is Character;
   type Byte_Array is array (Positive range <>) of Byte;

   -- Status enum
   type Status_Code is (OK, Warning, Error, Fatal);

   -- Optional result type using discriminated record
   type Optional_Integer is
      record
         Has_Value : Boolean := False;
         Value     : Integer := 0;
      end record;

   -- Endian type
   type Endianness is (Little_Endian, Big_Endian);

   -- Utility constants
   Null_Byte : constant Byte := Character'Val(0);

end Common_Types;

