% find smallest n sucht that the aproximation is correct to three decimals
% aproximation using rep. trapezium formula
f = @(x) x.*log(x);
n=1;
ok = false;
precission = 3;
result = 0.6362943688583;
real_aprox = floor((result-floor(result))*10.^precission);
while !ok
  aproximation = rep_trapezium(1, 2, f, n);
  prec = aproximation - floor(aproximation);
  prec = floor(aproximation*10.^precission);
  if prec == real_aprox && floor(result) == floor(aproximation)
    ok = true;
    printf("The value of n is: %d and aproximation is:\n", n);
    disp(aproximation);
  endif
  n+=1;
endwhile