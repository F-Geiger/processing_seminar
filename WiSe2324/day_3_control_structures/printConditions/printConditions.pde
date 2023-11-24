println("1 == 1 ->" + (1 == 1));
println("1 == 2 ->" + (1 == 2));
println("1 != 2 ->" + (1 != 2));
println("1 != 1 ->" + (1 != 1));

println("abc == abc ->" + ("abc" == "abc"));
println("true == false ->" + (true == false));

println("1 > 2 ->" + (1 > 2));
println("1 < 2 ->" + (1 < 2));
println("1 <= 2 ->" + (1 <= 2));
println("1 <= 1 ->" + (1 <= 1));

int circleX = 100;
int wallX = 120;

println("Does circleX touch WallX ->" + (circleX >= wallX));

println("1 <= 1 && 1 == 2 ->" + ((1 <= 1) && (1 == 2)));
println("1 <= 1 || 1 == 2 ->" + ((1 <= 1) || (1 == 2)));
println("not true ->" + (!true));
println("not 1 == 2 ->" + (!(1 == 2)));
