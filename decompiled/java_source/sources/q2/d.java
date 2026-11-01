package q2;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i3.s;
import java.util.List;
import java.util.Map;
import l2.a0;
import l2.b0;
import l2.l0;
import l2.m0;
import l2.q;
import l2.r;
import l2.s0;
import l2.t;
import l2.w;
import l2.x;
import l2.y;
import l2.z;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements r {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final x f73057o = new x() { // from class: q2.c
        @Override // l2.x
        public /* synthetic */ x a(s.a aVar) {
            return w.d(this, aVar);
        }

        @Override // l2.x
        public /* synthetic */ x b(int i11) {
            return w.b(this, i11);
        }

        @Override // l2.x
        public /* synthetic */ r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override // l2.x
        public final r[] createExtractors() {
            return d.k();
        }

        @Override // l2.x
        public /* synthetic */ x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f73058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j0 f73059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f73060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final y.a f73061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t f73062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private s0 f73063f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f73064g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private androidx.media3.common.x f73065h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private b0 f73066i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f73067j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f73068k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private b f73069l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f73070m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f73071n;

    public d() {
        this(0);
    }

    public d(int i11) {
        this.f73058a = new byte[42];
        this.f73059b = new j0(new byte[32768], 0);
        this.f73060c = (i11 & 1) != 0;
        this.f73061d = new y.a();
        this.f73064g = 0;
    }

    private long g(j0 j0Var, boolean z10) {
        boolean zD;
        androidx.media3.common.util.a.e(this.f73066i);
        int iF = j0Var.f();
        while (iF <= j0Var.g() - 16) {
            j0Var.W(iF);
            if (y.d(j0Var, this.f73066i, this.f73068k, this.f73061d)) {
                j0Var.W(iF);
                return this.f73061d.f68713a;
            }
            iF++;
        }
        if (!z10) {
            j0Var.W(iF);
            return -1L;
        }
        while (iF <= j0Var.g() - this.f73067j) {
            j0Var.W(iF);
            try {
                zD = y.d(j0Var, this.f73066i, this.f73068k, this.f73061d);
            } catch (IndexOutOfBoundsException unused) {
                zD = false;
            }
            if (j0Var.f() <= j0Var.g() ? zD : false) {
                j0Var.W(iF);
                return this.f73061d.f68713a;
            }
            iF++;
        }
        j0Var.W(j0Var.g());
        return -1L;
    }

    private void h(l2.s sVar) {
        this.f73068k = z.b(sVar);
        ((t) a1.i(this.f73062e)).f(i(sVar.getPosition(), sVar.getLength()));
        this.f73064g = 5;
    }

    private m0 i(long j11, long j12) {
        androidx.media3.common.util.a.e(this.f73066i);
        b0 b0Var = this.f73066i;
        if (b0Var.f68511k != null) {
            return new a0(b0Var, j11);
        }
        if (j12 == -1 || b0Var.f68510j <= 0) {
            return new m0.b(b0Var.f());
        }
        b bVar = new b(b0Var, this.f73068k, j11, j12);
        this.f73069l = bVar;
        return bVar.b();
    }

    private void j(l2.s sVar) {
        byte[] bArr = this.f73058a;
        sVar.peekFully(bArr, 0, bArr.length);
        sVar.resetPeekPosition();
        this.f73064g = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r[] k() {
        return new r[]{new d()};
    }

    private void l() {
        ((s0) a1.i(this.f73063f)).d((this.f73071n * 1000000) / ((long) ((b0) a1.i(this.f73066i)).f68505e), 1, this.f73070m, 0, null);
    }

    private int m(l2.s sVar, l0 l0Var) {
        boolean z10;
        androidx.media3.common.util.a.e(this.f73063f);
        androidx.media3.common.util.a.e(this.f73066i);
        b bVar = this.f73069l;
        if (bVar != null && bVar.d()) {
            return this.f73069l.c(sVar, l0Var);
        }
        if (this.f73071n == -1) {
            this.f73071n = y.i(sVar, this.f73066i);
            return 0;
        }
        int iG = this.f73059b.g();
        if (iG < 32768) {
            int i11 = sVar.read(this.f73059b.e(), iG, 32768 - iG);
            z10 = i11 == -1;
            if (!z10) {
                this.f73059b.V(iG + i11);
            } else if (this.f73059b.a() == 0) {
                l();
                return -1;
            }
        } else {
            z10 = false;
        }
        int iF = this.f73059b.f();
        int i12 = this.f73070m;
        int i13 = this.f73067j;
        if (i12 < i13) {
            j0 j0Var = this.f73059b;
            j0Var.X(Math.min(i13 - i12, j0Var.a()));
        }
        long jG = g(this.f73059b, z10);
        int iF2 = this.f73059b.f() - iF;
        this.f73059b.W(iF);
        this.f73063f.b(this.f73059b, iF2);
        this.f73070m += iF2;
        if (jG != -1) {
            l();
            this.f73070m = 0;
            this.f73071n = jG;
        }
        int length = this.f73059b.e().length - this.f73059b.g();
        if (this.f73059b.a() < 16 && length < 16) {
            int iA = this.f73059b.a();
            System.arraycopy(this.f73059b.e(), this.f73059b.f(), this.f73059b.e(), 0, iA);
            this.f73059b.W(0);
            this.f73059b.V(iA);
        }
        return 0;
    }

    private void n(l2.s sVar) {
        this.f73065h = z.d(sVar, !this.f73060c);
        this.f73064g = 1;
    }

    private void o(l2.s sVar) {
        z.a aVar = new z.a(this.f73066i);
        boolean zE = false;
        while (!zE) {
            zE = z.e(sVar, aVar);
            this.f73066i = (b0) a1.i(aVar.f68714a);
        }
        androidx.media3.common.util.a.e(this.f73066i);
        this.f73067j = Math.max(this.f73066i.f68503c, 6);
        ((s0) a1.i(this.f73063f)).c(this.f73066i.g(this.f73058a, this.f73065h).b().U(MimeTypes.AUDIO_FLAC).N());
        ((s0) a1.i(this.f73063f)).f(this.f73066i.f());
        this.f73064g = 4;
    }

    private void p(l2.s sVar) throws ParserException {
        z.i(sVar);
        this.f73064g = 3;
    }

    @Override // l2.r
    public void b(t tVar) {
        this.f73062e = tVar;
        this.f73063f = tVar.track(0, 1);
        tVar.endTracks();
    }

    @Override // l2.r
    public int c(l2.s sVar, l0 l0Var) throws ParserException {
        int i11 = this.f73064g;
        if (i11 == 0) {
            n(sVar);
            return 0;
        }
        if (i11 == 1) {
            j(sVar);
            return 0;
        }
        if (i11 == 2) {
            p(sVar);
            return 0;
        }
        if (i11 == 3) {
            o(sVar);
            return 0;
        }
        if (i11 == 4) {
            h(sVar);
            return 0;
        }
        if (i11 == 5) {
            return m(sVar, l0Var);
        }
        throw new IllegalStateException();
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        z.c(sVar, false);
        return z.a(sVar);
    }

    @Override // l2.r
    public /* synthetic */ r e() {
        return q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return q.a(this);
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        if (j11 == 0) {
            this.f73064g = 0;
        } else {
            b bVar = this.f73069l;
            if (bVar != null) {
                bVar.h(j12);
            }
        }
        this.f73071n = j12 != 0 ? -1L : 0L;
        this.f73070m = 0;
        this.f73059b.S(0);
    }
}
