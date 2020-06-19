library IEEE;
use IEEE.std_logic_1164.all;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY thegame is
PORT(
clk2,p1,p2,changecolor:IN std_logic;
countl,countm :in STD_LOGIC_VECTOR(3 DOWNTO 0);
start:in std_logic; --team1--team2--timer
countert1l,countert1r,countert2l,countert2r:OUT std_logic_vector(3 downto 0);leds: out std_logic_vector(1 downto 0));--output 
END thegame;

ARCHITECTURE arc2 of thegame is
SIGNAL m1l:integer:=0;
SIGNAL m1r:integer:=0;
SIGNAL m2l:integer:=0;
SIGNAL m2r:integer:=0;
SIGNAL point1:integer:=0;
SIGNAL point2:integer:=0;
SIGNAL f1:std_logic:='0';
SIGNAL f2:std_logic:='0';

--SIGNAL SigcBalls:STD_LOGIC_VECTOR(4 downto 0);
--SIGNAL leftc,rightc:STD_LOGIC_VECTOR(3 downto 0):="0000";
--SIGNAL intC:INTEGER;

BEGIN
process(clk2,start)
BEGIN
if(clk2'event and clk2='1') then
if(start = '0') then
m1l<=0;
m1r<=0;
m2l<=0;
m2r<=0;
leds<="00";

else 
    if(countm="0101" AND countl="1001") THEN --end of time 
       if(m1l<m2l) then --red wins (m2 is red)
		    leds<="10";
		 elsif (m2l<m1l) then  -- green wins
          leds<="01";
		 else --check right 
		    if(m1r >m2r) then--green wins 
			   leds<="01";
			 elsif (m1r<m2r) then --red wins
				 leds<="10";
			 else --tie 
			    leds<="11";
			 end if;
       END if; --red wins
	  ELSE --time is still running 
			if(p1='0' AND f1 = '0') THEN  -- if 1
				f1<='1';
				if(changecolor='0' AND point1<16) then
					point1<=point1+1; -- add to green -- if 2				  
					if(m1r=9) THEN --IF 3
						m1l<=m1l+1;
						m1r<=0;
					else --not nine 
						m1r<=m1r+1;		
					END IF;--IF 3
				elsif (changecolor='1' AND point2<16)then 
					point2<=point2+1;-- add to red --still if 2 
				   if(m2r=9) THEN --IF 3
						m2l<=m2l+1;
						m2r<=0;	
					else --not nine 
						m2r<=m2r+1;
					END IF;--IF 3
				END IF ; -- end if 2 
			elsif (p2='0' AND f2='0') then -- still of 1 
				f2<='1';
				if(changecolor='0' AND point1<15) then  
					point1<=point1+2;-- add to green -- if 2
					if(m1r=9) THEN --if 3
						m1l<=m1l+1;
						m1r<=1;
					elsif(m1r=8) THEN --if 3
						m1l<=m1l+1;
						m1r<=0;
					else 
						m1r<=m1r+2;
					end if; --end if 3 
				elsif(changecolor='1' AND point2<15) then 
					point2<=point2+2;	-- add to red -- if 2
					if(m2r=9) THEN --if 3
						m2l<=m2l+1;
						m2r<=1;
					elsif(m2r=8) THEN --if 3
						m2l<=m2l+1;
						m2r<=0;
					else 
						m2r<=m2r+2;
					end if; --end if 3 
				end if; -- end of if 2
		elsif(p1='1' AND f1='1') THEN
			f1<='0';
		elsif(p2='1' AND f2='1') THEN
			f2<='0';
	
	
	end if ; --end if 1 
	
	
	
    END if;--end of time 



end if;
end if;
end process;

countert1l<=std_logic_vector(to_unsigned(m2l,4));
countert1r<=std_logic_vector(to_unsigned(m2r,4));
countert2l<=std_logic_vector(to_unsigned(m1l,4));
countert2r<=std_logic_vector(to_unsigned(m1r,4));



end arc2;

