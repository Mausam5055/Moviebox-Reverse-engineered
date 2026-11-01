package org.mvel2.util;

/* JADX INFO: loaded from: classes7.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f72092a = {'0', '1', '2', '3', '0', '1', '2', '0', '0', '2', '2', '4', '5', '5', '0', '1', '2', '6', '2', '3', '0', '1', '0', '2', '0', '2'};

    public static String a(String str) {
        char c11;
        char[] charArray = str.toUpperCase().toCharArray();
        StringBuilder sb2 = new StringBuilder();
        char c12 = '?';
        for (int i11 = 0; i11 < charArray.length && sb2.length() < 4 && (c11 = charArray[i11]) != ','; i11++) {
            if (c11 >= 'A' && c11 <= 'Z' && c11 != c12) {
                char c13 = f72092a[c11 - 'A'];
                if (c13 != '0') {
                    sb2.append(c13);
                }
                c12 = c11;
            }
        }
        if (sb2.length() == 0) {
            return null;
        }
        for (int length = sb2.length(); length < 4; length++) {
            sb2.append('0');
        }
        return sb2.toString();
    }
}
