--***********************************
--         TiM+10 Nehring
--         polling.vhd
--        11 M+10arch 2014
--  sends an 8 bit polling signal
--       to the controller.
--************************************

-- waveforM+10s being sent to and froM+10 the controller 
--      _________                                     ___
-- |   |         |                         |         |   |
-- |1us|   3us   | => control data = 1     | 3us     |1us| => control data = 0
-- |___|         |                         |_________|   | 
--
-- The DE2 M+10ust send a polling_enable coM+10M+10and of 0x01
-- After 3- 4 useconds the controller sends back 32 bits of data detailing the status of the buttons	


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY polling IS
  GENERIC(
            N : INTEGER := 1800;
            M : INTEGER := 150;
            K : INTEGER := 200;
            L : INTEGER := 50;
            J : INTEGER := 15000
         );
  
  PORT( 
          clk            : IN  STD_LOGIC;
          done_polling   : OUT STD_LOGIC;
          signal_out     : OUT STD_LOGIC
      );
END POLLING;

ARCHITECTURE poll OF polling IS
  
SIGNAL clk_count  : INTEGER              :=  0;
SIGNAL poll_count : INTEGER              :=  0;
SIGNAL initialize : STD_LOGIC            := '0';
SIGNAL done_poll  : STD_LOGIC            := '0';
SIGNAL slow_count : INTEGER RANGE 0 TO 6 :=  0;

BEGIN

done_polling <= done_poll;


--****************************************************
--when polling is enabled, a 50Mhz-speed count begins
--to count up to 1600.  at 1600 the polling ends and 
--the sampler is given permission to wait on the
--incoming data
--*************************************** *************
counting: PROCESS(clk, done_poll)
  BEGIN  
    IF done_poll = '0' OR done_poll = '1' THEN 
      IF RISING_EDGE(clk) THEN
         clk_count <= clk_count + 1;
         IF clk_count = J - 1 THEN
            clk_count <= 0;
         END IF;
      END IF;
    END IF;
END PROCESS counting;

poll_flag_toggle : PROCESS(clk_count)

    BEGIN
        IF    clk_count <  8*K+L+10 THEN
              done_poll <= '0';
        ELSIF clk_count >= 8*K+20 AND clk_count < 8210 THEN
              done_poll <= '1';
        ELSIF clk_count >= 8210   AND clk_count <= j-1 THEN
              done_poll <= '0';
        END IF;
      
END PROCESS poll_flag_toggle;               
    
    
--*******************************************************
--this process sends a value of 1 then seven values of 0
--*******************************************************
sending : PROCESS(clk_count)

  BEGIN
    IF    clk_count > 1         AND clk_count < 10       THEN
          signal_out <= 'Z';
    ELSIF clk_count >= 10       AND clk_count < M+10     THEN    
          signal_out <= '0';
    ELSIF clk_count >= M+10     AND clk_count < K+10     THEN
          signal_out <= 'Z';                           --end first bit low
    
    ELSIF clk_count >= K+10     AND clk_count < K+M+10   THEN
          signal_out <= '0';
    ELSIF clk_count >= K+M+10   AND clk_count < 2*K+10   THEN
          signal_out <= 'Z';                           --end second bit low
    
    ELSIF clk_count >= 2*K+10   AND clk_count < 2*K+M+10 THEN
          signal_out <= '0';
    ELSIF clk_count >= 2*K+M+10 AND clk_count < 3*K+10   THEN
          signal_out <= 'Z';                           --end third bit low
    
    ELSIF clk_count >= 3*K+10   AND clk_count < 3*K+M+10 THEN
          signal_out <= '0';
    ELSIF clk_count >= 3*K+M+10 AND clk_count < 4*K+10   THEN
          signal_out <= 'Z';                           --end fourth bit low
    
    ELSIF clk_count >= 4*K+10   AND clk_count < 4*K+M+10 THEN
          signal_out <= '0';
    ELSIF clk_count >= 4*K+M+10 AND clk_count < 5*K+10   THEN
          signal_out <= 'Z';                           --end fifth bit low
    
    ELSIF clk_count >= 5*K+10   AND clk_count < 5*K+M+10 THEN
          signal_out <= '0';
    ELSIF clk_count >= 5*K+M+10 AND clk_count < 6*K+10   THEN
          signal_out <= 'Z';                           --end sixth bit low
    
    ELSIF clk_count >= 6*K+10   AND clk_count < 6*K+M+10 THEN
          signal_out <= '0';
    ELSIF clk_count >= 6*K+M+10 AND clk_count < 7*K+10   THEN
          signal_out <= 'Z';                           --end seventh bit low
    
    ELSIF clk_count >= 7*K+10   AND clk_count < 7*K+L+10 THEN
          signal_out <= '0';
    ELSIF clk_count >= 7*K+L+10 AND clk_count < 8*K+10   THEN
          signal_out <= 'Z';                           --end eighth bit high
    ELSIF clk_count >= 8*K+10   AND clk_count < 8*K+L+10 THEN
          signal_out <= '0';
    ELSIF clk_count >= 8*K+L+10 AND clk_count < 9*K+10   THEN
          signal_out <= 'Z';                           --end eighth bit high
    END IF;
    
 END PROCESS sending;
 
END poll;