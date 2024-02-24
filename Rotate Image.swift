// Submission URL: https://leetcode.com/submissions/detail/639269562/

class Solution {
func rotate(_ matrix: inout [[Int]]) {

    for i in 0..<matrix.count {
        for j in 0..<i {
            let temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
        }
    }
    
    for i in 0..<matrix.count {
        var leftI = 0
        var rightI = matrix[0].count - 1
        
        while (leftI <= rightI) {
            let temp = matrix[i][leftI]
            matrix[i][leftI] = matrix[i][rightI]
            matrix[i][rightI] = temp
            leftI += 1
            rightI -= 1
        }
    }
}
}