package traversal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.Queue;

/**
 * Given a binary tree, return the bottom-up level order traversal of its nodes' values.
 * (ie, from left to right, level by level from leaf to root).
 * 
 * For example:
 * 
 * Given binary tree {3,9,20,#,#,15,7},
 * 
 *     3
 *    / \
 *   9  20
 *     /  \
 *    15   7
 *    
 * return its bottom-up level order traversal as:
 * 
 * [
 *   [15,7],
 *   [9,20],
 *   [3]
 * ]
 * 
 * [Difficulty] - Medium
 * [Source]     - {@linkplain https://oj.leetcode.com/problems/binary-tree-level-order-traversal-ii/}
 *
 */
public class tr_trav_binary_tree_level_order_traversal_II {
    public class TreeNode {
        int val;
        TreeNode left;
        TreeNode right;

        TreeNode(int x) {
            val = x;
        }
    }

    public ArrayList<ArrayList<Integer>> levelOrderBottom(TreeNode root) {
        ArrayList<ArrayList<Integer>> result = new ArrayList<ArrayList<Integer>>();

        if (root == null) {
            return result;
        }

        Queue<TreeNode> q = new LinkedList<TreeNode>();
        q.add(root);

        while (!q.isEmpty()) {
            Queue<TreeNode> tq = new LinkedList<TreeNode>(q);
            ArrayList<Integer> level = new ArrayList<Integer>();
            q.clear();

            while (!tq.isEmpty()) {
                TreeNode c = tq.poll();
                level.add(c.val);

                if (c.left != null) {
                    q.add(c.left);
                }

                if (c.right != null) {
                    q.add(c.right);
                }
            }

            result.add(level);
        }

        Collections.reverse(result);
        return result;
    }

    public ArrayList<ArrayList<Integer>> levelOrderBottom2(TreeNode root) {
        ArrayList<ArrayList<Integer>> result = new ArrayList<ArrayList<Integer>>();

        if (root == null) {
            return result;
        }

        Queue<TreeNode> q = new LinkedList<TreeNode>();
        ArrayList<Integer> level = new ArrayList<Integer>();
        q.add(root);
        q.add(null);

        while (true) {
            TreeNode c = q.poll();

            if (c == null) {
                result.add(new ArrayList<Integer>(level));
                level.clear();

                if (q.isEmpty()) {
                    break;
                }

                q.add(null);
            } else {
                level.add(c.val);

                if (c.left != null) {
                    q.add(c.left);
                }

                if (c.right != null) {
                    q.add(c.right);
                }
            }
        }

        Collections.reverse(result);
        return result;
    }
}