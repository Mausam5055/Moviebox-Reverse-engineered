package com.amazonaws.util;

import java.nio.charset.Charset;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class StringUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f19004a = Charset.forName("UTF-8");

    public static boolean a(CharSequence charSequence) {
        int length;
        if (charSequence != null && (length = charSequence.length()) != 0) {
            for (int i11 = 0; i11 < length; i11++) {
                if (!Character.isWhitespace(charSequence.charAt(i11))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        return str.isEmpty() ? "" : str.toLowerCase(Locale.ENGLISH);
    }

    public static String c(String str) {
        if (str == null) {
            return null;
        }
        return str.isEmpty() ? "" : str.toUpperCase(Locale.ENGLISH);
    }
}
