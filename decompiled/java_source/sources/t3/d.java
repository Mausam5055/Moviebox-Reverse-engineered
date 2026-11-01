package t3;

import android.util.Pair;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import l2.s;

/* JADX INFO: loaded from: classes2.dex */
abstract class d {

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f76052a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f76053b;

        private a(int i11, long j11) {
            this.f76052a = i11;
            this.f76053b = j11;
        }

        public static a a(s sVar, j0 j0Var) {
            sVar.peekFully(j0Var.e(), 0, 8);
            j0Var.W(0);
            return new a(j0Var.q(), j0Var.x());
        }
    }

    public static boolean a(s sVar) {
        j0 j0Var = new j0(8);
        int i11 = a.a(sVar, j0Var).f76052a;
        if (i11 != 1380533830 && i11 != 1380333108) {
            return false;
        }
        sVar.peekFully(j0Var.e(), 0, 4);
        j0Var.W(0);
        int iQ = j0Var.q();
        if (iQ == 1463899717) {
            return true;
        }
        u.c("WavHeaderReader", "Unsupported form type: " + iQ);
        return false;
    }

    public static c b(s sVar) throws ParserException {
        byte[] bArr;
        j0 j0Var = new j0(16);
        a aVarD = d(1718449184, sVar, j0Var);
        androidx.media3.common.util.a.g(aVarD.f76053b >= 16);
        sVar.peekFully(j0Var.e(), 0, 16);
        j0Var.W(0);
        int iZ = j0Var.z();
        int iZ2 = j0Var.z();
        int iY = j0Var.y();
        int iY2 = j0Var.y();
        int iZ3 = j0Var.z();
        int iZ4 = j0Var.z();
        int i11 = ((int) aVarD.f76053b) - 16;
        if (i11 > 0) {
            byte[] bArr2 = new byte[i11];
            sVar.peekFully(bArr2, 0, i11);
            bArr = bArr2;
        } else {
            bArr = a1.f10355f;
        }
        sVar.skipFully((int) (sVar.getPeekPosition() - sVar.getPosition()));
        return new c(iZ, iZ2, iY, iY2, iZ3, iZ4, bArr);
    }

    public static long c(s sVar) {
        j0 j0Var = new j0(8);
        a aVarA = a.a(sVar, j0Var);
        if (aVarA.f76052a != 1685272116) {
            sVar.resetPeekPosition();
            return -1L;
        }
        sVar.advancePeekPosition(8);
        j0Var.W(0);
        sVar.peekFully(j0Var.e(), 0, 8);
        long jV = j0Var.v();
        sVar.skipFully(((int) aVarA.f76053b) + 8);
        return jV;
    }

    private static a d(int i11, s sVar, j0 j0Var) throws ParserException {
        a aVarA = a.a(sVar, j0Var);
        while (aVarA.f76052a != i11) {
            u.h("WavHeaderReader", "Ignoring unknown WAV chunk: " + aVarA.f76052a);
            long j11 = aVarA.f76053b;
            long j12 = 8 + j11;
            if (j11 % 2 != 0) {
                j12 = 9 + j11;
            }
            if (j12 > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Chunk is too large (~2GB+) to skip; id: " + aVarA.f76052a);
            }
            sVar.skipFully((int) j12);
            aVarA = a.a(sVar, j0Var);
        }
        return aVarA;
    }

    public static Pair e(s sVar) throws ParserException {
        sVar.resetPeekPosition();
        a aVarD = d(1684108385, sVar, new j0(8));
        sVar.skipFully(8);
        return Pair.create(Long.valueOf(sVar.getPosition()), Long.valueOf(aVarD.f76053b));
    }
}
