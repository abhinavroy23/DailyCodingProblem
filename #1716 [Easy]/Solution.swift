/*
This problem was asked by Amazon.

Given a N by M matrix of numbers, print out the matrix in a clockwise spiral.

For example, given the following matrix:
```
[[1,  2,  3,  4,  5],
 [6,  7,  8,  9,  10],
 [11, 12, 13, 14, 15],
 [16, 17, 18, 19, 20]]
```
You should print out the following:
```
1
2
3
4
5
10
15
20
19
18
17
16
11
6
7
8
9
14
13
12
```

*/

func printMatrixInZigZagOrder(input : [[Int]]) {
    for (i, rowArray) in input.enumerated() {
        if i % 2 == 0 { // Even row, print left to right
            for j in 0..<rowArray.count {
                print(rowArray[j])
            }
        } else { // Odd Row, print right to left
            for j in stride(from: rowArray.count-1, through: 0, by: -1) {
                print(rowArray[j])
            }
        }
    }
}

printMatrixInZigZagOrder([[1,  2,  3,  4,  5],
 [6,  7,  8,  9,  10],
 [11, 12, 13, 14, 15],
 [16, 17, 18, 19, 20]])