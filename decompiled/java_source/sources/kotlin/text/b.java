package kotlin.text;

import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class b {
    public static int a(int i11) {
        if (2 <= i11 && i11 < 37) {
            return i11;
        }
        throw new IllegalArgumentException("radix " + i11 + " was not in valid range " + new IntRange(2, 36));
    }

    public static final int b(char c11, int i11) {
        return Character.digit((int) c11, i11);
    }

    public static boolean c(char c11) {
        return Character.isWhitespace(c11) || Character.isSpaceChar(c11);
    }

    public static String d(char c11, Locale locale) {
        Intrinsics.h(locale, "locale");
        String strE = e(c11, locale);
        if (strE.length() <= 1) {
            String strValueOf = String.valueOf(c11);
            Intrinsics.f(strValueOf, "null cannot be cast to non-null type java.lang.String");
            String upperCase = strValueOf.toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            return !Intrinsics.c(strE, upperCase) ? strE : String.valueOf(Character.toTitleCase(c11));
        }
        if (c11 == 329) {
            return strE;
        }
        char cCharAt = strE.charAt(0);
        Intrinsics.f(strE, "null cannot be cast to non-null type java.lang.String");
        String strSubstring = strE.substring(1);
        Intrinsics.g(strSubstring, "substring(...)");
        Intrinsics.f(strSubstring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strSubstring.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return cCharAt + lowerCase;
    }

    public static final String e(char c11, Locale locale) {
        Intrinsics.h(locale, "locale");
        String strValueOf = String.valueOf(c11);
        Intrinsics.f(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = strValueOf.toUpperCase(locale);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        return upperCase;
    }
}
