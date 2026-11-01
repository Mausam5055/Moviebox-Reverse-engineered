package g3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import java.util.Arrays;
import l2.a0;
import l2.b0;
import l2.m0;
import l2.s;
import l2.y;
import l2.z;

/* JADX INFO: loaded from: classes2.dex */
final class b extends i {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private b0 f63282n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private a f63283o;

    private static final class a implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b0 f63284a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b0.a f63285b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f63286c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f63287d = -1;

        public a(b0 b0Var, b0.a aVar) {
            this.f63284a = b0Var;
            this.f63285b = aVar;
        }

        @Override // g3.g
        public long a(s sVar) {
            long j11 = this.f63287d;
            if (j11 < 0) {
                return -1L;
            }
            long j12 = -(j11 + 2);
            this.f63287d = -1L;
            return j12;
        }

        public void b(long j11) {
            this.f63286c = j11;
        }

        @Override // g3.g
        public m0 createSeekMap() {
            androidx.media3.common.util.a.g(this.f63286c != -1);
            return new a0(this.f63284a, this.f63286c);
        }

        @Override // g3.g
        public void startSeek(long j11) {
            long[] jArr = this.f63285b.f68513a;
            this.f63287d = jArr[a1.h(jArr, j11, true, true)];
        }
    }

    b() {
    }

    private int n(j0 j0Var) {
        int i11 = (j0Var.e()[2] & 255) >> 4;
        if (i11 == 6 || i11 == 7) {
            j0Var.X(4);
            j0Var.Q();
        }
        int iJ = y.j(j0Var, i11);
        j0Var.W(0);
        return iJ;
    }

    private static boolean o(byte[] bArr) {
        return bArr[0] == -1;
    }

    public static boolean p(j0 j0Var) {
        return j0Var.a() >= 5 && j0Var.H() == 127 && j0Var.J() == 1179402563;
    }

    @Override // g3.i
    protected long f(j0 j0Var) {
        if (o(j0Var.e())) {
            return n(j0Var);
        }
        return -1L;
    }

    @Override // g3.i
    protected boolean h(j0 j0Var, long j11, i.b bVar) {
        byte[] bArrE = j0Var.e();
        b0 b0Var = this.f63282n;
        if (b0Var == null) {
            b0 b0Var2 = new b0(bArrE, 17);
            this.f63282n = b0Var2;
            bVar.f63324a = b0Var2.g(Arrays.copyOfRange(bArrE, 9, j0Var.g()), null).b().U("audio/ogg").N();
            return true;
        }
        if ((bArrE[0] & 127) == 3) {
            b0.a aVarF = z.f(j0Var);
            b0 b0VarB = b0Var.b(aVarF);
            this.f63282n = b0VarB;
            this.f63283o = new a(b0VarB, aVarF);
            return true;
        }
        if (!o(bArrE)) {
            return true;
        }
        a aVar = this.f63283o;
        if (aVar != null) {
            aVar.b(j11);
            bVar.f63325b = this.f63283o;
        }
        androidx.media3.common.util.a.e(bVar.f63324a);
        return false;
    }

    @Override // g3.i
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f63282n = null;
            this.f63283o = null;
        }
    }
}
