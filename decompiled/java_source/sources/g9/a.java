package g9;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final C0769a f63346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final f f63347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected c f63348c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f63349d;

    /* JADX INFO: renamed from: g9.a$a, reason: collision with other inner class name */
    public static class C0769a implements b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f63350a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f63351b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f63352c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f63353d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long f63354e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f63355f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long f63356g;

        public C0769a(d dVar, long j11, long j12, long j13, long j14, long j15, long j16) {
            this.f63350a = dVar;
            this.f63351b = j11;
            this.f63352c = j12;
            this.f63353d = j13;
            this.f63354e = j14;
            this.f63355f = j15;
            this.f63356g = j16;
        }

        public long g(long j11) {
            return this.f63350a.a(j11);
        }

        @Override // g9.b0
        public long getDurationUs() {
            return this.f63351b;
        }

        @Override // g9.b0
        public b0.a getSeekPoints(long j11) {
            return new b0.a(new c0(j11, c.h(this.f63350a.a(j11), this.f63352c, this.f63353d, this.f63354e, this.f63355f, this.f63356g)));
        }

        @Override // g9.b0
        public boolean isSeekable() {
            return true;
        }
    }

    public static final class b implements d {
        @Override // g9.a.d
        public long a(long j11) {
            return j11;
        }
    }

    protected static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f63357a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f63358b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f63359c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f63360d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f63361e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f63362f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f63363g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f63364h;

        protected c(long j11, long j12, long j13, long j14, long j15, long j16, long j17) {
            this.f63357a = j11;
            this.f63358b = j12;
            this.f63360d = j13;
            this.f63361e = j14;
            this.f63362f = j15;
            this.f63363g = j16;
            this.f63359c = j17;
            this.f63364h = h(j12, j13, j14, j15, j16, j17);
        }

        protected static long h(long j11, long j12, long j13, long j14, long j15, long j16) {
            if (j14 + 1 >= j15 || j12 + 1 >= j13) {
                return j14;
            }
            long j17 = (long) ((j11 - j12) * ((j15 - j14) / (j13 - j12)));
            return p0.r(((j17 + j14) - j16) - (j17 / 20), j14, j15 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long i() {
            return this.f63363g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long j() {
            return this.f63362f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long k() {
            return this.f63364h;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long l() {
            return this.f63357a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long m() {
            return this.f63358b;
        }

        private void n() {
            this.f63364h = h(this.f63358b, this.f63360d, this.f63361e, this.f63362f, this.f63363g, this.f63359c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(long j11, long j12) {
            this.f63361e = j11;
            this.f63363g = j12;
            n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(long j11, long j12) {
            this.f63360d = j11;
            this.f63362f = j12;
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface d {
        long a(long j11);
    }

    public static final class e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final e f63365d = new e(-3, C.TIME_UNSET, -1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f63366a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f63367b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f63368c;

        private e(int i11, long j11, long j12) {
            this.f63366a = i11;
            this.f63367b = j11;
            this.f63368c = j12;
        }

        public static e d(long j11, long j12) {
            return new e(-1, j11, j12);
        }

        public static e e(long j11) {
            return new e(0, C.TIME_UNSET, j11);
        }

        public static e f(long j11, long j12) {
            return new e(-2, j11, j12);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface f {
        void a();

        e b(m mVar, long j11);
    }

    protected a(d dVar, f fVar, long j11, long j12, long j13, long j14, long j15, long j16, int i11) {
        this.f63347b = fVar;
        this.f63349d = i11;
        this.f63346a = new C0769a(dVar, j11, j12, j13, j14, j15, j16);
    }

    protected c a(long j11) {
        return new c(j11, this.f63346a.g(j11), this.f63346a.f63352c, this.f63346a.f63353d, this.f63346a.f63354e, this.f63346a.f63355f, this.f63346a.f63356g);
    }

    public final b0 b() {
        return this.f63346a;
    }

    public int c(m mVar, a0 a0Var) {
        while (true) {
            c cVar = (c) com.google.android.exoplayer2.util.a.i(this.f63348c);
            long j11 = cVar.j();
            long jI = cVar.i();
            long jK = cVar.k();
            if (jI - j11 <= this.f63349d) {
                e(false, j11);
                return g(mVar, j11, a0Var);
            }
            if (!i(mVar, jK)) {
                return g(mVar, jK, a0Var);
            }
            mVar.resetPeekPosition();
            e eVarB = this.f63347b.b(mVar, cVar.m());
            int i11 = eVarB.f63366a;
            if (i11 == -3) {
                e(false, jK);
                return g(mVar, jK, a0Var);
            }
            if (i11 == -2) {
                cVar.p(eVarB.f63367b, eVarB.f63368c);
            } else {
                if (i11 != -1) {
                    if (i11 != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    i(mVar, eVarB.f63368c);
                    e(true, eVarB.f63368c);
                    return g(mVar, eVarB.f63368c, a0Var);
                }
                cVar.o(eVarB.f63367b, eVarB.f63368c);
            }
        }
    }

    public final boolean d() {
        return this.f63348c != null;
    }

    protected final void e(boolean z10, long j11) {
        this.f63348c = null;
        this.f63347b.a();
        f(z10, j11);
    }

    protected void f(boolean z10, long j11) {
    }

    protected final int g(m mVar, long j11, a0 a0Var) {
        if (j11 == mVar.getPosition()) {
            return 0;
        }
        a0Var.f63369a = j11;
        return 1;
    }

    public final void h(long j11) {
        c cVar = this.f63348c;
        if (cVar == null || cVar.l() != j11) {
            this.f63348c = a(j11);
        }
    }

    protected final boolean i(m mVar, long j11) {
        long position = j11 - mVar.getPosition();
        if (position < 0 || position > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        mVar.skipFully((int) position);
        return true;
    }
}
