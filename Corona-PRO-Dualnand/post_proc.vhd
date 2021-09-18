-- Advanced S-RGH PRO Code for X360ACE/DGX
-- 15432, GliGli, Alibaba, PetrozPL, Octal450

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.STD_LOGIC_UNSIGNED.all;

-- main module

entity post_proc is
	Port (
		POST : in STD_LOGIC;
		CLK : in STD_LOGIC;
		to_slow : out STD_LOGIC := '0';
		DBG : out STD_LOGIC := '0';
		RST : inout STD_LOGIC := 'Z'
	);
end post_proc;

architecture arch of post_proc is

constant R_LEN : integer := 1;
constant R_END : integer := 51109;

constant post_rgh : integer := 11;
constant post_max : integer := 15;
signal cnt : integer range 0 to R_END := 0;
signal mrst : STD_LOGIC := '1';
signal stop : STD_LOGIC := '0';
signal post_cnt : integer range 0 to post_max := 0;

begin

-- post limit
process (post_cnt) is
begin
	stop <= to_unsigned(post_cnt,4)(3) and to_unsigned(post_cnt,4)(2);
end process;

-- post counter
process (POST) is
begin
	if (POST'event) then
		if (RST = '0') then
			post_cnt <= 0;
		else
			if (stop = '0') then
				post_cnt <= post_cnt + 1;
			end if;
		end if;
	end if;
	
	DBG <= POST;
end process;

-- timing counter
process (CLK) is
begin
	if (CLK'event) then -- 300 MHz
		if (post_cnt = post_rgh) then
			if (cnt < R_END) then
				cnt <= cnt + 1;
			end if;
		else
			cnt <= 0;
		end if;
		
		if (cnt >= R_END - R_LEN and cnt < R_END) then
			mrst <= '0';
		else
			mrst <= '1';
		end if;
	end if;
end process;

-- reset
process (mrst) is
begin
	if (mrst = '0') then
		RST <= '0';
	else
		RST <= 'Z';
	end if;
end process;

-- slowdown
process (post_cnt) is
begin
	if (post_cnt = post_rgh - 1) then
		to_slow <= '1';
	else
		to_slow <= '0';
	end if;
end process;

end arch;
