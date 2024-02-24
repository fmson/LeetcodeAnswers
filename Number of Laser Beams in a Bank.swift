// Submission URL: https://leetcode.com/submissions/detail/639185383/
class Solution {
    func numberOfBeams(_ bank: [String]) -> Int {
        var result = 0
        var upstairLasers = 0
        
        for flat in bank {
            
            var currentFlatLasers = 0

            for column in Array(flat) {
                if column == "1" {
                    currentFlatLasers += 1
                }
            }
            
            if upstairLasers != 0 && currentFlatLasers != 0 {
                result += upstairLasers * currentFlatLasers
                upstairLasers = currentFlatLasers

            } else if currentFlatLasers != 0 {
                upstairLasers = currentFlatLasers
            }
        }
        return result
    }
}