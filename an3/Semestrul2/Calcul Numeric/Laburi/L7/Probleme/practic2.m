sin(0.34)

x = [0.3 0.32 0.35];
sinx = [0.29552 0.31457 0.34290];
cosx = [0.95534 0.94924 0.93937];
val = hermite(x, sinx, cosx, 0.34)


x = [0.3 0.32 0.33 0.35];
sinx = [0.29552 0.31457 0.3240 0.34290 ];
cosx = [0.95534 0.94924 0.9460 0.93937];
val2 = hermite(x, sinx, cosx, 0.34)