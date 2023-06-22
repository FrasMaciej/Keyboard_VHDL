----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:45 04/03/2023 
-- Design Name: 
-- Module Name:    converter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity converter is
    Port ( DO : in  STD_LOGIC_VECTOR (7 downto 0);
			  DO_RDY : in STD_LOGIC;
			  F0 : in  STD_LOGIC;
           FName : out  STD_LOGIC_VECTOR (7 downto 0);
           Start : out  STD_LOGIC;
			  Stop : out  STD_LOGIC);
end converter;

architecture Behavioral of converter is
	--Tutaj scancody
	signal out_file : std_logic_vector (7 downto 0);
	
	constant ONE: std_logic_vector (7 downto 0)   := "00010110";
	constant TWO: std_logic_vector (7 downto 0)   := "00011110";
	constant THREE: std_logic_vector (7 downto 0) := "00100110";
	constant FOUR: std_logic_vector (7 downto 0)  := "00100101";
	constant FIVE: std_logic_vector (7 downto 0)  := "00101110";
	constant SIX: std_logic_vector (7 downto 0)   := "00110110";
	constant SEVEN: std_logic_vector (7 downto 0) := "00111101";
	constant EIGHT: std_logic_vector (7 downto 0) := "00111110";
	constant NINE: std_logic_vector (7 downto 0)  := "01000110";
	constant ZERO: std_logic_vector (7 downto 0)  := "01000101";
	constant DASH: std_logic_vector (7 downto 0)	 := "01001110";
	constant EQ: std_logic_vector (7 downto 0)    := "01010101";
	
	constant Q: std_logic_vector (7 downto 0)     := "00010101";
   constant W: std_logic_vector (7 downto 0)     := "00011101";
	constant E: std_logic_vector (7 downto 0)     := "00100100";
	constant R: std_logic_vector (7 downto 0)     := "00101101";
	constant T: std_logic_vector (7 downto 0)     := "00101100";
	constant Y: std_logic_vector (7 downto 0)     := "00110101";
	constant U: std_logic_vector (7 downto 0)     := "00111100";
	constant I: std_logic_vector (7 downto 0)     := "01000011";
	constant O: std_logic_vector (7 downto 0)     := "01000100";
	constant P: std_logic_vector (7 downto 0)     := "01001101";
	constant LBR: std_logic_vector (7 downto 0)   := "01010100";
	constant RBR: std_logic_vector (7 downto 0)   := "01011011";
	constant CAPS: std_logic_vector (7 downto 0)  := "01011000"; 
	
	type tablica_znakow is array (1 to 24) of std_logic_vector (7 downto 0); 
	constant CODES: tablica_znakow := (ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, ZERO, DASH, EQ, Q, W, E, R, T, Y, U, I, O, P, LBR, RBR);
	signal switch: std_logic := '1';                                                                                         
    

begin

	process1 : process(DO, DO_RDY, F0)
	begin
		if DO_RDY = '1' AND F0 = '0' then
			if DO = CAPS then
				switch <= NOT(switch);
			end if;
			Stop <= '0';
			Start <= '1';
			if switch = '1' then
				if DO = CODES(1) then
					out_file <= "00110001";
				end if;
				if DO = CODES(2) then
					out_file <= "00110010";	
				end if;
				if DO = CODES(3) then
					out_file <= "00110011";
				end if;
				if DO = CODES(4) then
					out_file <= "00110100";
				end if;
				if DO = CODES(5) then
					out_file <= "00110101";
				end if;
				if DO = CODES(6) then
					out_file <= "00110110";
				end if;
				if DO = CODES(7) then
					out_file <= "00110111";
				end if;
				if DO = CODES(8) then
					out_file <= "00111000";
				end if;
				if DO = CODES(9) then
					out_file <= "00111001";
				end if;	
				if DO = CODES(10) then
					out_file <= "00110000";
				end if;
				if DO = CODES(11) then
					out_file <= "00101101";
				end if;
				if DO = CODES(12) then
					out_file <= "01100111";
				end if;
				if DO = CODES(13) then
					out_file <= "01110001";
				end if;
				if DO = CODES(14) then
					out_file <= "01110111";
				end if;
				if DO = CODES(15) then
					out_file <= "01100101";
				end if;
				if DO = CODES(16) then
					out_file <= "01110010";
				end if;
				if DO = CODES(17) then
					out_file <= "01110100";
				end if;
				if DO = CODES(18) then
					out_file <= "01111001";
				end if;
				if DO = CODES(19) then
					out_file <= "01110101";
				end if;
				if DO = CODES(20) then
					out_file <= "01101001";
				end if;
				if DO = CODES(21) then
					out_file <= "01101111";
				end if;
				if DO = CODES(22) then
					out_file <= "01110000";
				end if;
				if DO = CODES(23) then
					out_file <= "01101000";
				end if;
				if DO = CODES(24) then
					out_file <= "01101010";
				end if;
			end if;
			if switch = '0' then
				if DO = CODES(1) then
					out_file <= "01100010";
				end if;
				if DO = CODES(2) then
					out_file <= "01100011";	
				end if;
				if DO = CODES(3) then
					out_file <= "01101011";
				end if;
				if DO = CODES(4) then
					out_file <= "01101100";
				end if;
				if DO = CODES(5) then
					out_file <= "01101101";
				end if;
				if DO = CODES(6) then
					out_file <= "01101110";
				end if;
				if DO = CODES(7) then
					out_file <= "01110110";
				end if;
				if DO = CODES(8) then
					out_file <= "01111000";
				end if;
				if DO = CODES(9) then
					out_file <= "01111010";
				end if;	
			end if;
		end if;
		if DO_RDY = '1' AND F0 = '1' then
			Stop <= '1';
			Start <= '0';
		end if;
	end process process1;
	Fname <= out_file;
end Behavioral;

