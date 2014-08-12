--************************************************
--            Timothy Nehring
--            n64_driver.vhd
--            11 March 2013
--*************************************************

-- waveforms being sent to and from the controller 
--      _________                                     ___
-- |   |         |                         |         |   |
-- |1us|   3us   | => control data = 1     | 3us     |1us| => control data = 0
-- |___|         |                         |_________|   | 
--
-- The DE2 must send a polling_enable command of 0x01
--  After 3- 4 useconds the controller sends back 32 bits of data detailing the status of the buttons	

-- bit     button
-- 31      A
-- 30      B
-- 29      Z
-- 28      start
-- 27      d-up
-- 26      d-down
-- 25      d-left
-- 24      d-right
-- 23      /
-- 22      /
-- 21      Lbumper
-- 20      Rbumper
-- 19      c-up
-- 18      c-down
-- 17      c-left
-- 16      c-right
-- 15-8    x-axis
-- 7-0     y-axis

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY sampling IS
GENERIC(
         bit_count    : INTEGER                      := 200;
         sampling     : INTEGER                      := 100
       );

PORT( 
      data_in         : IN  STD_LOGIC;
      clk             : IN  STD_LOGIC;
      done_polling    : IN  STD_LOGIC;
      data_out        : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
      --polling_enable  : OUT STD_LOGIC
    );
END sampling;

ARCHITECTURE reading OF sampling IS


SIGNAL sample_count : INTEGER RANGE -1 TO 33        :=  32 ;
SIGNAL count        : INTEGER RANGE 0 TO 200        :=  0  ; 
SIGNAL data_temp    : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
SIGNAL count_enable : STD_LOGIC                     := '0';
SIGNAL sample_array : STD_LOGIC_VECTOR (15 DOWNTO 0):= x"0000"          ;

BEGIN

--*******************************************************
--after the polling signal is sent, wait for the falling
--edge of the incoming data to begin the clock
--*******************************************************
enable : PROCESS(done_polling,data_in, count)

  BEGIN
    IF done_polling  = '1' THEN 
       IF FALLING_EDGE(data_in) THEN
          count_enable <= '1';
          sample_count <= sample_count - 1;
       END IF;
       IF count = bit_count - 1 THEN
          count_enable <= '0';
       END IF;
    ELSIF done_polling  = '0'  THEN
          count_enable <= '0';
    END IF;
    IF sample_count < 0 THEN
       sample_count <= 32;
    END IF;
    
END PROCESS enable;

--************************************************
--start the counter
--************************************************
start_count: PROCESS(clk, count_enable)
  
  BEGIN
    
    IF count_enable = '1' AND RISING_EDGE(clk) THEN
       count <= count + 1;
--       IF count = sampling + 20 THEN
--          count <= 0;
--       END IF;
    END IF;
    IF count_enable = '0' THEN
          count     <= 0;
    END IF; 
    
END PROCESS start_count;


----************************************************
----samples one wave form 10 times  
----************************************************
sample : PROCESS(count, sample_count)
  BEGIN  
    
      CASE count IS
           
          WHEN 11  => sample_array(15) <= data_in;
          
          WHEN 23  => sample_array(14) <= data_in;
          
          WHEN 35  => sample_array(13) <= data_in;
          
          WHEN 47  => sample_array(12) <= data_in;
          
          WHEN 59  => sample_array(11) <= data_in;
          
          WHEN 71  => sample_array(10) <= data_in;
          
          WHEN 83  => sample_array(9) <= data_in;
          
          WHEN 95  => sample_array(8) <= data_in;
          
          WHEN 108 => sample_array(7) <= data_in;
          
          WHEN 121 => sample_array(6) <= data_in;
          
          WHEN 134 => sample_array(5) <= data_in;
          
          WHEN 147 => sample_array(4) <= data_in;
          
          WHEN 160 => sample_array(3) <= data_in;
          
          WHEN 173 => sample_array(2) <= data_in;
          
          WHEN 186 => sample_array(1) <= data_in;
          
          WHEN 195 => sample_array(0) <= data_in;
                      
                      IF    (sample_array AND x"07E0") = 0 THEN
                            data_temp(sample_count) <= '0';
                      ELSIF (sample_array AND x"07E0") > 0 THEN
                            data_temp(sample_count)  <= '1';
                      END IF;
                      IF sample_count = 0 THEN
                         data_temp    <= (OTHERS => '0');
                      END IF;
			 WHEN 199 => sample_array  <=  (OTHERS => '0');
                      
          WHEN OTHERS => NULL;
      END CASE;
      
--    IF count = sampling+10 THEN
--       data_temp(sample_count) <= data_in;
--       IF sample_count = 0 THEN
--          data_temp <= (OTHERS => '0');
--       END IF;
--    END IF;

END PROCESS sample;


data_out <= data_temp;

END reading;    
    
    
    
    
    