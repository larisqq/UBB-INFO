function [lambda,It]=QRSplit2(A,t)
%QRSPLIT21 eigenvalues with partition and special treatment of 2x2 matrix
%Input
%A - matrix
%t - tolerance
%Output
%lambda - eigenvalues
%It - no. of iterations

[m,n]=size(A);
if n==1
    It=0;
    lambda=A;
    return
elseif n==2
    It=0;
    lambda=Eigen2x2(A);
    return
else
    H=hessen_h(A);   %convert to Hessenberg
    [H1,H2,It]=QRIter2(H,t); %decomposition H->H1,H2
    %recursive call
    [l1,It1]=QRSplit2(H1,t);
    [l2,It2]=QRSplit2(H2,t);
    It=It+It1+It2;
    lambda=[l1;l2];
end