A = [1, 1, 1; 1, 1, 2; 2, 4, 2];
B = [3; 4; 8];

A_d = [
    2, 0, 2, 0.6;
    3, 3, 4, -2;
    5, 5, 4, 2;
    -1, -2, 3.4, -1
    ];

[L, U, P] = lup(A_d)
descompunere_lup(A, B)