package q9;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.core.view.InputDeviceCompat;
import com.google.android.exoplayer2.util.l0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class a0 implements g9.l {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final g9.r f73175l = new g9.r() { // from class: q9.z
        @Override // g9.r
        public /* synthetic */ g9.l[] c(Uri uri, Map map) {
            return g9.q.a(this, uri, map);
        }

        @Override // g9.r
        public final g9.l[] createExtractors() {
            return a0.e();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l0 f73176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f73177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73178c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final y f73179d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f73180e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f73181f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f73182g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f73183h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private x f73184i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private g9.n f73185j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f73186k;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final m f73187a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final l0 f73188b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.google.android.exoplayer2.util.c0 f73189c = new com.google.android.exoplayer2.util.c0(new byte[64]);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f73190d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f73191e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f73192f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f73193g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f73194h;

        public a(m mVar, l0 l0Var) {
            this.f73187a = mVar;
            this.f73188b = l0Var;
        }

        private void b() {
            this.f73189c.r(8);
            this.f73190d = this.f73189c.g();
            this.f73191e = this.f73189c.g();
            this.f73189c.r(6);
            this.f73193g = this.f73189c.h(8);
        }

        private void c() {
            this.f73194h = 0L;
            if (this.f73190d) {
                this.f73189c.r(4);
                long jH = ((long) this.f73189c.h(3)) << 30;
                this.f73189c.r(1);
                long jH2 = jH | ((long) (this.f73189c.h(15) << 15));
                this.f73189c.r(1);
                long jH3 = jH2 | ((long) this.f73189c.h(15));
                this.f73189c.r(1);
                if (!this.f73192f && this.f73191e) {
                    this.f73189c.r(4);
                    long jH4 = ((long) this.f73189c.h(3)) << 30;
                    this.f73189c.r(1);
                    long jH5 = jH4 | ((long) (this.f73189c.h(15) << 15));
                    this.f73189c.r(1);
                    long jH6 = jH5 | ((long) this.f73189c.h(15));
                    this.f73189c.r(1);
                    this.f73188b.b(jH6);
                    this.f73192f = true;
                }
                this.f73194h = this.f73188b.b(jH3);
            }
        }

        public void a(com.google.android.exoplayer2.util.d0 d0Var) {
            d0Var.j(this.f73189c.f27560a, 0, 3);
            this.f73189c.p(0);
            b();
            d0Var.j(this.f73189c.f27560a, 0, this.f73193g);
            this.f73189c.p(0);
            c();
            this.f73187a.b(this.f73194h, 4);
            this.f73187a.a(d0Var);
            this.f73187a.packetFinished();
        }

        public void d() {
            this.f73192f = false;
            this.f73187a.seek();
        }
    }

    public a0() {
        this(new l0(0L));
    }

    public a0(l0 l0Var) {
        this.f73176a = l0Var;
        this.f73178c = new com.google.android.exoplayer2.util.d0(4096);
        this.f73177b = new SparseArray();
        this.f73179d = new y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g9.l[] e() {
        return new g9.l[]{new a0()};
    }

    private void f(long j11) {
        if (this.f73186k) {
            return;
        }
        this.f73186k = true;
        if (this.f73179d.c() == C.TIME_UNSET) {
            this.f73185j.d(new g9.b0.b(this.f73179d.c()));
            return;
        }
        x xVar = new x(this.f73179d.d(), this.f73179d.c(), j11);
        this.f73184i = xVar;
        this.f73185j.d(xVar.b());
    }

    @Override // g9.l
    public void b(g9.n nVar) {
        this.f73185j = nVar;
    }

    @Override // g9.l
    public int c(g9.m mVar, g9.a0 a0Var) {
        m nVar;
        com.google.android.exoplayer2.util.a.i(this.f73185j);
        long length = mVar.getLength();
        if (length != -1 && !this.f73179d.e()) {
            return this.f73179d.g(mVar, a0Var);
        }
        f(length);
        x xVar = this.f73184i;
        if (xVar != null && xVar.d()) {
            return this.f73184i.c(mVar, a0Var);
        }
        mVar.resetPeekPosition();
        long peekPosition = length != -1 ? length - mVar.getPeekPosition() : -1L;
        if ((peekPosition != -1 && peekPosition < 4) || !mVar.peekFully(this.f73178c.d(), 0, 4, true)) {
            return -1;
        }
        this.f73178c.P(0);
        int iN = this.f73178c.n();
        if (iN == 441) {
            return -1;
        }
        if (iN == 442) {
            mVar.peekFully(this.f73178c.d(), 0, 10);
            this.f73178c.P(9);
            mVar.skipFully((this.f73178c.D() & 7) + 14);
            return 0;
        }
        if (iN == 443) {
            mVar.peekFully(this.f73178c.d(), 0, 2);
            this.f73178c.P(0);
            mVar.skipFully(this.f73178c.J() + 6);
            return 0;
        }
        if (((iN & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            mVar.skipFully(1);
            return 0;
        }
        int i11 = iN & 255;
        a aVar = (a) this.f73177b.get(i11);
        if (!this.f73180e) {
            if (aVar == null) {
                if (i11 == 189) {
                    nVar = new c();
                    this.f73181f = true;
                    this.f73183h = mVar.getPosition();
                } else if ((iN & 224) == 192) {
                    nVar = new t();
                    this.f73181f = true;
                    this.f73183h = mVar.getPosition();
                } else if ((iN & 240) == 224) {
                    nVar = new n();
                    this.f73182g = true;
                    this.f73183h = mVar.getPosition();
                } else {
                    nVar = null;
                }
                if (nVar != null) {
                    nVar.c(this.f73185j, new i0.d(i11, 256));
                    aVar = new a(nVar, this.f73176a);
                    this.f73177b.put(i11, aVar);
                }
            }
            if (mVar.getPosition() > ((this.f73181f && this.f73182g) ? this.f73183h + PlaybackStateCompat.ACTION_PLAY_FROM_URI : PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                this.f73180e = true;
                this.f73185j.endTracks();
            }
        }
        mVar.peekFully(this.f73178c.d(), 0, 2);
        this.f73178c.P(0);
        int iJ = this.f73178c.J() + 6;
        if (aVar == null) {
            mVar.skipFully(iJ);
        } else {
            this.f73178c.L(iJ);
            mVar.readFully(this.f73178c.d(), 0, iJ);
            this.f73178c.P(6);
            aVar.a(this.f73178c);
            com.google.android.exoplayer2.util.d0 d0Var = this.f73178c;
            d0Var.O(d0Var.b());
        }
        return 0;
    }

    @Override // g9.l
    public boolean d(g9.m mVar) {
        byte[] bArr = new byte[14];
        mVar.peekFully(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        mVar.advancePeekPosition(bArr[13] & 7);
        mVar.peekFully(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        boolean z10 = this.f73176a.e() == C.TIME_UNSET;
        if (!z10) {
            long jC = this.f73176a.c();
            z10 = (jC == C.TIME_UNSET || jC == 0 || jC == j12) ? false : true;
        }
        if (z10) {
            this.f73176a.g(j12);
        }
        x xVar = this.f73184i;
        if (xVar != null) {
            xVar.h(j12);
        }
        for (int i11 = 0; i11 < this.f73177b.size(); i11++) {
            ((a) this.f73177b.valueAt(i11)).d();
        }
    }
}
