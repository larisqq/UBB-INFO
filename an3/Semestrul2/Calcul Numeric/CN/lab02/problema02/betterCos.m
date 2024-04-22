function y=betterCos(x)
  [x, cadran]=reduceZeroPiPerTwo(x)
  #sinTaylor & cosTaylor are the most accurate when input is close to 0 =>
  #reduce the range to (0, 1)
  #(0, pi/2) ~= (0,  1.5708)
  #(0, pi/4) ~= (0,  0.7854)
  #sin(x)=cos(pi/2-x)
  #x > pi/4 => pi/2 - x <= pi/4
  if x<=pi/4
    y=cosTaylor(x);
  else
    y=sinTaylor(pi/2-x);
  end
  if cadran==2 || cadran==3
    y=-1*y;
  endif
end

