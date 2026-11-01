package com.google.common.base;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {
    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        int iB;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = charSequence.charAt(i11);
            char cCharAt2 = charSequence2.charAt(i11);
            if (cCharAt != cCharAt2 && ((iB = b(cCharAt)) >= 26 || iB != b(cCharAt2))) {
                return false;
            }
        }
        return true;
    }

    private static int b(char c11) {
        return (char) ((c11 | ' ') - 97);
    }

    public static boolean c(char c11) {
        return c11 >= 'a' && c11 <= 'z';
    }

    public static boolean d(char c11) {
        return c11 >= 'A' && c11 <= 'Z';
    }

    public static String e(String str) {
        int length = str.length();
        int i11 = 0;
        while (i11 < length) {
            if (d(str.charAt(i11))) {
                char[] charArray = str.toCharArray();
                while (i11 < length) {
                    char c11 = charArray[i11];
                    if (d(c11)) {
                        charArray[i11] = (char) (c11 ^ ' ');
                    }
                    i11++;
                }
                return String.valueOf(charArray);
            }
            i11++;
        }
        return str;
    }

    public static char f(char c11) {
        return c(c11) ? (char) (c11 ^ ' ') : c11;
    }

    public static String g(String str) {
        int length = str.length();
        int i11 = 0;
        while (i11 < length) {
            if (c(str.charAt(i11))) {
                char[] charArray = str.toCharArray();
                while (i11 < length) {
                    char c11 = charArray[i11];
                    if (c(c11)) {
                        charArray[i11] = (char) (c11 ^ ' ');
                    }
                    i11++;
                }
                return String.valueOf(charArray);
            }
            i11++;
        }
        return str;
    }
}
