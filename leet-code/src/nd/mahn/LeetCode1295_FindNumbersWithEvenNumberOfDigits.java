package nd.mahn;

public class LeetCode1295_FindNumbersWithEvenNumberOfDigits {
    public static void main(String[] args) {
        int[] nums = {12, 345, 2, 6, 7896};
        int f = findNumbers(nums);
        System.out.println(f);
    }

    public static int findNumbers(int[] nums) {
        int countEven = 0;
        for (int j : nums) {
            int num = findEvenNumber(j);
            if (num % 2 == 0) {
                countEven++;
            }
        }
        return countEven;
    }

    public static int findEvenNumber(int number) {
        int count = 0;
        int divisor = 0;
        while (number != 0) {
            divisor = number / 10;
            number = divisor;
            count++;
        }
        return count;
    }
}
