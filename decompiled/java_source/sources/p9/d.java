package p9;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import g9.a0;
import g9.e0;
import g9.l;
import g9.m;
import g9.n;
import g9.q;
import g9.r;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class d implements l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final r f72351d = new r() { // from class: p9.c
        @Override // g9.r
        public /* synthetic */ l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // g9.r
        public final l[] createExtractors() {
            return d.e();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n f72352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f72353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f72354c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] e() {
        return new l[]{new d()};
    }

    private static d0 f(d0 d0Var) {
        d0Var.P(0);
        return d0Var;
    }

    private boolean g(m mVar) {
        f fVar = new f();
        if (fVar.a(mVar, true) && (fVar.f72361b & 2) == 2) {
            int iMin = Math.min(fVar.f72368i, 8);
            d0 d0Var = new d0(iMin);
            mVar.peekFully(d0Var.d(), 0, iMin);
            if (b.p(f(d0Var))) {
                this.f72353b = new b();
            } else if (j.r(f(d0Var))) {
                this.f72353b = new j();
            } else if (h.p(f(d0Var))) {
                this.f72353b = new h();
            }
            return true;
        }
        return false;
    }

    @Override // g9.l
    public void b(n nVar) {
        this.f72352a = nVar;
    }

    @Override // g9.l
    public int c(m mVar, a0 a0Var) throws ParserException {
        com.google.android.exoplayer2.util.a.i(this.f72352a);
        if (this.f72353b == null) {
            if (!g(mVar)) {
                throw ParserException.createForMalformedContainer("Failed to determine bitstream type", null);
            }
            mVar.resetPeekPosition();
        }
        if (!this.f72354c) {
            e0 e0VarTrack = this.f72352a.track(0, 1);
            this.f72352a.endTracks();
            this.f72353b.d(this.f72352a, e0VarTrack);
            this.f72354c = true;
        }
        return this.f72353b.g(mVar, a0Var);
    }

    @Override // g9.l
    public boolean d(m mVar) {
        try {
            return g(mVar);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        i iVar = this.f72353b;
        if (iVar != null) {
            iVar.m(j11, j12);
        }
    }
}
