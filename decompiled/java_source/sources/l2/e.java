package l2;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final a f68541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final f f68542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected c f68543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f68544d;

    public static class a implements m0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f68545a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f68546b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f68547c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f68548d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long f68549e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f68550f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long f68551g;

        public a(d dVar, long j11, long j12, long j13, long j14, long j15, long j16) {
            this.f68545a = dVar;
            this.f68546b = j11;
            this.f68547c = j12;
            this.f68548d = j13;
            this.f68549e = j14;
            this.f68550f = j15;
            this.f68551g = j16;
        }

        @Override // l2.m0
        public long getDurationUs() {
            return this.f68546b;
        }

        @Override // l2.m0
        public m0.a getSeekPoints(long j11) {
            return new m0.a(new n0(j11, c.h(this.f68545a.a(j11), this.f68547c, this.f68548d, this.f68549e, this.f68550f, this.f68551g)));
        }

        public long h(long j11) {
            return this.f68545a.a(j11);
        }

        @Override // l2.m0
        public boolean isSeekable() {
            return true;
        }
    }

    public static final class b implements d {
        @Override // l2.e.d
        public long a(long j11) {
            return j11;
        }
    }

    protected static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f68552a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f68553b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f68554c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f68555d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f68556e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f68557f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f68558g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f68559h;

        protected c(long j11, long j12, long j13, long j14, long j15, long j16, long j17) {
            this.f68552a = j11;
            this.f68553b = j12;
            this.f68555d = j13;
            this.f68556e = j14;
            this.f68557f = j15;
            this.f68558g = j16;
            this.f68554c = j17;
            this.f68559h = h(j12, j13, j14, j15, j16, j17);
        }

        protected static long h(long j11, long j12, long j13, long j14, long j15, long j16) {
            if (j14 + 1 >= j15 || j12 + 1 >= j13) {
                return j14;
            }
            long j17 = (long) ((j11 - j12) * ((j15 - j14) / (j13 - j12)));
            return a1.q(((j17 + j14) - j16) - (j17 / 20), j14, j15 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long i() {
            return this.f68558g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long j() {
            return this.f68557f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long k() {
            return this.f68559h;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long l() {
            return this.f68552a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long m() {
            return this.f68553b;
        }

        private void n() {
            this.f68559h = h(this.f68553b, this.f68555d, this.f68556e, this.f68557f, this.f68558g, this.f68554c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(long j11, long j12) {
            this.f68556e = j11;
            this.f68558g = j12;
            n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(long j11, long j12) {
            this.f68555d = j11;
            this.f68557f = j12;
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface d {
        long a(long j11);
    }

    /* JADX INFO: renamed from: l2.e$e, reason: collision with other inner class name */
    public static final class C0825e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final C0825e f68560d = new C0825e(-3, C.TIME_UNSET, -1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f68561a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f68562b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f68563c;

        private C0825e(int i11, long j11, long j12) {
            this.f68561a = i11;
            this.f68562b = j11;
            this.f68563c = j12;
        }

        public static C0825e d(long j11, long j12) {
            return new C0825e(-1, j11, j12);
        }

        public static C0825e e(long j11) {
            return new C0825e(0, C.TIME_UNSET, j11);
        }

        public static C0825e f(long j11, long j12) {
            return new C0825e(-2, j11, j12);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface f {
        void a();

        C0825e b(s sVar, long j11);
    }

    protected e(d dVar, f fVar, long j11, long j12, long j13, long j14, long j15, long j16, int i11) {
        this.f68542b = fVar;
        this.f68544d = i11;
        this.f68541a = new a(dVar, j11, j12, j13, j14, j15, j16);
    }

    protected c a(long j11) {
        return new c(j11, this.f68541a.h(j11), this.f68541a.f68547c, this.f68541a.f68548d, this.f68541a.f68549e, this.f68541a.f68550f, this.f68541a.f68551g);
    }

    public final m0 b() {
        return this.f68541a;
    }

    public int c(s sVar, l0 l0Var) {
        while (true) {
            c cVar = (c) androidx.media3.common.util.a.i(this.f68543c);
            long j11 = cVar.j();
            long jI = cVar.i();
            long jK = cVar.k();
            if (jI - j11 <= this.f68544d) {
                e(false, j11);
                return g(sVar, j11, l0Var);
            }
            if (!i(sVar, jK)) {
                return g(sVar, jK, l0Var);
            }
            sVar.resetPeekPosition();
            C0825e c0825eB = this.f68542b.b(sVar, cVar.m());
            int i11 = c0825eB.f68561a;
            if (i11 == -3) {
                e(false, jK);
                return g(sVar, jK, l0Var);
            }
            if (i11 == -2) {
                cVar.p(c0825eB.f68562b, c0825eB.f68563c);
            } else {
                if (i11 != -1) {
                    if (i11 != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    i(sVar, c0825eB.f68563c);
                    e(true, c0825eB.f68563c);
                    return g(sVar, c0825eB.f68563c, l0Var);
                }
                cVar.o(c0825eB.f68562b, c0825eB.f68563c);
            }
        }
    }

    public final boolean d() {
        return this.f68543c != null;
    }

    protected final void e(boolean z10, long j11) {
        this.f68543c = null;
        this.f68542b.a();
        f(z10, j11);
    }

    protected void f(boolean z10, long j11) {
    }

    protected final int g(s sVar, long j11, l0 l0Var) {
        if (j11 == sVar.getPosition()) {
            return 0;
        }
        l0Var.f68620a = j11;
        return 1;
    }

    public final void h(long j11) {
        c cVar = this.f68543c;
        if (cVar == null || cVar.l() != j11) {
            this.f68543c = a(j11);
        }
    }

    protected final boolean i(s sVar, long j11) {
        long position = j11 - sVar.getPosition();
        if (position < 0 || position > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        sVar.skipFully((int) position);
        return true;
    }
}
