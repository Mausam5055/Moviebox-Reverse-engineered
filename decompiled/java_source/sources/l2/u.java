package l2;

import androidx.media3.common.ParserException;
import java.io.EOFException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class u {
    public static void a(boolean z10, String str) throws ParserException {
        if (!z10) {
            throw ParserException.createForMalformedContainer(str, null);
        }
    }

    public static boolean b(s sVar, byte[] bArr, int i11, int i12, boolean z10) throws EOFException {
        try {
            return sVar.peekFully(bArr, i11, i12, z10);
        } catch (EOFException e11) {
            if (z10) {
                return false;
            }
            throw e11;
        }
    }

    public static int c(s sVar, byte[] bArr, int i11, int i12) {
        int i13 = 0;
        while (i13 < i12) {
            int iB = sVar.b(bArr, i11 + i13, i12 - i13);
            if (iB == -1) {
                break;
            }
            i13 += iB;
        }
        return i13;
    }

    public static boolean d(s sVar, byte[] bArr, int i11, int i12) {
        try {
            sVar.readFully(bArr, i11, i12);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean e(s sVar, int i11) {
        try {
            sVar.skipFully(i11);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
