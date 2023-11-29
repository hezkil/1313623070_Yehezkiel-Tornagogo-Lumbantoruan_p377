import std.stdio;
import solver;
import std.format;
import p377;
import std.string;
import std.conv;

void main() {
    ulong  totalData=1;
    ulong[] args=[12345513];
    foreach (i, arg; args[0..totalData]) {
        ulong eachData = to!ulong(arg);
        ulong hasilJumlah = sumOfDigit(eachData);

        intervalCheck(eachData);
    }
}