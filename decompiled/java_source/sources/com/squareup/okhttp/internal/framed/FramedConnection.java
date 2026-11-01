package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.NamedRunnable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.internal.http2.Settings;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes5.dex */
public final class FramedConnection implements Closeable {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final ExecutorService f40308x = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.squareup.okhttp.internal.g.s("OkHttp FramedConnection", true));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Protocol f40309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean f40310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f40311c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f40312d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f40313e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f40314f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f40315g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f40316h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f40317i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ExecutorService f40318j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Map f40319k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final PushObserver f40320l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f40321m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    long f40322n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    long f40323o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    h f40324p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final h f40325q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f40326r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final Variant f40327s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final Socket f40328t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    final FrameWriter f40329u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final Reader f40330v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Set f40331w;

    class Reader extends NamedRunnable implements FrameReader.Handler {
        final FrameReader frameReader;

        private Reader(FrameReader frameReader) {
            super("OkHttp %s", FramedConnection.this.f40313e);
            this.frameReader = frameReader;
        }

        private void ackSettingsLater(final h hVar) {
            FramedConnection.f40308x.execute(new NamedRunnable("OkHttp %s ACK Settings", new Object[]{FramedConnection.this.f40313e}) { // from class: com.squareup.okhttp.internal.framed.FramedConnection.Reader.3
                @Override // com.squareup.okhttp.internal.NamedRunnable
                public void execute() {
                    try {
                        FramedConnection.this.f40329u.ackSettings(hVar);
                    } catch (IOException unused) {
                    }
                }
            });
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void ackSettings() {
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void alternateService(int i11, String str, ByteString byteString, String str2, int i12, long j11) {
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void data(boolean z10, int i11, BufferedSource bufferedSource, int i12) throws IOException {
            if (FramedConnection.this.r0(i11)) {
                FramedConnection.this.m0(i11, bufferedSource, i12, z10);
                return;
            }
            com.squareup.okhttp.internal.framed.a aVarG0 = FramedConnection.this.g0(i11);
            if (aVarG0 == null) {
                FramedConnection.this.G0(i11, ErrorCode.INVALID_STREAM);
                bufferedSource.skip(i12);
            } else {
                aVarG0.v(bufferedSource, i12);
                if (z10) {
                    aVarG0.w();
                }
            }
        }

        @Override // com.squareup.okhttp.internal.NamedRunnable
        protected void execute() throws Throwable {
            ErrorCode errorCode;
            ErrorCode errorCode2;
            ErrorCode errorCode3 = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    if (!FramedConnection.this.f40310b) {
                        this.frameReader.readConnectionPreface();
                    }
                    while (this.frameReader.nextFrame(this)) {
                    }
                    errorCode2 = ErrorCode.NO_ERROR;
                    try {
                        try {
                            FramedConnection.this.c0(errorCode2, ErrorCode.CANCEL);
                        } catch (IOException unused) {
                            ErrorCode errorCode4 = ErrorCode.PROTOCOL_ERROR;
                            FramedConnection.this.c0(errorCode4, errorCode4);
                        }
                    } catch (Throwable th2) {
                        errorCode = errorCode2;
                        th = th2;
                        try {
                            FramedConnection.this.c0(errorCode, errorCode3);
                        } catch (IOException unused2) {
                        }
                        com.squareup.okhttp.internal.g.c(this.frameReader);
                        throw th;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
                errorCode2 = errorCode3;
            } catch (Throwable th3) {
                th = th3;
                errorCode = errorCode3;
                FramedConnection.this.c0(errorCode, errorCode3);
                com.squareup.okhttp.internal.g.c(this.frameReader);
                throw th;
            }
            com.squareup.okhttp.internal.g.c(this.frameReader);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void goAway(int i11, ErrorCode errorCode, ByteString byteString) {
            com.squareup.okhttp.internal.framed.a[] aVarArr;
            byteString.size();
            synchronized (FramedConnection.this) {
                aVarArr = (com.squareup.okhttp.internal.framed.a[]) FramedConnection.this.f40312d.values().toArray(new com.squareup.okhttp.internal.framed.a[FramedConnection.this.f40312d.size()]);
                FramedConnection.this.f40316h = true;
            }
            for (com.squareup.okhttp.internal.framed.a aVar : aVarArr) {
                if (aVar.o() > i11 && aVar.s()) {
                    aVar.y(ErrorCode.REFUSED_STREAM);
                    FramedConnection.this.v0(aVar.o());
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void headers(boolean z10, boolean z11, int i11, int i12, List<com.squareup.okhttp.internal.framed.b> list, HeadersMode headersMode) {
            if (FramedConnection.this.r0(i11)) {
                FramedConnection.this.o0(i11, list, z11);
                return;
            }
            synchronized (FramedConnection.this) {
                try {
                    if (FramedConnection.this.f40316h) {
                        return;
                    }
                    com.squareup.okhttp.internal.framed.a aVarG0 = FramedConnection.this.g0(i11);
                    if (aVarG0 != null) {
                        if (headersMode.failIfStreamPresent()) {
                            aVarG0.n(ErrorCode.PROTOCOL_ERROR);
                            FramedConnection.this.v0(i11);
                            return;
                        } else {
                            aVarG0.x(list, headersMode);
                            if (z11) {
                                aVarG0.w();
                                return;
                            }
                            return;
                        }
                    }
                    if (headersMode.failIfStreamAbsent()) {
                        FramedConnection.this.G0(i11, ErrorCode.INVALID_STREAM);
                        return;
                    }
                    if (i11 <= FramedConnection.this.f40314f) {
                        return;
                    }
                    if (i11 % 2 == FramedConnection.this.f40315g % 2) {
                        return;
                    }
                    final com.squareup.okhttp.internal.framed.a aVar = new com.squareup.okhttp.internal.framed.a(i11, FramedConnection.this, z10, z11, list);
                    FramedConnection.this.f40314f = i11;
                    FramedConnection.this.f40312d.put(Integer.valueOf(i11), aVar);
                    FramedConnection.f40308x.execute(new NamedRunnable("OkHttp %s stream %d", new Object[]{FramedConnection.this.f40313e, Integer.valueOf(i11)}) { // from class: com.squareup.okhttp.internal.framed.FramedConnection.Reader.1
                        @Override // com.squareup.okhttp.internal.NamedRunnable
                        public void execute() {
                            try {
                                FramedConnection.this.f40311c.b(aVar);
                            } catch (IOException e11) {
                                com.squareup.okhttp.internal.c.logger.log(Level.INFO, "FramedConnection.Listener failure for " + FramedConnection.this.f40313e, (Throwable) e11);
                                try {
                                    aVar.l(ErrorCode.PROTOCOL_ERROR);
                                } catch (IOException unused) {
                                }
                            }
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void ping(boolean z10, int i11, int i12) {
            if (z10) {
                FramedConnection.w(FramedConnection.this, i11);
            } else {
                FramedConnection.this.E0(true, i11, i12, null);
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void priority(int i11, int i12, int i13, boolean z10) {
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void pushPromise(int i11, int i12, List<com.squareup.okhttp.internal.framed.b> list) {
            FramedConnection.this.p0(i12, list);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void rstStream(int i11, ErrorCode errorCode) {
            if (FramedConnection.this.r0(i11)) {
                FramedConnection.this.q0(i11, errorCode);
                return;
            }
            com.squareup.okhttp.internal.framed.a aVarV0 = FramedConnection.this.v0(i11);
            if (aVarV0 != null) {
                aVarV0.y(errorCode);
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void settings(boolean z10, h hVar) {
            com.squareup.okhttp.internal.framed.a[] aVarArr;
            long j11;
            synchronized (FramedConnection.this) {
                try {
                    int iE = FramedConnection.this.f40325q.e(65536);
                    if (z10) {
                        FramedConnection.this.f40325q.a();
                    }
                    FramedConnection.this.f40325q.j(hVar);
                    if (FramedConnection.this.d0() == Protocol.HTTP_2) {
                        ackSettingsLater(hVar);
                    }
                    int iE2 = FramedConnection.this.f40325q.e(65536);
                    aVarArr = null;
                    if (iE2 == -1 || iE2 == iE) {
                        j11 = 0;
                    } else {
                        j11 = iE2 - iE;
                        if (!FramedConnection.this.f40326r) {
                            FramedConnection.this.a0(j11);
                            FramedConnection.this.f40326r = true;
                        }
                        if (!FramedConnection.this.f40312d.isEmpty()) {
                            aVarArr = (com.squareup.okhttp.internal.framed.a[]) FramedConnection.this.f40312d.values().toArray(new com.squareup.okhttp.internal.framed.a[FramedConnection.this.f40312d.size()]);
                        }
                    }
                    FramedConnection.f40308x.execute(new NamedRunnable("OkHttp %s settings", FramedConnection.this.f40313e) { // from class: com.squareup.okhttp.internal.framed.FramedConnection.Reader.2
                        @Override // com.squareup.okhttp.internal.NamedRunnable
                        public void execute() {
                            FramedConnection.this.f40311c.a(FramedConnection.this);
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (aVarArr == null || j11 == 0) {
                return;
            }
            for (com.squareup.okhttp.internal.framed.a aVar : aVarArr) {
                synchronized (aVar) {
                    aVar.i(j11);
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void windowUpdate(int i11, long j11) {
            if (i11 == 0) {
                synchronized (FramedConnection.this) {
                    FramedConnection framedConnection = FramedConnection.this;
                    framedConnection.f40323o += j11;
                    framedConnection.notifyAll();
                }
                return;
            }
            com.squareup.okhttp.internal.framed.a aVarG0 = FramedConnection.this.g0(i11);
            if (aVarG0 != null) {
                synchronized (aVarG0) {
                    aVarG0.i(j11);
                }
            }
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Socket f40332a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f40333b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private BufferedSource f40334c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private BufferedSink f40335d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private b f40336e = b.f40340a;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Protocol f40337f = Protocol.SPDY_3;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private PushObserver f40338g = PushObserver.CANCEL;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f40339h;

        public a(boolean z10) {
            this.f40339h = z10;
        }

        public FramedConnection i() {
            return new FramedConnection(this);
        }

        public a j(Protocol protocol) {
            this.f40337f = protocol;
            return this;
        }

        public a k(Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink) {
            this.f40332a = socket;
            this.f40333b = str;
            this.f40334c = bufferedSource;
            this.f40335d = bufferedSink;
            return this;
        }
    }

    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f40340a = new a();

        static class a extends b {
            a() {
            }

            @Override // com.squareup.okhttp.internal.framed.FramedConnection.b
            public void b(com.squareup.okhttp.internal.framed.a aVar) {
                aVar.l(ErrorCode.REFUSED_STREAM);
            }
        }

        public void a(FramedConnection framedConnection) {
        }

        public abstract void b(com.squareup.okhttp.internal.framed.a aVar);
    }

    private FramedConnection(a aVar) {
        this.f40312d = new HashMap();
        this.f40317i = System.nanoTime();
        this.f40322n = 0L;
        this.f40324p = new h();
        h hVar = new h();
        this.f40325q = hVar;
        this.f40326r = false;
        this.f40331w = new LinkedHashSet();
        Protocol protocol = aVar.f40337f;
        this.f40309a = protocol;
        this.f40320l = aVar.f40338g;
        boolean z10 = aVar.f40339h;
        this.f40310b = z10;
        this.f40311c = aVar.f40336e;
        this.f40315g = aVar.f40339h ? 1 : 2;
        if (aVar.f40339h && protocol == Protocol.HTTP_2) {
            this.f40315g += 2;
        }
        this.f40321m = aVar.f40339h ? 1 : 2;
        if (aVar.f40339h) {
            this.f40324p.l(7, 0, 16777216);
        }
        String str = aVar.f40333b;
        this.f40313e = str;
        if (protocol == Protocol.HTTP_2) {
            this.f40327s = new d();
            this.f40318j = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.squareup.okhttp.internal.g.s(String.format("OkHttp %s Push Observer", str), true));
            hVar.l(7, 0, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            hVar.l(5, 0, 16384);
        } else {
            if (protocol != Protocol.SPDY_3) {
                throw new AssertionError(protocol);
            }
            this.f40327s = new i();
            this.f40318j = null;
        }
        this.f40323o = hVar.e(65536);
        this.f40328t = aVar.f40332a;
        this.f40329u = this.f40327s.newWriter(aVar.f40335d, z10);
        Reader reader = new Reader(this.f40327s.newReader(aVar.f40334c, z10));
        this.f40330v = reader;
        new Thread(reader).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0(boolean z10, int i11, int i12, g gVar) {
        synchronized (this.f40329u) {
            this.f40329u.ping(z10, i11, i12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0(boolean z10, int i11, int i12, g gVar) {
        f40308x.execute(new NamedRunnable("OkHttp %s ping %08x%08x", new Object[]{this.f40313e, Integer.valueOf(i11), Integer.valueOf(i12)}, z10, i11, i12, gVar) { // from class: com.squareup.okhttp.internal.framed.FramedConnection.3
            final /* synthetic */ int val$payload1;
            final /* synthetic */ int val$payload2;
            final /* synthetic */ g val$ping;
            final /* synthetic */ boolean val$reply;

            @Override // com.squareup.okhttp.internal.NamedRunnable
            public void execute() {
                try {
                    FramedConnection.this.C0(this.val$reply, this.val$payload1, this.val$payload2, null);
                } catch (IOException unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        com.squareup.okhttp.internal.framed.a[] aVarArr;
        g[] gVarArr;
        try {
            z0(errorCode);
            e = null;
        } catch (IOException e11) {
            e = e11;
        }
        synchronized (this) {
            try {
                if (this.f40312d.isEmpty()) {
                    aVarArr = null;
                } else {
                    aVarArr = (com.squareup.okhttp.internal.framed.a[]) this.f40312d.values().toArray(new com.squareup.okhttp.internal.framed.a[this.f40312d.size()]);
                    this.f40312d.clear();
                    y0(false);
                }
                Map map = this.f40319k;
                if (map != null) {
                    gVarArr = (g[]) map.values().toArray(new g[this.f40319k.size()]);
                    this.f40319k = null;
                } else {
                    gVarArr = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (aVarArr != null) {
            for (com.squareup.okhttp.internal.framed.a aVar : aVarArr) {
                try {
                    aVar.l(errorCode2);
                } catch (IOException e12) {
                    if (e != null) {
                        e = e12;
                    }
                }
            }
        }
        if (gVarArr != null && gVarArr.length > 0) {
            g gVar = gVarArr[0];
            throw null;
        }
        try {
            this.f40329u.close();
        } catch (IOException e13) {
            if (e == null) {
                e = e13;
            }
        }
        try {
            this.f40328t.close();
        } catch (IOException e14) {
            e = e14;
        }
        if (e != null) {
            throw e;
        }
    }

    private com.squareup.okhttp.internal.framed.a k0(int i11, List list, boolean z10, boolean z11) throws IOException {
        int i12;
        com.squareup.okhttp.internal.framed.a aVar;
        boolean z12 = !z10;
        boolean z13 = !z11;
        synchronized (this.f40329u) {
            try {
                synchronized (this) {
                    try {
                        if (this.f40316h) {
                            throw new IOException("shutdown");
                        }
                        i12 = this.f40315g;
                        this.f40315g = i12 + 2;
                        aVar = new com.squareup.okhttp.internal.framed.a(i12, this, z12, z13, list);
                        if (aVar.t()) {
                            this.f40312d.put(Integer.valueOf(i12), aVar);
                            y0(false);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (i11 == 0) {
                    this.f40329u.synStream(z12, z13, i12, i11, list);
                } else {
                    if (this.f40310b) {
                        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                    }
                    this.f40329u.pushPromise(i11, i12, list);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (!z10) {
            this.f40329u.flush();
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0(final int i11, BufferedSource bufferedSource, final int i12, final boolean z10) throws IOException {
        final Buffer buffer = new Buffer();
        long j11 = i12;
        bufferedSource.require(j11);
        bufferedSource.read(buffer, j11);
        if (buffer.size() == j11) {
            this.f40318j.execute(new NamedRunnable("OkHttp %s Push Data[%s]", new Object[]{this.f40313e, Integer.valueOf(i11)}) { // from class: com.squareup.okhttp.internal.framed.FramedConnection.6
                @Override // com.squareup.okhttp.internal.NamedRunnable
                public void execute() {
                    try {
                        boolean zOnData = FramedConnection.this.f40320l.onData(i11, buffer, i12, z10);
                        if (zOnData) {
                            FramedConnection.this.f40329u.rstStream(i11, ErrorCode.CANCEL);
                        }
                        if (zOnData || z10) {
                            synchronized (FramedConnection.this) {
                                try {
                                    FramedConnection.this.f40331w.remove(Integer.valueOf(i11));
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        }
                    } catch (IOException unused) {
                    }
                }
            });
            return;
        }
        throw new IOException(buffer.size() + " != " + i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(final int i11, final List list, final boolean z10) {
        this.f40318j.execute(new NamedRunnable("OkHttp %s Push Headers[%s]", new Object[]{this.f40313e, Integer.valueOf(i11)}) { // from class: com.squareup.okhttp.internal.framed.FramedConnection.5
            @Override // com.squareup.okhttp.internal.NamedRunnable
            public void execute() {
                boolean zOnHeaders = FramedConnection.this.f40320l.onHeaders(i11, list, z10);
                if (zOnHeaders) {
                    try {
                        FramedConnection.this.f40329u.rstStream(i11, ErrorCode.CANCEL);
                    } catch (IOException unused) {
                        return;
                    }
                }
                if (zOnHeaders || z10) {
                    synchronized (FramedConnection.this) {
                        FramedConnection.this.f40331w.remove(Integer.valueOf(i11));
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(final int i11, final List list) {
        synchronized (this) {
            try {
                if (this.f40331w.contains(Integer.valueOf(i11))) {
                    G0(i11, ErrorCode.PROTOCOL_ERROR);
                } else {
                    this.f40331w.add(Integer.valueOf(i11));
                    this.f40318j.execute(new NamedRunnable("OkHttp %s Push Request[%s]", new Object[]{this.f40313e, Integer.valueOf(i11)}) { // from class: com.squareup.okhttp.internal.framed.FramedConnection.4
                        @Override // com.squareup.okhttp.internal.NamedRunnable
                        public void execute() {
                            if (FramedConnection.this.f40320l.onRequest(i11, list)) {
                                try {
                                    FramedConnection.this.f40329u.rstStream(i11, ErrorCode.CANCEL);
                                    synchronized (FramedConnection.this) {
                                        FramedConnection.this.f40331w.remove(Integer.valueOf(i11));
                                    }
                                } catch (IOException unused) {
                                }
                            }
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0(final int i11, final ErrorCode errorCode) {
        this.f40318j.execute(new NamedRunnable("OkHttp %s Push Reset[%s]", new Object[]{this.f40313e, Integer.valueOf(i11)}) { // from class: com.squareup.okhttp.internal.framed.FramedConnection.7
            @Override // com.squareup.okhttp.internal.NamedRunnable
            public void execute() {
                FramedConnection.this.f40320l.onReset(i11, errorCode);
                synchronized (FramedConnection.this) {
                    FramedConnection.this.f40331w.remove(Integer.valueOf(i11));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r0(int i11) {
        return this.f40309a == Protocol.HTTP_2 && i11 != 0 && (i11 & 1) == 0;
    }

    private synchronized g u0(int i11) {
        Map map = this.f40319k;
        if (map != null) {
            android.support.v4.media.session.c.a(map.remove(Integer.valueOf(i11)));
        }
        return null;
    }

    static /* synthetic */ g w(FramedConnection framedConnection, int i11) {
        framedConnection.u0(i11);
        return null;
    }

    private synchronized void y0(boolean z10) {
        long jNanoTime;
        if (z10) {
            try {
                jNanoTime = System.nanoTime();
            } catch (Throwable th2) {
                throw th2;
            }
        } else {
            jNanoTime = Long.MAX_VALUE;
        }
        this.f40317i = jNanoTime;
    }

    public void B0(int i11, boolean z10, Buffer buffer, long j11) throws IOException {
        long j12;
        int iMin;
        long j13;
        if (j11 == 0) {
            this.f40329u.data(z10, i11, buffer, 0);
            return;
        }
        while (j11 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            j12 = this.f40323o;
                            if (j12 <= 0) {
                                if (!this.f40312d.containsKey(Integer.valueOf(i11))) {
                                    throw new IOException("stream closed");
                                }
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                iMin = Math.min((int) Math.min(j11, j12), this.f40329u.maxDataLength());
                j13 = iMin;
                this.f40323o -= j13;
            }
            j11 -= j13;
            this.f40329u.data(z10 && j11 == 0, i11, buffer, iMin);
        }
    }

    void F0(int i11, ErrorCode errorCode) throws IOException {
        this.f40329u.rstStream(i11, errorCode);
    }

    void G0(final int i11, final ErrorCode errorCode) {
        f40308x.submit(new NamedRunnable("OkHttp %s stream %d", new Object[]{this.f40313e, Integer.valueOf(i11)}) { // from class: com.squareup.okhttp.internal.framed.FramedConnection.1
            @Override // com.squareup.okhttp.internal.NamedRunnable
            public void execute() {
                try {
                    FramedConnection.this.F0(i11, errorCode);
                } catch (IOException unused) {
                }
            }
        });
    }

    void H0(final int i11, final long j11) {
        f40308x.execute(new NamedRunnable("OkHttp Window Update %s stream %d", new Object[]{this.f40313e, Integer.valueOf(i11)}) { // from class: com.squareup.okhttp.internal.framed.FramedConnection.2
            @Override // com.squareup.okhttp.internal.NamedRunnable
            public void execute() {
                try {
                    FramedConnection.this.f40329u.windowUpdate(i11, j11);
                } catch (IOException unused) {
                }
            }
        });
    }

    void a0(long j11) {
        this.f40323o += j11;
        if (j11 > 0) {
            notifyAll();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        c0(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    public Protocol d0() {
        return this.f40309a;
    }

    public void flush() throws IOException {
        this.f40329u.flush();
    }

    synchronized com.squareup.okhttp.internal.framed.a g0(int i11) {
        return (com.squareup.okhttp.internal.framed.a) this.f40312d.get(Integer.valueOf(i11));
    }

    public synchronized int h0() {
        return this.f40325q.f(Integer.MAX_VALUE);
    }

    public com.squareup.okhttp.internal.framed.a l0(List list, boolean z10, boolean z11) {
        return k0(0, list, z10, z11);
    }

    synchronized com.squareup.okhttp.internal.framed.a v0(int i11) {
        com.squareup.okhttp.internal.framed.a aVar;
        try {
            aVar = (com.squareup.okhttp.internal.framed.a) this.f40312d.remove(Integer.valueOf(i11));
            if (aVar != null && this.f40312d.isEmpty()) {
                y0(true);
            }
            notifyAll();
        } catch (Throwable th2) {
            throw th2;
        }
        return aVar;
    }

    public void x0() {
        this.f40329u.connectionPreface();
        this.f40329u.settings(this.f40324p);
        int iE = this.f40324p.e(65536);
        if (iE != 65536) {
            this.f40329u.windowUpdate(0, iE - 65536);
        }
    }

    public void z0(ErrorCode errorCode) {
        synchronized (this.f40329u) {
            synchronized (this) {
                if (this.f40316h) {
                    return;
                }
                this.f40316h = true;
                this.f40329u.goAway(this.f40314f, errorCode, com.squareup.okhttp.internal.g.f40430a);
            }
        }
    }
}
