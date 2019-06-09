
entity mux_8to1 is port (A : in bit_vector (7 downto 0);
	Sel : in bit_vector (2 downto 0);
	F : out bit);
end entity;

architecture mux_8to1_arch of mux_8to1 is 

	begin

	F <= 	'1' when (Sel = "000") else
		'1' when (Sel = "001") else
		'1' when (Sel = "010") else
		'1' when (Sel = "011") else
		'1' when (Sel = "100") else
		'1' when (Sel = "101") else
		'1' when (Sel = "110") else
		'1' when (Sel = "111");

end architecture;