--真值表第一列
LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY five_to_one_mult_extend IS 
PORT(
       S,U,V,W,X,Y:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
       
       LEDR: OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
       LEDG: OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
       M:OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END five_to_one_mult_extend;

ARCHITECTURE Behavior OF five_to_one_mult_extend IS
BEGIN
    WITH S SELECT
  M<= Y WHEN "111",
      X WHEN "110",
      W WHEN "101",
      V WHEN "100",
      U WHEN "011", 
      "000" WHEN OTHERS;

      -- SW(2 DOWNTO 0) WHEN "000",
      -- SW(5 DOWNTO 3) WHEN "001",
      -- SW(8 DOWNTO 6) WHEN "010",
      -- SW(11 DOWNTO 9) WHEN "011",
      -- SW(14 DOWNTO 12) WHEN "100",--默认此为H
      -- "000" WHEN OTHERS;

END Behavior;














