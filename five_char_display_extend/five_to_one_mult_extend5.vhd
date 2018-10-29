--真值表第五列
LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY five_to_one_mult_extend5 IS 
PORT(
       S,U,V,W,X,Y:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
       
       LEDR: OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
       LEDG: OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
       M:OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END five_to_one_mult_extend5;

ARCHITECTURE Behavior OF five_to_one_mult_extend5 IS
BEGIN
    WITH S SELECT
  M<= Y WHEN "011",
      X WHEN "010",
      W WHEN "001",
      V WHEN "000",
      U WHEN "111", 
  "000" WHEN OTHERS;

      -- SW(2 DOWNTO 0) WHEN "000",
      -- SW(5 DOWNTO 3) WHEN "001",
      -- SW(8 DOWNTO 6) WHEN "010",
      -- SW(11 DOWNTO 9) WHEN "011",
      -- SW(14 DOWNTO 12) WHEN "100",--默认此为H
      -- "000" WHEN OTHERS;

END Behavior;















