package com.blankj.utilcode.util;

import android.content.res.Resources;
import java.util.IllegalFormatException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b0 {
    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        int length;
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || (length = charSequence.length()) != charSequence2.length()) {
            return false;
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return charSequence.equals(charSequence2);
        }
        for (int i11 = 0; i11 < length; i11++) {
            if (charSequence.charAt(i11) != charSequence2.charAt(i11)) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equalsIgnoreCase(str2);
    }

    public static String c(String str, Object... objArr) {
        if (str == null || objArr == null || objArr.length <= 0) {
            return str;
        }
        try {
            return String.format(str, objArr);
        } catch (IllegalFormatException e11) {
            e11.printStackTrace();
            return str;
        }
    }

    public static String d(int i11) {
        return e(i11, null);
    }

    public static String e(int i11, Object... objArr) {
        try {
            return c(Utils.a().getString(i11), objArr);
        } catch (Resources.NotFoundException e11) {
            e11.printStackTrace();
            return String.valueOf(i11);
        }
    }

    public static boolean f(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            if (!Character.isWhitespace(str.charAt(i11))) {
                return false;
            }
        }
        return true;
    }

    public static String g(String str) {
        if (str == null) {
            return "";
        }
        int length = str.length();
        if (length <= 1) {
            return str;
        }
        int i11 = length >> 1;
        char[] charArray = str.toCharArray();
        for (int i12 = 0; i12 < i11; i12++) {
            char c11 = charArray[i12];
            int i13 = (length - i12) - 1;
            charArray[i12] = charArray[i13];
            charArray[i13] = c11;
        }
        return new String(charArray);
    }
}
