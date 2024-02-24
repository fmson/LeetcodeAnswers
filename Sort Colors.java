// Submission URL: https://leetcode.com/submissions/detail/639273554/

class Solution {
    public void sortColors(int[] nums) {
        int[] sizes = new int[3];
        
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] == 0) {
                sizes[0]++;
            } else if (nums[i] == 1) {
                sizes[1]++;
            } else if (nums[i] == 2) {
                sizes[2]++;
            }
        }
        
        for (int i = 0; i < nums.length; i++) {
            if (sizes[0] > 0) {
                nums[i] = 0;
                sizes[0]--;
            } else if (sizes[1] > 0) {
                nums[i] = 1;
                sizes[1]--;
            } else if (sizes[2] > 0) {
                nums[i] = 2;
                sizes[2]--;
            }
        }
    }
}