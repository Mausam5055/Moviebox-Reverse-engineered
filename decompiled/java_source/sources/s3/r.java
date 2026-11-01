package s3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class r implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f75186a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private s0 f75188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f75189d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f75191f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f75192g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f75187b = new androidx.media3.common.util.j0(10);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f75190e = C.TIME_UNSET;

    public r(String str) {
        this.f75186a = str;
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) {
        androidx.media3.common.util.a.i(this.f75188c);
        if (this.f75189d) {
            int iA = j0Var.a();
            int i11 = this.f75192g;
            if (i11 < 10) {
                int iMin = Math.min(iA, 10 - i11);
                System.arraycopy(j0Var.e(), j0Var.f(), this.f75187b.e(), this.f75192g, iMin);
                if (this.f75192g + iMin == 10) {
                    this.f75187b.W(0);
                    if (73 != this.f75187b.H() || 68 != this.f75187b.H() || 51 != this.f75187b.H()) {
                        androidx.media3.common.util.u.h("Id3Reader", "Discarding invalid ID3 tag");
                        this.f75189d = false;
                        return;
                    } else {
                        this.f75187b.X(3);
                        this.f75191f = this.f75187b.G() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iA, this.f75191f - this.f75192g);
            this.f75188c.b(j0Var, iMin2);
            this.f75192g += iMin2;
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        if ((i11 & 4) == 0) {
            return;
        }
        this.f75189d = true;
        this.f75190e = j11;
        this.f75191f = 0;
        this.f75192g = 0;
    }

    @Override // s3.m
    public void c(boolean z10) {
        int i11;
        androidx.media3.common.util.a.i(this.f75188c);
        if (this.f75189d && (i11 = this.f75191f) != 0 && this.f75192g == i11) {
            androidx.media3.common.util.a.g(this.f75190e != C.TIME_UNSET);
            this.f75188c.d(this.f75190e, 1, this.f75191f, 0, null);
            this.f75189d = false;
        }
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        dVar.a();
        s0 s0VarTrack = tVar.track(dVar.c(), 5);
        this.f75188c = s0VarTrack;
        s0VarTrack.c(new androidx.media3.common.r.b().f0(dVar.b()).U(this.f75186a).u0(MimeTypes.APPLICATION_ID3).N());
    }

    @Override // s3.m
    public void seek() {
        this.f75189d = false;
        this.f75190e = C.TIME_UNSET;
    }
}
