package x9;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f78147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f78148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String[] f78149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f78150d;

    private n(String[] strArr, int[] iArr, String[] strArr2, int i11) {
        this.f78147a = strArr;
        this.f78148b = iArr;
        this.f78149c = strArr2;
        this.f78150d = i11;
    }

    public static n b(String str) {
        String[] strArr = new String[5];
        int[] iArr = new int[4];
        String[] strArr2 = new String[4];
        return new n(strArr, iArr, strArr2, c(str, strArr, iArr, strArr2));
    }

    private static int c(String str, String[] strArr, int[] iArr, String[] strArr2) {
        String strSubstring;
        strArr[0] = "";
        int length = 0;
        int i11 = 0;
        while (length < str.length()) {
            int iIndexOf = str.indexOf("$", length);
            if (iIndexOf == -1) {
                String strValueOf = String.valueOf(strArr[i11]);
                String strValueOf2 = String.valueOf(str.substring(length));
                strArr[i11] = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                length = str.length();
            } else if (iIndexOf != length) {
                String strValueOf3 = String.valueOf(strArr[i11]);
                String strValueOf4 = String.valueOf(str.substring(length, iIndexOf));
                strArr[i11] = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
                length = iIndexOf;
            } else if (str.startsWith("$$", length)) {
                strArr[i11] = String.valueOf(strArr[i11]).concat("$");
                length += 2;
            } else {
                int i12 = length + 1;
                int iIndexOf2 = str.indexOf("$", i12);
                String strSubstring2 = str.substring(i12, iIndexOf2);
                if (strSubstring2.equals("RepresentationID")) {
                    iArr[i11] = 1;
                } else {
                    int iIndexOf3 = strSubstring2.indexOf("%0");
                    if (iIndexOf3 != -1) {
                        strSubstring = strSubstring2.substring(iIndexOf3);
                        if (!strSubstring.endsWith(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D) && !strSubstring.endsWith("x") && !strSubstring.endsWith("X")) {
                            strSubstring = strSubstring.concat(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);
                        }
                        strSubstring2 = strSubstring2.substring(0, iIndexOf3);
                    } else {
                        strSubstring = "%01d";
                    }
                    strSubstring2.hashCode();
                    switch (strSubstring2) {
                        case "Number":
                            iArr[i11] = 2;
                            break;
                        case "Time":
                            iArr[i11] = 4;
                            break;
                        case "Bandwidth":
                            iArr[i11] = 3;
                            break;
                        default:
                            throw new IllegalArgumentException(str.length() != 0 ? "Invalid template: ".concat(str) : new String("Invalid template: "));
                    }
                    strArr2[i11] = strSubstring;
                }
                i11++;
                strArr[i11] = "";
                length = iIndexOf2 + 1;
            }
        }
        return i11;
    }

    public String a(String str, long j11, int i11, long j12) {
        StringBuilder sb2 = new StringBuilder();
        int i12 = 0;
        while (true) {
            int i13 = this.f78150d;
            if (i12 >= i13) {
                sb2.append(this.f78147a[i13]);
                return sb2.toString();
            }
            sb2.append(this.f78147a[i12]);
            int i14 = this.f78148b[i12];
            if (i14 == 1) {
                sb2.append(str);
            } else if (i14 == 2) {
                sb2.append(String.format(Locale.US, this.f78149c[i12], Long.valueOf(j11)));
            } else if (i14 == 3) {
                sb2.append(String.format(Locale.US, this.f78149c[i12], Integer.valueOf(i11)));
            } else if (i14 == 4) {
                sb2.append(String.format(Locale.US, this.f78149c[i12], Long.valueOf(j12)));
            }
            i12++;
        }
    }
}
