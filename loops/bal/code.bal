import ballerina/io;
import ballerina/random;

public function main(string... args) {
    int u = checkpanic int:fromString(args[0]);
    int r = checkpanic random:createIntInRange(1, 10000);
    int[10000] a = [];
    foreach int i in 0..<10000 {
        foreach int j in 0..<100000 {
            a[i] = a[i] + j % u;
        }
        a[i] += r;
    }
    io:println(a[r]);
}