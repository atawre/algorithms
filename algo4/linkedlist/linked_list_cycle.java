public class linked_list_cycle {
    class ListNode {
        int val;
        ListNode next;

        ListNode(int x) {
            val = x;
            next = null;
        }
    }

    public boolean hasCycle(ListNode head) {
        if (head == null || head.next == null) {
            return false;
        }

        ListNode i = head;
        ListNode j = head.next;

        while (i != null && j != null) {
            if (i == j) {
                return true;
            }

            i = i.next;

            if (j.next == null) {
                return false;
            } else {
                j = j.next.next;
            }
        }

        return false;
    }
}