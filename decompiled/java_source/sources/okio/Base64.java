package okio;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: okio.-Base64, reason: invalid class name */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u000e\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\nH\u0000\u001a\u0016\u0010\u000b\u001a\u00020\n*\u00020\u00012\b\b\u0002\u0010\f\u001a\u00020\u0001H\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u001c\u0010\u0006\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0007\u0010\u0003\u001a\u0004\b\b\u0010\u0005¨\u0006\r"}, d2 = {"BASE64", "", "getBASE64$annotations", "()V", "getBASE64", "()[B", "BASE64_URL_SAFE", "getBASE64_URL_SAFE$annotations", "getBASE64_URL_SAFE", "decodeBase64ToArray", "", "encodeBase64", "map", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
public final class Base64 {
    private static final byte[] BASE64;
    private static final byte[] BASE64_URL_SAFE;

    static {
        ByteString.Companion companion = ByteString.INSTANCE;
        BASE64 = companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").getData();
        BASE64_URL_SAFE = companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").getData();
    }

    public static final byte[] decodeBase64ToArray(String str) {
        int i11;
        char cCharAt;
        Intrinsics.h(str, "<this>");
        int length = str.length();
        while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
            length--;
        }
        int i12 = (int) ((((long) length) * 6) / 8);
        byte[] bArr = new byte[i12];
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < length; i16++) {
            char cCharAt2 = str.charAt(i16);
            if ('A' <= cCharAt2 && cCharAt2 < '[') {
                i11 = cCharAt2 - 'A';
            } else if ('a' <= cCharAt2 && cCharAt2 < '{') {
                i11 = cCharAt2 - 'G';
            } else if ('0' <= cCharAt2 && cCharAt2 < ':') {
                i11 = cCharAt2 + 4;
            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                i11 = 62;
            } else {
                if (cCharAt2 == '/' || cCharAt2 == '_') {
                    i11 = 63;
                } else if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                    return null;
                }
            }
            i14 = (i14 << 6) | i11;
            i13++;
            if (i13 % 4 == 0) {
                bArr[i15] = (byte) (i14 >> 16);
                int i17 = i15 + 2;
                bArr[i15 + 1] = (byte) (i14 >> 8);
                i15 += 3;
                bArr[i17] = (byte) i14;
            }
        }
        int i18 = i13 % 4;
        if (i18 == 1) {
            return null;
        }
        if (i18 == 2) {
            bArr[i15] = (byte) ((i14 << 12) >> 16);
            i15++;
        } else if (i18 == 3) {
            int i19 = i14 << 6;
            int i20 = i15 + 1;
            bArr[i15] = (byte) (i19 >> 16);
            i15 += 2;
            bArr[i20] = (byte) (i19 >> 8);
        }
        if (i15 == i12) {
            return bArr;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, i15);
        Intrinsics.g(bArrCopyOf, "copyOf(this, newSize)");
        return bArrCopyOf;
    }

    public static final String encodeBase64(byte[] bArr, byte[] map) {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(map, "map");
        byte[] bArr2 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            byte b11 = bArr[i11];
            int i13 = i11 + 2;
            byte b12 = bArr[i11 + 1];
            i11 += 3;
            byte b13 = bArr[i13];
            bArr2[i12] = map[(b11 & 255) >> 2];
            bArr2[i12 + 1] = map[((b11 & 3) << 4) | ((b12 & 255) >> 4)];
            int i14 = i12 + 3;
            bArr2[i12 + 2] = map[((b12 & 15) << 2) | ((b13 & 255) >> 6)];
            i12 += 4;
            bArr2[i14] = map[b13 & Utf8.REPLACEMENT_BYTE];
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b14 = bArr[i11];
            bArr2[i12] = map[(b14 & 255) >> 2];
            bArr2[i12 + 1] = map[(b14 & 3) << 4];
            bArr2[i12 + 2] = 61;
            bArr2[i12 + 3] = 61;
        } else if (length2 == 2) {
            int i15 = i11 + 1;
            byte b15 = bArr[i11];
            byte b16 = bArr[i15];
            bArr2[i12] = map[(b15 & 255) >> 2];
            bArr2[i12 + 1] = map[((b15 & 3) << 4) | ((b16 & 255) >> 4)];
            bArr2[i12 + 2] = map[(b16 & 15) << 2];
            bArr2[i12 + 3] = 61;
        }
        return _JvmPlatformKt.toUtf8String(bArr2);
    }

    public static /* synthetic */ String encodeBase64$default(byte[] bArr, byte[] bArr2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bArr2 = BASE64;
        }
        return encodeBase64(bArr, bArr2);
    }

    public static final byte[] getBASE64() {
        return BASE64;
    }

    public static /* synthetic */ void getBASE64$annotations() {
    }

    public static final byte[] getBASE64_URL_SAFE() {
        return BASE64_URL_SAFE;
    }

    public static /* synthetic */ void getBASE64_URL_SAFE$annotations() {
    }
}
