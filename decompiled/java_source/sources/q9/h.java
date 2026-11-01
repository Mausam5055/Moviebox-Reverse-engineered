package q9;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.EOFException;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class h implements g9.l {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final g9.r f73249m = new g9.r() { // from class: q9.g
        @Override // g9.r
        public /* synthetic */ g9.l[] c(Uri uri, Map map) {
            return g9.q.a(this, uri, map);
        }

        @Override // g9.r
        public final g9.l[] createExtractors() {
            return h.h();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f73250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f73251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73253d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.c0 f73254e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private g9.n f73255f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f73256g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f73257h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f73258i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f73259j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f73260k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f73261l;

    public h() {
        this(0);
    }

    public h(int i11) {
        this.f73250a = (i11 & 2) != 0 ? i11 | 1 : i11;
        this.f73251b = new i(true);
        this.f73252c = new com.google.android.exoplayer2.util.d0(2048);
        this.f73258i = -1;
        this.f73257h = -1L;
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(10);
        this.f73253d = d0Var;
        this.f73254e = new com.google.android.exoplayer2.util.c0(d0Var.d());
    }

    private void e(g9.m mVar) throws ParserException {
        if (this.f73259j) {
            return;
        }
        this.f73258i = -1;
        mVar.resetPeekPosition();
        long j11 = 0;
        if (mVar.getPosition() == 0) {
            j(mVar);
        }
        int i11 = 0;
        int i12 = 0;
        while (true) {
            try {
                if (mVar.peekFully(this.f73253d.d(), 0, 2, true)) {
                    this.f73253d.P(0);
                    if (!i.k(this.f73253d.J())) {
                        break;
                    }
                    if (mVar.peekFully(this.f73253d.d(), 0, 4, true)) {
                        this.f73254e.p(14);
                        int iH = this.f73254e.h(13);
                        if (iH <= 6) {
                            this.f73259j = true;
                            throw ParserException.createForMalformedContainer("Malformed ADTS stream", null);
                        }
                        j11 += (long) iH;
                        i12++;
                        if (i12 != 1000 && mVar.advancePeekPosition(iH - 6, true)) {
                        }
                    }
                }
            } catch (EOFException unused) {
            }
            i11 = i12;
            break;
        }
        mVar.resetPeekPosition();
        if (i11 > 0) {
            this.f73258i = (int) (j11 / ((long) i11));
        } else {
            this.f73258i = -1;
        }
        this.f73259j = true;
    }

    private static int f(int i11, long j11) {
        return (int) ((((long) i11) * 8000000) / j11);
    }

    private g9.b0 g(long j11, boolean z10) {
        return new g9.e(j11, this.f73257h, f(this.f73258i, this.f73251b.i()), this.f73258i, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g9.l[] h() {
        return new g9.l[]{new h()};
    }

    private void i(long j11, boolean z10) {
        if (this.f73261l) {
            return;
        }
        boolean z11 = (this.f73250a & 1) != 0 && this.f73258i > 0;
        if (z11 && this.f73251b.i() == C.TIME_UNSET && !z10) {
            return;
        }
        if (!z11 || this.f73251b.i() == C.TIME_UNSET) {
            this.f73255f.d(new g9.b0.b(C.TIME_UNSET));
        } else {
            this.f73255f.d(g(j11, (this.f73250a & 2) != 0));
        }
        this.f73261l = true;
    }

    private int j(g9.m mVar) {
        int i11 = 0;
        while (true) {
            mVar.peekFully(this.f73253d.d(), 0, 10);
            this.f73253d.P(0);
            if (this.f73253d.G() != 4801587) {
                break;
            }
            this.f73253d.Q(3);
            int iC = this.f73253d.C();
            i11 += iC + 10;
            mVar.advancePeekPosition(iC);
        }
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(i11);
        if (this.f73257h == -1) {
            this.f73257h = i11;
        }
        return i11;
    }

    @Override // g9.l
    public void b(g9.n nVar) {
        this.f73255f = nVar;
        this.f73251b.c(nVar, new i0.d(0, 1));
        nVar.endTracks();
    }

    @Override // g9.l
    public int c(g9.m mVar, g9.a0 a0Var) throws ParserException {
        com.google.android.exoplayer2.util.a.i(this.f73255f);
        long length = mVar.getLength();
        int i11 = this.f73250a;
        if ((i11 & 2) != 0 || ((i11 & 1) != 0 && length != -1)) {
            e(mVar);
        }
        int i12 = mVar.read(this.f73252c.d(), 0, 2048);
        boolean z10 = i12 == -1;
        i(length, z10);
        if (z10) {
            return -1;
        }
        this.f73252c.P(0);
        this.f73252c.O(i12);
        if (!this.f73260k) {
            this.f73251b.b(this.f73256g, 4);
            this.f73260k = true;
        }
        this.f73251b.a(this.f73252c);
        return 0;
    }

    @Override // g9.l
    public boolean d(g9.m mVar) {
        int iJ = j(mVar);
        int i11 = iJ;
        int i12 = 0;
        int i13 = 0;
        do {
            mVar.peekFully(this.f73253d.d(), 0, 2);
            this.f73253d.P(0);
            if (i.k(this.f73253d.J())) {
                i12++;
                if (i12 >= 4 && i13 > 188) {
                    return true;
                }
                mVar.peekFully(this.f73253d.d(), 0, 4);
                this.f73254e.p(14);
                int iH = this.f73254e.h(13);
                if (iH <= 6) {
                    i11++;
                    mVar.resetPeekPosition();
                    mVar.advancePeekPosition(i11);
                } else {
                    mVar.advancePeekPosition(iH - 6);
                    i13 += iH;
                }
            } else {
                i11++;
                mVar.resetPeekPosition();
                mVar.advancePeekPosition(i11);
            }
            i12 = 0;
            i13 = 0;
        } while (i11 - iJ < 8192);
        return false;
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        this.f73260k = false;
        this.f73251b.seek();
        this.f73256g = j12;
    }
}
