package q9;

import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class l implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f73338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g9.e0[] f73339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f73340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f73341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f73342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f73343f = C.TIME_UNSET;

    public l(List list) {
        this.f73338a = list;
        this.f73339b = new g9.e0[list.size()];
    }

    private boolean d(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
        if (d0Var.a() == 0) {
            return false;
        }
        if (d0Var.D() != i11) {
            this.f73340c = false;
        }
        this.f73341d--;
        return this.f73340c;
    }

    @Override // q9.m
    public void a(com.google.android.exoplayer2.util.d0 d0Var) {
        if (this.f73340c) {
            if (this.f73341d != 2 || d(d0Var, 32)) {
                if (this.f73341d != 1 || d(d0Var, 0)) {
                    int iE = d0Var.e();
                    int iA = d0Var.a();
                    for (g9.e0 e0Var : this.f73339b) {
                        d0Var.P(iE);
                        e0Var.c(d0Var, iA);
                    }
                    this.f73342e += iA;
                }
            }
        }
    }

    @Override // q9.m
    public void b(long j11, int i11) {
        if ((i11 & 4) == 0) {
            return;
        }
        this.f73340c = true;
        if (j11 != C.TIME_UNSET) {
            this.f73343f = j11;
        }
        this.f73342e = 0;
        this.f73341d = 2;
    }

    @Override // q9.m
    public void c(g9.n nVar, i0.d dVar) {
        for (int i11 = 0; i11 < this.f73339b.length; i11++) {
            i0.a aVar = (i0.a) this.f73338a.get(i11);
            dVar.a();
            g9.e0 e0VarTrack = nVar.track(dVar.c(), 3);
            e0VarTrack.e(new o1.b().S(dVar.b()).e0(MimeTypes.APPLICATION_DVBSUBS).T(Collections.singletonList(aVar.f73313c)).V(aVar.f73311a).E());
            this.f73339b[i11] = e0VarTrack;
        }
    }

    @Override // q9.m
    public void packetFinished() {
        if (this.f73340c) {
            if (this.f73343f != C.TIME_UNSET) {
                for (g9.e0 e0Var : this.f73339b) {
                    e0Var.d(this.f73343f, 1, this.f73342e, 0, null);
                }
            }
            this.f73340c = false;
        }
    }

    @Override // q9.m
    public void seek() {
        this.f73340c = false;
        this.f73343f = C.TIME_UNSET;
    }
}
