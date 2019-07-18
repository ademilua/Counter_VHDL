----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/17/2018 05:24:57 PM
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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

entity counter_tb is
--  Port ( );
end counter_tb;

architecture Behavioral of counter_tb is
component counter
Port ( clk: in std_logic; 
       rst: in std_logic;
       button: in std_logic;
       cnt_out: out std_logic_vector(3 downto 0)

);
end component;
signal clk_o, rst_o, button_o: std_logic;
signal cnt: std_logic_vector(3 downto 0);
begin
dut: counter port map(clk => clk_o , rst=> rst_o, button => button_o, cnt_out =>cnt);

clock_process : process 
begin

clk_o <= '0';
wait for 10 ns;
clk_o <= '1';
wait for 10 ns;
end process;

button_proc: process
begin
button_o <= '0';
wait for 20 ns;
button_o <= '1';
wait for 10 ns;
end process;


reset_proc: process
begin
rst_o <= '1';
wait for 10 ns;
rst_o <= '0';
wait for 10 ns;
wait;
end process;
end Behavioral;
