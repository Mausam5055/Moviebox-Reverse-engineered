package androidx.media3.exoplayer.drm;

import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultDrmSessionManager implements t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final UUID f11520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0.c f11521c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m0 f11522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap f11523e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f11524f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f11525g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f11526h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final f f11527i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.media3.exoplayer.upstream.m f11528j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final g f11529k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f11530l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final List f11531m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Set f11532n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Set f11533o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f11534p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private b0 f11535q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private DefaultDrmSession f11536r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private DefaultDrmSession f11537s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Looper f11538t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Handler f11539u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f11540v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private byte[] f11541w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private f4 f11542x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    volatile d f11543y;

    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f11547d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HashMap f11544a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private UUID f11545b = androidx.media3.common.h.f9984d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private b0.c f11546c = k0.f11585d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int[] f11548e = new int[0];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f11549f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private androidx.media3.exoplayer.upstream.m f11550g = new androidx.media3.exoplayer.upstream.k();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f11551h = 300000;

        public DefaultDrmSessionManager a(m0 m0Var) {
            return new DefaultDrmSessionManager(this.f11545b, this.f11546c, m0Var, this.f11544a, this.f11547d, this.f11548e, this.f11549f, this.f11550g, this.f11551h);
        }

        public b b(androidx.media3.exoplayer.upstream.m mVar) {
            this.f11550g = (androidx.media3.exoplayer.upstream.m) androidx.media3.common.util.a.e(mVar);
            return this;
        }

        public b c(boolean z10) {
            this.f11547d = z10;
            return this;
        }

        public b d(boolean z10) {
            this.f11549f = z10;
            return this;
        }

        public b e(int... iArr) {
            for (int i11 : iArr) {
                boolean z10 = true;
                if (i11 != 2 && i11 != 1) {
                    z10 = false;
                }
                androidx.media3.common.util.a.a(z10);
            }
            this.f11548e = (int[]) iArr.clone();
            return this;
        }

        public b f(UUID uuid, b0.c cVar) {
            this.f11545b = (UUID) androidx.media3.common.util.a.e(uuid);
            this.f11546c = (b0.c) androidx.media3.common.util.a.e(cVar);
            return this;
        }
    }

    private class c implements b0.b {
        private c() {
        }

        @Override // androidx.media3.exoplayer.drm.b0.b
        public void a(b0 b0Var, byte[] bArr, int i11, int i12, byte[] bArr2) {
            ((d) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11543y)).obtainMessage(i11, bArr).sendToTarget();
        }
    }

    private class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f11531m) {
                if (defaultDrmSession.r(bArr)) {
                    defaultDrmSession.z(message.what);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class e implements t.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final r.a f11554b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private DrmSession f11555c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f11556d;

        public e(r.a aVar) {
            this.f11554b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(androidx.media3.common.r rVar) {
            if (DefaultDrmSessionManager.this.f11534p == 0 || this.f11556d) {
                return;
            }
            DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
            this.f11555c = defaultDrmSessionManager.s((Looper) androidx.media3.common.util.a.e(defaultDrmSessionManager.f11538t), this.f11554b, rVar, false);
            DefaultDrmSessionManager.this.f11532n.add(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e() {
            if (this.f11556d) {
                return;
            }
            DrmSession drmSession = this.f11555c;
            if (drmSession != null) {
                drmSession.f(this.f11554b);
            }
            DefaultDrmSessionManager.this.f11532n.remove(this);
            this.f11556d = true;
        }

        public void c(final androidx.media3.common.r rVar) {
            ((Handler) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11539u)).post(new Runnable() { // from class: androidx.media3.exoplayer.drm.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f11575a.d(rVar);
                }
            });
        }

        @Override // androidx.media3.exoplayer.drm.t.b
        public void release() {
            a1.b1((Handler) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11539u), new Runnable() { // from class: androidx.media3.exoplayer.drm.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f11577a.e();
                }
            });
        }
    }

    private class f implements DefaultDrmSession.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set f11558a = new HashSet();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private DefaultDrmSession f11559b;

        public f() {
        }

        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.a
        public void a(Exception exc, boolean z10) {
            this.f11559b = null;
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f11558a);
            this.f11558a.clear();
            r4 it = immutableListCopyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).B(exc, z10);
            }
        }

        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.a
        public void b(DefaultDrmSession defaultDrmSession) {
            this.f11558a.add(defaultDrmSession);
            if (this.f11559b != null) {
                return;
            }
            this.f11559b = defaultDrmSession;
            defaultDrmSession.F();
        }

        public void c(DefaultDrmSession defaultDrmSession) {
            this.f11558a.remove(defaultDrmSession);
            if (this.f11559b == defaultDrmSession) {
                this.f11559b = null;
                if (this.f11558a.isEmpty()) {
                    return;
                }
                DefaultDrmSession defaultDrmSession2 = (DefaultDrmSession) this.f11558a.iterator().next();
                this.f11559b = defaultDrmSession2;
                defaultDrmSession2.F();
            }
        }

        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.a
        public void onProvisionCompleted() {
            this.f11559b = null;
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f11558a);
            this.f11558a.clear();
            r4 it = immutableListCopyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).A();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class g implements DefaultDrmSession.b {
        private g() {
        }

        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.b
        public void a(DefaultDrmSession defaultDrmSession, int i11) {
            if (DefaultDrmSessionManager.this.f11530l != C.TIME_UNSET) {
                DefaultDrmSessionManager.this.f11533o.remove(defaultDrmSession);
                ((Handler) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11539u)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }

        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.b
        public void b(final DefaultDrmSession defaultDrmSession, int i11) {
            if (i11 == 1 && DefaultDrmSessionManager.this.f11534p > 0 && DefaultDrmSessionManager.this.f11530l != C.TIME_UNSET) {
                DefaultDrmSessionManager.this.f11533o.add(defaultDrmSession);
                ((Handler) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11539u)).postAtTime(new Runnable() { // from class: androidx.media3.exoplayer.drm.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        defaultDrmSession.f(null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.f11530l);
            } else if (i11 == 0) {
                DefaultDrmSessionManager.this.f11531m.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f11536r == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f11536r = null;
                }
                if (DefaultDrmSessionManager.this.f11537s == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f11537s = null;
                }
                DefaultDrmSessionManager.this.f11527i.c(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f11530l != C.TIME_UNSET) {
                    ((Handler) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11539u)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.f11533o.remove(defaultDrmSession);
                }
            }
            DefaultDrmSessionManager.this.B();
        }
    }

    private DefaultDrmSessionManager(UUID uuid, b0.c cVar, m0 m0Var, HashMap map, boolean z10, int[] iArr, boolean z11, androidx.media3.exoplayer.upstream.m mVar, long j11) {
        androidx.media3.common.util.a.e(uuid);
        androidx.media3.common.util.a.b(!androidx.media3.common.h.f9982b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f11520b = uuid;
        this.f11521c = cVar;
        this.f11522d = m0Var;
        this.f11523e = map;
        this.f11524f = z10;
        this.f11525g = iArr;
        this.f11526h = z11;
        this.f11528j = mVar;
        this.f11527i = new f();
        this.f11529k = new g();
        this.f11540v = 0;
        this.f11531m = new ArrayList();
        this.f11532n = Sets.h();
        this.f11533o = Sets.h();
        this.f11530l = j11;
    }

    private void A(Looper looper) {
        if (this.f11543y == null) {
            this.f11543y = new d(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.f11535q != null && this.f11534p == 0 && this.f11531m.isEmpty() && this.f11532n.isEmpty()) {
            ((b0) androidx.media3.common.util.a.e(this.f11535q)).release();
            this.f11535q = null;
        }
    }

    private void C() {
        r4 it = ImmutableSet.copyOf((Collection) this.f11533o).iterator();
        while (it.hasNext()) {
            ((DrmSession) it.next()).f(null);
        }
    }

    private void D() {
        r4 it = ImmutableSet.copyOf((Collection) this.f11532n).iterator();
        while (it.hasNext()) {
            ((e) it.next()).release();
        }
    }

    private void F(DrmSession drmSession, r.a aVar) {
        drmSession.f(aVar);
        if (this.f11530l != C.TIME_UNSET) {
            drmSession.f(null);
        }
    }

    private void G(boolean z10) {
        if (z10 && this.f11538t == null) {
            androidx.media3.common.util.u.i("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread.", new IllegalStateException());
            return;
        }
        if (Thread.currentThread() != ((Looper) androidx.media3.common.util.a.e(this.f11538t)).getThread()) {
            androidx.media3.common.util.u.i("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.f11538t.getThread().getName(), new IllegalStateException());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public DrmSession s(Looper looper, r.a aVar, androidx.media3.common.r rVar, boolean z10) {
        List listX;
        A(looper);
        DrmInitData drmInitData = rVar.f10165s;
        if (drmInitData == null) {
            return z(androidx.media3.common.y.k(rVar.f10161o), z10);
        }
        DefaultDrmSession defaultDrmSessionW = null;
        Object[] objArr = 0;
        if (this.f11541w == null) {
            listX = x((DrmInitData) androidx.media3.common.util.a.e(drmInitData), this.f11520b, false);
            if (listX.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f11520b);
                androidx.media3.common.util.u.d("DefaultDrmSessionMgr", "DRM error", missingSchemeDataException);
                if (aVar != null) {
                    aVar.l(missingSchemeDataException);
                }
                return new z(new DrmSession.DrmSessionException(missingSchemeDataException, 6003));
            }
        } else {
            listX = null;
        }
        if (this.f11524f) {
            for (DefaultDrmSession defaultDrmSession : this.f11531m) {
                if (Objects.equals(defaultDrmSession.f11487a, listX)) {
                    defaultDrmSessionW = defaultDrmSession;
                    break;
                }
            }
        } else {
            defaultDrmSessionW = this.f11537s;
        }
        if (defaultDrmSessionW == null) {
            defaultDrmSessionW = w(listX, false, aVar, z10);
            if (!this.f11524f) {
                this.f11537s = defaultDrmSessionW;
            }
            this.f11531m.add(defaultDrmSessionW);
        } else {
            defaultDrmSessionW.e(aVar);
        }
        return defaultDrmSessionW;
    }

    private static boolean t(DrmSession drmSession) {
        if (drmSession.getState() != 1) {
            return false;
        }
        Throwable cause = ((DrmSession.DrmSessionException) androidx.media3.common.util.a.e(drmSession.getError())).getCause();
        return (cause instanceof ResourceBusyException) || x.e(cause);
    }

    private boolean u(DrmInitData drmInitData) {
        if (this.f11541w != null) {
            return true;
        }
        if (x(drmInitData, this.f11520b, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.get(0).matches(androidx.media3.common.h.f9982b)) {
                return false;
            }
            androidx.media3.common.util.u.h("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.f11520b);
        }
        String str = drmInitData.schemeType;
        if (str == null || C.CENC_TYPE_cenc.equals(str)) {
            return true;
        }
        if (C.CENC_TYPE_cbcs.equals(str)) {
            return a1.f10350a >= 25;
        }
        return (C.CENC_TYPE_cbc1.equals(str) || C.CENC_TYPE_cens.equals(str)) ? false : true;
    }

    private DefaultDrmSession v(List list, boolean z10, r.a aVar) {
        androidx.media3.common.util.a.e(this.f11535q);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.f11520b, this.f11535q, this.f11527i, this.f11529k, list, this.f11540v, this.f11526h | z10, z10, this.f11541w, this.f11523e, this.f11522d, (Looper) androidx.media3.common.util.a.e(this.f11538t), this.f11528j, (f4) androidx.media3.common.util.a.e(this.f11542x));
        defaultDrmSession.e(aVar);
        if (this.f11530l != C.TIME_UNSET) {
            defaultDrmSession.e(null);
        }
        return defaultDrmSession;
    }

    private DefaultDrmSession w(List list, boolean z10, r.a aVar, boolean z11) {
        DefaultDrmSession defaultDrmSessionV = v(list, z10, aVar);
        if (t(defaultDrmSessionV) && !this.f11533o.isEmpty()) {
            C();
            F(defaultDrmSessionV, aVar);
            defaultDrmSessionV = v(list, z10, aVar);
        }
        if (!t(defaultDrmSessionV) || !z11 || this.f11532n.isEmpty()) {
            return defaultDrmSessionV;
        }
        D();
        if (!this.f11533o.isEmpty()) {
            C();
        }
        F(defaultDrmSessionV, aVar);
        return v(list, z10, aVar);
    }

    private static List x(DrmInitData drmInitData, UUID uuid, boolean z10) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i11 = 0; i11 < drmInitData.schemeDataCount; i11++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i11);
            if ((schemeData.matches(uuid) || (androidx.media3.common.h.f9983c.equals(uuid) && schemeData.matches(androidx.media3.common.h.f9982b))) && (schemeData.data != null || z10)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    private synchronized void y(Looper looper) {
        try {
            Looper looper2 = this.f11538t;
            if (looper2 == null) {
                this.f11538t = looper;
                this.f11539u = new Handler(looper);
            } else {
                androidx.media3.common.util.a.g(looper2 == looper);
                androidx.media3.common.util.a.e(this.f11539u);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private DrmSession z(int i11, boolean z10) {
        b0 b0Var = (b0) androidx.media3.common.util.a.e(this.f11535q);
        if ((b0Var.a() == 2 && c0.f11568d) || a1.O0(this.f11525g, i11) == -1 || b0Var.a() == 1) {
            return null;
        }
        DefaultDrmSession defaultDrmSession = this.f11536r;
        if (defaultDrmSession == null) {
            DefaultDrmSession defaultDrmSessionW = w(ImmutableList.of(), true, null, z10);
            this.f11531m.add(defaultDrmSessionW);
            this.f11536r = defaultDrmSessionW;
        } else {
            defaultDrmSession.e(null);
        }
        return this.f11536r;
    }

    public void E(int i11, byte[] bArr) {
        androidx.media3.common.util.a.g(this.f11531m.isEmpty());
        if (i11 == 1 || i11 == 3) {
            androidx.media3.common.util.a.e(bArr);
        }
        this.f11540v = i11;
        this.f11541w = bArr;
    }

    @Override // androidx.media3.exoplayer.drm.t
    public DrmSession a(r.a aVar, androidx.media3.common.r rVar) {
        G(false);
        androidx.media3.common.util.a.g(this.f11534p > 0);
        androidx.media3.common.util.a.i(this.f11538t);
        return s(this.f11538t, aVar, rVar, true);
    }

    @Override // androidx.media3.exoplayer.drm.t
    public int b(androidx.media3.common.r rVar) {
        G(false);
        int iA = ((b0) androidx.media3.common.util.a.e(this.f11535q)).a();
        DrmInitData drmInitData = rVar.f10165s;
        if (drmInitData != null) {
            if (u(drmInitData)) {
                return iA;
            }
            return 1;
        }
        if (a1.O0(this.f11525g, androidx.media3.common.y.k(rVar.f10161o)) != -1) {
            return iA;
        }
        return 0;
    }

    @Override // androidx.media3.exoplayer.drm.t
    public void c(Looper looper, f4 f4Var) {
        y(looper);
        this.f11542x = f4Var;
    }

    @Override // androidx.media3.exoplayer.drm.t
    public t.b d(r.a aVar, androidx.media3.common.r rVar) {
        androidx.media3.common.util.a.g(this.f11534p > 0);
        androidx.media3.common.util.a.i(this.f11538t);
        e eVar = new e(aVar);
        eVar.c(rVar);
        return eVar;
    }

    @Override // androidx.media3.exoplayer.drm.t
    public final void prepare() {
        G(true);
        int i11 = this.f11534p;
        this.f11534p = i11 + 1;
        if (i11 != 0) {
            return;
        }
        if (this.f11535q == null) {
            b0 b0VarA = this.f11521c.a(this.f11520b);
            this.f11535q = b0VarA;
            b0VarA.f(new c());
        } else if (this.f11530l != C.TIME_UNSET) {
            for (int i12 = 0; i12 < this.f11531m.size(); i12++) {
                ((DefaultDrmSession) this.f11531m.get(i12)).e(null);
            }
        }
    }

    @Override // androidx.media3.exoplayer.drm.t
    public final void release() {
        G(true);
        int i11 = this.f11534p - 1;
        this.f11534p = i11;
        if (i11 != 0) {
            return;
        }
        if (this.f11530l != C.TIME_UNSET) {
            ArrayList arrayList = new ArrayList(this.f11531m);
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                ((DefaultDrmSession) arrayList.get(i12)).f(null);
            }
        }
        D();
        B();
    }
}
