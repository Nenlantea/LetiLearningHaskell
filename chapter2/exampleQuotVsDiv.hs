module Division where

integralDivision x y = quot x y

remainderIntegral x y = rem x y

proofx x y = integralDivision x y * y + remainderIntegral x y

regularDivision x y = div x y

regularRemainder x y = mod x y

proofx2 x y = regularDivision x y * y + regularRemainder x y

-- Modular division is like a clock that wraps around itself and adding hours to hours and stuff, so go and imagine the clock :P
