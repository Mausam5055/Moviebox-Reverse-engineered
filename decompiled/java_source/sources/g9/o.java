package g9;

import com.google.android.exoplayer2.ParserException;
import java.io.EOFException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class o {
    public static void a(boolean z10, String str) throws ParserException {
        if (!z10) {
            throw ParserException.createForMalformedContainer(str, null);
        }
    }

    public static boolean b(m mVar, byte[] bArr, int i11, int i12, boolean z10) throws EOFException {
        try {
            return mVar.peekFully(bArr, i11, i12, z10);
        } catch (EOFException e11) {
            if (z10) {
                return false;
            }
            throw e11;
        }
    }

    public static int c(m mVar, byte[] bArr, int i11, int i12) {
        int i13 = 0;
        while (i13 < i12) {
            int iB = mVar.b(bArr, i11 + i13, i12 - i13);
            if (iB == -1) {
                break;
            }
            i13 += iB;
        }
        return i13;
    }

    public static boolean d(m mVar, byte[] bArr, int i11, int i12) {
        try {
            mVar.readFully(bArr, i11, i12);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean e(m mVar, int i11) {
        try {
            mVar.skipFully(i11);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
