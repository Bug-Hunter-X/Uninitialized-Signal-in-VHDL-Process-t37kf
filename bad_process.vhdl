```vhdl
ENTITY bad_process IS
  PORT (clk : IN STD_LOGIC;
data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY bad_process;

ARCHITECTURE behavioral OF bad_process IS
BEGIN
  PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      data <= data + 1;  -- Incorrect: data is an uninitialized signal
    END IF;
  END PROCESS;
END ARCHITECTURE;
```