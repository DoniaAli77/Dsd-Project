library IEEE;
use IEEE.std_logic_1164.all;

entity Balls Is
port(
p1,p2:In std_logic;--sensors
c1:In std_logic;--color
clk:In std_logic;--clk of fpga 
start:In std_logic; --switch of start
leds:out std_logic_vector(1 DownTo 0);--leds of winner team
timer0,timer1:out std_logic_vector(6 DownTo 0);--timer until 59
counter_t1,counter_t2:out std_logic_vector (13 DownTo 0));--score of every team 
--wteam:out std_logic_vector(13 downto 0));
end balls;

Architecture arc of Balls Is

COMPONENT thegame
PORT(
clk2,p1,p2,changecolor:IN std_logic;
countl,countm :in STD_LOGIC_VECTOR(3 DOWNTO 0);start:in STD_LOGIC; --team1--team2--timer--start switch
countert1l,countert1r,countert2l,countert2r:OUT std_logic_vector(3 downto 0);leds: out std_logic_vector(1 downto 0));--output 
END component;

component clk_generator2
PORT(clk_50M:IN STD_LOGIC ;clk_110Hz:out STD_LOGIC);--20hz clock
END component;

component seven_seg_dec  
port(input:IN std_logic_vector(3 DOwnTO 0);output:out std_logic_vector(6 DownTO 0));
End component;


component sixty_counter 
PORT(clk :IN STD_LOGIC; reset:IN STD_LOGIC; countl,countm :OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END component;

component clk_generator
PORT(clk_50M:IN STD_LOGIC ;clk_1Hz:out STD_LOGIC);
END component;




--component winner 
--c1 red team, c2 green team
--port (c1,c2:in std_logic_vector (4 downto 0);countl,countm :in STD_LOGIC_VECTOR(3 DOWNTO 0);
--led: out std_logic_vector(1 downto 0);CBallsL,CBallsR: out std_logic_vector(3 downto 0));
--end component;

SIGNAL clkout,clk2:std_logic; --used clk
SIGNAL t1,t2:STD_LOGIC_VECTOR(3 DOWNTO 0); --timer
SIGNAL count1l,count1r,count2l,count2r:std_logic_vector (3 DownTo 0); --teams scores used in code


begin 

m1:clk_generator port map(clk,clkout);--1hz
m13:clk_generator2 port map(clk,clk2);--20hz
m2:sixty_counter port map(clkout,start,t1,t2);--timer counter
m3:thegame port map(clk2,p1,p2,c1,t1,t2,start,count1l,count1r,count2l,count2r,leds);
m7:seven_seg_dec port map(count1l,counter_t1(13 downto 7));
m8:seven_seg_dec port map(count1r,counter_t1(6 downto 0));
m9:seven_seg_dec port map(count2l,counter_t2(13 downto 7));
m10:seven_seg_dec port map(count2r,counter_t2(6 downto 0));
m11:seven_seg_dec port map(t1,timer0);
m12:seven_seg_dec port map(t2,timer1);

end arc;