module solver;

import std.stdio;
import std.format;
import std.math.exponential;

int[] solve_p1(int x){
    // prepare array to store result
    int[] result = new int[](2);
    result[0] = 1;
    result[result.length-1] = x;
    //int index = 2;
    for(int i=2;i<= x/2;i++){
        //writeln(i);
        if(x % i == 0){
            result.length++; // result.length = result.length + 1
            result[result.length - 1] = i;
            //index++; //index = index + 1;
        }
    }
    return result;
}

int solve_p2(int x, int depth){
    int[] limit = [3,4,8,pow(2, 32-1)-1];
    int[] basePrice = [1000, 1500, 2000, 3000];
    int price = 0;
    if(x <= limit[depth]){
        return x * basePrice[depth];
    }else {
        price += limit[depth]*basePrice[depth];
        //writeln(format("latest before error price: %d", price));
        int x2 = x - limit[depth];

        return price + solve_p2(x2, depth +1);
    }
}

void printArray(int[] arr){
    foreach (int val; arr)
    {
        writeln(val);
    }
}


