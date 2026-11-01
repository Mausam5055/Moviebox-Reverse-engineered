package com.google.android.exoplayer2.source.dash;

import android.os.Handler;
import android.os.Message;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.source.a0;
import com.google.android.exoplayer2.upstream.g;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.d0;
import g9.e0;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import v9.f;

/* JADX INFO: loaded from: classes3.dex */
public final class e implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f25881a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f25882b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private x9.c f25886f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f25887g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f25888h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f25889i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f25890j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TreeMap f25885e = new TreeMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f25884d = p0.x(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.metadata.emsg.a f25883c = new com.google.android.exoplayer2.metadata.emsg.a();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f25891a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f25892b;

        public a(long j11, long j12) {
            this.f25891a = j11;
            this.f25892b = j12;
        }
    }

    public interface b {
        void a(long j11);

        void b();
    }

    public final class c implements e0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a0 f25893a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final p1 f25894b = new p1();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.google.android.exoplayer2.metadata.d f25895c = new com.google.android.exoplayer2.metadata.d();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f25896d = C.TIME_UNSET;

        c(com.google.android.exoplayer2.upstream.b bVar) {
            this.f25893a = a0.l(bVar);
        }

        private com.google.android.exoplayer2.metadata.d g() {
            this.f25895c.b();
            if (this.f25893a.S(this.f25894b, this.f25895c, 0, false) != -4) {
                return null;
            }
            this.f25895c.n();
            return this.f25895c;
        }

        private void k(long j11, long j12) {
            e.this.f25884d.sendMessage(e.this.f25884d.obtainMessage(1, new a(j11, j12)));
        }

        private void l() {
            while (this.f25893a.K(false)) {
                com.google.android.exoplayer2.metadata.d dVarG = g();
                if (dVarG != null) {
                    long j11 = dVarG.f24845e;
                    Metadata metadataA = e.this.f25883c.a(dVarG);
                    if (metadataA != null) {
                        EventMessage eventMessage = (EventMessage) metadataA.get(0);
                        if (e.h(eventMessage.schemeIdUri, eventMessage.value)) {
                            m(j11, eventMessage);
                        }
                    }
                }
            }
            this.f25893a.s();
        }

        private void m(long j11, EventMessage eventMessage) {
            long jF = e.f(eventMessage);
            if (jF == C.TIME_UNSET) {
                return;
            }
            k(j11, jF);
        }

        @Override // g9.e0
        public int a(g gVar, int i11, boolean z10, int i12) {
            return this.f25893a.b(gVar, i11, z10);
        }

        @Override // g9.e0
        public /* synthetic */ int b(g gVar, int i11, boolean z10) {
            return d0.a(this, gVar, i11, z10);
        }

        @Override // g9.e0
        public /* synthetic */ void c(com.google.android.exoplayer2.util.d0 d0Var, int i11) {
            d0.b(this, d0Var, i11);
        }

        @Override // g9.e0
        public void d(long j11, int i11, int i12, int i13, e0.a aVar) {
            this.f25893a.d(j11, i11, i12, i13, aVar);
            l();
        }

        @Override // g9.e0
        public void e(o1 o1Var) {
            this.f25893a.e(o1Var);
        }

        @Override // g9.e0
        public void f(com.google.android.exoplayer2.util.d0 d0Var, int i11, int i12) {
            this.f25893a.c(d0Var, i11);
        }

        public boolean h(long j11) {
            return e.this.j(j11);
        }

        public void i(f fVar) {
            long j11 = this.f25896d;
            if (j11 == C.TIME_UNSET || fVar.f77139h > j11) {
                this.f25896d = fVar.f77139h;
            }
            e.this.m(fVar);
        }

        public boolean j(f fVar) {
            long j11 = this.f25896d;
            return e.this.n(j11 != C.TIME_UNSET && j11 < fVar.f77138g);
        }

        public void n() {
            this.f25893a.T();
        }
    }

    public e(x9.c cVar, b bVar, com.google.android.exoplayer2.upstream.b bVar2) {
        this.f25886f = cVar;
        this.f25882b = bVar;
        this.f25881a = bVar2;
    }

    private Map.Entry e(long j11) {
        return this.f25885e.ceilingEntry(Long.valueOf(j11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long f(EventMessage eventMessage) {
        try {
            return p0.I0(p0.D(eventMessage.messageData));
        } catch (ParserException unused) {
            return C.TIME_UNSET;
        }
    }

    private void g(long j11, long j12) {
        Long l11 = (Long) this.f25885e.get(Long.valueOf(j12));
        if (l11 == null) {
            this.f25885e.put(Long.valueOf(j12), Long.valueOf(j11));
        } else if (l11.longValue() > j11) {
            this.f25885e.put(Long.valueOf(j12), Long.valueOf(j11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean h(String str, String str2) {
        return "urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2));
    }

    private void i() {
        if (this.f25888h) {
            this.f25889i = true;
            this.f25888h = false;
            this.f25882b.b();
        }
    }

    private void l() {
        this.f25882b.a(this.f25887g);
    }

    private void p() {
        Iterator it = this.f25885e.entrySet().iterator();
        while (it.hasNext()) {
            if (((Long) ((Map.Entry) it.next()).getKey()).longValue() < this.f25886f.f78068h) {
                it.remove();
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.f25890j) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        a aVar = (a) message.obj;
        g(aVar.f25891a, aVar.f25892b);
        return true;
    }

    boolean j(long j11) {
        x9.c cVar = this.f25886f;
        boolean z10 = false;
        if (!cVar.f78064d) {
            return false;
        }
        if (this.f25889i) {
            return true;
        }
        Map.Entry entryE = e(cVar.f78068h);
        if (entryE != null && ((Long) entryE.getValue()).longValue() < j11) {
            this.f25887g = ((Long) entryE.getKey()).longValue();
            l();
            z10 = true;
        }
        if (z10) {
            i();
        }
        return z10;
    }

    public c k() {
        return new c(this.f25881a);
    }

    void m(f fVar) {
        this.f25888h = true;
    }

    boolean n(boolean z10) {
        if (!this.f25886f.f78064d) {
            return false;
        }
        if (this.f25889i) {
            return true;
        }
        if (!z10) {
            return false;
        }
        i();
        return true;
    }

    public void o() {
        this.f25890j = true;
        this.f25884d.removeCallbacksAndMessages(null);
    }

    public void q(x9.c cVar) {
        this.f25889i = false;
        this.f25887g = C.TIME_UNSET;
        this.f25886f = cVar;
        p();
    }
}
