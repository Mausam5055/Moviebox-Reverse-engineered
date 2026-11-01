package j9;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import g9.a0;
import g9.b0;
import g9.e0;
import g9.l;
import g9.m;
import g9.n;
import g9.q;
import g9.r;
import g9.s;
import g9.t;
import g9.u;
import g9.v;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements l {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final r f65957o = new r() { // from class: j9.c
        @Override // g9.r
        public /* synthetic */ l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // g9.r
        public final l[] createExtractors() {
            return d.i();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f65958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f65959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f65960c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final s.a f65961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private n f65962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private e0 f65963f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65964g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Metadata f65965h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private v f65966i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65967j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f65968k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private b f65969l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f65970m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f65971n;

    public d() {
        this(0);
    }

    public d(int i11) {
        this.f65958a = new byte[42];
        this.f65959b = new d0(new byte[32768], 0);
        this.f65960c = (i11 & 1) != 0;
        this.f65961d = new s.a();
        this.f65964g = 0;
    }

    private long e(d0 d0Var, boolean z10) {
        boolean zD;
        com.google.android.exoplayer2.util.a.e(this.f65966i);
        int iE = d0Var.e();
        while (iE <= d0Var.f() - 16) {
            d0Var.P(iE);
            if (s.d(d0Var, this.f65966i, this.f65968k, this.f65961d)) {
                d0Var.P(iE);
                return this.f65961d.f63455a;
            }
            iE++;
        }
        if (!z10) {
            d0Var.P(iE);
            return -1L;
        }
        while (iE <= d0Var.f() - this.f65967j) {
            d0Var.P(iE);
            try {
                zD = s.d(d0Var, this.f65966i, this.f65968k, this.f65961d);
            } catch (IndexOutOfBoundsException unused) {
                zD = false;
            }
            if (d0Var.e() <= d0Var.f() ? zD : false) {
                d0Var.P(iE);
                return this.f65961d.f63455a;
            }
            iE++;
        }
        d0Var.P(d0Var.f());
        return -1L;
    }

    private void f(m mVar) {
        this.f65968k = t.b(mVar);
        ((n) p0.j(this.f65962e)).d(g(mVar.getPosition(), mVar.getLength()));
        this.f65964g = 5;
    }

    private b0 g(long j11, long j12) {
        com.google.android.exoplayer2.util.a.e(this.f65966i);
        v vVar = this.f65966i;
        if (vVar.f63469k != null) {
            return new u(vVar, j11);
        }
        if (j12 == -1 || vVar.f63468j <= 0) {
            return new b0.b(vVar.f());
        }
        b bVar = new b(vVar, this.f65968k, j11, j12);
        this.f65969l = bVar;
        return bVar.b();
    }

    private void h(m mVar) {
        byte[] bArr = this.f65958a;
        mVar.peekFully(bArr, 0, bArr.length);
        mVar.resetPeekPosition();
        this.f65964g = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] i() {
        return new l[]{new d()};
    }

    private void j() {
        ((e0) p0.j(this.f65963f)).d((this.f65971n * 1000000) / ((long) ((v) p0.j(this.f65966i)).f63463e), 1, this.f65970m, 0, null);
    }

    private int k(m mVar, a0 a0Var) {
        boolean z10;
        com.google.android.exoplayer2.util.a.e(this.f65963f);
        com.google.android.exoplayer2.util.a.e(this.f65966i);
        b bVar = this.f65969l;
        if (bVar != null && bVar.d()) {
            return this.f65969l.c(mVar, a0Var);
        }
        if (this.f65971n == -1) {
            this.f65971n = s.i(mVar, this.f65966i);
            return 0;
        }
        int iF = this.f65959b.f();
        if (iF < 32768) {
            int i11 = mVar.read(this.f65959b.d(), iF, 32768 - iF);
            z10 = i11 == -1;
            if (!z10) {
                this.f65959b.O(iF + i11);
            } else if (this.f65959b.a() == 0) {
                j();
                return -1;
            }
        } else {
            z10 = false;
        }
        int iE = this.f65959b.e();
        int i12 = this.f65970m;
        int i13 = this.f65967j;
        if (i12 < i13) {
            d0 d0Var = this.f65959b;
            d0Var.Q(Math.min(i13 - i12, d0Var.a()));
        }
        long jE = e(this.f65959b, z10);
        int iE2 = this.f65959b.e() - iE;
        this.f65959b.P(iE);
        this.f65963f.c(this.f65959b, iE2);
        this.f65970m += iE2;
        if (jE != -1) {
            j();
            this.f65970m = 0;
            this.f65971n = jE;
        }
        if (this.f65959b.a() < 16) {
            int iA = this.f65959b.a();
            System.arraycopy(this.f65959b.d(), this.f65959b.e(), this.f65959b.d(), 0, iA);
            this.f65959b.P(0);
            this.f65959b.O(iA);
        }
        return 0;
    }

    private void l(m mVar) {
        this.f65965h = t.d(mVar, !this.f65960c);
        this.f65964g = 1;
    }

    private void m(m mVar) {
        t.a aVar = new t.a(this.f65966i);
        boolean zE = false;
        while (!zE) {
            zE = t.e(mVar, aVar);
            this.f65966i = (v) p0.j(aVar.f63456a);
        }
        com.google.android.exoplayer2.util.a.e(this.f65966i);
        this.f65967j = Math.max(this.f65966i.f63461c, 6);
        ((e0) p0.j(this.f65963f)).e(this.f65966i.g(this.f65958a, this.f65965h));
        this.f65964g = 4;
    }

    private void n(m mVar) throws ParserException {
        t.i(mVar);
        this.f65964g = 3;
    }

    @Override // g9.l
    public void b(n nVar) {
        this.f65962e = nVar;
        this.f65963f = nVar.track(0, 1);
        nVar.endTracks();
    }

    @Override // g9.l
    public int c(m mVar, a0 a0Var) throws ParserException {
        int i11 = this.f65964g;
        if (i11 == 0) {
            l(mVar);
            return 0;
        }
        if (i11 == 1) {
            h(mVar);
            return 0;
        }
        if (i11 == 2) {
            n(mVar);
            return 0;
        }
        if (i11 == 3) {
            m(mVar);
            return 0;
        }
        if (i11 == 4) {
            f(mVar);
            return 0;
        }
        if (i11 == 5) {
            return k(mVar, a0Var);
        }
        throw new IllegalStateException();
    }

    @Override // g9.l
    public boolean d(m mVar) {
        t.c(mVar, false);
        return t.a(mVar);
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        if (j11 == 0) {
            this.f65964g = 0;
        } else {
            b bVar = this.f65969l;
            if (bVar != null) {
                bVar.h(j12);
            }
        }
        this.f65971n = j12 != 0 ? -1L : 0L;
        this.f65970m = 0;
        this.f65959b.L(0);
    }
}
