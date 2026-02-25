package nd.mahn;

import java.util.Arrays;

public class LeetCode88_MergeSortedArray {
    public static void main(String[] args) {
        int[] nums1 = {1, 2, 3, 0, 0, 0};
        int m = 3;
        int[] nums2 = {2, 5, 6};
        int n = 3;
        merge(nums1, m, nums2, n);
    }

    public static void merge(int[] nums1, int m, int[] nums2, int n) {
        int i = m - 1;// con trỏ cuối của nums1 (phần đã có dữ liệu)
        int j = n - 1;// con trỏ cuối của nums2
        int k = m + n - 1;// con trỏ cuối cùng của nums1 (bao gồm chỗ trống)
        while (i >= 0 && j >= 0) {
            if (nums1[i] > nums2[j]) {
                nums1[k--] = nums1[i--];
            } else {
                nums1[k--] = nums2[j--];
            }
        }
        // nếu còn phần tử trong nums2 thì copy sang nums1
        while (j >= 0) {
            nums1[k--] = nums2[j--];
        }
        System.out.println(Arrays.toString(nums1));
    }
}
