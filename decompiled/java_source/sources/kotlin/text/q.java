package kotlin.text;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Settings;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class q extends p {
    /* JADX WARN: Code duplicated, block: B:102:0x010a  */
    /* JADX WARN: Code duplicated, block: B:41:0x007c  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b4  */
    private static final boolean r(String str) {
        boolean z10;
        int i11;
        boolean z11;
        String str2;
        int i12;
        boolean z12;
        int length = str.length() - 1;
        int i13 = 0;
        while (i13 <= length && str.charAt(i13) <= ' ') {
            i13++;
        }
        if (i13 > length) {
            return false;
        }
        while (length > i13 && str.charAt(length) <= ' ') {
            length--;
        }
        if (str.charAt(i13) == '+' || str.charAt(i13) == '-') {
            i13++;
        }
        if (i13 > length) {
            return false;
        }
        if (str.charAt(i13) != '0') {
            z10 = false;
        } else {
            int i14 = i13 + 1;
            if (i14 > length) {
                return true;
            }
            if ((str.charAt(i14) | ' ') == 120) {
                int i15 = i13 + 2;
                int i16 = i15;
                while (i16 <= length) {
                    char cCharAt = str.charAt(i16);
                    if (((cCharAt - '0') & Settings.DEFAULT_INITIAL_WINDOW_SIZE) >= 10 && (((cCharAt | ' ') - 97) & Settings.DEFAULT_INITIAL_WINDOW_SIZE) >= 6) {
                        break;
                    }
                    i16++;
                }
                boolean z13 = i15 != i16;
                if (i16 <= length) {
                    if (str.charAt(i16) == '.') {
                        int i17 = i16 + 1;
                        i12 = i17;
                        while (i12 <= length) {
                            char cCharAt2 = str.charAt(i12);
                            if (((cCharAt2 - '0') & Settings.DEFAULT_INITIAL_WINDOW_SIZE) >= 10 && (((cCharAt2 | ' ') - 97) & Settings.DEFAULT_INITIAL_WINDOW_SIZE) >= 6) {
                                break;
                            }
                            i12++;
                        }
                        if (i17 != i12) {
                            z12 = true;
                        }
                        if (!z13 || z12) {
                            i13 = i12;
                        } else {
                            i13 = -1;
                        }
                    } else {
                        i12 = i16;
                    }
                    z12 = false;
                    if (z13) {
                    }
                    i13 = i12;
                } else {
                    i13 = -1;
                }
                if (i13 == -1 || i13 > length) {
                    return false;
                }
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (!z10) {
            int i18 = i13;
            while (i18 <= length && ((str.charAt(i18) - '0') & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 10) {
                i18++;
            }
            boolean z14 = i13 != i18;
            if (i18 > length) {
                i13 = i18;
            } else {
                if (str.charAt(i18) == '.') {
                    int i19 = i18 + 1;
                    i11 = i19;
                    while (i11 <= length && ((str.charAt(i11) - '0') & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 10) {
                        i11++;
                    }
                    if (i19 != i11) {
                        z11 = true;
                    }
                    if (!z14 || z11) {
                        i13 = i11;
                    } else {
                        if (length == i11 + 2) {
                            str2 = "NaN";
                        } else {
                            str2 = length == i11 + 7 ? "Infinity" : null;
                        }
                        i13 = (str2 != null && StringsKt.k0(str, str2, i11, false) == i11) ? length + 1 : -1;
                    }
                } else {
                    i11 = i18;
                }
                z11 = false;
                if (z14) {
                    i13 = i11;
                } else {
                    i13 = i11;
                }
            }
            if (i13 == -1) {
                return false;
            }
            if (i13 > length) {
                return true;
            }
        }
        int i20 = i13 + 1;
        int iCharAt = str.charAt(i13) | ' ';
        if (iCharAt != (z10 ? 112 : 101)) {
            return !z10 && (iCharAt == 102 || iCharAt == 100) && i20 > length;
        }
        if (i20 > length) {
            return false;
        }
        if ((str.charAt(i20) == '+' || str.charAt(i20) == '-') && (i20 = i13 + 2) > length) {
            return false;
        }
        while (i20 <= length && ((str.charAt(i20) - '0') & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 10) {
            i20++;
        }
        if (i20 > length) {
            return true;
        }
        if (i20 != length) {
            return false;
        }
        int iCharAt2 = str.charAt(i20) | ' ';
        return iCharAt2 == 102 || iCharAt2 == 100;
    }

    public static Double s(String str) {
        Intrinsics.h(str, "<this>");
        try {
            if (r(str)) {
                return Double.valueOf(Double.parseDouble(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Float t(String str) {
        Intrinsics.h(str, "<this>");
        try {
            if (r(str)) {
                return Float.valueOf(Float.parseFloat(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
