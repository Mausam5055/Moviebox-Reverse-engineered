package androidx.media3.exoplayer.dash;

import android.os.Handler;
import android.os.Message;
import androidx.media3.common.ParserException;
import androidx.media3.common.j;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.x;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.source.e0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import l2.r0;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.b f11469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f11470b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a2.c f11474f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f11475g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f11476h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f11477i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f11478j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TreeMap f11473e = new TreeMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f11472d = a1.B(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w2.b f11471c = new w2.b();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f11479a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f11480b;

        public a(long j11, long j12) {
            this.f11479a = j11;
            this.f11480b = j12;
        }
    }

    public interface b {
        void a(long j11);

        void b();
    }

    public final class c implements s0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e0 f11481a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final s2 f11482b = new s2();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final u2.b f11483c = new u2.b();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f11484d = C.TIME_UNSET;

        c(androidx.media3.exoplayer.upstream.b bVar) {
            this.f11481a = e0.m(bVar);
        }

        private u2.b h() {
            this.f11483c.clear();
            if (this.f11481a.V(this.f11482b, this.f11483c, 0, false) != -4) {
                return null;
            }
            this.f11483c.d();
            return this.f11483c;
        }

        private void l(long j11, long j12) {
            f.this.f11472d.sendMessage(f.this.f11472d.obtainMessage(1, new a(j11, j12)));
        }

        private void m() {
            while (this.f11481a.N(false)) {
                u2.b bVarH = h();
                if (bVarH != null) {
                    long j11 = bVarH.f10920e;
                    x xVarA = f.this.f11471c.a(bVarH);
                    if (xVarA != null) {
                        w2.a aVar = (w2.a) xVarA.d(0);
                        if (f.h(aVar.f77553a, aVar.f77554b)) {
                            n(j11, aVar);
                        }
                    }
                }
            }
            this.f11481a.t();
        }

        private void n(long j11, w2.a aVar) {
            long jF = f.f(aVar);
            if (jF == C.TIME_UNSET) {
                return;
            }
            l(j11, jF);
        }

        @Override // l2.s0
        public void a(j0 j0Var, int i11, int i12) {
            this.f11481a.b(j0Var, i11);
        }

        @Override // l2.s0
        public /* synthetic */ void b(j0 j0Var, int i11) {
            r0.c(this, j0Var, i11);
        }

        @Override // l2.s0
        public void c(r rVar) {
            this.f11481a.c(rVar);
        }

        @Override // l2.s0
        public void d(long j11, int i11, int i12, int i13, s0.a aVar) {
            this.f11481a.d(j11, i11, i12, i13, aVar);
            m();
        }

        @Override // l2.s0
        public /* synthetic */ int e(j jVar, int i11, boolean z10) {
            return r0.b(this, jVar, i11, z10);
        }

        @Override // l2.s0
        public /* synthetic */ void f(long j11) {
            r0.a(this, j11);
        }

        @Override // l2.s0
        public int g(j jVar, int i11, boolean z10, int i12) {
            return this.f11481a.e(jVar, i11, z10);
        }

        public boolean i(long j11) {
            return f.this.j(j11);
        }

        public void j(h2.e eVar) {
            long j11 = this.f11484d;
            if (j11 == C.TIME_UNSET || eVar.f64303h > j11) {
                this.f11484d = eVar.f64303h;
            }
            f.this.m(eVar);
        }

        public boolean k(h2.e eVar) {
            long j11 = this.f11484d;
            return f.this.n(j11 != C.TIME_UNSET && j11 < eVar.f64302g);
        }

        public void o() {
            this.f11481a.W();
        }
    }

    public f(a2.c cVar, b bVar, androidx.media3.exoplayer.upstream.b bVar2) {
        this.f11474f = cVar;
        this.f11470b = bVar;
        this.f11469a = bVar2;
    }

    private Map.Entry e(long j11) {
        return this.f11473e.ceilingEntry(Long.valueOf(j11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long f(w2.a aVar) {
        try {
            return a1.Z0(a1.H(aVar.f77557e));
        } catch (ParserException unused) {
            return C.TIME_UNSET;
        }
    }

    private void g(long j11, long j12) {
        Long l11 = (Long) this.f11473e.get(Long.valueOf(j12));
        if (l11 == null) {
            this.f11473e.put(Long.valueOf(j12), Long.valueOf(j11));
        } else if (l11.longValue() > j11) {
            this.f11473e.put(Long.valueOf(j12), Long.valueOf(j11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean h(String str, String str2) {
        return "urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2));
    }

    private void i() {
        if (this.f11476h) {
            this.f11477i = true;
            this.f11476h = false;
            this.f11470b.b();
        }
    }

    private void l() {
        this.f11470b.a(this.f11475g);
    }

    private void p() {
        Iterator it = this.f11473e.entrySet().iterator();
        while (it.hasNext()) {
            if (((Long) ((Map.Entry) it.next()).getKey()).longValue() < this.f11474f.f52h) {
                it.remove();
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.f11478j) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        a aVar = (a) message.obj;
        g(aVar.f11479a, aVar.f11480b);
        return true;
    }

    boolean j(long j11) {
        a2.c cVar = this.f11474f;
        boolean z10 = false;
        if (!cVar.f48d) {
            return false;
        }
        if (this.f11477i) {
            return true;
        }
        Map.Entry entryE = e(cVar.f52h);
        if (entryE != null && ((Long) entryE.getValue()).longValue() < j11) {
            this.f11475g = ((Long) entryE.getKey()).longValue();
            l();
            z10 = true;
        }
        if (z10) {
            i();
        }
        return z10;
    }

    public c k() {
        return new c(this.f11469a);
    }

    void m(h2.e eVar) {
        this.f11476h = true;
    }

    boolean n(boolean z10) {
        if (!this.f11474f.f48d) {
            return false;
        }
        if (this.f11477i) {
            return true;
        }
        if (!z10) {
            return false;
        }
        i();
        return true;
    }

    public void o() {
        this.f11478j = true;
        this.f11472d.removeCallbacksAndMessages(null);
    }

    public void q(a2.c cVar) {
        this.f11477i = false;
        this.f11475g = C.TIME_UNSET;
        this.f11474f = cVar;
        p();
    }
}
