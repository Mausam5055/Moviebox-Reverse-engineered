package s3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f75034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f75035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s0[] f75036c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f75037d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f75038e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f75039f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f75040g = C.TIME_UNSET;

    public l(List list, String str) {
        this.f75034a = list;
        this.f75035b = str;
        this.f75036c = new s0[list.size()];
    }

    private boolean e(androidx.media3.common.util.j0 j0Var, int i11) {
        if (j0Var.a() == 0) {
            return false;
        }
        if (j0Var.H() != i11) {
            this.f75037d = false;
        }
        this.f75038e--;
        return this.f75037d;
    }

    @Override // s3.m
    public void a(androidx.media3.common.util.j0 j0Var) {
        if (this.f75037d) {
            if (this.f75038e != 2 || e(j0Var, 32)) {
                if (this.f75038e != 1 || e(j0Var, 0)) {
                    int iF = j0Var.f();
                    int iA = j0Var.a();
                    for (s0 s0Var : this.f75036c) {
                        j0Var.W(iF);
                        s0Var.b(j0Var, iA);
                    }
                    this.f75039f += iA;
                }
            }
        }
    }

    @Override // s3.m
    public void b(long j11, int i11) {
        if ((i11 & 4) == 0) {
            return;
        }
        this.f75037d = true;
        this.f75040g = j11;
        this.f75039f = 0;
        this.f75038e = 2;
    }

    @Override // s3.m
    public void c(boolean z10) {
        if (this.f75037d) {
            androidx.media3.common.util.a.g(this.f75040g != C.TIME_UNSET);
            for (s0 s0Var : this.f75036c) {
                s0Var.d(this.f75040g, 1, this.f75039f, 0, null);
            }
            this.f75037d = false;
        }
    }

    @Override // s3.m
    public void d(l2.t tVar, l0.d dVar) {
        for (int i11 = 0; i11 < this.f75036c.length; i11++) {
            l0.a aVar = (l0.a) this.f75034a.get(i11);
            dVar.a();
            s0 s0VarTrack = tVar.track(dVar.c(), 3);
            s0VarTrack.c(new androidx.media3.common.r.b().f0(dVar.b()).U(this.f75035b).u0(MimeTypes.APPLICATION_DVBSUBS).g0(Collections.singletonList(aVar.f75043c)).j0(aVar.f75041a).N());
            this.f75036c[i11] = s0VarTrack;
        }
    }

    @Override // s3.m
    public void seek() {
        this.f75037d = false;
        this.f75040g = C.TIME_UNSET;
    }
}
