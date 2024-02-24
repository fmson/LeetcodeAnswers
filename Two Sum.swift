// Submission URL: https://leetcode.com/submissions/detail/605993594/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j  in i + 1..<nums.count  {
                if (nums[j] == target - nums[i]) {
                    return [i, j]
                }
            }
        }
        
        return []
    }
}