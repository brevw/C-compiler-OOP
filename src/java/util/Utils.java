package util;


public class Utils {
    public static final int WORD_SIZE = 4;
    public static final int WORD_ALIGNMENT_CONST = 2;


    public static int computeAlignmentOffset(int size, int alignment) {
        int offsetToCorrectAlignment = size % alignment;
        offsetToCorrectAlignment = (offsetToCorrectAlignment == 0) ? 0 : alignment - offsetToCorrectAlignment;
        return offsetToCorrectAlignment;
    }
}
