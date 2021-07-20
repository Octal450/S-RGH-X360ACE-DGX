library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Corona PRO slowdown

entity slower is
	generic (
		SCL_BITS :      STD_LOGIC_VECTOR(0 to 271) := b"11001100110011001100110011001100110011000011001100110011001100110011001100110000110011001100110011001100110011001100001100110011001100110011001100110011000011001100110011001100110011001100110000110011001100110011001100110011001100001100110011001100110011001100110011000011";
		SDA_SLOW_BITS : STD_LOGIC_VECTOR(0 to 271) := b"10011111111111100000000000000000000111111111111110000000011111111111111111111000000000000000000000011110000000011110000001111000000000000000000000000111100000011110000000000000000000000001111000000111100000000000011110000000011110000000000000000001111000000000000111100001";
		SDA_FAST_BITS : STD_LOGIC_VECTOR(0 to 271) := b"10011111111111100000000000000000000111111111111110000000011111111111111111111000000000000000000000011110000000011111111111111000000000000000000000000111111111100001111000011111111000000001111000000111100000000000011110000000011110000001111000000000000000000000000111100001"
	);
	Port (
		in_slow : in STD_LOGIC;
		CLK : in STD_LOGIC;
		SCL : out STD_LOGIC := '1';
		SDA : out STD_LOGIC := '1'
	);
end slower;

architecture arch of slower is

signal p_slow : STD_LOGIC := '0';
signal cnt : integer range 0 to 271 := 271;

begin

process(CLK, cnt, in_slow) is
begin
	if (rising_edge(CLK)) then
		if (cnt /= 271) then
			cnt <= cnt + 1;
		else
			if (p_slow /= in_slow) then
				p_slow <= in_slow;
				cnt <= 0;
			end if;
		end if;
	end if;
	
	if ((in_slow = '1' and SDA_SLOW_BITS(cnt) = '1') or (in_slow = '0' and SDA_FAST_BITS(cnt) = '1')) then
		SDA <= 'Z';
	else
		SDA <= '0';
	end if;
	
	if (SCL_BITS(cnt) = '1') then
		SCL <= 'Z';
	else
		SCL <= '0';
	end if;
end process;

end arch;