package q00;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    public static boolean a(byte[] bArr, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (bArr[i12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(byte[] bArr, int i11, int i12, byte[] bArr2, int i13, int i14, boolean z10) {
        int i15 = i12 < i14 ? i12 : i14;
        for (int i16 = 0; i16 < i15; i16++) {
            if (bArr[i11 + i16] != bArr2[i13 + i16]) {
                return false;
            }
        }
        if (i12 == i14) {
            return true;
        }
        if (!z10) {
            return false;
        }
        if (i12 > i14) {
            while (i14 < i12) {
                if (bArr[i11 + i14] != 0) {
                    return false;
                }
                i14++;
            }
        } else {
            while (i12 < i14) {
                if (bArr2[i13 + i12] != 0) {
                    return false;
                }
                i12++;
            }
        }
        return true;
    }

    public static boolean c(String str, byte[] bArr, int i11, int i12) {
        try {
            byte[] bytes = str.getBytes(C.ASCII_NAME);
            return b(bytes, 0, bytes.length, bArr, i11, i12, false);
        } catch (UnsupportedEncodingException e11) {
            throw new RuntimeException(e11);
        }
    }
}
