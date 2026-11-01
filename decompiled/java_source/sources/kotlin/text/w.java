package kotlin.text;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class w extends v {
    public static String t1(String str, int i11) {
        Intrinsics.h(str, "<this>");
        if (i11 >= 0) {
            String strSubstring = str.substring(RangesKt.i(i11, str.length()));
            Intrinsics.g(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i11 + " is less than zero.").toString());
    }

    public static char u1(CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(0);
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static Character v1(CharSequence charSequence, int i11) {
        Intrinsics.h(charSequence, "<this>");
        if (i11 < 0 || i11 >= charSequence.length()) {
            return null;
        }
        return Character.valueOf(charSequence.charAt(i11));
    }

    public static char w1(CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(StringsKt.i0(charSequence));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static char x1(CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        int length = charSequence.length();
        if (length == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        if (length == 1) {
            return charSequence.charAt(0);
        }
        throw new IllegalArgumentException("Char sequence has more than one element.");
    }

    public static String y1(String str, int i11) {
        Intrinsics.h(str, "<this>");
        if (i11 >= 0) {
            String strSubstring = str.substring(0, RangesKt.i(i11, str.length()));
            Intrinsics.g(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i11 + " is less than zero.").toString());
    }
}
