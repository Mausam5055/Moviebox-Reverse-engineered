package com.cloud.tmc.miniutils.util;

import android.content.res.Resources;
import androidx.annotation.Nullable;
import java.util.IllegalFormatException;

/* JADX INFO: loaded from: classes3.dex */
public final class StringUtils {
    private StringUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static boolean equals(CharSequence charSequence, CharSequence charSequence2) {
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

    public static boolean equalsIgnoreCase(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equalsIgnoreCase(str2);
    }

    public static String format(@Nullable String str, Object... objArr) {
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

    public static String getString(int i11) {
        return getString(i11, null);
    }

    public static String getString(int i11, Object... objArr) {
        try {
            return format(Utils.getApp().getString(i11), objArr);
        } catch (Resources.NotFoundException e11) {
            e11.printStackTrace();
            return String.valueOf(i11);
        }
    }

    public static String[] getStringArray(int i11) {
        try {
            return Utils.getApp().getResources().getStringArray(i11);
        } catch (Resources.NotFoundException e11) {
            e11.printStackTrace();
            return new String[]{String.valueOf(i11)};
        }
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean isSpace(String str) {
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

    public static boolean isTrimEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static int length(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    public static String lowerFirstLetter(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        if (!Character.isUpperCase(str.charAt(0))) {
            return str;
        }
        return String.valueOf((char) (str.charAt(0) + ' ')) + str.substring(1);
    }

    public static String null2Length0(String str) {
        return str == null ? "" : str;
    }

    public static String reverse(String str) {
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

    public static String toDBC(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i11 = 0; i11 < length; i11++) {
            char c11 = charArray[i11];
            if (c11 == 12288) {
                charArray[i11] = ' ';
            } else if (65281 <= c11 && c11 <= 65374) {
                charArray[i11] = (char) (c11 - 65248);
            }
        }
        return new String(charArray);
    }

    public static String toSBC(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i11 = 0; i11 < length; i11++) {
            char c11 = charArray[i11];
            if (c11 == ' ') {
                charArray[i11] = 12288;
            } else if ('!' <= c11 && c11 <= '~') {
                charArray[i11] = (char) (c11 + 65248);
            }
        }
        return new String(charArray);
    }

    public static String upperFirstLetter(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        if (!Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        return ((char) (str.charAt(0) - ' ')) + str.substring(1);
    }
}
