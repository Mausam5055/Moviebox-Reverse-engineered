package p9;

import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import g9.b0;
import g9.m;
import g9.s;
import g9.t;
import g9.u;
import g9.v;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class b extends i {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private v f72345n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private a f72346o;

    private static final class a implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private v f72347a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private v.a f72348b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f72349c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f72350d = -1;

        public a(v vVar, v.a aVar) {
            this.f72347a = vVar;
            this.f72348b = aVar;
        }

        @Override // p9.g
        public long a(m mVar) {
            long j11 = this.f72350d;
            if (j11 < 0) {
                return -1L;
            }
            long j12 = -(j11 + 2);
            this.f72350d = -1L;
            return j12;
        }

        public void b(long j11) {
            this.f72349c = j11;
        }

        @Override // p9.g
        public b0 createSeekMap() {
            com.google.android.exoplayer2.util.a.g(this.f72349c != -1);
            return new u(this.f72347a, this.f72349c);
        }

        @Override // p9.g
        public void startSeek(long j11) {
            long[] jArr = this.f72348b.f63471a;
            this.f72350d = jArr[p0.i(jArr, j11, true, true)];
        }
    }

    b() {
    }

    private int n(d0 d0Var) {
        int i11 = (d0Var.d()[2] & 255) >> 4;
        if (i11 == 6 || i11 == 7) {
            d0Var.Q(4);
            d0Var.K();
        }
        int iJ = s.j(d0Var, i11);
        d0Var.P(0);
        return iJ;
    }

    private static boolean o(byte[] bArr) {
        return bArr[0] == -1;
    }

    public static boolean p(d0 d0Var) {
        return d0Var.a() >= 5 && d0Var.D() == 127 && d0Var.F() == 1179402563;
    }

    @Override // p9.i
    protected long f(d0 d0Var) {
        if (o(d0Var.d())) {
            return n(d0Var);
        }
        return -1L;
    }

    @Override // p9.i
    protected boolean h(d0 d0Var, long j11, i.b bVar) {
        byte[] bArrD = d0Var.d();
        v vVar = this.f72345n;
        if (vVar == null) {
            v vVar2 = new v(bArrD, 17);
            this.f72345n = vVar2;
            bVar.f72387a = vVar2.g(Arrays.copyOfRange(bArrD, 9, d0Var.f()), null);
            return true;
        }
        if ((bArrD[0] & 127) == 3) {
            v.a aVarF = t.f(d0Var);
            v vVarB = vVar.b(aVarF);
            this.f72345n = vVarB;
            this.f72346o = new a(vVarB, aVarF);
            return true;
        }
        if (!o(bArrD)) {
            return true;
        }
        a aVar = this.f72346o;
        if (aVar != null) {
            aVar.b(j11);
            bVar.f72388b = this.f72346o;
        }
        com.google.android.exoplayer2.util.a.e(bVar.f72387a);
        return false;
    }

    @Override // p9.i
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f72345n = null;
            this.f72346o = null;
        }
    }
}
