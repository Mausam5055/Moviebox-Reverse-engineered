package g3;

import androidx.media3.common.ParserException;
import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import l2.v0;

/* JADX INFO: loaded from: classes2.dex */
final class j extends i {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private a f63326n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f63327o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f63328p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private v0.c f63329q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private v0.a f63330r;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final v0.c f63331a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final v0.a f63332b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f63333c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final v0.b[] f63334d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f63335e;

        public a(v0.c cVar, v0.a aVar, byte[] bArr, v0.b[] bVarArr, int i11) {
            this.f63331a = cVar;
            this.f63332b = aVar;
            this.f63333c = bArr;
            this.f63334d = bVarArr;
            this.f63335e = i11;
        }
    }

    j() {
    }

    static void n(j0 j0Var, long j11) {
        if (j0Var.b() < j0Var.g() + 4) {
            j0Var.T(Arrays.copyOf(j0Var.e(), j0Var.g() + 4));
        } else {
            j0Var.V(j0Var.g() + 4);
        }
        byte[] bArrE = j0Var.e();
        bArrE[j0Var.g() - 4] = (byte) (j11 & 255);
        bArrE[j0Var.g() - 3] = (byte) ((j11 >>> 8) & 255);
        bArrE[j0Var.g() - 2] = (byte) ((j11 >>> 16) & 255);
        bArrE[j0Var.g() - 1] = (byte) ((j11 >>> 24) & 255);
    }

    private static int o(byte b11, a aVar) {
        return !aVar.f63334d[p(b11, aVar.f63335e, 1)].f68698a ? aVar.f63331a.f68708g : aVar.f63331a.f68709h;
    }

    static int p(byte b11, int i11, int i12) {
        return (b11 >> i12) & (255 >>> (8 - i11));
    }

    public static boolean r(j0 j0Var) {
        try {
            return v0.o(1, j0Var, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // g3.i
    protected void e(long j11) {
        super.e(j11);
        this.f63328p = j11 != 0;
        v0.c cVar = this.f63329q;
        this.f63327o = cVar != null ? cVar.f68708g : 0;
    }

    @Override // g3.i
    protected long f(j0 j0Var) {
        if ((j0Var.e()[0] & 1) == 1) {
            return -1L;
        }
        int iO = o(j0Var.e()[0], (a) androidx.media3.common.util.a.i(this.f63326n));
        long j11 = this.f63328p ? (this.f63327o + iO) / 4 : 0;
        n(j0Var, j11);
        this.f63328p = true;
        this.f63327o = iO;
        return j11;
    }

    @Override // g3.i
    protected boolean h(j0 j0Var, long j11, i.b bVar) throws ParserException {
        if (this.f63326n != null) {
            androidx.media3.common.util.a.e(bVar.f63324a);
            return false;
        }
        a aVarQ = q(j0Var);
        this.f63326n = aVarQ;
        if (aVarQ == null) {
            return true;
        }
        v0.c cVar = aVarQ.f63331a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(cVar.f68711j);
        arrayList.add(aVarQ.f63333c);
        bVar.f63324a = new r.b().U("audio/ogg").u0(MimeTypes.AUDIO_VORBIS).Q(cVar.f68706e).p0(cVar.f68705d).R(cVar.f68703b).v0(cVar.f68704c).g0(arrayList).n0(v0.d(ImmutableList.copyOf(aVarQ.f63332b.f68696b))).N();
        return true;
    }

    @Override // g3.i
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f63326n = null;
            this.f63329q = null;
            this.f63330r = null;
        }
        this.f63327o = 0;
        this.f63328p = false;
    }

    a q(j0 j0Var) throws ParserException {
        v0.c cVar = this.f63329q;
        if (cVar == null) {
            this.f63329q = v0.l(j0Var);
            return null;
        }
        v0.a aVar = this.f63330r;
        if (aVar == null) {
            this.f63330r = v0.j(j0Var);
            return null;
        }
        byte[] bArr = new byte[j0Var.g()];
        System.arraycopy(j0Var.e(), 0, bArr, 0, j0Var.g());
        v0.b[] bVarArrM = v0.m(j0Var, cVar.f68703b);
        return new a(cVar, aVar, bArr, bVarArrM, v0.b(bVarArrM.length - 1));
    }
}
