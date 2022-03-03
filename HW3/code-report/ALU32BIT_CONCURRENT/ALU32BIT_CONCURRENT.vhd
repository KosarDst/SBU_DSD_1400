library ieee;
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

ENTITY ALU32BIT_CONCURRENT IS 
PORT( a,b:IN STD_LOGIC_VECTOR(31 downto 0);
		cin:IN STD_LOGIC;	
		sel:IN STD_LOGIC_VECTOR(3 downto 0);
		y:out STD_LOGIC_VECTOR(31 downto 0);
		cout:out STD_LOGIC);
END ALU32BIT_CONCURRENT;
ARCHITECTURE dataflow OF ALU32BIT_CONCURRENT IS

signal Temp : std_logic_vector(32 downto 0);
signal Result : std_logic_vector (31 downto 0);

--HW function
function hw(v: std_logic_vector) return natural is
  variable h: natural;
begin
  h := 0;
  for i in v'range loop
    if v(i) = '1' then
      h := h + 1;
    end if;
  end loop;
  return h;
end hw;
--HW function
BEGIN
	process(a,b,sel)
     begin
	 CASE(sel)IS 
	WHEN "0000"=> Result<= not(a) AFTER 1ns;--0 (y=!a)
	WHEN "0001"=> Result<= a NAND b AFTER 2ns;--1 (y = a NAND b)
	WHEN "0010"=> Result<= a NOR b AFTER 2ns;--2 (y = a NOR b)
	WHEN "0011"=> Result<= a XOR b AFTER 2ns;--3 (y = a XOR b)
	WHEN "0100"=> Result<= a AND b AFTER 1ns;--4 (y = a AND b)
	WHEN "0101"=> Result<=conv_std_logic_vector(hw(a), Result'length)AFTER 6ns;--5 y=HW(a)
	WHEN "0110"=> Result<=conv_std_logic_vector(hw(b), Result'length)AFTER 6ns;--6 y=HW(b)
	WHEN "0111"=> Result<= Not(a)+1	AFTER 3ns;--7 y = -a
	WHEN "1000"=> Result<=a+b+cin	AFTER 3ns;--8 y = a+b+cin
	WHEN "1001"=> Result<=a - b AFTER 3ns;--9 y = a-b
	WHEN "1010"=>if( a>b)THEN  
					Result<=(conv_std_logic_vector(1, Result'length))AFTER 2ns;
				ELSE
					Result<=(conv_std_logic_vector(0, Result'length)) AFTER 2ns;--10 y=1 if a>b else 0
				END IF;
	WHEN "1011" => if(a<b)THEN
					Result<=(conv_std_logic_vector(1, Result'length))AFTER 2ns;
				ELSE
					Result<=(conv_std_logic_vector(0, Result'length)) AFTER 2ns;--11 y=1 if a<b else 0
				END IF;
	WHEN "1100" => if(a=b)THEN
					Result<=(conv_std_logic_vector(1, Result'length))AFTER 2ns;
				ELSE
					Result<=(conv_std_logic_vector(0, Result'length)) AFTER 2ns;--12 y=1 if a=b else 0
				END IF;
	WHEN "1101"=> Result<= a(0)&a(31 downto 1)AFTER 1ns; --13 y=ror(a)
	WHEN "1110"=> Result<= b(30 downto 0)&b(31) AFTER 1ns; --14 y=rol(b)
	WHEN "1111"=> Result<=conv_std_logic_vector(0, Result'length) AFTER 1ns;--15 y=0
	WHEN OTHERS=> Result<=conv_std_logic_vector(1, Result'length);
	END CASE; 
   END PROCESS;
   y<= Result;
	Temp <= ('0' & a) + ('0' & b);
	cout<= Temp(32);
END dataflow;