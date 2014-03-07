import java.util.Random;

public class quick_sort {
    static int[] quickSort(int[] array) {
        quickSort(array, 0, array.length);
        return array;
    }

    static void quickSort(int[] array, int start, int end) {
        if (end - start <= 1) {
            return;
        }

        int partitionPoint = partition(array, start, end);
        quickSort(array, start, partitionPoint);
        quickSort(array, partitionPoint + 1, end);
    }

    public static Random r = new Random();

    private static int partition(int[] array, int start, int end) {
        int i = start;
        int j = end - 1;
        int pivot = start + r.nextInt(end - start);

        while (i < j) {
            while (array[i] < array[pivot]) {
                i++;
            }

            while (array[j] > array[pivot]) {
                j--;
            }

            if (i < j) {
                swap(array, i++, j--);
            }
        }

        return i;
    }

    private static void swap(int[] array, int i, int j) {
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }

    public static void main(String[] args) {
        int[] array = new int[] { 1, 5, 2, 8, 9, 11 };
        int[] result = quickSort(array);
        for (int i = 1; i < result.length; i++) {
            assert result[i] >= result[i - 1];
        }
    }
}