-- Profile Specification for M2KR4R

package Identity_Details is

   type Artistic_Field is (Photographer_Fine_Art, Photographer_Portrait, Photographer_Street);
   type Skill_Level is (Artist, Composer, Enthusiast, Coder);

   -- Primary Identity Configuration
   Identity : constant String := "System_Engineering_Enthusiast, Monolith_Artist";

   -- Photography Profile
   package Photography is
      Category : constant array (1 .. 3) of Artistic_Field :=
        (Photographer_Fine_Art, Photographer_Portrait, Photographer_Street);
      Status   : constant Skill_Level := Artist;
   end Photography;

   -- Music Profile / Hobby
   package Music is
      Role     : constant Skill_Level := Composer;
      Sub_Type : constant String := "Hobby_Piano_Soundscapes";
   end Music;

   -- Development / Coding Hobby
   package Development is
      Status   : constant Skill_Level := Coder;
      Mode     : constant String := "Hobby_System_Engineering";
   end Development;

private
   -- Internal state remains hidden
   pragma SPARK_Mode (Off);
end Identity_Details;
