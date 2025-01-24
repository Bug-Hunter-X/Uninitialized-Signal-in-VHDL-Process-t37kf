```vhdl
ENTITY good_process IS
  PORT (clk : IN STD_LOGIC;
data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY good_process;

ARCHITECTURE behavioral OF good_process IS
BEGIN
  PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      data <= data + 1;  -- Correct: data is initialized
    END IF;
  END PROCESS;
END ARCHITECTURE; 

```