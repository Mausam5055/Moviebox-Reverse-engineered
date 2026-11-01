package androidx.media3.exoplayer.drm;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
class DefaultDrmSession implements DrmSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f11487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f11488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f11489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f11490d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f11491e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f11492f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f11493g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashMap f11494h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.media3.common.util.n f11495i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.m f11496j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final f4 f11497k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final m0 f11498l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final UUID f11499m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Looper f11500n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final e f11501o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f11502p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f11503q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private HandlerThread f11504r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private c f11505s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private androidx.media3.decoder.b f11506t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private DrmSession.DrmSessionException f11507u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private byte[] f11508v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private byte[] f11509w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private b0.a f11510x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private b0.d f11511y;

    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(@Nullable Throwable th2) {
            super(th2);
        }
    }

    public interface a {
        void a(Exception exc, boolean z10);

        void b(DefaultDrmSession defaultDrmSession);

        void onProvisionCompleted();
    }

    public interface b {
        void a(DefaultDrmSession defaultDrmSession, int i11);

        void b(DefaultDrmSession defaultDrmSession, int i11);
    }

    private class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f11512a;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            d dVar = (d) message.obj;
            if (!dVar.f11515b) {
                return false;
            }
            int i11 = dVar.f11518e + 1;
            dVar.f11518e = i11;
            if (i11 > DefaultDrmSession.this.f11496j.a(3)) {
                return false;
            }
            long jC = DefaultDrmSession.this.f11496j.c(new androidx.media3.exoplayer.upstream.m.c(new g2.i(dVar.f11514a, mediaDrmCallbackException.dataSpec, mediaDrmCallbackException.uriAfterRedirects, mediaDrmCallbackException.responseHeaders, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.f11516c, mediaDrmCallbackException.bytesLoaded), new g2.j(3), mediaDrmCallbackException.getCause() instanceof IOException ? (IOException) mediaDrmCallbackException.getCause() : new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause()), dVar.f11518e));
            if (jC == C.TIME_UNSET) {
                return false;
            }
            synchronized (this) {
                try {
                    if (this.f11512a) {
                        return false;
                    }
                    sendMessageDelayed(Message.obtain(message), jC);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        void b(int i11, Object obj, boolean z10) {
            obtainMessage(i11, new d(g2.i.a(), z10, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.f11512a = true;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object objB;
            d dVar = (d) message.obj;
            try {
                int i11 = message.what;
                if (i11 == 1) {
                    objB = DefaultDrmSession.this.f11498l.b(DefaultDrmSession.this.f11499m, (b0.d) dVar.f11517d);
                } else {
                    if (i11 != 2) {
                        throw new RuntimeException();
                    }
                    objB = DefaultDrmSession.this.f11498l.a(DefaultDrmSession.this.f11499m, (b0.a) dVar.f11517d);
                }
            } catch (MediaDrmCallbackException e11) {
                boolean zA = a(message, e11);
                objB = e11;
                if (zA) {
                    return;
                }
            } catch (Exception e12) {
                androidx.media3.common.util.u.i("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e12);
                objB = e12;
            }
            DefaultDrmSession.this.f11496j.b(dVar.f11514a);
            synchronized (this) {
                try {
                    if (!this.f11512a) {
                        DefaultDrmSession.this.f11501o.obtainMessage(message.what, Pair.create(dVar.f11517d, objB)).sendToTarget();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f11514a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f11515b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f11516c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Object f11517d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11518e;

        public d(long j11, boolean z10, long j12, Object obj) {
            this.f11514a = j11;
            this.f11515b = z10;
            this.f11516c = j12;
            this.f11517d = obj;
        }
    }

    private class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i11 = message.what;
            if (i11 == 1) {
                DefaultDrmSession.this.C(obj, obj2);
            } else {
                if (i11 != 2) {
                    return;
                }
                DefaultDrmSession.this.w(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, b0 b0Var, a aVar, b bVar, List list, int i11, boolean z10, boolean z11, byte[] bArr, HashMap map, m0 m0Var, Looper looper, androidx.media3.exoplayer.upstream.m mVar, f4 f4Var) {
        if (i11 == 1 || i11 == 3) {
            androidx.media3.common.util.a.e(bArr);
        }
        this.f11499m = uuid;
        this.f11489c = aVar;
        this.f11490d = bVar;
        this.f11488b = b0Var;
        this.f11491e = i11;
        this.f11492f = z10;
        this.f11493g = z11;
        if (bArr != null) {
            this.f11509w = bArr;
            this.f11487a = null;
        } else {
            this.f11487a = Collections.unmodifiableList((List) androidx.media3.common.util.a.e(list));
        }
        this.f11494h = map;
        this.f11498l = m0Var;
        this.f11495i = new androidx.media3.common.util.n();
        this.f11496j = mVar;
        this.f11497k = f4Var;
        this.f11502p = 2;
        this.f11500n = looper;
        this.f11501o = new e(looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(Object obj, Object obj2) {
        if (obj == this.f11511y) {
            if (this.f11502p == 2 || s()) {
                this.f11511y = null;
                if (obj2 instanceof Exception) {
                    this.f11489c.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.f11488b.provideProvisionResponse((byte[]) obj2);
                    this.f11489c.onProvisionCompleted();
                } catch (Exception e11) {
                    this.f11489c.a(e11, true);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003b  */
    /* JADX WARN: Code duplicated, block: B:13:0x0041  */
    private boolean D() {
        if (s()) {
            return true;
        }
        try {
            byte[] bArrOpenSession = this.f11488b.openSession();
            this.f11508v = bArrOpenSession;
            this.f11488b.e(bArrOpenSession, this.f11497k);
            this.f11506t = this.f11488b.b(this.f11508v);
            final int i11 = 3;
            this.f11502p = 3;
            o(new androidx.media3.common.util.m() { // from class: androidx.media3.exoplayer.drm.b
                @Override // androidx.media3.common.util.m
                public final void accept(Object obj) {
                    ((r.a) obj).k(i11);
                }
            });
            androidx.media3.common.util.a.e(this.f11508v);
            return true;
        } catch (NotProvisionedException unused) {
            this.f11489c.b(this);
            return false;
        } catch (Exception e11) {
            e = e11;
            if (x.d(e)) {
                this.f11489c.b(this);
                return false;
            }
            v(e, 1);
            return false;
        } catch (NoSuchMethodError e12) {
            e = e12;
            if (x.d(e)) {
                this.f11489c.b(this);
                return false;
            }
            v(e, 1);
            return false;
        }
    }

    private void E(byte[] bArr, int i11, boolean z10) {
        try {
            this.f11510x = this.f11488b.d(bArr, this.f11487a, i11, this.f11494h);
            ((c) a1.i(this.f11505s)).b(2, androidx.media3.common.util.a.e(this.f11510x), z10);
        } catch (Exception | NoSuchMethodError e11) {
            x(e11, true);
        }
    }

    private boolean G() {
        try {
            this.f11488b.restoreKeys(this.f11508v, this.f11509w);
            return true;
        } catch (Exception | NoSuchMethodError e11) {
            v(e11, 1);
            return false;
        }
    }

    private void H() {
        if (Thread.currentThread() != this.f11500n.getThread()) {
            androidx.media3.common.util.u.i("DefaultDrmSession", "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.f11500n.getThread().getName(), new IllegalStateException());
        }
    }

    private void o(androidx.media3.common.util.m mVar) {
        Iterator it = this.f11495i.elementSet().iterator();
        while (it.hasNext()) {
            mVar.accept((r.a) it.next());
        }
    }

    private void p(boolean z10) {
        if (this.f11493g) {
            return;
        }
        byte[] bArr = (byte[]) a1.i(this.f11508v);
        int i11 = this.f11491e;
        if (i11 != 0 && i11 != 1) {
            if (i11 == 2) {
                if (this.f11509w == null || G()) {
                    E(bArr, 2, z10);
                    return;
                }
                return;
            }
            if (i11 != 3) {
                return;
            }
            androidx.media3.common.util.a.e(this.f11509w);
            androidx.media3.common.util.a.e(this.f11508v);
            E(this.f11509w, 3, z10);
            return;
        }
        if (this.f11509w == null) {
            E(bArr, 1, z10);
            return;
        }
        if (this.f11502p == 4 || G()) {
            long jQ = q();
            if (this.f11491e != 0 || jQ > 60) {
                if (jQ <= 0) {
                    v(new KeysExpiredException(), 2);
                    return;
                } else {
                    this.f11502p = 4;
                    o(new androidx.media3.common.util.m() { // from class: androidx.media3.exoplayer.drm.f
                        @Override // androidx.media3.common.util.m
                        public final void accept(Object obj) {
                            ((r.a) obj).j();
                        }
                    });
                    return;
                }
            }
            androidx.media3.common.util.u.b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + jQ);
            E(bArr, 2, z10);
        }
    }

    private long q() {
        if (!androidx.media3.common.h.f9984d.equals(this.f11499m)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) androidx.media3.common.util.a.e(n0.b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    private boolean s() {
        int i11 = this.f11502p;
        return i11 == 3 || i11 == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t(Throwable th2, r.a aVar) {
        aVar.l((Exception) th2);
    }

    private void v(final Throwable th2, int i11) {
        this.f11507u = new DrmSession.DrmSessionException(th2, x.b(th2, i11));
        androidx.media3.common.util.u.d("DefaultDrmSession", "DRM session error", th2);
        if (th2 instanceof Exception) {
            o(new androidx.media3.common.util.m() { // from class: androidx.media3.exoplayer.drm.e
                @Override // androidx.media3.common.util.m
                public final void accept(Object obj) {
                    DefaultDrmSession.t(th2, (r.a) obj);
                }
            });
        } else {
            if (!(th2 instanceof Error)) {
                throw new IllegalStateException("Unexpected Throwable subclass", th2);
            }
            if (!x.e(th2) && !x.d(th2)) {
                throw ((Error) th2);
            }
        }
        if (this.f11502p != 4) {
            this.f11502p = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(Object obj, Object obj2) {
        if (obj == this.f11510x && s()) {
            this.f11510x = null;
            if ((obj2 instanceof Exception) || (obj2 instanceof NoSuchMethodError)) {
                x((Throwable) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f11491e == 3) {
                    this.f11488b.provideKeyResponse((byte[]) a1.i(this.f11509w), bArr);
                    o(new androidx.media3.common.util.m() { // from class: androidx.media3.exoplayer.drm.c
                        @Override // androidx.media3.common.util.m
                        public final void accept(Object obj3) {
                            ((r.a) obj3).i();
                        }
                    });
                    return;
                }
                byte[] bArrProvideKeyResponse = this.f11488b.provideKeyResponse(this.f11508v, bArr);
                int i11 = this.f11491e;
                if ((i11 == 2 || (i11 == 0 && this.f11509w != null)) && bArrProvideKeyResponse != null && bArrProvideKeyResponse.length != 0) {
                    this.f11509w = bArrProvideKeyResponse;
                }
                this.f11502p = 4;
                o(new androidx.media3.common.util.m() { // from class: androidx.media3.exoplayer.drm.d
                    @Override // androidx.media3.common.util.m
                    public final void accept(Object obj3) {
                        ((r.a) obj3).h();
                    }
                });
            } catch (Exception e11) {
                e = e11;
                x(e, true);
            } catch (NoSuchMethodError e12) {
                e = e12;
                x(e, true);
            }
        }
    }

    private void x(Throwable th2, boolean z10) {
        if ((th2 instanceof NotProvisionedException) || x.d(th2)) {
            this.f11489c.b(this);
        } else {
            v(th2, z10 ? 1 : 2);
        }
    }

    private void y() {
        if (this.f11491e == 0 && this.f11502p == 4) {
            a1.i(this.f11508v);
            p(false);
        }
    }

    void A() {
        if (D()) {
            p(true);
        }
    }

    void B(Exception exc, boolean z10) {
        v(exc, z10 ? 1 : 3);
    }

    void F() {
        this.f11511y = this.f11488b.getProvisionRequest();
        ((c) a1.i(this.f11505s)).b(1, androidx.media3.common.util.a.e(this.f11511y), true);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final UUID a() {
        H();
        return this.f11499m;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean b() {
        H();
        return this.f11492f;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final androidx.media3.decoder.b c() {
        H();
        return this.f11506t;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean d(String str) {
        H();
        return this.f11488b.c((byte[]) androidx.media3.common.util.a.i(this.f11508v), str);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void e(r.a aVar) {
        H();
        if (this.f11503q < 0) {
            androidx.media3.common.util.u.c("DefaultDrmSession", "Session reference count less than zero: " + this.f11503q);
            this.f11503q = 0;
        }
        if (aVar != null) {
            this.f11495i.a(aVar);
        }
        int i11 = this.f11503q + 1;
        this.f11503q = i11;
        if (i11 == 1) {
            androidx.media3.common.util.a.g(this.f11502p == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f11504r = handlerThread;
            handlerThread.start();
            this.f11505s = new c(this.f11504r.getLooper());
            if (D()) {
                p(true);
            }
        } else if (aVar != null && s() && this.f11495i.count(aVar) == 1) {
            aVar.k(this.f11502p);
        }
        this.f11490d.a(this, this.f11503q);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void f(r.a aVar) {
        H();
        int i11 = this.f11503q;
        if (i11 <= 0) {
            androidx.media3.common.util.u.c("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i12 = i11 - 1;
        this.f11503q = i12;
        if (i12 == 0) {
            this.f11502p = 0;
            ((e) a1.i(this.f11501o)).removeCallbacksAndMessages(null);
            ((c) a1.i(this.f11505s)).c();
            this.f11505s = null;
            ((HandlerThread) a1.i(this.f11504r)).quit();
            this.f11504r = null;
            this.f11506t = null;
            this.f11507u = null;
            this.f11510x = null;
            this.f11511y = null;
            byte[] bArr = this.f11508v;
            if (bArr != null) {
                this.f11488b.closeSession(bArr);
                this.f11508v = null;
            }
        }
        if (aVar != null) {
            this.f11495i.b(aVar);
            if (this.f11495i.count(aVar) == 0) {
                aVar.m();
            }
        }
        this.f11490d.b(this, this.f11503q);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final DrmSession.DrmSessionException getError() {
        H();
        if (this.f11502p == 1) {
            return this.f11507u;
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final int getState() {
        H();
        return this.f11502p;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public Map queryKeyStatus() {
        H();
        byte[] bArr = this.f11508v;
        if (bArr == null) {
            return null;
        }
        return this.f11488b.queryKeyStatus(bArr);
    }

    public boolean r(byte[] bArr) {
        H();
        return Arrays.equals(this.f11508v, bArr);
    }

    void z(int i11) {
        if (i11 != 2) {
            return;
        }
        y();
    }
}
