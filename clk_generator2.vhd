LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY clk_generator2 IS 

PORT(clk_50M:IN STD_LOGIC ;clk_110Hz:out STD_LOGIC);

END clk_generator2;

ARCHITECTURE arc OF clk_generator2 IS 
signal clockcounter :integer := 0;
SIGNAL clk_110Hz_temp : STD_LOGIC :='0';
begin 
process(clk_50M)
BEGIN
if (clk_50M'event AND clk_50M='1' )
     THEN if(clockcounter<1000000)
	       then clockcounter<=clockcounter+1;
			      clk_110Hz_temp<='0';
	       else 
	       clockcounter<=0;
			 clk_110Hz_temp<='1';
			 END IF;
else
    clockcounter<=clockcounter;
    clk_110Hz_temp<= clk_110Hz_temp;	 
end if;
end process;
clk_110Hz<=clk_110Hz_temp;	
end arc ;
	