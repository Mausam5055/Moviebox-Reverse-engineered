package g9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class s {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f63455a;
    }

    private static boolean a(com.google.android.exoplayer2.util.d0 d0Var, v vVar, int i11) {
        int iJ = j(d0Var, i11);
        return iJ != -1 && iJ <= vVar.f63460b;
    }

    private static boolean b(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
        return d0Var.D() == p0.u(d0Var.d(), i11, d0Var.e() - 1, 0);
    }

    private static boolean c(com.google.android.exoplayer2.util.d0 d0Var, v vVar, boolean z10, a aVar) {
        try {
            long jK = d0Var.K();
            if (!z10) {
                jK *= (long) vVar.f63460b;
            }
            aVar.f63455a = jK;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean d(com.google.android.exoplayer2.util.d0 d0Var, v vVar, int i11, a aVar) {
        int iE = d0Var.e();
        long jF = d0Var.F();
        long j11 = jF >>> 16;
        if (j11 != i11) {
            return false;
        }
        return g((int) ((jF >> 4) & 15), vVar) && f((int) ((jF >> 1) & 7), vVar) && !(((jF & 1) > 1L ? 1 : ((jF & 1) == 1L ? 0 : -1)) == 0) && c(d0Var, vVar, ((j11 & 1) > 1L ? 1 : ((j11 & 1) == 1L ? 0 : -1)) == 0, aVar) && a(d0Var, vVar, (int) ((jF >> 12) & 15)) && e(d0Var, vVar, (int) ((jF >> 8) & 15)) && b(d0Var, iE);
    }

    private static boolean e(com.google.android.exoplayer2.util.d0 d0Var, v vVar, int i11) {
        int i12 = vVar.f63463e;
        if (i11 == 0) {
            return true;
        }
        if (i11 <= 11) {
            return i11 == vVar.f63464f;
        }
        if (i11 == 12) {
            return d0Var.D() * 1000 == i12;
        }
        if (i11 > 14) {
            return false;
        }
        int iJ = d0Var.J();
        if (i11 == 14) {
            iJ *= 10;
        }
        return iJ == i12;
    }

    private static boolean f(int i11, v vVar) {
        return i11 == 0 || i11 == vVar.f63467i;
    }

    private static boolean g(int i11, v vVar) {
        if (i11 <= 7) {
            return i11 == vVar.f63465g - 1;
        }
        return i11 <= 10 && vVar.f63465g == 2;
    }

    public static boolean h(m mVar, v vVar, int i11, a aVar) {
        long peekPosition = mVar.getPeekPosition();
        byte[] bArr = new byte[2];
        mVar.peekFully(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i11) {
            mVar.resetPeekPosition();
            mVar.advancePeekPosition((int) (peekPosition - mVar.getPosition()));
            return false;
        }
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(16);
        System.arraycopy(bArr, 0, d0Var.d(), 0, 2);
        d0Var.O(o.c(mVar, d0Var.d(), 2, 14));
        mVar.resetPeekPosition();
        mVar.advancePeekPosition((int) (peekPosition - mVar.getPosition()));
        return d(d0Var, vVar, i11, aVar);
    }

    public static long i(m mVar, v vVar) throws ParserException {
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(1);
        byte[] bArr = new byte[1];
        mVar.peekFully(bArr, 0, 1);
        boolean z10 = (bArr[0] & 1) == 1;
        mVar.advancePeekPosition(2);
        int i11 = z10 ? 7 : 6;
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(i11);
        d0Var.O(o.c(mVar, d0Var.d(), 0, i11));
        mVar.resetPeekPosition();
        a aVar = new a();
        if (c(d0Var, vVar, z10, aVar)) {
            return aVar.f63455a;
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static int j(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
        switch (i11) {
            case 1:
                return PsExtractor.AUDIO_STREAM;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i11 - 2);
            case 6:
                return d0Var.D() + 1;
            case 7:
                return d0Var.J() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i11 - 8);
            default:
                return -1;
        }
    }
}
