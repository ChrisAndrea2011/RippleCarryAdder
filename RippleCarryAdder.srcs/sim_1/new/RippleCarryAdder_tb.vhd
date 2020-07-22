----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/20/2020 06:04:21 AM
-- Design Name: 
-- Module Name: RippleCarryAdder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RippleCarryAdder_tb is
--  Port ( );
end RippleCarryAdder_tb;

architecture Behavioral of RippleCarryAdder_tb is
Component RippleCarryAdder is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (3 downto 0);
           Carry : out STD_LOGIC);
end Component;
signal  A : STD_LOGIC_VECTOR (3 downto 0);
signal  B :  STD_LOGIC_VECTOR (3 downto 0);
signal  Cin :  STD_LOGIC := '0';
signal  Sum :  STD_LOGIC_VECTOR (3 downto 0);
signal  Carry :  STD_LOGIC;
begin
uut: RippleCarryAdder port map ( A, B, Cin, Sum, Carry);
process
begin 
wait for 100ns;
A <= "0110";
B <= "1001";
wait for 100ns;
A <= "1111";
B <= "0101";
wait for 100ns;
A <= "1000";
B <= "0010";
wait for 100ns;
A <= "1010";
B <= "0110";
wait for 100ns;
end process;
end Behavioral;
