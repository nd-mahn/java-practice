package nd.mahn;

import java.util.HashSet;
import java.util.Set;

public class B_01_ContainsDuplicate {
//    Cho một mảng số nguyên , trả về nếu bất kỳ giá trị nào xuất hiện nhiều hơn một lần trong mảng, nếu không thì trả về .numstruefalse
//
//    Ví dụ 1:
//
//    Input: nums = [1, 2, 3, 3]
//
//    Output: true
//
//    Ví dụ 2:
//
//    Input: nums = [1, 2, 3, 4]
//
//    Output: false

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
