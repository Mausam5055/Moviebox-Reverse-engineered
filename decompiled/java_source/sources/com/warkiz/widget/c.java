package com.warkiz.widget;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[][] f60781a = {"0.".toCharArray(), "0.0".toCharArray(), "0.00".toCharArray(), "0.000".toCharArray(), "0.0000".toCharArray(), "0.00000".toCharArray(), "0.000000".toCharArray(), "0.0000000".toCharArray(), "0.00000000".toCharArray(), "0.000000000".toCharArray(), "0.0000000000".toCharArray(), "0.00000000000".toCharArray(), "0.000000000000".toCharArray(), "0.0000000000000".toCharArray(), "0.00000000000000".toCharArray(), "0.000000000000000".toCharArray()};

    private static String a(double d11, int i11) {
        String string = new BigDecimal(Double.toString(d11)).setScale(Math.abs(i11), RoundingMode.HALF_UP).toString();
        if (i11 == 0) {
            return string;
        }
        int length = string.length() - 1;
        while (length >= 0 && string.charAt(length) == '0') {
            length--;
        }
        String strSubstring = string.substring(0, length + 1);
        return strSubstring.charAt(strSubstring.length() + (-1)) == '.' ? strSubstring.substring(0, strSubstring.length() - 1) : strSubstring;
    }

    static String b(double d11, int i11) {
        char[] cArr;
        int iAbs = Math.abs(i11);
        double dAbs = (Math.abs(d11) * Math.pow(10.0d, iAbs)) + 0.5d;
        if (dAbs > 9.99999999999999E14d || iAbs > 16) {
            return a(d11, iAbs);
        }
        long jNextUp = (long) Math.nextUp(dAbs);
        if (jNextUp < 1) {
            return "0";
        }
        char[] charArray = Long.toString(jNextUp).toCharArray();
        if (charArray.length > iAbs) {
            int length = charArray.length - 1;
            int length2 = charArray.length - iAbs;
            while (length >= length2 && charArray[length] == '0') {
                length--;
            }
            if (length >= length2) {
                cArr = new char[length + 2];
                System.arraycopy(charArray, 0, cArr, 0, length2);
                cArr[length2] = '.';
                System.arraycopy(charArray, length2, cArr, length2 + 1, (length - length2) + 1);
            } else {
                cArr = new char[length2];
                System.arraycopy(charArray, 0, cArr, 0, length2);
            }
        } else {
            int length3 = charArray.length - 1;
            while (length3 >= 0 && charArray[length3] == '0') {
                length3--;
            }
            char[] cArr2 = f60781a[iAbs - charArray.length];
            char[] cArrCopyOf = Arrays.copyOf(cArr2, cArr2.length + length3 + 1);
            System.arraycopy(charArray, 0, cArrCopyOf, cArr2.length, length3 + 1);
            cArr = cArrCopyOf;
        }
        if (Math.signum(d11) > 0.0d) {
            return new String(cArr);
        }
        return "-" + new String(cArr);
    }
}
