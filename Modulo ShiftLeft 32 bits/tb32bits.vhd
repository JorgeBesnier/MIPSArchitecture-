--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:18:11 08/25/2020
-- Design Name:   
-- Module Name:   C:/PROJECTS/XILINX/practica1/practica1/tb32bits.vhd
-- Project Name:  practica1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: moduleSL2bits
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb32bits IS
END tb32bits;
 
ARCHITECTURE behavior OF tb32bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT moduleSL2bits
    PORT(
         Dint : IN  std_logic_vector(31 downto 0);
         Dout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Dint : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Dout : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: moduleSL2bits PORT MAP (
          Dint => Dint,
          Dout => Dout
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 20 ns.
      wait for 20 ns;
		Dint<= "11110000111111111111111111111111"; 
		wait for 20 ns;
		Dint<= "00000000111111111111111111111111"; 
		wait for 20 ns;
		Dint<= "10010000111111111111111110101010"; 
		wait for 20 ns;
		Dint<= "01010101010101010101010101010101"; 

     
   end process;

END;
