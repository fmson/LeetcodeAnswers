// Submission URL: https://leetcode.com/submissions/detail/680803361/

class Solution {
func countBits(_ num: Int) -> [Int] {
    
    var result: [Int] = []
    
    if num == 0 {
        return [0]
    }

    for i in 0...num {
        var count = 0
        for b in String(i, radix: 2) {
            if b == "1" {
                count += 1
            }
        }
        result.append(count)
    }
    
    return result
}
}