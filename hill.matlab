KEY_MATRIX=[98 12 98 12
4 78 6 75
9 34 67 99
9 8 7 66]
%{* the inverse of the KEY_MATRIX }%
INVERSE_KM = inv(KEY_MATRIX) 

%{ 
P-15, 
E-4, 
S-18, 
I-18
%}

%{* representing my name in roman alphabet, a=0,b=1,...,z=25 %}
MY_NAME=[15
4
18
18]

ENCRYPTED_MATRIX=mod(KEY_MATRIX*MY_NAME,26) 

%{* modulo 26 allows values to be between 0-25, which is within the range of the numerical Roman alphabet %}

%{* now I'm attempting to decrypt this matrix %}

DECRYPT=mod(KEY_MATRIX*ENCRYPTED_MATRIX,26)

%{* here I tried multiplying on the other side, but the program crashes, so I'll comment it out here %}
DECRYPT2=mod(ENCRYPTED_MATRIX*KEY_MATRIX,26)

%{ NEW VERSION ==================================== %}

KEY_MAT=[98 12 98 12
4 78 6 75
9 34 67 99
9 8 7 66]

KEY_MATRIX = mod(KEY_MAT,26)

KEY_INVERSE = inv(KEY_MATRIX)

KEY_DET = det(KEY_MATRIX)

%{ Name in Roman Alphabet %}
MY_NAME=[15
4
18
18]


ENCRYPTED_MATRIX=mod(KEY_MATRIX*MY_NAME,26)

DECRYPT=KEY_INVERSE*ENCRYPTED_MATRIX





=============
KEY_MAT=[98 12 98 12
4 78 6 75
9 34 67 99
9 8 7 66]

KEY_DET = det(KEY_MAT)

KEY_MATRIX = mod(KEY_DET,26)

KEY_INVERSE =

KEY_DET = det(KEY_MATRIX)

%{ Name in Roman Alphabet %}
MY_NAME=[15
4
18
18]


ENCRYPTED_MATRIX=mod(KEY_MATRIX*MY_NAME,26)

DECRYPT=mod(KEY_INVERSE*ENCRYPTED_MATRIX,26)









 p = mod(det(A),26);
 t = [0 1 0 9 0 21 0 15 0 3 0 19 0 0 0 7 0 23 0 11 0 5 0 17 0 25];
 r = t(p+1); % Get the reciprocal of p mod 26 if it has one
 if r~=0
  B = mod(round(r*det(A)*inv(A)),26); % B is the inverse of A mod 26
 else
  fprintf('No inverse found!\n')
 end
