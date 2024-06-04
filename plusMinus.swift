/*
Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.

Example
Input: -4 3 -9 0 4 1
Output:
0.500000
0.333333
0.166667
*/

func plusMinus(arr: [Int]) -> Void {
    var positiveCount: Int = 0
    var negativeCount: Int = 0
    var zeroCount: Int = 0
    
    arr.forEach {
        if $0 > 0 {
            positiveCount+=1
        } else if $0 < 0 {
            negativeCount+=1
        } else {
            zeroCount+=1
        }
    }
    
    let arrCount = arr.count
    print(String(format: "%.6f", Double(positiveCount)/Double(arrCount)))
    print(String(format: "%.6f", Double(negativeCount)/Double(arrCount)))
    print(String(format: "%.6f", Double(zeroCount)/Double(arrCount)))
}