entity SystemI is
	port (A, B, C, D : in bit;
		F	 : out bit);
end entity;

architecture SystemI_arch of SystemI is

	signal An, Bn, Cn, Dn : bit;
	signal m1, m3, m9, m11 : bit;
	
	begin
	
		An <= not A;
		Bn <= not B;
		Cn <= not C;
		Dn <= not D;

		m1 <= An and Bn and Cn and D;
		m3 <= An and Bn and C and D;
		m9 <= A and Bn and Cn and D;
		m11 <= A and Bn and C and D;

		F <= m1 or m3 or m9 or m11;

end architecture;