package kotlin.text;

import java.util.Comparator;
import java.util.Locale;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class s extends r {
    public static final String A(String str, Locale locale) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(locale, "locale");
        if (str.length() <= 0) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if (!Character.isLowerCase(cCharAt)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        char titleCase = Character.toTitleCase(cCharAt);
        if (titleCase != Character.toUpperCase(cCharAt)) {
            sb2.append(titleCase);
        } else {
            String strSubstring = str.substring(0, 1);
            Intrinsics.g(strSubstring, "substring(...)");
            Intrinsics.f(strSubstring, "null cannot be cast to non-null type java.lang.String");
            String upperCase = strSubstring.toUpperCase(locale);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            sb2.append(upperCase);
        }
        String strSubstring2 = str.substring(1);
        Intrinsics.g(strSubstring2, "substring(...)");
        sb2.append(strSubstring2);
        return sb2.toString();
    }

    public static String B(char[] cArr) {
        Intrinsics.h(cArr, "<this>");
        return new String(cArr);
    }

    public static String C(char[] cArr, int i11, int i12) {
        Intrinsics.h(cArr, "<this>");
        AbstractList.INSTANCE.a(i11, i12, cArr.length);
        return new String(cArr, i11, i12 - i11);
    }

    public static String D(byte[] bArr) {
        Intrinsics.h(bArr, "<this>");
        return new String(bArr, Charsets.UTF_8);
    }

    public static byte[] E(String str) {
        Intrinsics.h(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "getBytes(...)");
        return bytes;
    }

    public static boolean F(String str, String suffix, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(suffix, "suffix");
        return !z10 ? str.endsWith(suffix) : StringsKt.K(str, str.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    public static /* synthetic */ boolean G(String str, String str2, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return StringsKt.F(str, str2, z10);
    }

    public static boolean H(String str, String str2, boolean z10) {
        if (str == null) {
            return str2 == null;
        }
        return !z10 ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static /* synthetic */ boolean I(String str, String str2, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return StringsKt.H(str, str2, z10);
    }

    public static Comparator J(StringCompanionObject stringCompanionObject) {
        Intrinsics.h(stringCompanionObject, "<this>");
        Comparator CASE_INSENSITIVE_ORDER = String.CASE_INSENSITIVE_ORDER;
        Intrinsics.g(CASE_INSENSITIVE_ORDER, "CASE_INSENSITIVE_ORDER");
        return CASE_INSENSITIVE_ORDER;
    }

    public static boolean K(String str, int i11, String other, int i12, int i13, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(other, "other");
        return !z10 ? str.regionMatches(i11, other, i12, i13) : str.regionMatches(z10, i11, other, i12, i13);
    }

    public static /* synthetic */ boolean L(String str, int i11, String str2, int i12, int i13, boolean z10, int i14, Object obj) {
        if ((i14 & 16) != 0) {
            z10 = false;
        }
        return StringsKt.K(str, i11, str2, i12, i13, z10);
    }

    public static String M(CharSequence charSequence, int i11) {
        Intrinsics.h(charSequence, "<this>");
        if (i11 < 0) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i11 + '.').toString());
        }
        if (i11 == 0) {
            return "";
        }
        int i12 = 1;
        if (i11 == 1) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            char cCharAt = charSequence.charAt(0);
            char[] cArr = new char[i11];
            for (int i13 = 0; i13 < i11; i13++) {
                cArr[i13] = cCharAt;
            }
            return new String(cArr);
        }
        StringBuilder sb2 = new StringBuilder(charSequence.length() * i11);
        if (1 <= i11) {
            while (true) {
                sb2.append(charSequence);
                if (i12 == i11) {
                    break;
                }
                i12++;
            }
        }
        String string = sb2.toString();
        Intrinsics.e(string);
        return string;
    }

    public static final String N(String str, char c11, char c12, boolean z10) {
        Intrinsics.h(str, "<this>");
        if (!z10) {
            String strReplace = str.replace(c11, c12);
            Intrinsics.g(strReplace, "replace(...)");
            return strReplace;
        }
        StringBuilder sb2 = new StringBuilder(str.length());
        for (int i11 = 0; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (c.g(cCharAt, c11, z10)) {
                cCharAt = c12;
            }
            sb2.append(cCharAt);
        }
        return sb2.toString();
    }

    public static String O(String str, String oldValue, String newValue, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(oldValue, "oldValue");
        Intrinsics.h(newValue, "newValue");
        int i11 = 0;
        int iK0 = StringsKt.k0(str, oldValue, 0, z10);
        if (iK0 < 0) {
            return str;
        }
        int length = oldValue.length();
        int iF = RangesKt.f(length, 1);
        int length2 = (str.length() - length) + newValue.length();
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb2 = new StringBuilder(length2);
        do {
            sb2.append((CharSequence) str, i11, iK0);
            sb2.append(newValue);
            i11 = iK0 + length;
            if (iK0 >= str.length()) {
                break;
            }
            iK0 = StringsKt.k0(str, oldValue, iK0 + iF, z10);
        } while (iK0 > 0);
        sb2.append((CharSequence) str, i11, str.length());
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public static /* synthetic */ String P(String str, char c11, char c12, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return N(str, c11, c12, z10);
    }

    public static /* synthetic */ String Q(String str, String str2, String str3, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return StringsKt.O(str, str2, str3, z10);
    }

    public static String R(String str, String oldValue, String newValue, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(oldValue, "oldValue");
        Intrinsics.h(newValue, "newValue");
        int iO0 = StringsKt.o0(str, oldValue, 0, z10, 2, null);
        return iO0 < 0 ? str : StringsKt.M0(str, iO0, oldValue.length() + iO0, newValue).toString();
    }

    public static /* synthetic */ String S(String str, String str2, String str3, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return StringsKt.R(str, str2, str3, z10);
    }

    public static boolean T(String str, String prefix, int i11, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(prefix, "prefix");
        return !z10 ? str.startsWith(prefix, i11) : StringsKt.K(str, i11, prefix, 0, prefix.length(), z10);
    }

    public static boolean U(String str, String prefix, boolean z10) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(prefix, "prefix");
        return !z10 ? str.startsWith(prefix) : StringsKt.K(str, 0, prefix, 0, prefix.length(), z10);
    }

    public static /* synthetic */ boolean V(String str, String str2, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return StringsKt.T(str, str2, i11, z10);
    }

    public static /* synthetic */ boolean W(String str, String str2, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return StringsKt.U(str, str2, z10);
    }

    public static String z(String str) {
        Intrinsics.h(str, "<this>");
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault(...)");
        return A(str, locale);
    }
}
