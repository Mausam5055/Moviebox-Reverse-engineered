package q9;

import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes4.dex */
public final class r implements m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g9.e0 f73469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f73470c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f73472e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f73473f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d0 f73468a = new com.google.android.exoplayer2.util.d0(10);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f73471d = C.TIME_UNSET;

    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f73469b);
        if (this.f73470c) {
            int iA = d0Var.a();
            int i11 = this.f73473f;
            if (i11 < 10) {
                int iMin = Math.min(iA, 10 - i11);
                System.arraycopy(d0Var.d(), d0Var.e(), this.f73468a.d(), this.f73473f, iMin);
                if (this.f73473f + iMin == 10) {
                    this.f73468a.P(0);
                    if (73 != this.f73468a.D() || 68 != this.f73468a.D() || 51 != this.f73468a.D()) {
                        com.google.android.exoplayer2.util.s.i("Id3Reader", "Discarding invalid ID3 tag");
                        this.f73470c = false;
                        return;
                    } else {
                        this.f73468a.Q(3);
                        this.f73472e = this.f73468a.C() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iA, this.f73472e - this.f73473f);
            this.f73469b.c(d0Var, iMin2);
            this.f73473f += iMin2;
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        if ((i11 & 4) == 0) {
            return;
        }
        this.f73470c = true;
        if (j11 != C.TIME_UNSET) {
            this.f73471d = j11;
        }
        this.f73472e = 0;
        this.f73473f = 0;
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        dVar.a();
        g9.e0 e0VarTrack = nVar.track(dVar.c(), 5);
        this.f73469b = e0VarTrack;
        e0VarTrack.e(new o1.b().S(dVar.b()).e0(MimeTypes.APPLICATION_ID3).E());
    }

    @Override // q9.m
    public void packetFinished() {
        int i11;
        com.google.android.exoplayer2.util.a.i(this.f73469b);
        if (this.f73470c && (i11 = this.f73472e) != 0 && this.f73473f == i11) {
            long j11 = this.f73471d;
            if (j11 != C.TIME_UNSET) {
                this.f73469b.d(j11, 1, i11, 0, null);
            }
            this.f73470c = false;
        }
    }

    @Override // q9.m
    public void seek() {
        this.f73470c = false;
        this.f73471d = C.TIME_UNSET;
    }
}
