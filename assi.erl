-module(assi).
-export([peri/1,area/1,mult/2,enclose/1,bits/1]).

mult(A,B)->
	A*B.
peri({rectangle,A,B})->
	S=A+B,
	mult(2,S);
 peri({triangle,A,B,C})->
        A+B+C.

area({rectangle,A,B})->
	mult(A,B);
area({triangle,A,B,C})->
	S=(A+B+C)/2,
	math:sqrt(S*(S-A)*(S-B)*(S-C));
area({circle,R})->
	math:pi()*R*R.

enclose({circle,R})->
	D=mult(2,R),
	{square,D}.
%Bits function for finding sum of bits
bits(0)->
	0;
bits(1)->
	1;
bits(N)->
	bits(N div 2)+N rem 2.
