function flag=isprime(x)
flag=1;
for i = 2:(x-1)
 if(modulo(x,i)==0) then
 flag=0;
 return;
 end;
end
return;
endfunction

