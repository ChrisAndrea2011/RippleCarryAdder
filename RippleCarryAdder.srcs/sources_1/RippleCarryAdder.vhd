----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/19/2020 07:56:10 AM
-- Design Name: 
-- Module Name: RippleCarryAdder - Behavioral
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

entity RippleCarryAdder is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (3 downto 0);
           Carry : out STD_LOGIC);
end RippleCarryAdder;

architecture Behavioral of RippleCarryAdder is
    Component FullAdderDataflow is
        Port (  a : in STD_LOGIC;
                b : in STD_LOGIC;
                c : in STD_LOGIC;
                sum : out STD_LOGIC;
                carry : out STD_LOGIC);
    end Component;
signal c1, c2, c3 : std_logic;
begin
FA1: FullAdderDataflow port map ( A(0), B(0), Cin, Sum(0), c1);
FA2: FullAdderDataflow port map ( A(1), B(1), c1, Sum(1), c2);
FA3: FullAdderDataflow port map ( A(2), B(2), c2, Sum(2), c3);
FA4: FullAdderDataflow port map ( A(3), B(3), c3, Sum(3), Carry);
end Behavioral;
