f = function(x){
  if(x > 10){
    print("x is great than 10");
  } else if( x >=0 & x <=10) {
    print("x is between 0 and 10");
  } else {
    print("x is less than 0");
  } 
}
f(10)
f(-1)

for(i in c('a','b')){
  print(i);
} 
for(j in seq(from=4, to=10, by=3)) { #§Ç¦C
  print(j);
} 
for(k in 1:3) {
  if(k == 3) break;
  print(k);
} 

a = 3;
while(a > 0){
  print(a);
  a = a - 1;
} 
