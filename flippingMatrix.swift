/*
Sean invented a game involving a  matrix where each cell of the matrix contains an integer. He can reverse any of its rows or columns any number of times. The goal of the game is to maximize the sum of the elements in the  submatrix located in the upper-left quadrant of the matrix.

Given the initial configurations for  matrices, help Sean reverse the rows and columns of each matrix in the best possible way so that the sum of the elements in the matrix's upper-left quadrant is maximal.

Example
Input:
112 42 83 119   matrix = [[112, 42, 83, 119], [56, 125, 56, 49],
56 125 56 49              [15, 78, 101, 43], [62, 98, 114, 108]]
15 78 101 43
62 98 114 108
Output:
414
*/


func flippingMatrix(matrix: [[Int]]) -> Int {
    let rows = matrix.count
    let cols = matrix[0].count
    var sum = 0
    
    for i in 0..<rows/2 {
        for j in 0..<cols/2 {
            let maxNum = max(matrix[i][j], matrix[i][cols-1-j], matrix[rows-1-i][j], matrix[rows-1-i][cols-1-j])
            print(i , j , maxNum)
            sum += maxNum
        }
    }
    
    return sum
}
