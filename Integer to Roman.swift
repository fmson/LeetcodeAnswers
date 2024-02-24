// Submission URL: https://leetcode.com/submissions/detail/607863670/
class Solution {
    func intToRoman(_ num: Int) -> String {
             var integerValue = num
        var response = ""
    
        let mappingList: [(Int, String)] = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"), (100, "C"), (90, "XC"), (50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]
    
        for i in mappingList {
            while (integerValue >= i.0) {
                integerValue -= i.0
                response += i.1
            }
        }
        return response
    }
}