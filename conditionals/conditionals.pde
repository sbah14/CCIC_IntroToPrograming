String colors = "purple";
String colors1 = "blue";
if(colors == colors1){
  println("they are the same");
}else{
  println("they are not the same");
}
int [] coeff = {1, 5, -6};
float discriminate = (coeff[1]*coeff[1] - (4*coeff[0]*coeff[2]));
float numadd = -1 * coeff[1] + sqrt(discriminate);
float numsub = -1 * coeff[1] - sqrt(discriminate);
float dem = 2 * coeff[0];
println("x is " + numadd/dem);
println("x is " + numsub/dem);
int [][] days = {
  {43, 52, 50, 72, 82, 88, 72},
  {70, 68, 86, 72, 75, 81, 75},
  {82, 82, 82, 86, 41, 46, 59}, 
  {60, 56, 71, 81, 88, 85, 78}
};
if (days[0][3] <= 65){
  println("You will need a coat.");
}else{
 println("You will not need a coat.");
}
