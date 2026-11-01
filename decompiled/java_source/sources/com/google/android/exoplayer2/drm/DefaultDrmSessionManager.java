package com.google.android.exoplayer2.drm;

import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import e9.u1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultDrmSessionManager implements u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final UUID f24926c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c0.c f24927d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j0 f24928e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashMap f24929f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f24930g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int[] f24931h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f24932i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final f f24933j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.z f24934k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final g f24935l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final long f24936m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final List f24937n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Set f24938o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Set f24939p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f24940q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private c0 f24941r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private DefaultDrmSession f24942s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private DefaultDrmSession f24943t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Looper f24944u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Handler f24945v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f24946w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private byte[] f24947x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private u1 f24948y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    volatile d f24949z;

    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f24953d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f24955f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HashMap f24950a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private UUID f24951b = com.google.android.exoplayer2.l.f25189d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private c0.c f24952c = h0.f24984d;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.z f24956g = new com.google.android.exoplayer2.upstream.v();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int[] f24954e = new int[0];

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f24957h = 300000;

        public DefaultDrmSessionManager a(j0 j0Var) {
            return new DefaultDrmSessionManager(this.f24951b, this.f24952c, j0Var, this.f24950a, this.f24953d, this.f24954e, this.f24955f, this.f24956g, this.f24957h);
        }

        public b b(boolean z10) {
            this.f24953d = z10;
            return this;
        }

        public b c(boolean z10) {
            this.f24955f = z10;
            return this;
        }

        public b d(int... iArr) {
            for (int i11 : iArr) {
                boolean z10 = true;
                if (i11 != 2 && i11 != 1) {
                    z10 = false;
                }
                com.google.android.exoplayer2.util.a.a(z10);
            }
            this.f24954e = (int[]) iArr.clone();
            return this;
        }

        public b e(UUID uuid, c0.c cVar) {
            this.f24951b = (UUID) com.google.android.exoplayer2.util.a.e(uuid);
            this.f24952c = (c0.c) com.google.android.exoplayer2.util.a.e(cVar);
            return this;
        }
    }

    private class c implements c0.b {
        private c() {
        }

        @Override // com.google.android.exoplayer2.drm.c0.b
        public void a(c0 c0Var, byte[] bArr, int i11, int i12, byte[] bArr2) {
            ((d) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24949z)).obtainMessage(i11, bArr).sendToTarget();
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
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f24937n) {
                if (defaultDrmSession.o(bArr)) {
                    defaultDrmSession.w(message.what);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class e implements u.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final s.a f24960b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private DrmSession f24961c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f24962d;

        public e(s.a aVar) {
            this.f24960b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(o1 o1Var) {
            if (DefaultDrmSessionManager.this.f24940q == 0 || this.f24962d) {
                return;
            }
            DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
            this.f24961c = defaultDrmSessionManager.s((Looper) com.google.android.exoplayer2.util.a.e(defaultDrmSessionManager.f24944u), this.f24960b, o1Var, false);
            DefaultDrmSessionManager.this.f24938o.add(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e() {
            if (this.f24962d) {
                return;
            }
            DrmSession drmSession = this.f24961c;
            if (drmSession != null) {
                drmSession.f(this.f24960b);
            }
            DefaultDrmSessionManager.this.f24938o.remove(this);
            this.f24962d = true;
        }

        public void c(final o1 o1Var) {
            ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24945v)).post(new Runnable() { // from class: com.google.android.exoplayer2.drm.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f24981a.d(o1Var);
                }
            });
        }

        @Override // com.google.android.exoplayer2.drm.u.b
        public void release() {
            p0.K0((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24945v), new Runnable() { // from class: com.google.android.exoplayer2.drm.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f24983a.e();
                }
            });
        }
    }

    private class f implements DefaultDrmSession.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set f24964a = new HashSet();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private DefaultDrmSession f24965b;

        public f(DefaultDrmSessionManager defaultDrmSessionManager) {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void a(Exception exc, boolean z10) {
            this.f24965b = null;
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f24964a);
            this.f24964a.clear();
            r4 it = immutableListCopyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).y(exc, z10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void b(DefaultDrmSession defaultDrmSession) {
            this.f24964a.add(defaultDrmSession);
            if (this.f24965b != null) {
                return;
            }
            this.f24965b = defaultDrmSession;
            defaultDrmSession.C();
        }

        public void c(DefaultDrmSession defaultDrmSession) {
            this.f24964a.remove(defaultDrmSession);
            if (this.f24965b == defaultDrmSession) {
                this.f24965b = null;
                if (this.f24964a.isEmpty()) {
                    return;
                }
                DefaultDrmSession defaultDrmSession2 = (DefaultDrmSession) this.f24964a.iterator().next();
                this.f24965b = defaultDrmSession2;
                defaultDrmSession2.C();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public void onProvisionCompleted() {
            this.f24965b = null;
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f24964a);
            this.f24964a.clear();
            r4 it = immutableListCopyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).x();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class g implements DefaultDrmSession.b {
        private g() {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.b
        public void a(DefaultDrmSession defaultDrmSession, int i11) {
            if (DefaultDrmSessionManager.this.f24936m != C.TIME_UNSET) {
                DefaultDrmSessionManager.this.f24939p.remove(defaultDrmSession);
                ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24945v)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.b
        public void b(final DefaultDrmSession defaultDrmSession, int i11) {
            if (i11 == 1 && DefaultDrmSessionManager.this.f24940q > 0 && DefaultDrmSessionManager.this.f24936m != C.TIME_UNSET) {
                DefaultDrmSessionManager.this.f24939p.add(defaultDrmSession);
                ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24945v)).postAtTime(new Runnable() { // from class: com.google.android.exoplayer2.drm.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        defaultDrmSession.f(null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.f24936m);
            } else if (i11 == 0) {
                DefaultDrmSessionManager.this.f24937n.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f24942s == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f24942s = null;
                }
                if (DefaultDrmSessionManager.this.f24943t == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f24943t = null;
                }
                DefaultDrmSessionManager.this.f24933j.c(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f24936m != C.TIME_UNSET) {
                    ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24945v)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.f24939p.remove(defaultDrmSession);
                }
            }
            DefaultDrmSessionManager.this.B();
        }
    }

    private DefaultDrmSessionManager(UUID uuid, c0.c cVar, j0 j0Var, HashMap map, boolean z10, int[] iArr, boolean z11, com.google.android.exoplayer2.upstream.z zVar, long j11) {
        com.google.android.exoplayer2.util.a.e(uuid);
        com.google.android.exoplayer2.util.a.b(!com.google.android.exoplayer2.l.f25187b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f24926c = uuid;
        this.f24927d = cVar;
        this.f24928e = j0Var;
        this.f24929f = map;
        this.f24930g = z10;
        this.f24931h = iArr;
        this.f24932i = z11;
        this.f24934k = zVar;
        this.f24933j = new f(this);
        this.f24935l = new g();
        this.f24946w = 0;
        this.f24937n = new ArrayList();
        this.f24938o = Sets.h();
        this.f24939p = Sets.h();
        this.f24936m = j11;
    }

    private void A(Looper looper) {
        if (this.f24949z == null) {
            this.f24949z = new d(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.f24941r != null && this.f24940q == 0 && this.f24937n.isEmpty() && this.f24938o.isEmpty()) {
            ((c0) com.google.android.exoplayer2.util.a.e(this.f24941r)).release();
            this.f24941r = null;
        }
    }

    private void C() {
        r4 it = ImmutableSet.copyOf((Collection) this.f24939p).iterator();
        while (it.hasNext()) {
            ((DrmSession) it.next()).f(null);
        }
    }

    private void D() {
        r4 it = ImmutableSet.copyOf((Collection) this.f24938o).iterator();
        while (it.hasNext()) {
            ((e) it.next()).release();
        }
    }

    private void F(DrmSession drmSession, s.a aVar) {
        drmSession.f(aVar);
        if (this.f24936m != C.TIME_UNSET) {
            drmSession.f(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public DrmSession s(Looper looper, s.a aVar, o1 o1Var, boolean z10) {
        List listX;
        A(looper);
        DrmInitData drmInitData = o1Var.f25499o;
        if (drmInitData == null) {
            return z(com.google.android.exoplayer2.util.w.l(o1Var.f25496l), z10);
        }
        DefaultDrmSession defaultDrmSessionW = null;
        Object[] objArr = 0;
        if (this.f24947x == null) {
            listX = x((DrmInitData) com.google.android.exoplayer2.util.a.e(drmInitData), this.f24926c, false);
            if (listX.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f24926c);
                com.google.android.exoplayer2.util.s.d("DefaultDrmSessionMgr", "DRM error", missingSchemeDataException);
                if (aVar != null) {
                    aVar.l(missingSchemeDataException);
                }
                return new a0(new DrmSession.DrmSessionException(missingSchemeDataException, 6003));
            }
        } else {
            listX = null;
        }
        if (this.f24930g) {
            for (DefaultDrmSession defaultDrmSession : this.f24937n) {
                if (p0.c(defaultDrmSession.f24894a, listX)) {
                    defaultDrmSessionW = defaultDrmSession;
                    break;
                }
            }
        } else {
            defaultDrmSessionW = this.f24943t;
        }
        if (defaultDrmSessionW == null) {
            defaultDrmSessionW = w(listX, false, aVar, z10);
            if (!this.f24930g) {
                this.f24943t = defaultDrmSessionW;
            }
            this.f24937n.add(defaultDrmSessionW);
        } else {
            defaultDrmSessionW.e(aVar);
        }
        return defaultDrmSessionW;
    }

    private static boolean t(DrmSession drmSession) {
        return drmSession.getState() == 1 && (p0.f27626a < 19 || (((DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(drmSession.getError())).getCause() instanceof ResourceBusyException));
    }

    private boolean u(DrmInitData drmInitData) {
        if (this.f24947x != null) {
            return true;
        }
        if (x(drmInitData, this.f24926c, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.get(0).matches(com.google.android.exoplayer2.l.f25187b)) {
                return false;
            }
            com.google.android.exoplayer2.util.s.i("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.f24926c);
        }
        String str = drmInitData.schemeType;
        if (str == null || C.CENC_TYPE_cenc.equals(str)) {
            return true;
        }
        if (C.CENC_TYPE_cbcs.equals(str)) {
            return p0.f27626a >= 25;
        }
        return (C.CENC_TYPE_cbc1.equals(str) || C.CENC_TYPE_cens.equals(str)) ? false : true;
    }

    private DefaultDrmSession v(List list, boolean z10, s.a aVar) {
        com.google.android.exoplayer2.util.a.e(this.f24941r);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.f24926c, this.f24941r, this.f24933j, this.f24935l, list, this.f24946w, this.f24932i | z10, z10, this.f24947x, this.f24929f, this.f24928e, (Looper) com.google.android.exoplayer2.util.a.e(this.f24944u), this.f24934k, (u1) com.google.android.exoplayer2.util.a.e(this.f24948y));
        defaultDrmSession.e(aVar);
        if (this.f24936m != C.TIME_UNSET) {
            defaultDrmSession.e(null);
        }
        return defaultDrmSession;
    }

    private DefaultDrmSession w(List list, boolean z10, s.a aVar, boolean z11) {
        DefaultDrmSession defaultDrmSessionV = v(list, z10, aVar);
        if (t(defaultDrmSessionV) && !this.f24939p.isEmpty()) {
            C();
            F(defaultDrmSessionV, aVar);
            defaultDrmSessionV = v(list, z10, aVar);
        }
        if (!t(defaultDrmSessionV) || !z11 || this.f24938o.isEmpty()) {
            return defaultDrmSessionV;
        }
        D();
        if (!this.f24939p.isEmpty()) {
            C();
        }
        F(defaultDrmSessionV, aVar);
        return v(list, z10, aVar);
    }

    private static List x(DrmInitData drmInitData, UUID uuid, boolean z10) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i11 = 0; i11 < drmInitData.schemeDataCount; i11++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i11);
            if ((schemeData.matches(uuid) || (com.google.android.exoplayer2.l.f25188c.equals(uuid) && schemeData.matches(com.google.android.exoplayer2.l.f25187b))) && (schemeData.data != null || z10)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    private synchronized void y(Looper looper) {
        try {
            Looper looper2 = this.f24944u;
            if (looper2 == null) {
                this.f24944u = looper;
                this.f24945v = new Handler(looper);
            } else {
                com.google.android.exoplayer2.util.a.g(looper2 == looper);
                com.google.android.exoplayer2.util.a.e(this.f24945v);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private DrmSession z(int i11, boolean z10) {
        c0 c0Var = (c0) com.google.android.exoplayer2.util.a.e(this.f24941r);
        if ((c0Var.a() == 2 && d0.f24975d) || p0.z0(this.f24931h, i11) == -1 || c0Var.a() == 1) {
            return null;
        }
        DefaultDrmSession defaultDrmSession = this.f24942s;
        if (defaultDrmSession == null) {
            DefaultDrmSession defaultDrmSessionW = w(ImmutableList.of(), true, null, z10);
            this.f24937n.add(defaultDrmSessionW);
            this.f24942s = defaultDrmSessionW;
        } else {
            defaultDrmSession.e(null);
        }
        return this.f24942s;
    }

    public void E(int i11, byte[] bArr) {
        com.google.android.exoplayer2.util.a.g(this.f24937n.isEmpty());
        if (i11 == 1 || i11 == 3) {
            com.google.android.exoplayer2.util.a.e(bArr);
        }
        this.f24946w = i11;
        this.f24947x = bArr;
    }

    @Override // com.google.android.exoplayer2.drm.u
    public int a(o1 o1Var) {
        int iA = ((c0) com.google.android.exoplayer2.util.a.e(this.f24941r)).a();
        DrmInitData drmInitData = o1Var.f25499o;
        if (drmInitData != null) {
            if (u(drmInitData)) {
                return iA;
            }
            return 1;
        }
        if (p0.z0(this.f24931h, com.google.android.exoplayer2.util.w.l(o1Var.f25496l)) != -1) {
            return iA;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.drm.u
    public void b(Looper looper, u1 u1Var) {
        y(looper);
        this.f24948y = u1Var;
    }

    @Override // com.google.android.exoplayer2.drm.u
    public DrmSession c(s.a aVar, o1 o1Var) {
        com.google.android.exoplayer2.util.a.g(this.f24940q > 0);
        com.google.android.exoplayer2.util.a.i(this.f24944u);
        return s(this.f24944u, aVar, o1Var, true);
    }

    @Override // com.google.android.exoplayer2.drm.u
    public u.b d(s.a aVar, o1 o1Var) {
        com.google.android.exoplayer2.util.a.g(this.f24940q > 0);
        com.google.android.exoplayer2.util.a.i(this.f24944u);
        e eVar = new e(aVar);
        eVar.c(o1Var);
        return eVar;
    }

    @Override // com.google.android.exoplayer2.drm.u
    public final void prepare() {
        int i11 = this.f24940q;
        this.f24940q = i11 + 1;
        if (i11 != 0) {
            return;
        }
        if (this.f24941r == null) {
            c0 c0VarA = this.f24927d.a(this.f24926c);
            this.f24941r = c0VarA;
            c0VarA.e(new c());
        } else if (this.f24936m != C.TIME_UNSET) {
            for (int i12 = 0; i12 < this.f24937n.size(); i12++) {
                ((DefaultDrmSession) this.f24937n.get(i12)).e(null);
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.u
    public final void release() {
        int i11 = this.f24940q - 1;
        this.f24940q = i11;
        if (i11 != 0) {
            return;
        }
        if (this.f24936m != C.TIME_UNSET) {
            ArrayList arrayList = new ArrayList(this.f24937n);
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                ((DefaultDrmSession) arrayList.get(i12)).f(null);
            }
        }
        D();
        B();
    }
}
