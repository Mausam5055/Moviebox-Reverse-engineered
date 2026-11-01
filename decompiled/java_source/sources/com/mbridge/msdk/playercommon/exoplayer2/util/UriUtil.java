package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.net.Uri;
import android.text.TextUtils;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class UriUtil {
    private static final int FRAGMENT = 3;
    private static final int INDEX_COUNT = 4;
    private static final int PATH = 1;
    private static final int QUERY = 2;
    private static final int SCHEME_COLON = 0;

    private UriUtil() {
    }

    private static int[] getUriIndices(String str) {
        int iIndexOf;
        int[] iArr = new int[4];
        if (TextUtils.isEmpty(str)) {
            iArr[0] = -1;
            return iArr;
        }
        int length = str.length();
        int iIndexOf2 = str.indexOf(35);
        if (iIndexOf2 != -1) {
            length = iIndexOf2;
        }
        int iIndexOf3 = str.indexOf(63);
        if (iIndexOf3 == -1 || iIndexOf3 > length) {
            iIndexOf3 = length;
        }
        int iIndexOf4 = str.indexOf(47);
        if (iIndexOf4 == -1 || iIndexOf4 > iIndexOf3) {
            iIndexOf4 = iIndexOf3;
        }
        int iIndexOf5 = str.indexOf(58);
        if (iIndexOf5 > iIndexOf4) {
            iIndexOf5 = -1;
        }
        int i11 = iIndexOf5 + 2;
        if (i11 < iIndexOf3 && str.charAt(iIndexOf5 + 1) == '/' && str.charAt(i11) == '/') {
            iIndexOf = str.indexOf(47, iIndexOf5 + 3);
            if (iIndexOf == -1 || iIndexOf > iIndexOf3) {
                iIndexOf = iIndexOf3;
            }
        } else {
            iIndexOf = iIndexOf5 + 1;
        }
        iArr[0] = iIndexOf5;
        iArr[1] = iIndexOf;
        iArr[2] = iIndexOf3;
        iArr[3] = length;
        return iArr;
    }

    private static String removeDotSegments(StringBuilder sb2, int i11, int i12) {
        int i13;
        int iLastIndexOf;
        if (i11 >= i12) {
            return sb2.toString();
        }
        if (sb2.charAt(i11) == '/') {
            i11++;
        }
        int i14 = i11;
        int i15 = i14;
        while (i14 <= i12) {
            if (i14 == i12) {
                i13 = i14;
            } else if (sb2.charAt(i14) == '/') {
                i13 = i14 + 1;
            } else {
                i14++;
            }
            int i16 = i15 + 1;
            if (i14 == i16 && sb2.charAt(i15) == '.') {
                sb2.delete(i15, i13);
                i12 -= i13 - i15;
            } else {
                if (i14 == i15 + 2 && sb2.charAt(i15) == '.' && sb2.charAt(i16) == '.') {
                    iLastIndexOf = sb2.lastIndexOf("/", i15 - 2) + 1;
                    int i17 = iLastIndexOf > i11 ? iLastIndexOf : i11;
                    sb2.delete(i17, i13);
                    i12 -= i13 - i17;
                } else {
                    iLastIndexOf = i14 + 1;
                }
                i15 = iLastIndexOf;
            }
            i14 = i15;
        }
        return sb2.toString();
    }

    public static Uri removeQueryParameter(Uri uri, String str) {
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.clearQuery();
        for (String str2 : uri.getQueryParameterNames()) {
            if (!str2.equals(str)) {
                Iterator<String> it = uri.getQueryParameters(str2).iterator();
                while (it.hasNext()) {
                    builderBuildUpon.appendQueryParameter(str2, it.next());
                }
            }
        }
        return builderBuildUpon.build();
    }

    public static String resolve(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        int[] uriIndices = getUriIndices(str2);
        if (uriIndices[0] != -1) {
            sb2.append(str2);
            removeDotSegments(sb2, uriIndices[1], uriIndices[2]);
            return sb2.toString();
        }
        int[] uriIndices2 = getUriIndices(str);
        if (uriIndices[3] == 0) {
            sb2.append((CharSequence) str, 0, uriIndices2[3]);
            sb2.append(str2);
            return sb2.toString();
        }
        if (uriIndices[2] == 0) {
            sb2.append((CharSequence) str, 0, uriIndices2[2]);
            sb2.append(str2);
            return sb2.toString();
        }
        int i11 = uriIndices[1];
        if (i11 != 0) {
            int i12 = uriIndices2[0] + 1;
            sb2.append((CharSequence) str, 0, i12);
            sb2.append(str2);
            return removeDotSegments(sb2, uriIndices[1] + i12, i12 + uriIndices[2]);
        }
        if (str2.charAt(i11) == '/') {
            sb2.append((CharSequence) str, 0, uriIndices2[1]);
            sb2.append(str2);
            int i13 = uriIndices2[1];
            return removeDotSegments(sb2, i13, uriIndices[2] + i13);
        }
        int i14 = uriIndices2[0] + 2;
        int i15 = uriIndices2[1];
        if (i14 >= i15 || i15 != uriIndices2[2]) {
            int iLastIndexOf = str.lastIndexOf(47, uriIndices2[2] - 1);
            int i16 = iLastIndexOf == -1 ? uriIndices2[1] : iLastIndexOf + 1;
            sb2.append((CharSequence) str, 0, i16);
            sb2.append(str2);
            return removeDotSegments(sb2, uriIndices2[1], i16 + uriIndices[2]);
        }
        sb2.append((CharSequence) str, 0, i15);
        sb2.append('/');
        sb2.append(str2);
        int i17 = uriIndices2[1];
        return removeDotSegments(sb2, i17, uriIndices[2] + i17 + 1);
    }

    public static Uri resolveToUri(String str, String str2) {
        return Uri.parse(resolve(str, str2));
    }
}
