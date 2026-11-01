package s3;

import android.net.Uri;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements l2.r {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final l2.x f74906d = new l2.x() { // from class: s3.d
        @Override // l2.x
        public /* synthetic */ l2.x a(i3.s.a aVar) {
            return l2.w.d(this, aVar);
        }

        @Override // l2.x
        public /* synthetic */ l2.x b(int i11) {
            return l2.w.b(this, i11);
        }

        @Override // l2.x
        public /* synthetic */ l2.r[] c(Uri uri, Map map) {
            return l2.w.a(this, uri, map);
        }

        @Override // l2.x
        public final l2.r[] createExtractors() {
            return e.g();
        }

        @Override // l2.x
        public /* synthetic */ l2.x d(boolean z10) {
            return l2.w.c(this, z10);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f74907a = new f("audio/ac4");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.j0 f74908b = new androidx.media3.common.util.j0(16384);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f74909c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l2.r[] g() {
        return new l2.r[]{new e()};
    }

    @Override // l2.r
    public void b(l2.t tVar) {
        this.f74907a.d(tVar, new l0.d(0, 1));
        tVar.endTracks();
        tVar.f(new l2.m0.b(C.TIME_UNSET));
    }

    @Override // l2.r
    public int c(l2.s sVar, l2.l0 l0Var) {
        int i11 = sVar.read(this.f74908b.e(), 0, 16384);
        if (i11 == -1) {
            return -1;
        }
        this.f74908b.W(0);
        this.f74908b.V(i11);
        if (!this.f74909c) {
            this.f74907a.b(0L, 4);
            this.f74909c = true;
        }
        this.f74907a.a(this.f74908b);
        return 0;
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(10);
        int i11 = 0;
        while (true) {
            sVar.peekFully(j0Var.e(), 0, 10);
            j0Var.W(0);
            if (j0Var.K() != 4801587) {
                break;
            }
            j0Var.X(3);
            int iG = j0Var.G();
            i11 += iG + 10;
            sVar.advancePeekPosition(iG);
        }
        sVar.resetPeekPosition();
        sVar.advancePeekPosition(i11);
        int i12 = 0;
        int i13 = i11;
        while (true) {
            sVar.peekFully(j0Var.e(), 0, 7);
            j0Var.W(0);
            int iP = j0Var.P();
            if (iP == 44096 || iP == 44097) {
                i12++;
                if (i12 >= 4) {
                    return true;
                }
                int iG2 = l2.c.g(j0Var.e(), iP);
                if (iG2 == -1) {
                    return false;
                }
                sVar.advancePeekPosition(iG2 - 7);
            } else {
                sVar.resetPeekPosition();
                i13++;
                if (i13 - i11 >= 8192) {
                    return false;
                }
                sVar.advancePeekPosition(i13);
                i12 = 0;
            }
        }
    }

    @Override // l2.r
    public /* synthetic */ l2.r e() {
        return l2.q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return l2.q.a(this);
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        this.f74909c = false;
        this.f74907a.seek();
    }
}
