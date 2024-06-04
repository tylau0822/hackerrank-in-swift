/*
Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

Example
Input: 1 2 3 4 5
Output: 10 14
*/

func miniMaxSum(arr: [Int]) -> Void {
    let sortedArr = arr.sorted()
    var minSum = 0
    var maxSum = 0
    
    for index in 0..<sortedArr.count-1 {
        minSum += sortedArr[index]
        maxSum += sortedArr[index + 1]
    }
    
    print("\(minSum) \(maxSum)")
}