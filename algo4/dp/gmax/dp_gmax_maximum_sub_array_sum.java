package gmax;

/**
 * Find the contiguous subarray within an array (containing at least one number)
 * which has the largest sum.
 *
 * For example, given the array [−2,1,−3,4,−1,2,1,−5,4], the contiguous
 * sub-array [4,−1,2,1] has the largest sum = 6.
 *
 * [Difficulty] - Medium
 * [Source]     - {@linkplain https://leetcode.com/problems/maximum-subarray/}
 *
 */
public class dp_gmax_maximum_sub_array_sum
{
    public int maxSubArray(int[] nums)
    {
        int n = nums.length;
        int[] dp = new int[n];
        dp[0] = nums[0];

        for (int i = 1; i < n; ++i) {
            dp[i] = Math.max(nums[i], dp[i - 1] + nums[i]);
        }

        int gMax = nums[0];
        for (int i = 1; i < n; ++i) {
            gMax = Math.max(gMax, dp[i]);
        }

        return gMax;
    }

    /**
     * Let us denote that:
     *
     * f(k) = Maximum sum of subarray ending at index k.
     * 
     * Then,
     * 
     * f(k) = max(f(k-1) + A[k], A[k])
     * 
     * Using an array of size n, We could deduce the final answer by as f(n–1),
     * with the initial state of f(0) = A[0].
     *
     * Since we only need to access its previous element at each step, two
     * variables are sufficient. Notice the difference between the two:
     * maxEndingHere and maxSoFar; the former is the maximum sum of subarray
     * that must end at index k, while the latter is the global maximum subarray
     * sum.
     */
    public int maxSubArrayOptimized(int[] nums)
    {
        int n = nums.length, lMax = nums[0], gMax = nums[0];

        for (int i = 1; i < n; ++i) {
            lMax = Math.max(lMax + nums[i], nums[i]);
            gMax = Math.max(gMax, lMax);
        }

        return gMax;
    }

    /**
     * A variance of this problem: if the maximum sum is negative, return 0.
     *
     */
    public int maxConsSum(int[] arr)
    {
        int n = arr.length;

        int lMax = arr[0];
        int gMax = arr[0];

        for (int i = 1; i < n; ++i) {
            lMax += arr[i];
            lMax = Math.max(0, lMax);
            gMax = Math.max(gMax, lMax);
        }

        return Math.max(0, gMax);
    }

    /**
     * A variance of this problem: if the array represents a circle. This
     * solution uses two arrays to store maximum sum for arr[0..i] and
     * arr[i..n-1].
     */
    public int maxConsSumInCircle(int[] arr)
    {
        int n = arr.length;
        if (n == 0) {
            return 0;
        }

        int gMax = maxConsSum(arr);

        int[] l2r = new int[n];
        int[] r2l = new int[n];

        l2r[0] = Math.max(0, arr[0]);
        int sum = arr[0];
        for (int i = 1; i < n; ++i) {
            sum += arr[i];
            l2r[i] = Math.max(l2r[i - 1], sum);
        }

        r2l[n - 1] = Math.max(0, arr[n - 1]);
        sum = arr[n - 1];
        for (int i = n - 2; i >= 0; --i) {
            sum += arr[i];
            r2l[i] = Math.max(r2l[i + 1], sum);
        }

        for (int i = 0; i < n - 1; ++i) {
            gMax = Math.max(gMax, l2r[i] + r2l[i + 1]);
        }

        return gMax;
    }
}
