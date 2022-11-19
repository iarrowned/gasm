Sets   
j products /milk, kefir, sour, coctail/
r all /cost, sugar, line1, line2/
i(r) prms /cost, sugar/
k(r) lines /line1, line2/;

Parameters

C(j) price /
    milk  2.4,
    kefir 2.7,
    sour 13.8,
    coctail 2.050
 /
B(i) limit /
    cost 140,
    sugar 0.6
 /
L(k) lines /
    line1 21,
    line2 16
/;


Table A(i,j) production per hour
            milk    kefir   sour    coctail
cost        1.01    1.01    9.45    0.95
sugar       0       0       0       0.04;

Table G(k,j) production per hour
            milk    kefir   sour    coctail
line1       5       6       0       0.5
line2       0       0       0.3     0;


     
variables f;
 

positive variables x(j);

equations

obj(r) object
restrictionsA(i) restricitons
dailyHour(k) lines;                                                             

obj(r).. f =e= sum(j,C(j)*x(j));
restrictionsA(i).. sum(j, A(i,j) * x(j)) =l= B(i);
dailyHour(k).. sum(j$(G(k,j) ne 0), x(j)/G(k,j)) =l= L(k);

model Fmax /all/;

options lp = Cplex;

solve Fmax using lp maximising f;

