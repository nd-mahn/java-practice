package nd.mahn;

import java.util.HashSet;
import java.util.Set;

/*
Contains Duplicate
Easy
Topics
Company Tags
Hints
Given an integer array nums, return true if any value appears more than once in the array, otherwise return false.

Example 1:

Input: nums = [1, 2, 3, 3]

Output: true

Example 2:

Input: nums = [1, 2, 3, 4]

Output: false
 */

public class B01ContainsDuplicate {


    public static void main(String[] args) {
        int[] ints = {1, 2, 3, 3};
        System.out.println(hasDuplicate(ints));
    }

    public static boolean hasDuplicate(int[] nums) {
        Set<Integer> integerSet = new HashSet<>();
        for (int num : nums) {
            if (!integerSet.add(num)) {
                return true;
            }
        }
        return false;
    }
}
