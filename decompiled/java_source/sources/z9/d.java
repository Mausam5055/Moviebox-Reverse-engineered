package z9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.rtsp.g;
import com.google.android.exoplayer2.source.rtsp.j;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.e0;
import g9.n;

/* JADX INFO: loaded from: classes4.dex */
final class d implements e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j f79380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e0 f79381d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f79382e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f79385h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f79386i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f79379b = new d0(x.f27664a);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d0 f79378a = new d0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f79383f = C.TIME_UNSET;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f79384g = -1;

    public d(j jVar) {
        this.f79380c = jVar;
    }

    private static int d(int i11) {
        return i11 == 5 ? 1 : 0;
    }

    private void e(d0 d0Var, int i11) {
        byte b11 = d0Var.d()[0];
        byte b12 = d0Var.d()[1];
        int i12 = (b11 & 224) | (b12 & 31);
        boolean z10 = (b12 & 128) > 0;
        boolean z11 = (b12 & 64) > 0;
        if (z10) {
            this.f79385h += i();
            d0Var.d()[1] = (byte) i12;
            this.f79378a.M(d0Var.d());
            this.f79378a.P(1);
        } else {
            int iB = g.b(this.f79384g);
            if (i11 != iB) {
                s.i("RtpH264Reader", p0.C("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(iB), Integer.valueOf(i11)));
                return;
            } else {
                this.f79378a.M(d0Var.d());
                this.f79378a.P(2);
            }
        }
        int iA = this.f79378a.a();
        this.f79381d.c(this.f79378a, iA);
        this.f79385h += iA;
        if (z11) {
            this.f79382e = d(i12 & 31);
        }
    }

    private void f(d0 d0Var) {
        int iA = d0Var.a();
        this.f79385h += i();
        this.f79381d.c(d0Var, iA);
        this.f79385h += iA;
        this.f79382e = d(d0Var.d()[0] & 31);
    }

    private void g(d0 d0Var) {
        d0Var.D();
        while (d0Var.a() > 4) {
            int iJ = d0Var.J();
            this.f79385h += i();
            this.f79381d.c(d0Var, iJ);
            this.f79385h += iJ;
        }
        this.f79382e = 0;
    }

    private static long h(long j11, long j12, long j13) {
        return j11 + p0.N0(j12 - j13, 1000000L, 90000L);
    }

    private int i() {
        this.f79379b.P(0);
        int iA = this.f79379b.a();
        ((e0) com.google.android.exoplayer2.util.a.e(this.f79381d)).c(this.f79379b, iA);
        return iA;
    }

    @Override // z9.e
    public void a(d0 d0Var, long j11, int i11, boolean z10) throws ParserException {
        try {
            int i12 = d0Var.d()[0] & 31;
            com.google.android.exoplayer2.util.a.i(this.f79381d);
            if (i12 > 0 && i12 < 24) {
                f(d0Var);
            } else if (i12 == 24) {
                g(d0Var);
            } else {
                if (i12 != 28) {
                    throw ParserException.createForMalformedManifest(String.format("RTP H264 packetization mode [%d] not supported.", Integer.valueOf(i12)), null);
                }
                e(d0Var, i11);
            }
            if (z10) {
                if (this.f79383f == C.TIME_UNSET) {
                    this.f79383f = j11;
                }
                this.f79381d.d(h(this.f79386i, j11, this.f79383f), this.f79382e, this.f79385h, 0, null);
                this.f79385h = 0;
            }
            this.f79384g = i11;
        } catch (IndexOutOfBoundsException e11) {
            throw ParserException.createForMalformedManifest(null, e11);
        }
    }

    @Override // z9.e
    public void b(long j11, int i11) {
    }

    @Override // z9.e
    public void c(n nVar, int i11) {
        e0 e0VarTrack = nVar.track(i11, 2);
        this.f79381d = e0VarTrack;
        ((e0) p0.j(e0VarTrack)).e(this.f79380c.f26431c);
    }

    @Override // z9.e
    public void seek(long j11, long j12) {
        this.f79383f = j11;
        this.f79385h = 0;
        this.f79386i = j12;
    }
}
