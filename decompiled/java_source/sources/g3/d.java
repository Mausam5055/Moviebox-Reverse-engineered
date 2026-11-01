package g3;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import i3.s;
import java.util.List;
import java.util.Map;
import l2.l0;
import l2.q;
import l2.r;
import l2.s0;
import l2.t;
import l2.w;
import l2.x;

/* JADX INFO: loaded from: classes2.dex */
public class d implements r {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final x f63288d = new x() { // from class: g3.c
        @Override // l2.x
        public /* synthetic */ x a(s.a aVar) {
            return w.d(this, aVar);
        }

        @Override // l2.x
        public /* synthetic */ x b(int i11) {
            return w.b(this, i11);
        }

        @Override // l2.x
        public /* synthetic */ r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override // l2.x
        public final r[] createExtractors() {
            return d.g();
        }

        @Override // l2.x
        public /* synthetic */ x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private t f63289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f63290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f63291c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r[] g() {
        return new r[]{new d()};
    }

    private static j0 h(j0 j0Var) {
        j0Var.W(0);
        return j0Var;
    }

    private boolean i(l2.s sVar) {
        f fVar = new f();
        if (fVar.a(sVar, true) && (fVar.f63298b & 2) == 2) {
            int iMin = Math.min(fVar.f63305i, 8);
            j0 j0Var = new j0(iMin);
            sVar.peekFully(j0Var.e(), 0, iMin);
            if (b.p(h(j0Var))) {
                this.f63290b = new b();
            } else if (j.r(h(j0Var))) {
                this.f63290b = new j();
            } else if (h.o(h(j0Var))) {
                this.f63290b = new h();
            }
            return true;
        }
        return false;
    }

    @Override // l2.r
    public void b(t tVar) {
        this.f63289a = tVar;
    }

    @Override // l2.r
    public int c(l2.s sVar, l0 l0Var) throws ParserException {
        androidx.media3.common.util.a.i(this.f63289a);
        if (this.f63290b == null) {
            if (!i(sVar)) {
                throw ParserException.createForMalformedContainer("Failed to determine bitstream type", null);
            }
            sVar.resetPeekPosition();
        }
        if (!this.f63291c) {
            s0 s0VarTrack = this.f63289a.track(0, 1);
            this.f63289a.endTracks();
            this.f63290b.d(this.f63289a, s0VarTrack);
            this.f63291c = true;
        }
        return this.f63290b.g(sVar, l0Var);
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        try {
            return i(sVar);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // l2.r
    public /* synthetic */ r e() {
        return q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return q.a(this);
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        i iVar = this.f63290b;
        if (iVar != null) {
            iVar.m(j11, j12);
        }
    }
}
