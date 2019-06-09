entity demux_1to8 is port (A : in bit;
	Sel : in bit_vector (2 downto 0);
	F : out bit_vector (7 downto 0));
end entity;

architecture demux_1to8_arch of demux_1to8 is 

	signal M0, M1, M2, M3, M4, M5, M6, M7 : bit;

	begin

	with (Sel) select
		M0 <= A when "000", '0' when others;

	with (Sel) select
		M1 <= A when "001", '0' when others;

	with (Sel) select
		M2 <= A when "010", '0' when others;

	with (Sel) select
		M3 <= A when "011", '0' when others;

	with (Sel) select
		M4 <= A when "100", '0' when others;

	with (Sel) select
		M5 <= A when "101", '0' when others;

	with (Sel) select
		M6 <= A when "110", '0' when others;

	with (Sel) select
		M7 <= A when "111", '0' when others;

	F <= M7 & M6 & M5 & M4 & M3 & M2 & M1 & M0;

end architecture;