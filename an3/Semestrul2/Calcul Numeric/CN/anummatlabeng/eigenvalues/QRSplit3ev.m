function [V,lambda,It]=QRSplit3ev(A,t)
%QRSPLIT3 compute eigenvalues and eigenvectors with QR method, partition, 
%    shift and special treatment of 2x2 matrices
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
    [H,Q]=hessen_h(A);   %convert to Hessenberg
    [H1,H2,It]=QRDouble(H,t); %decomposition H->H1,H2
    %recursive call
    [l1,It1]=QRSplit3(H1,t);
    [l2,It2]=QRSplit3(H2,t);
    It=It+It1+It2;
    lambda=[l1;l2];
end
V=zeros(m,n);
x0=ones(m,1);
for k=1:length(lambda)
    V(:,k)=Inverse_iteration(H,x0,lambda(k),t);
end
V=Q*V;
lambda=diag(lambda);