package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes5.dex */
public final class g implements Closeable {
    static final /* synthetic */ boolean A = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final ExecutorService f38096z = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp Http2Connection", true));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final boolean f38097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final j f38098b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f38100d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f38101e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f38102f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f38103g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ScheduledExecutorService f38104h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ExecutorService f38105i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.http2.l f38106j;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    long f38115s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final m f38117u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final Socket f38118v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final com.mbridge.msdk.thrid.okhttp.internal.http2.j f38119w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final l f38120x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final Set<Integer> f38121y;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Map<Integer, com.mbridge.msdk.thrid.okhttp.internal.http2.i> f38099c = new LinkedHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f38107k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f38108l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f38109m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f38110n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f38111o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f38112p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f38113q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    long f38114r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    m f38116t = new m();

    class a extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f38122b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.thrid.okhttp.internal.http2.b f38123c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Object[] objArr, int i11, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            super(str, objArr);
            this.f38122b = i11;
            this.f38123c = bVar;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            try {
                g.this.b(this.f38122b, this.f38123c);
            } catch (IOException unused) {
                g.this.h();
            }
        }
    }

    class b extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f38125b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ long f38126c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, Object[] objArr, int i11, long j11) {
            super(str, objArr);
            this.f38125b = i11;
            this.f38126c = j11;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            try {
                g.this.f38119w.a(this.f38125b, this.f38126c);
            } catch (IOException unused) {
                g.this.h();
            }
        }
    }

    class c extends com.mbridge.msdk.thrid.okhttp.internal.b {
        c(String str, Object... objArr) {
            super(str, objArr);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            g.this.a(false, 2, 0);
        }
    }

    class d extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f38129b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f38130c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, Object[] objArr, int i11, List list) {
            super(str, objArr);
            this.f38129b = i11;
            this.f38130c = list;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            if (g.this.f38106j.a(this.f38129b, this.f38130c)) {
                try {
                    g.this.f38119w.a(this.f38129b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                    synchronized (g.this) {
                        try {
                            g.this.f38121y.remove(Integer.valueOf(this.f38129b));
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    class e extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f38132b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f38133c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f38134d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, Object[] objArr, int i11, List list, boolean z10) {
            super(str, objArr);
            this.f38132b = i11;
            this.f38133c = list;
            this.f38134d = z10;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            boolean zA = g.this.f38106j.a(this.f38132b, this.f38133c, this.f38134d);
            if (zA) {
                try {
                    g.this.f38119w.a(this.f38132b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (zA || this.f38134d) {
                synchronized (g.this) {
                    try {
                        g.this.f38121y.remove(Integer.valueOf(this.f38132b));
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    class f extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f38136b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.thrid.okio.c f38137c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f38138d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f38139e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, Object[] objArr, int i11, com.mbridge.msdk.thrid.okio.c cVar, int i12, boolean z10) {
            super(str, objArr);
            this.f38136b = i11;
            this.f38137c = cVar;
            this.f38138d = i12;
            this.f38139e = z10;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            try {
                boolean zA = g.this.f38106j.a(this.f38136b, this.f38137c, this.f38138d, this.f38139e);
                if (zA) {
                    g.this.f38119w.a(this.f38136b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                }
                if (zA || this.f38139e) {
                    synchronized (g.this) {
                        g.this.f38121y.remove(Integer.valueOf(this.f38136b));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.thrid.okhttp.internal.http2.g$g, reason: collision with other inner class name */
    class C0550g extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f38141b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.thrid.okhttp.internal.http2.b f38142c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0550g(String str, Object[] objArr, int i11, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            super(str, objArr);
            this.f38141b = i11;
            this.f38142c = bVar;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            g.this.f38106j.a(this.f38141b, this.f38142c);
            synchronized (g.this) {
                g.this.f38121y.remove(Integer.valueOf(this.f38141b));
            }
        }
    }

    public static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Socket f38144a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f38145b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        com.mbridge.msdk.thrid.okio.e f38146c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        com.mbridge.msdk.thrid.okio.d f38147d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        j f38148e = j.f38153a;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        com.mbridge.msdk.thrid.okhttp.internal.http2.l f38149f = com.mbridge.msdk.thrid.okhttp.internal.http2.l.f38216a;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f38150g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f38151h;

        public h(boolean z10) {
            this.f38150g = z10;
        }

        public h a(int i11) {
            this.f38151h = i11;
            return this;
        }

        public h a(j jVar) {
            this.f38148e = jVar;
            return this;
        }

        public h a(Socket socket, String str, com.mbridge.msdk.thrid.okio.e eVar, com.mbridge.msdk.thrid.okio.d dVar) {
            this.f38144a = socket;
            this.f38145b = str;
            this.f38146c = eVar;
            this.f38147d = dVar;
            return this;
        }

        public g a() {
            return new g(this);
        }
    }

    final class i extends com.mbridge.msdk.thrid.okhttp.internal.b {
        i() {
            super("OkHttp %s ping", g.this.f38100d);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            boolean z10;
            synchronized (g.this) {
                if (g.this.f38108l < g.this.f38107k) {
                    z10 = true;
                } else {
                    g.e(g.this);
                    z10 = false;
                }
            }
            if (z10) {
                g.this.h();
            } else {
                g.this.a(false, 1, 0);
            }
        }
    }

    public static abstract class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final j f38153a = new a();

        static class a extends j {
            a() {
            }

            @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.g.j
            public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException {
                iVar.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
            }
        }

        public void a(g gVar) {
        }

        public abstract void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException;
    }

    final class k extends com.mbridge.msdk.thrid.okhttp.internal.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f38154b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f38155c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f38156d;

        k(boolean z10, int i11, int i12) {
            super("OkHttp %s ping %08x%08x", g.this.f38100d, Integer.valueOf(i11), Integer.valueOf(i12));
            this.f38154b = z10;
            this.f38155c = i11;
            this.f38156d = i12;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        public void b() {
            g.this.a(this.f38154b, this.f38155c, this.f38156d);
        }
    }

    class l extends com.mbridge.msdk.thrid.okhttp.internal.b implements com.mbridge.msdk.thrid.okhttp.internal.http2.h.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final com.mbridge.msdk.thrid.okhttp.internal.http2.h f38158b;

        class a extends com.mbridge.msdk.thrid.okhttp.internal.b {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.mbridge.msdk.thrid.okhttp.internal.http2.i f38160b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(String str, Object[] objArr, com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) {
                super(str, objArr);
                this.f38160b = iVar;
            }

            @Override // com.mbridge.msdk.thrid.okhttp.internal.b
            public void b() {
                try {
                    g.this.f38098b.a(this.f38160b);
                } catch (IOException e11) {
                    com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(4, "Http2Connection.Listener failure for " + g.this.f38100d, e11);
                    try {
                        this.f38160b.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        class b extends com.mbridge.msdk.thrid.okhttp.internal.b {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f38162b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ m f38163c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(String str, Object[] objArr, boolean z10, m mVar) {
                super(str, objArr);
                this.f38162b = z10;
                this.f38163c = mVar;
            }

            @Override // com.mbridge.msdk.thrid.okhttp.internal.b
            public void b() {
                l.this.b(this.f38162b, this.f38163c);
            }
        }

        class c extends com.mbridge.msdk.thrid.okhttp.internal.b {
            c(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override // com.mbridge.msdk.thrid.okhttp.internal.b
            public void b() {
                g gVar = g.this;
                gVar.f38098b.a(gVar);
            }
        }

        l(com.mbridge.msdk.thrid.okhttp.internal.http2.h hVar) {
            super("OkHttp %s", g.this.f38100d);
            this.f38158b = hVar;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a() {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i11, int i12, int i13, boolean z10) {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i11, int i12, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
            g.this.a(i12, list);
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i11, long j11) {
            if (i11 == 0) {
                synchronized (g.this) {
                    g gVar = g.this;
                    gVar.f38115s += j11;
                    gVar.notifyAll();
                }
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i iVarA = g.this.a(i11);
            if (iVarA != null) {
                synchronized (iVarA) {
                    iVarA.a(j11);
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i11, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            if (g.this.b(i11)) {
                g.this.a(i11, bVar);
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i iVarC = g.this.c(i11);
            if (iVarC != null) {
                iVarC.d(bVar);
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(int i11, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar, com.mbridge.msdk.thrid.okio.f fVar) {
            com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr;
            fVar.e();
            synchronized (g.this) {
                iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) g.this.f38099c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[g.this.f38099c.size()]);
                g.this.f38103g = true;
            }
            for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                if (iVar.c() > i11 && iVar.f()) {
                    iVar.d(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
                    g.this.c(iVar.c());
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z10, int i11, int i12) {
            if (!z10) {
                try {
                    g.this.f38104h.execute(g.this.new k(true, i11, i12));
                    return;
                } catch (RejectedExecutionException unused) {
                    return;
                }
            }
            synchronized (g.this) {
                try {
                    if (i11 == 1) {
                        g.c(g.this);
                    } else if (i11 == 2) {
                        g.h(g.this);
                    } else if (i11 == 3) {
                        g.i(g.this);
                        g.this.notifyAll();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z10, int i11, int i12, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
            if (g.this.b(i11)) {
                g.this.b(i11, list, z10);
                return;
            }
            synchronized (g.this) {
                try {
                    com.mbridge.msdk.thrid.okhttp.internal.http2.i iVarA = g.this.a(i11);
                    if (iVarA != null) {
                        iVarA.a(list);
                        if (z10) {
                            iVarA.i();
                            return;
                        }
                        return;
                    }
                    if (g.this.f38103g) {
                        return;
                    }
                    g gVar = g.this;
                    if (i11 <= gVar.f38101e) {
                        return;
                    }
                    if (i11 % 2 == gVar.f38102f % 2) {
                        return;
                    }
                    com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar = new com.mbridge.msdk.thrid.okhttp.internal.http2.i(i11, g.this, false, z10, com.mbridge.msdk.thrid.okhttp.internal.c.b(list));
                    g gVar2 = g.this;
                    gVar2.f38101e = i11;
                    gVar2.f38099c.put(Integer.valueOf(i11), iVar);
                    g.f38096z.execute(new a("OkHttp %s stream %d", new Object[]{g.this.f38100d, Integer.valueOf(i11)}, iVar));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z10, int i11, com.mbridge.msdk.thrid.okio.e eVar, int i12) throws IOException {
            if (g.this.b(i11)) {
                g.this.a(i11, eVar, i12, z10);
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i iVarA = g.this.a(i11);
            if (iVarA == null) {
                g.this.c(i11, com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                long j11 = i12;
                g.this.g(j11);
                eVar.skip(j11);
                return;
            }
            iVarA.a(eVar, i12);
            if (z10) {
                iVarA.i();
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.h.b
        public void a(boolean z10, m mVar) {
            try {
                g.this.f38104h.execute(new b("OkHttp %s ACK Settings", new Object[]{g.this.f38100d}, z10, mVar));
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.b
        protected void b() throws Throwable {
            Throwable th2;
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar;
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar2 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.INTERNAL_ERROR;
            try {
                try {
                    this.f38158b.a(this);
                    while (this.f38158b.a(false, (com.mbridge.msdk.thrid.okhttp.internal.http2.h.b) this)) {
                    }
                    bVar = com.mbridge.msdk.thrid.okhttp.internal.http2.b.NO_ERROR;
                    try {
                        try {
                            g.this.a(bVar, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                        } catch (IOException unused) {
                            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar3 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR;
                            g.this.a(bVar3, bVar3);
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        try {
                            g.this.a(bVar, bVar2);
                        } catch (IOException unused2) {
                        }
                        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f38158b);
                        throw th2;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
                bVar = bVar2;
            } catch (Throwable th4) {
                th2 = th4;
                bVar = bVar2;
                g.this.a(bVar, bVar2);
                com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f38158b);
                throw th2;
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f38158b);
        }

        void b(boolean z10, m mVar) {
            com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr;
            long j11;
            synchronized (g.this.f38119w) {
                synchronized (g.this) {
                    try {
                        int iC = g.this.f38117u.c();
                        if (z10) {
                            g.this.f38117u.a();
                        }
                        g.this.f38117u.a(mVar);
                        int iC2 = g.this.f38117u.c();
                        iVarArr = null;
                        if (iC2 == -1 || iC2 == iC) {
                            j11 = 0;
                        } else {
                            j11 = iC2 - iC;
                            if (!g.this.f38099c.isEmpty()) {
                                iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) g.this.f38099c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[g.this.f38099c.size()]);
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                try {
                    g gVar = g.this;
                    gVar.f38119w.a(gVar.f38117u);
                } catch (IOException unused) {
                    g.this.h();
                }
            }
            if (iVarArr != null) {
                for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                    synchronized (iVar) {
                        iVar.a(j11);
                    }
                }
            }
            g.f38096z.execute(new c("OkHttp %s settings", g.this.f38100d));
        }
    }

    g(h hVar) {
        m mVar = new m();
        this.f38117u = mVar;
        this.f38121y = new LinkedHashSet();
        this.f38106j = hVar.f38149f;
        boolean z10 = hVar.f38150g;
        this.f38097a = z10;
        this.f38098b = hVar.f38148e;
        int i11 = z10 ? 1 : 2;
        this.f38102f = i11;
        if (z10) {
            this.f38102f = i11 + 2;
        }
        if (z10) {
            this.f38116t.a(7, 16777216);
        }
        String str = hVar.f38145b;
        this.f38100d = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp %s Writer", str), false));
        this.f38104h = scheduledThreadPoolExecutor;
        if (hVar.f38151h != 0) {
            i iVar = new i();
            long j11 = hVar.f38151h;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(iVar, j11, j11, TimeUnit.MILLISECONDS);
        }
        this.f38105i = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp %s Push Observer", str), true));
        mVar.a(7, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        mVar.a(5, 16384);
        this.f38115s = mVar.c();
        this.f38118v = hVar.f38144a;
        this.f38119w = new com.mbridge.msdk.thrid.okhttp.internal.http2.j(hVar.f38147d, z10);
        this.f38120x = new l(new com.mbridge.msdk.thrid.okhttp.internal.http2.h(hVar.f38146c, z10));
    }

    private com.mbridge.msdk.thrid.okhttp.internal.http2.i a(int i11, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list, boolean z10) throws IOException {
        int i12;
        com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar;
        boolean z11;
        boolean z12 = !z10;
        synchronized (this.f38119w) {
            try {
                synchronized (this) {
                    try {
                        if (this.f38102f > 1073741823) {
                            a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
                        }
                        if (this.f38103g) {
                            throw new com.mbridge.msdk.thrid.okhttp.internal.http2.a();
                        }
                        i12 = this.f38102f;
                        this.f38102f = i12 + 2;
                        iVar = new com.mbridge.msdk.thrid.okhttp.internal.http2.i(i12, this, z12, false, null);
                        z11 = !z10 || this.f38115s == 0 || iVar.f38179b == 0;
                        if (iVar.g()) {
                            this.f38099c.put(Integer.valueOf(i12), iVar);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (i11 == 0) {
                    this.f38119w.a(z12, i12, i11, list);
                } else {
                    if (this.f38097a) {
                        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                    }
                    this.f38119w.a(i11, i12, list);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (z11) {
            this.f38119w.flush();
        }
        return iVar;
    }

    private synchronized void a(com.mbridge.msdk.thrid.okhttp.internal.b bVar) {
        if (!this.f38103g) {
            this.f38105i.execute(bVar);
        }
    }

    static /* synthetic */ long c(g gVar) {
        long j11 = gVar.f38108l;
        gVar.f38108l = 1 + j11;
        return j11;
    }

    static /* synthetic */ long e(g gVar) {
        long j11 = gVar.f38107k;
        gVar.f38107k = 1 + j11;
        return j11;
    }

    static /* synthetic */ long h(g gVar) {
        long j11 = gVar.f38110n;
        gVar.f38110n = 1 + j11;
        return j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        try {
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar = com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR;
            a(bVar, bVar);
        } catch (IOException unused) {
        }
    }

    static /* synthetic */ long i(g gVar) {
        long j11 = gVar.f38112p;
        gVar.f38112p = 1 + j11;
        return j11;
    }

    synchronized com.mbridge.msdk.thrid.okhttp.internal.http2.i a(int i11) {
        return this.f38099c.get(Integer.valueOf(i11));
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http2.i a(List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list, boolean z10) throws IOException {
        return a(0, list, z10);
    }

    void a(int i11, long j11) {
        try {
            this.f38104h.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.f38100d, Integer.valueOf(i11)}, i11, j11));
        } catch (RejectedExecutionException unused) {
        }
    }

    void a(int i11, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        a(new C0550g("OkHttp %s Push Reset[%s]", new Object[]{this.f38100d, Integer.valueOf(i11)}, i11, bVar));
    }

    void a(int i11, com.mbridge.msdk.thrid.okio.e eVar, int i12, boolean z10) throws IOException {
        com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
        long j11 = i12;
        eVar.e(j11);
        eVar.b(cVar, j11);
        if (cVar.size() == j11) {
            a(new f("OkHttp %s Push Data[%s]", new Object[]{this.f38100d, Integer.valueOf(i11)}, i11, cVar, i12, z10));
            return;
        }
        throw new IOException(cVar.size() + " != " + i12);
    }

    void a(int i11, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
        synchronized (this) {
            try {
                if (this.f38121y.contains(Integer.valueOf(i11))) {
                    c(i11, com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                    return;
                }
                this.f38121y.add(Integer.valueOf(i11));
                try {
                    a(new d("OkHttp %s Push Request[%s]", new Object[]{this.f38100d, Integer.valueOf(i11)}, i11, list));
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(int i11, boolean z10, com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
        long j12;
        int iMin;
        long j13;
        if (j11 == 0) {
            this.f38119w.a(z10, i11, cVar, 0);
            return;
        }
        while (j11 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            j12 = this.f38115s;
                            if (j12 <= 0) {
                                if (!this.f38099c.containsKey(Integer.valueOf(i11))) {
                                    throw new IOException("stream closed");
                                }
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                iMin = Math.min((int) Math.min(j11, j12), this.f38119w.h());
                j13 = iMin;
                this.f38115s -= j13;
            }
            j11 -= j13;
            this.f38119w.a(z10 && j11 == 0, i11, cVar, iMin);
        }
    }

    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        synchronized (this.f38119w) {
            synchronized (this) {
                if (this.f38103g) {
                    return;
                }
                this.f38103g = true;
                this.f38119w.a(this.f38101e, bVar, com.mbridge.msdk.thrid.okhttp.internal.c.f37901a);
            }
        }
    }

    void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar2) throws IOException {
        if (!A && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr = null;
        try {
            a(bVar);
            e = null;
        } catch (IOException e11) {
            e = e11;
        }
        synchronized (this) {
            try {
                if (!this.f38099c.isEmpty()) {
                    iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) this.f38099c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[this.f38099c.size()]);
                    this.f38099c.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (iVarArr != null) {
            for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                try {
                    iVar.a(bVar2);
                } catch (IOException e12) {
                    if (e != null) {
                        e = e12;
                    }
                }
            }
        }
        try {
            this.f38119w.close();
        } catch (IOException e13) {
            if (e == null) {
                e = e13;
            }
        }
        try {
            this.f38118v.close();
        } catch (IOException e14) {
            e = e14;
        }
        this.f38104h.shutdown();
        this.f38105i.shutdown();
        if (e != null) {
            throw e;
        }
    }

    void a(boolean z10) throws IOException {
        if (z10) {
            this.f38119w.d();
            this.f38119w.b(this.f38116t);
            int iC = this.f38116t.c();
            if (iC != 65535) {
                this.f38119w.a(0, iC - Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            }
        }
        new Thread(this.f38120x).start();
    }

    void a(boolean z10, int i11, int i12) {
        try {
            this.f38119w.a(z10, i11, i12);
        } catch (IOException unused) {
            h();
        }
    }

    void b(int i11, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        this.f38119w.a(i11, bVar);
    }

    void b(int i11, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list, boolean z10) {
        try {
            a(new e("OkHttp %s Push Headers[%s]", new Object[]{this.f38100d, Integer.valueOf(i11)}, i11, list, z10));
        } catch (RejectedExecutionException unused) {
        }
    }

    boolean b(int i11) {
        return i11 != 0 && (i11 & 1) == 0;
    }

    synchronized com.mbridge.msdk.thrid.okhttp.internal.http2.i c(int i11) {
        com.mbridge.msdk.thrid.okhttp.internal.http2.i iVarRemove;
        iVarRemove = this.f38099c.remove(Integer.valueOf(i11));
        notifyAll();
        return iVarRemove;
    }

    void c(int i11, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        try {
            this.f38104h.execute(new a("OkHttp %s stream %d", new Object[]{this.f38100d, Integer.valueOf(i11)}, i11, bVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.NO_ERROR, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
    }

    public synchronized boolean f(long j11) {
        if (this.f38103g) {
            return false;
        }
        return this.f38110n >= this.f38109m || j11 < this.f38113q;
    }

    public void flush() throws IOException {
        this.f38119w.flush();
    }

    synchronized void g(long j11) {
        long j12 = this.f38114r + j11;
        this.f38114r = j12;
        if (j12 >= this.f38116t.c() / 2) {
            a(0, this.f38114r);
            this.f38114r = 0L;
        }
    }

    public synchronized int k() {
        return this.f38117u.b(Integer.MAX_VALUE);
    }

    void l() {
        synchronized (this) {
            try {
                long j11 = this.f38110n;
                long j12 = this.f38109m;
                if (j11 < j12) {
                    return;
                }
                this.f38109m = j12 + 1;
                this.f38113q = System.nanoTime() + C.NANOS_PER_SECOND;
                try {
                    this.f38104h.execute(new c("OkHttp %s ping", this.f38100d));
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void m() throws IOException {
        a(true);
    }
}
