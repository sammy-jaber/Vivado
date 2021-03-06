library ieee;
use ieee.std_logic_1164.all;

entity hexto7seg is 
port ( sw : in std_logic_vector(3 downto 0);
	   seg :out std_logic_vector(6 downto 0)
	 );

end hexto7seg;

architecture Behavioral of hexto7seg is

begin

process(sw)

begin

case sw is

	when "0000" => seg <= "1000000" ;
	when "0001" => seg <= "1111001" ;
	when "0010" => seg <= "0100100" ;
	when "0011" => seg <= "0110000" ;
	when "0100" => seg <= "0011001" ;
	when "0101" => seg <= "0010010" ;
	when "0110" => seg <= "0000010" ;
	when "0111" => seg <= "1111000" ;
	when "1000" => seg <= "0000000" ;
	when "1001" => seg <= "0010000" ;
	when "1010" => seg <= "0001000" ;
	when "1011" => seg <= "0000011" ;
	when "1100" => seg <= "1000110" ;
	when "1101" => seg <= "0100001" ;
	when "1110" => seg <= "0000110" ;
	when "1111" => seg <= "0001110" ;
	when others => seg <= "1000000" ;
end case ; 

end process;
end Behavioral;
