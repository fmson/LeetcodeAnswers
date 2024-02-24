// Submission URL: https://leetcode.com/submissions/detail/680748513/

class Solution {
func asteroidCollision(_ asteroids: [Int]) -> [Int] {
    var result: [Int] = []

    for asteroid in asteroids {
        if asteroid > 0 {
            result.append(asteroid)
        } else {
            while let lastAst = result.last, lastAst  > 0 && lastAst < asteroid * -1 {
                    result.removeLast()
                }
            }
            if result.last == asteroid * -1 {
                result.removeLast()
            } else if result.isEmpty || result.last! < 0 {
                result.append(asteroid)
            }
        }

    return result
}
}