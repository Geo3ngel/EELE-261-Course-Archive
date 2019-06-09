entity SystemK is
	port(A, B, C, D : in bit;
		F	: out bit);
end entity;

--Delcaring the inverse function's inputs/outputs
entity INV1 is port (A : in bit; F : out bit); end entity;

--Defining the inverse function
architecture INV1_arch of INV1 is begin
	F <= transport not A;
end architecture;

--Declaring OR2's inputs/outputs
entity OR2 is port (A, B : in bit; F : out bit); end entity;

--Defining what OR2 does
architecture OR2_arch of OR2 is
	
	begin

	--return results
	F <= A OR B;
	
	
end architecture;

architecture SystemK_arch of SystemK is
	--define the inverted bits 
	signal An, Bn, Cn, Dn : bit;
	--declare the bits we want as 0
	signal m3, m7, m11, m15 : bit;

	--Define functions necessary in scope of SystemK
	component INV1 port (A : in bit; F : out bit); end component;
	component OR2 is port (A, B : in bit; F : out bit); end component;

	begin

	--Set up the Nots
	InvA : INV1 port map (A=>A, F=>An);
	InvB : INV1 port map (A=>B, F=>Bn);
	InvC : INV1 port map (A=>C, F=>Cn);
	INvD : INV1 port map (A=>D, F=>Dn);

	UF : OR2 port map (A=>Cn, B=>Dn, F=>F);
	
end architecture;
