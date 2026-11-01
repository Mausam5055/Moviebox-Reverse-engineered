package com.google.common.primitives;

import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Chars {

    private enum LexicographicalComparator implements Comparator<char[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(char[] cArr, char[] cArr2) {
            int iMin = Math.min(cArr.length, cArr2.length);
            for (int i11 = 0; i11 < iMin; i11++) {
                int iCompare = Character.compare(cArr[i11], cArr2[i11]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return cArr.length - cArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Chars.lexicographicalComparator()";
        }
    }

    public static boolean a(char[] cArr, char c11) {
        for (char c12 : cArr) {
            if (c12 == c11) {
                return true;
            }
        }
        return false;
    }
}
