/*
Given a square matrix, calculate the absolute difference between the sums of its diagonals.

Example
Input:
1 2 3
4 5 6
9 8 9
Output: |15-17| = 2

*/

func diagonalDifference(arr: [[Int]]) -> Int {
    let n = arr.count-1
    var leftSum = 0
    var rightSum = 0
    
    for i in 0...n {
        leftSum += arr[i][i]
        rightSum += arr[i][n-i]
    }
    
    return abs(leftSum-rightSum)
}