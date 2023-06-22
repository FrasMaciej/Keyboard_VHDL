
-- VHDL Instantiation Created from source file converter.vhd -- 12:31:43 04/03/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT converter
	PORT(
		DO : IN std_logic_vector(7 downto 0);
		DO_RDY : IN std_logic;          
		FName : OUT std_logic_vector(7 downto 0);
		Start : OUT std_logic
		);
	END COMPONENT;

	Inst_converter: converter PORT MAP(
		DO => ,
		DO_RDY => ,
		FName => ,
		Start => 
	);


