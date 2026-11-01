package g9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public v f63456a;

        public a(v vVar) {
            this.f63456a = vVar;
        }
    }

    public static boolean a(m mVar) {
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(4);
        mVar.peekFully(d0Var.d(), 0, 4);
        return d0Var.F() == 1716281667;
    }

    public static int b(m mVar) throws ParserException {
        mVar.resetPeekPosition();
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(2);
        mVar.peekFully(d0Var.d(), 0, 2);
        int iJ = d0Var.J();
        if ((iJ >> 2) == 16382) {
            mVar.resetPeekPosition();
            return iJ;
        }
        mVar.resetPeekPosition();
        throw ParserException.createForMalformedContainer("First frame does not start with sync code.", null);
    }

    public static Metadata c(m mVar, boolean z10) {
        Metadata metadataA = new y().a(mVar, z10 ? null : com.google.android.exoplayer2.metadata.id3.b.f25436b);
        if (metadataA == null || metadataA.length() == 0) {
            return null;
        }
        return metadataA;
    }

    public static Metadata d(m mVar, boolean z10) {
        mVar.resetPeekPosition();
        long peekPosition = mVar.getPeekPosition();
        Metadata metadataC = c(mVar, z10);
        mVar.skipFully((int) (mVar.getPeekPosition() - peekPosition));
        return metadataC;
    }

    public static boolean e(m mVar, a aVar) {
        mVar.resetPeekPosition();
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(new byte[4]);
        mVar.peekFully(c0Var.f27560a, 0, 4);
        boolean zG = c0Var.g();
        int iH = c0Var.h(7);
        int iH2 = c0Var.h(24) + 4;
        if (iH == 0) {
            aVar.f63456a = h(mVar);
        } else {
            v vVar = aVar.f63456a;
            if (vVar == null) {
                throw new IllegalArgumentException();
            }
            if (iH == 3) {
                aVar.f63456a = vVar.b(g(mVar, iH2));
            } else if (iH == 4) {
                aVar.f63456a = vVar.c(j(mVar, iH2));
            } else if (iH == 6) {
                com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(iH2);
                mVar.readFully(d0Var.d(), 0, iH2);
                d0Var.Q(4);
                aVar.f63456a = vVar.a(ImmutableList.of(PictureFrame.fromPictureBlock(d0Var)));
            } else {
                mVar.skipFully(iH2);
            }
        }
        return zG;
    }

    public static v.a f(com.google.android.exoplayer2.util.d0 d0Var) {
        d0Var.Q(1);
        int iG = d0Var.G();
        long jE = ((long) d0Var.e()) + ((long) iG);
        int i11 = iG / 18;
        long[] jArrCopyOf = new long[i11];
        long[] jArrCopyOf2 = new long[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            long jW = d0Var.w();
            if (jW == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i12);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i12);
                break;
            }
            jArrCopyOf[i12] = jW;
            jArrCopyOf2[i12] = d0Var.w();
            d0Var.Q(2);
        }
        d0Var.Q((int) (jE - ((long) d0Var.e())));
        return new v.a(jArrCopyOf, jArrCopyOf2);
    }

    private static v.a g(m mVar, int i11) {
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(i11);
        mVar.readFully(d0Var.d(), 0, i11);
        return f(d0Var);
    }

    private static v h(m mVar) {
        byte[] bArr = new byte[38];
        mVar.readFully(bArr, 0, 38);
        return new v(bArr, 4);
    }

    public static void i(m mVar) throws ParserException {
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(4);
        mVar.readFully(d0Var.d(), 0, 4);
        if (d0Var.F() != 1716281667) {
            throw ParserException.createForMalformedContainer("Failed to read FLAC stream marker.", null);
        }
    }

    private static List j(m mVar, int i11) {
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(i11);
        mVar.readFully(d0Var.d(), 0, i11);
        d0Var.Q(4);
        return Arrays.asList(h0.j(d0Var, false, false).f63418b);
    }
}
