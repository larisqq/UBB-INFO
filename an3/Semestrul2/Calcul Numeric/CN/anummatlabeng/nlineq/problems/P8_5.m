%P8_5
f=@(x) [9*x(1)^2+36*x(2)^2+4*x(3)^2-36; x(1)^2-2*x(2)^2-20*x(3); ...
    x(1)^2-x(2)^2+x(3)^2];
fd=@(x) [ 18*x(1), 72*x(2),  8*x(3); 2*x(1), -4*x(2),  -20;...
    2*x(1), -2*x(2),  2*x(3)];
x0=[1,1,0;1,-1,0; -1,1,0; -1,-1,0]'
[x1,ni1]=Newton(f,fd,x0(:,1),1e-6,0,200)
[x2,ni2]=Newton(f,fd,x0(:,2),1e-6,0,200)
[x3,ni3]=Newton(f,fd,x0(:,3),1e-6,0,200)
[x4,ni4]=Newton(f,fd,x0(:,4),1e-6,0,200)