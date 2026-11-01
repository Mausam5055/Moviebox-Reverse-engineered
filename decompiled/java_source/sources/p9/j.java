package p9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.h0;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class j extends i {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private a f72389n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f72390o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f72391p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private h0.d f72392q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private h0.b f72393r;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final h0.d f72394a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final h0.b f72395b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f72396c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final h0.c[] f72397d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f72398e;

        public a(h0.d dVar, h0.b bVar, byte[] bArr, h0.c[] cVarArr, int i11) {
            this.f72394a = dVar;
            this.f72395b = bVar;
            this.f72396c = bArr;
            this.f72397d = cVarArr;
            this.f72398e = i11;
        }
    }

    j() {
    }

    static void n(d0 d0Var, long j11) {
        if (d0Var.b() < d0Var.f() + 4) {
            d0Var.M(Arrays.copyOf(d0Var.d(), d0Var.f() + 4));
        } else {
            d0Var.O(d0Var.f() + 4);
        }
        byte[] bArrD = d0Var.d();
        bArrD[d0Var.f() - 4] = (byte) (j11 & 255);
        bArrD[d0Var.f() - 3] = (byte) ((j11 >>> 8) & 255);
        bArrD[d0Var.f() - 2] = (byte) ((j11 >>> 16) & 255);
        bArrD[d0Var.f() - 1] = (byte) ((j11 >>> 24) & 255);
    }

    private static int o(byte b11, a aVar) {
        return !aVar.f72397d[p(b11, aVar.f72398e, 1)].f63420a ? aVar.f72394a.f63430g : aVar.f72394a.f63431h;
    }

    static int p(byte b11, int i11, int i12) {
        return (b11 >> i12) & (255 >>> (8 - i11));
    }

    public static boolean r(d0 d0Var) {
        try {
            return h0.m(1, d0Var, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // p9.i
    protected void e(long j11) {
        super.e(j11);
        this.f72391p = j11 != 0;
        h0.d dVar = this.f72392q;
        this.f72390o = dVar != null ? dVar.f63430g : 0;
    }

    @Override // p9.i
    protected long f(d0 d0Var) {
        if ((d0Var.d()[0] & 1) == 1) {
            return -1L;
        }
        int iO = o(d0Var.d()[0], (a) com.google.android.exoplayer2.util.a.i(this.f72389n));
        long j11 = this.f72391p ? (this.f72390o + iO) / 4 : 0;
        n(d0Var, j11);
        this.f72391p = true;
        this.f72390o = iO;
        return j11;
    }

    @Override // p9.i
    protected boolean h(d0 d0Var, long j11, i.b bVar) throws ParserException {
        if (this.f72389n != null) {
            com.google.android.exoplayer2.util.a.e(bVar.f72387a);
            return false;
        }
        a aVarQ = q(d0Var);
        this.f72389n = aVarQ;
        if (aVarQ == null) {
            return true;
        }
        h0.d dVar = aVarQ.f72394a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar.f63433j);
        arrayList.add(aVarQ.f72396c);
        bVar.f72387a = new o1.b().e0(MimeTypes.AUDIO_VORBIS).G(dVar.f63428e).Z(dVar.f63427d).H(dVar.f63425b).f0(dVar.f63426c).T(arrayList).X(h0.c(ImmutableList.copyOf(aVarQ.f72395b.f63418b))).E();
        return true;
    }

    @Override // p9.i
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f72389n = null;
            this.f72392q = null;
            this.f72393r = null;
        }
        this.f72390o = 0;
        this.f72391p = false;
    }

    a q(d0 d0Var) throws ParserException {
        h0.d dVar = this.f72392q;
        if (dVar == null) {
            this.f72392q = h0.k(d0Var);
            return null;
        }
        h0.b bVar = this.f72393r;
        if (bVar == null) {
            this.f72393r = h0.i(d0Var);
            return null;
        }
        byte[] bArr = new byte[d0Var.f()];
        System.arraycopy(d0Var.d(), 0, bArr, 0, d0Var.f());
        h0.c[] cVarArrL = h0.l(d0Var, dVar.f63425b);
        return new a(dVar, bVar, bArr, cVarArrL, h0.a(cVarArrL.length - 1));
    }
}
