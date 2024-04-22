function [y, semn]=reduceZeroPiPerTwo(x,digits=1144)
  #reduce the value of x to the range between 0 and 2pi -> 
  #standard range for trigonometric functions
  doipi=vpa(2*sym(pi),digits);
  x=vpa(x,digits);
  y=double(mod(x,doipi));
  #reduce the value of x to the range between 0 and pi/2 => quadrant I
  semn=1;
  if y>3*pi/2 #quadrant IV
    y=2*pi-y; semn=-1;
  elseif y>pi #quadrant III
    y=y-pi; semn=-1;
  elseif y>pi/2 #quadrant II
    y=pi-y;
  end
end
