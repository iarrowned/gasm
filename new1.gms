Set i  securities   /hardware, software, show-biz, t-bills/;
alias (i,j);

Scalar target     target mean annual return on portfolio % /10/,
       lowyield   yield of lowest yielding security,
       highrisk1,
       z,
       highrisk   variance of highest security risk ;
       

Parameters
  mean(i)  mean annual returns on individual securities (%)
      / hardware   8
        software   9
        show-biz  12
        t-bills    7 /;

Table v(i,j)  variance-covariance array (%-squared annual return)
                  hardware  software  show-biz  t-bills
       hardware      4         3         -1        0
       software      3         6          10        0
       show-biz     -1         1          1       11
       t-bills       1         2          3        5 ;

Table k(i,j)  variance-covariance array (%-squared annual return)
                  hardware  software  show-biz  t-bills
       hardware      4         3         -1        0
       software      3         6          10        0
       show-biz     -1         1          1       11
       t-bills       1         2          3        5 ;
       
display k;
z = k('hardware', 'software');

lowyield = smin(i, mean(i)) ;
highrisk = smax(i, v(i,i)) ;
display z ;
