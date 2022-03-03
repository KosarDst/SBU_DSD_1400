library ieee; 
use ieee.std_logic_1164.all; 
entity Fulladder is 
 port( cin, x, y : in std_logic; 
 s, cout : out std_logic); 
end Fulladder; 
architecture structure of Fulladder is 
begin 
 s <= x xor y xor cin; 
 cout <= (x and y) or (x and cin) or (y and cin); 
end structure;