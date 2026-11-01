package com.google.android.exoplayer2.drm;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import e9.u1;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
class DefaultDrmSession implements DrmSession {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f24894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c0 f24895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f24896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f24897d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f24898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f24899f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f24900g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashMap f24901h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.j f24902i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.z f24903j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final u1 f24904k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final j0 f24905l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final UUID f24906m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final e f24907n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f24908o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f24909p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private HandlerThread f24910q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private c f24911r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.google.android.exoplayer2.decoder.b f24912s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private DrmSession.DrmSessionException f24913t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private byte[] f24914u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private byte[] f24915v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private c0.a f24916w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private c0.d f24917x;

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
        private boolean f24918a;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            d dVar = (d) message.obj;
            if (!dVar.f24921b) {
                return false;
            }
            int i11 = dVar.f24924e + 1;
            dVar.f24924e = i11;
            if (i11 > DefaultDrmSession.this.f24903j.a(3)) {
                return false;
            }
            long jC = DefaultDrmSession.this.f24903j.c(new com.google.android.exoplayer2.upstream.z.c(new t9.h(dVar.f24920a, mediaDrmCallbackException.dataSpec, mediaDrmCallbackException.uriAfterRedirects, mediaDrmCallbackException.responseHeaders, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.f24922c, mediaDrmCallbackException.bytesLoaded), new t9.i(3), mediaDrmCallbackException.getCause() instanceof IOException ? (IOException) mediaDrmCallbackException.getCause() : new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause()), dVar.f24924e));
            if (jC == C.TIME_UNSET) {
                return false;
            }
            synchronized (this) {
                try {
                    if (this.f24918a) {
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
            obtainMessage(i11, new d(t9.h.a(), z10, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.f24918a = true;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object objA;
            d dVar = (d) message.obj;
            try {
                int i11 = message.what;
                if (i11 == 0) {
                    DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                    objA = defaultDrmSession.f24905l.a(defaultDrmSession.f24906m, (c0.d) dVar.f24923d);
                } else {
                    if (i11 != 1) {
                        throw new RuntimeException();
                    }
                    DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
                    objA = defaultDrmSession2.f24905l.b(defaultDrmSession2.f24906m, (c0.a) dVar.f24923d);
                }
            } catch (MediaDrmCallbackException e11) {
                boolean zA = a(message, e11);
                objA = e11;
                if (zA) {
                    return;
                }
            } catch (Exception e12) {
                com.google.android.exoplayer2.util.s.j("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e12);
                objA = e12;
            }
            DefaultDrmSession.this.f24903j.b(dVar.f24920a);
            synchronized (this) {
                try {
                    if (!this.f24918a) {
                        DefaultDrmSession.this.f24907n.obtainMessage(message.what, Pair.create(dVar.f24923d, objA)).sendToTarget();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f24920a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f24921b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f24922c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Object f24923d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f24924e;

        public d(long j11, boolean z10, long j12, Object obj) {
            this.f24920a = j11;
            this.f24921b = z10;
            this.f24922c = j12;
            this.f24923d = obj;
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
            if (i11 == 0) {
                DefaultDrmSession.this.z(obj, obj2);
            } else {
                if (i11 != 1) {
                    return;
                }
                DefaultDrmSession.this.t(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, c0 c0Var, a aVar, b bVar, List list, int i11, boolean z10, boolean z11, byte[] bArr, HashMap map, j0 j0Var, Looper looper, com.google.android.exoplayer2.upstream.z zVar, u1 u1Var) {
        if (i11 == 1 || i11 == 3) {
            com.google.android.exoplayer2.util.a.e(bArr);
        }
        this.f24906m = uuid;
        this.f24896c = aVar;
        this.f24897d = bVar;
        this.f24895b = c0Var;
        this.f24898e = i11;
        this.f24899f = z10;
        this.f24900g = z11;
        if (bArr != null) {
            this.f24915v = bArr;
            this.f24894a = null;
        } else {
            this.f24894a = Collections.unmodifiableList((List) com.google.android.exoplayer2.util.a.e(list));
        }
        this.f24901h = map;
        this.f24905l = j0Var;
        this.f24902i = new com.google.android.exoplayer2.util.j();
        this.f24903j = zVar;
        this.f24904k = u1Var;
        this.f24908o = 2;
        this.f24907n = new e(looper);
    }

    private boolean A() {
        if (p()) {
            return true;
        }
        try {
            byte[] bArrOpenSession = this.f24895b.openSession();
            this.f24914u = bArrOpenSession;
            this.f24895b.f(bArrOpenSession, this.f24904k);
            this.f24912s = this.f24895b.b(this.f24914u);
            final int i11 = 3;
            this.f24908o = 3;
            l(new com.google.android.exoplayer2.util.i() { // from class: com.google.android.exoplayer2.drm.b
                @Override // com.google.android.exoplayer2.util.i
                public final void accept(Object obj) {
                    ((s.a) obj).k(i11);
                }
            });
            com.google.android.exoplayer2.util.a.e(this.f24914u);
            return true;
        } catch (NotProvisionedException unused) {
            this.f24896c.b(this);
            return false;
        } catch (Exception e11) {
            s(e11, 1);
            return false;
        }
    }

    private void B(byte[] bArr, int i11, boolean z10) {
        try {
            this.f24916w = this.f24895b.d(bArr, this.f24894a, i11, this.f24901h);
            ((c) p0.j(this.f24911r)).b(1, com.google.android.exoplayer2.util.a.e(this.f24916w), z10);
        } catch (Exception e11) {
            u(e11, true);
        }
    }

    private boolean D() {
        try {
            this.f24895b.restoreKeys(this.f24914u, this.f24915v);
            return true;
        } catch (Exception e11) {
            s(e11, 1);
            return false;
        }
    }

    private void l(com.google.android.exoplayer2.util.i iVar) {
        Iterator it = this.f24902i.elementSet().iterator();
        while (it.hasNext()) {
            iVar.accept((s.a) it.next());
        }
    }

    private void m(boolean z10) {
        if (this.f24900g) {
            return;
        }
        byte[] bArr = (byte[]) p0.j(this.f24914u);
        int i11 = this.f24898e;
        if (i11 != 0 && i11 != 1) {
            if (i11 == 2) {
                if (this.f24915v == null || D()) {
                    B(bArr, 2, z10);
                    return;
                }
                return;
            }
            if (i11 != 3) {
                return;
            }
            com.google.android.exoplayer2.util.a.e(this.f24915v);
            com.google.android.exoplayer2.util.a.e(this.f24914u);
            B(this.f24915v, 3, z10);
            return;
        }
        if (this.f24915v == null) {
            B(bArr, 1, z10);
            return;
        }
        if (this.f24908o == 4 || D()) {
            long jN = n();
            if (this.f24898e != 0 || jN > 60) {
                if (jN <= 0) {
                    s(new KeysExpiredException(), 2);
                    return;
                } else {
                    this.f24908o = 4;
                    l(new com.google.android.exoplayer2.util.i() { // from class: com.google.android.exoplayer2.drm.c
                        @Override // com.google.android.exoplayer2.util.i
                        public final void accept(Object obj) {
                            ((s.a) obj).j();
                        }
                    });
                    return;
                }
            }
            com.google.android.exoplayer2.util.s.b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + jN);
            B(bArr, 2, z10);
        }
    }

    private long n() {
        if (!com.google.android.exoplayer2.l.f25189d.equals(this.f24906m)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) com.google.android.exoplayer2.util.a.e(k0.b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    private boolean p() {
        int i11 = this.f24908o;
        return i11 == 3 || i11 == 4;
    }

    private void s(final Exception exc, int i11) {
        this.f24913t = new DrmSession.DrmSessionException(exc, y.a(exc, i11));
        com.google.android.exoplayer2.util.s.d("DefaultDrmSession", "DRM session error", exc);
        l(new com.google.android.exoplayer2.util.i() { // from class: com.google.android.exoplayer2.drm.d
            @Override // com.google.android.exoplayer2.util.i
            public final void accept(Object obj) {
                ((s.a) obj).l(exc);
            }
        });
        if (this.f24908o != 4) {
            this.f24908o = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(Object obj, Object obj2) {
        if (obj == this.f24916w && p()) {
            this.f24916w = null;
            if (obj2 instanceof Exception) {
                u((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f24898e == 3) {
                    this.f24895b.provideKeyResponse((byte[]) p0.j(this.f24915v), bArr);
                    l(new com.google.android.exoplayer2.util.i() { // from class: com.google.android.exoplayer2.drm.e
                        @Override // com.google.android.exoplayer2.util.i
                        public final void accept(Object obj3) {
                            ((s.a) obj3).i();
                        }
                    });
                    return;
                }
                byte[] bArrProvideKeyResponse = this.f24895b.provideKeyResponse(this.f24914u, bArr);
                int i11 = this.f24898e;
                if ((i11 == 2 || (i11 == 0 && this.f24915v != null)) && bArrProvideKeyResponse != null && bArrProvideKeyResponse.length != 0) {
                    this.f24915v = bArrProvideKeyResponse;
                }
                this.f24908o = 4;
                l(new com.google.android.exoplayer2.util.i() { // from class: com.google.android.exoplayer2.drm.f
                    @Override // com.google.android.exoplayer2.util.i
                    public final void accept(Object obj3) {
                        ((s.a) obj3).h();
                    }
                });
            } catch (Exception e11) {
                u(e11, true);
            }
        }
    }

    private void u(Exception exc, boolean z10) {
        if (exc instanceof NotProvisionedException) {
            this.f24896c.b(this);
        } else {
            s(exc, z10 ? 1 : 2);
        }
    }

    private void v() {
        if (this.f24898e == 0 && this.f24908o == 4) {
            p0.j(this.f24914u);
            m(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(Object obj, Object obj2) {
        if (obj == this.f24917x) {
            if (this.f24908o == 2 || p()) {
                this.f24917x = null;
                if (obj2 instanceof Exception) {
                    this.f24896c.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.f24895b.provideProvisionResponse((byte[]) obj2);
                    this.f24896c.onProvisionCompleted();
                } catch (Exception e11) {
                    this.f24896c.a(e11, true);
                }
            }
        }
    }

    public void C() {
        this.f24917x = this.f24895b.getProvisionRequest();
        ((c) p0.j(this.f24911r)).b(0, com.google.android.exoplayer2.util.a.e(this.f24917x), true);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final UUID a() {
        return this.f24906m;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean b() {
        return this.f24899f;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final com.google.android.exoplayer2.decoder.b c() {
        return this.f24912s;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean d(String str) {
        return this.f24895b.c((byte[]) com.google.android.exoplayer2.util.a.i(this.f24914u), str);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void e(s.a aVar) {
        if (this.f24909p < 0) {
            com.google.android.exoplayer2.util.s.c("DefaultDrmSession", "Session reference count less than zero: " + this.f24909p);
            this.f24909p = 0;
        }
        if (aVar != null) {
            this.f24902i.a(aVar);
        }
        int i11 = this.f24909p + 1;
        this.f24909p = i11;
        if (i11 == 1) {
            com.google.android.exoplayer2.util.a.g(this.f24908o == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f24910q = handlerThread;
            handlerThread.start();
            this.f24911r = new c(this.f24910q.getLooper());
            if (A()) {
                m(true);
            }
        } else if (aVar != null && p() && this.f24902i.count(aVar) == 1) {
            aVar.k(this.f24908o);
        }
        this.f24897d.a(this, this.f24909p);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void f(s.a aVar) {
        int i11 = this.f24909p;
        if (i11 <= 0) {
            com.google.android.exoplayer2.util.s.c("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i12 = i11 - 1;
        this.f24909p = i12;
        if (i12 == 0) {
            this.f24908o = 0;
            ((e) p0.j(this.f24907n)).removeCallbacksAndMessages(null);
            ((c) p0.j(this.f24911r)).c();
            this.f24911r = null;
            ((HandlerThread) p0.j(this.f24910q)).quit();
            this.f24910q = null;
            this.f24912s = null;
            this.f24913t = null;
            this.f24916w = null;
            this.f24917x = null;
            byte[] bArr = this.f24914u;
            if (bArr != null) {
                this.f24895b.closeSession(bArr);
                this.f24914u = null;
            }
        }
        if (aVar != null) {
            this.f24902i.b(aVar);
            if (this.f24902i.count(aVar) == 0) {
                aVar.m();
            }
        }
        this.f24897d.b(this, this.f24909p);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final DrmSession.DrmSessionException getError() {
        if (this.f24908o == 1) {
            return this.f24913t;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final int getState() {
        return this.f24908o;
    }

    public boolean o(byte[] bArr) {
        return Arrays.equals(this.f24914u, bArr);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public Map queryKeyStatus() {
        byte[] bArr = this.f24914u;
        if (bArr == null) {
            return null;
        }
        return this.f24895b.queryKeyStatus(bArr);
    }

    public void w(int i11) {
        if (i11 != 2) {
            return;
        }
        v();
    }

    public void x() {
        if (A()) {
            m(true);
        }
    }

    public void y(Exception exc, boolean z10) {
        s(exc, z10 ? 1 : 3);
    }
}
