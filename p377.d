module p377;
import std.stdio;
import solver;
import std.format;

ulong sumOfDigit(ulong eachData) {
    ulong total = 0;

    while (eachData > 0) {
        total += eachData % 10;
        eachData /= 10;
    }

    return total;
}

ulong intervalCheck(ulong eachData) {
    ulong productNum=eachData*10;
    ulong edge = productNum + 9;
    while (productNum <= edge) {
        ulong sum= sumOfDigit(productNum);
        ulong SD=sum%10;
        if (SD == 0) {
            writeln(productNum);  
        }
        productNum++;
    }
    return productNum;
}