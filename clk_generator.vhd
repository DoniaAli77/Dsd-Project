LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY clk_generator IS 

PORT(clk_50M:IN STD_LOGIC ;clk_1Hz:out STD_LOGIC);

END clk_generator;

ARCHITECTURE arc OF clk_generator IS 
signal clockcounter :integer := 0;
SIGNAL clk_1Hz_temp : STD_LOGIC :='0';
begin 
process(clk_50M)
BEGIN
if (clk_50M'event AND clk_50M='1' )
     THEN if(clockcounter<50000000)
	       then clockcounter<=clockcounter+1;
			      clk_1Hz_temp<='0';
	       else 
	       clockcounter<=0;
			 clk_1Hz_temp<='1';
			 END IF;
else
    clockcounter<=clockcounter;
    clk_1Hz_temp<= clk_1Hz_temp;	 
end if;
end process;
clk_1Hz<=clk_1Hz_temp;	
end arc ;
	