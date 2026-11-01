package com.mbridge.msdk.thrid.okio;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f38428a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f38429b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    public static String a(byte[] bArr) {
        return a(bArr, f38428a);
    }

    private static String a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            bArr3[i11] = bArr2[(bArr[i12] & 255) >> 2];
            int i13 = i12 + 1;
            bArr3[i11 + 1] = bArr2[((bArr[i12] & 3) << 4) | ((bArr[i13] & 255) >> 4)];
            int i14 = i11 + 3;
            int i15 = (bArr[i13] & 15) << 2;
            int i16 = i12 + 2;
            bArr3[i11 + 2] = bArr2[i15 | ((bArr[i16] & 255) >> 6)];
            i11 += 4;
            bArr3[i14] = bArr2[bArr[i16] & Utf8.REPLACEMENT_BYTE];
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            bArr3[i11] = bArr2[(bArr[length] & 255) >> 2];
            bArr3[i11 + 1] = bArr2[(bArr[length] & 3) << 4];
            bArr3[i11 + 2] = 61;
            bArr3[i11 + 3] = 61;
        } else if (length2 == 2) {
            bArr3[i11] = bArr2[(bArr[length] & 255) >> 2];
            int i17 = (bArr[length] & 3) << 4;
            int i18 = length + 1;
            bArr3[i11 + 1] = bArr2[((bArr[i18] & 255) >> 4) | i17];
            bArr3[i11 + 2] = bArr2[(bArr[i18] & 15) << 2];
            bArr3[i11 + 3] = 61;
        }
        try {
            return new String(bArr3, C.ASCII_NAME);
        } catch (UnsupportedEncodingException e11) {
            throw new AssertionError(e11);
        }
    }
}
