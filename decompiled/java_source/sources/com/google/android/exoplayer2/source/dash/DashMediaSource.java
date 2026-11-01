package com.google.android.exoplayer2.source.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.j;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.drm.x;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.a0;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.upstream.z;
import com.google.android.exoplayer2.util.g0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.v1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import t9.i;
import x9.l;

/* JADX INFO: loaded from: classes3.dex */
public final class DashMediaSource extends com.google.android.exoplayer2.source.a {
    private Loader A;
    private k0 B;
    private IOException C;
    private Handler D;
    private v1.g E;
    private Uri F;
    private Uri G;
    private x9.c H;
    private boolean I;
    private long J;
    private long K;
    private long L;
    private int M;
    private long N;
    private int O;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v1 f25773h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f25774i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final k.a f25775j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.google.android.exoplayer2.source.dash.a.InterfaceC0369a f25776k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final t9.d f25777l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final u f25778m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final z f25779n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final w9.b f25780o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f25781p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final p.a f25782q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final b0.a f25783r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final e f25784s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Object f25785t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final SparseArray f25786u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Runnable f25787v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Runnable f25788w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final com.google.android.exoplayer2.source.dash.e.b f25789x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final a0 f25790y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private k f25791z;

    public static final class Factory implements o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.android.exoplayer2.source.dash.a.InterfaceC0369a f25792a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k.a f25793b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private x f25794c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private t9.d f25795d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private z f25796e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f25797f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private b0.a f25798g;

        public Factory(com.google.android.exoplayer2.source.dash.a.InterfaceC0369a interfaceC0369a, k.a aVar) {
            this.f25792a = (com.google.android.exoplayer2.source.dash.a.InterfaceC0369a) com.google.android.exoplayer2.util.a.e(interfaceC0369a);
            this.f25793b = aVar;
            this.f25794c = new j();
            this.f25796e = new v();
            this.f25797f = 30000L;
            this.f25795d = new t9.e();
        }

        public Factory(k.a aVar) {
            this(new com.google.android.exoplayer2.source.dash.c.a(aVar), aVar);
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public DashMediaSource a(v1 v1Var) {
            com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
            b0.a dVar = this.f25798g;
            if (dVar == null) {
                dVar = new x9.d();
            }
            List list = v1Var.f27709b.f27775d;
            return new DashMediaSource(v1Var, null, this.f25793b, !list.isEmpty() ? new com.google.android.exoplayer2.offline.d(dVar, list) : dVar, this.f25792a, this.f25795d, this.f25794c.a(v1Var), this.f25796e, this.f25797f, null);
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Factory b(x xVar) {
            if (xVar == null) {
                xVar = new j();
            }
            this.f25794c = xVar;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Factory c(z zVar) {
            if (zVar == null) {
                zVar = new v();
            }
            this.f25796e = zVar;
            return this;
        }
    }

    class a implements g0.b {
        a() {
        }

        @Override // com.google.android.exoplayer2.util.g0.b
        public void a(IOException iOException) {
            DashMediaSource.this.Z(iOException);
        }

        @Override // com.google.android.exoplayer2.util.g0.b
        public void onInitialized() {
            DashMediaSource.this.a0(g0.h());
        }
    }

    private static final class b extends k3 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f25800c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f25801d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long f25802e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f25803f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long f25804g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final long f25805h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final long f25806i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final x9.c f25807j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final v1 f25808k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final v1.g f25809l;

        public b(long j11, long j12, long j13, int i11, long j14, long j15, long j16, x9.c cVar, v1 v1Var, v1.g gVar) {
            com.google.android.exoplayer2.util.a.g(cVar.f78064d == (gVar != null));
            this.f25800c = j11;
            this.f25801d = j12;
            this.f25802e = j13;
            this.f25803f = i11;
            this.f25804g = j14;
            this.f25805h = j15;
            this.f25806i = j16;
            this.f25807j = cVar;
            this.f25808k = v1Var;
            this.f25809l = gVar;
        }

        private long y(long j11) {
            w9.e eVarK;
            long j12 = this.f25806i;
            if (!z(this.f25807j)) {
                return j12;
            }
            if (j11 > 0) {
                j12 += j11;
                if (j12 > this.f25805h) {
                    return C.TIME_UNSET;
                }
            }
            long j13 = this.f25804g + j12;
            long jF = this.f25807j.f(0);
            int i11 = 0;
            while (i11 < this.f25807j.d() - 1 && j13 >= jF) {
                j13 -= jF;
                i11++;
                jF = this.f25807j.f(i11);
            }
            x9.g gVarC = this.f25807j.c(i11);
            int iA = gVarC.a(2);
            return (iA == -1 || (eVarK = ((x9.j) ((x9.a) gVarC.f78098c.get(iA)).f78053c.get(0)).k()) == null || eVarK.f(jF) == 0) ? j12 : (j12 + eVarK.getTimeUs(eVarK.e(j13, jF))) - j13;
        }

        private static boolean z(x9.c cVar) {
            return cVar.f78064d && cVar.f78065e != C.TIME_UNSET && cVar.f78062b == C.TIME_UNSET;
        }

        @Override // com.google.android.exoplayer2.k3
        public int f(Object obj) {
            int iIntValue;
            if ((obj instanceof Integer) && (iIntValue = ((Integer) obj).intValue() - this.f25803f) >= 0 && iIntValue < m()) {
                return iIntValue;
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.k3
        public k3.b k(int i11, k3.b bVar, boolean z10) {
            com.google.android.exoplayer2.util.a.c(i11, 0, m());
            return bVar.v(z10 ? this.f25807j.c(i11).f78096a : null, z10 ? Integer.valueOf(this.f25803f + i11) : null, 0, this.f25807j.f(i11), p0.B0(this.f25807j.c(i11).f78097b - this.f25807j.c(0).f78097b) - this.f25804g);
        }

        @Override // com.google.android.exoplayer2.k3
        public int m() {
            return this.f25807j.d();
        }

        @Override // com.google.android.exoplayer2.k3
        public Object q(int i11) {
            com.google.android.exoplayer2.util.a.c(i11, 0, m());
            return Integer.valueOf(this.f25803f + i11);
        }

        @Override // com.google.android.exoplayer2.k3
        public k3.d s(int i11, k3.d dVar, long j11) {
            com.google.android.exoplayer2.util.a.c(i11, 0, 1);
            long jY = y(j11);
            Object obj = k3.d.f25165r;
            v1 v1Var = this.f25808k;
            x9.c cVar = this.f25807j;
            return dVar.k(obj, v1Var, cVar, this.f25800c, this.f25801d, this.f25802e, true, z(cVar), this.f25809l, jY, this.f25805h, 0, m() - 1, this.f25804g);
        }

        @Override // com.google.android.exoplayer2.k3
        public int t() {
            return 1;
        }
    }

    private final class c implements com.google.android.exoplayer2.source.dash.e.b {
        private c() {
        }

        /* synthetic */ c(DashMediaSource dashMediaSource, a aVar) {
            this();
        }

        @Override // com.google.android.exoplayer2.source.dash.e.b
        public void a(long j11) {
            DashMediaSource.this.S(j11);
        }

        @Override // com.google.android.exoplayer2.source.dash.e.b
        public void b() {
            DashMediaSource.this.T();
        }
    }

    static final class d implements b0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Pattern f25811a = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        d() {
        }

        @Override // com.google.android.exoplayer2.upstream.b0.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            String line = new BufferedReader(new InputStreamReader(inputStream, com.google.common.base.c.f30228c)).readLine();
            try {
                Matcher matcher = f25811a.matcher(line);
                if (!matcher.matches()) {
                    String strValueOf = String.valueOf(line);
                    throw ParserException.createForMalformedManifest(strValueOf.length() != 0 ? "Couldn't parse timestamp: ".concat(strValueOf) : new String("Couldn't parse timestamp: "), null);
                }
                String strGroup = matcher.group(1);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                long time = simpleDateFormat.parse(strGroup).getTime();
                if (!"Z".equals(matcher.group(2))) {
                    long j11 = "+".equals(matcher.group(4)) ? 1L : -1L;
                    long j12 = Long.parseLong(matcher.group(5));
                    String strGroup2 = matcher.group(7);
                    time -= j11 * (((j12 * 60) + (TextUtils.isEmpty(strGroup2) ? 0L : Long.parseLong(strGroup2))) * 60000);
                }
                return Long.valueOf(time);
            } catch (ParseException e11) {
                throw ParserException.createForMalformedManifest(null, e11);
            }
        }
    }

    private final class e implements Loader.b {
        private e() {
        }

        /* synthetic */ e(DashMediaSource dashMediaSource, a aVar) {
            this();
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void j(b0 b0Var, long j11, long j12, boolean z10) {
            DashMediaSource.this.U(b0Var, j11, j12);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void l(b0 b0Var, long j11, long j12) {
            DashMediaSource.this.V(b0Var, j11, j12);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Loader.c n(b0 b0Var, long j11, long j12, IOException iOException, int i11) {
            return DashMediaSource.this.W(b0Var, j11, j12, iOException, i11);
        }
    }

    final class f implements a0 {
        f() {
        }

        private void a() throws IOException {
            if (DashMediaSource.this.C != null) {
                throw DashMediaSource.this.C;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.a0
        public void maybeThrowError() throws IOException {
            DashMediaSource.this.A.maybeThrowError();
            a();
        }
    }

    private final class g implements Loader.b {
        private g() {
        }

        /* synthetic */ g(DashMediaSource dashMediaSource, a aVar) {
            this();
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void j(b0 b0Var, long j11, long j12, boolean z10) {
            DashMediaSource.this.U(b0Var, j11, j12);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void l(b0 b0Var, long j11, long j12) {
            DashMediaSource.this.X(b0Var, j11, j12);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Loader.c n(b0 b0Var, long j11, long j12, IOException iOException, int i11) {
            return DashMediaSource.this.Y(b0Var, j11, j12, iOException);
        }
    }

    private static final class h implements b0.a {
        private h() {
        }

        /* synthetic */ h(a aVar) {
            this();
        }

        @Override // com.google.android.exoplayer2.upstream.b0.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long parse(Uri uri, InputStream inputStream) {
            return Long.valueOf(p0.I0(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }
    }

    static {
        m1.a("goog.exo.dash");
    }

    private DashMediaSource(v1 v1Var, x9.c cVar, k.a aVar, b0.a aVar2, com.google.android.exoplayer2.source.dash.a.InterfaceC0369a interfaceC0369a, t9.d dVar, u uVar, z zVar, long j11) {
        this.f25773h = v1Var;
        this.E = v1Var.f27711d;
        this.F = ((v1.h) com.google.android.exoplayer2.util.a.e(v1Var.f27709b)).f27772a;
        this.G = v1Var.f27709b.f27772a;
        this.H = cVar;
        this.f25775j = aVar;
        this.f25783r = aVar2;
        this.f25776k = interfaceC0369a;
        this.f25778m = uVar;
        this.f25779n = zVar;
        this.f25781p = j11;
        this.f25777l = dVar;
        this.f25780o = new w9.b();
        boolean z10 = cVar != null;
        this.f25774i = z10;
        a aVar3 = null;
        this.f25782q = v(null);
        this.f25785t = new Object();
        this.f25786u = new SparseArray();
        this.f25789x = new c(this, aVar3);
        this.N = C.TIME_UNSET;
        this.L = C.TIME_UNSET;
        if (!z10) {
            this.f25784s = new e(this, aVar3);
            this.f25790y = new f();
            this.f25787v = new Runnable() { // from class: w9.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77603a.h0();
                }
            };
            this.f25788w = new Runnable() { // from class: w9.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f77604a.Q();
                }
            };
            return;
        }
        com.google.android.exoplayer2.util.a.g(true ^ cVar.f78064d);
        this.f25784s = null;
        this.f25787v = null;
        this.f25788w = null;
        this.f25790y = new a0.a();
    }

    /* synthetic */ DashMediaSource(v1 v1Var, x9.c cVar, k.a aVar, b0.a aVar2, com.google.android.exoplayer2.source.dash.a.InterfaceC0369a interfaceC0369a, t9.d dVar, u uVar, z zVar, long j11, a aVar3) {
        this(v1Var, cVar, aVar, aVar2, interfaceC0369a, dVar, uVar, zVar, j11);
    }

    private static long K(x9.g gVar, long j11, long j12) {
        long jB0 = p0.B0(gVar.f78097b);
        boolean zO = O(gVar);
        long jMin = Long.MAX_VALUE;
        for (int i11 = 0; i11 < gVar.f78098c.size(); i11++) {
            x9.a aVar = (x9.a) gVar.f78098c.get(i11);
            List list = aVar.f78053c;
            if ((!zO || aVar.f78052b != 3) && !list.isEmpty()) {
                w9.e eVarK = ((x9.j) list.get(0)).k();
                if (eVarK == null) {
                    return jB0 + j11;
                }
                long jI = eVarK.i(j11, j12);
                if (jI == 0) {
                    return jB0;
                }
                long jB = (eVarK.b(j11, j12) + jI) - 1;
                jMin = Math.min(jMin, eVarK.a(jB, j11) + eVarK.getTimeUs(jB) + jB0);
            }
        }
        return jMin;
    }

    private static long L(x9.g gVar, long j11, long j12) {
        long jB0 = p0.B0(gVar.f78097b);
        boolean zO = O(gVar);
        long jMax = jB0;
        for (int i11 = 0; i11 < gVar.f78098c.size(); i11++) {
            x9.a aVar = (x9.a) gVar.f78098c.get(i11);
            List list = aVar.f78053c;
            if ((!zO || aVar.f78052b != 3) && !list.isEmpty()) {
                w9.e eVarK = ((x9.j) list.get(0)).k();
                if (eVarK == null || eVarK.i(j11, j12) == 0) {
                    return jB0;
                }
                jMax = Math.max(jMax, eVarK.getTimeUs(eVarK.b(j11, j12)) + jB0);
            }
        }
        return jMax;
    }

    private static long M(x9.c cVar, long j11) {
        w9.e eVarK;
        int iD = cVar.d() - 1;
        x9.g gVarC = cVar.c(iD);
        long jB0 = p0.B0(gVarC.f78097b);
        long jF = cVar.f(iD);
        long jB1 = p0.B0(j11);
        long jB2 = p0.B0(cVar.f78061a);
        long jB3 = p0.B0(5000L);
        for (int i11 = 0; i11 < gVarC.f78098c.size(); i11++) {
            List list = ((x9.a) gVarC.f78098c.get(i11)).f78053c;
            if (!list.isEmpty() && (eVarK = ((x9.j) list.get(0)).k()) != null) {
                long jC = ((jB2 + jB0) + eVarK.c(jF, jB1)) - jB1;
                if (jC < jB3 - 100000 || (jC > jB3 && jC < jB3 + 100000)) {
                    jB3 = jC;
                }
            }
        }
        return com.google.common.math.f.c(jB3, 1000L, RoundingMode.CEILING);
    }

    private long N() {
        return Math.min((this.M - 1) * 1000, 5000);
    }

    private static boolean O(x9.g gVar) {
        for (int i11 = 0; i11 < gVar.f78098c.size(); i11++) {
            int i12 = ((x9.a) gVar.f78098c.get(i11)).f78052b;
            if (i12 == 1 || i12 == 2) {
                return true;
            }
        }
        return false;
    }

    private static boolean P(x9.g gVar) {
        for (int i11 = 0; i11 < gVar.f78098c.size(); i11++) {
            w9.e eVarK = ((x9.j) ((x9.a) gVar.f78098c.get(i11)).f78053c.get(0)).k();
            if (eVarK == null || eVarK.g()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q() {
        b0(false);
    }

    private void R() {
        g0.j(this.A, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(IOException iOException) {
        s.d("DashMediaSource", "Failed to resolve time offset.", iOException);
        b0(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(long j11) {
        this.L = j11;
        b0(true);
    }

    private void b0(boolean z10) {
        long j11;
        long j12;
        for (int i11 = 0; i11 < this.f25786u.size(); i11++) {
            int iKeyAt = this.f25786u.keyAt(i11);
            if (iKeyAt >= this.O) {
                ((com.google.android.exoplayer2.source.dash.b) this.f25786u.valueAt(i11)).B(this.H, iKeyAt - this.O);
            }
        }
        x9.g gVarC = this.H.c(0);
        int iD = this.H.d() - 1;
        x9.g gVarC2 = this.H.c(iD);
        long jF = this.H.f(iD);
        long jB0 = p0.B0(p0.b0(this.L));
        long jL = L(gVarC, this.H.f(0), jB0);
        long jK = K(gVarC2, jF, jB0);
        boolean z11 = this.H.f78064d && !P(gVarC2);
        if (z11) {
            long j13 = this.H.f78066f;
            if (j13 != C.TIME_UNSET) {
                jL = Math.max(jL, jK - p0.B0(j13));
            }
        }
        long j14 = jK - jL;
        x9.c cVar = this.H;
        if (cVar.f78064d) {
            com.google.android.exoplayer2.util.a.g(cVar.f78061a != C.TIME_UNSET);
            long jB1 = (jB0 - p0.B0(this.H.f78061a)) - jL;
            i0(jB1, j14);
            long jE1 = this.H.f78061a + p0.e1(jL);
            long jB2 = jB1 - p0.B0(this.E.f27762a);
            long jMin = Math.min(5000000L, j14 / 2);
            j11 = jE1;
            j12 = jB2 < jMin ? jMin : jB2;
        } else {
            j11 = C.TIME_UNSET;
            j12 = 0;
        }
        long jB3 = jL - p0.B0(gVarC.f78097b);
        x9.c cVar2 = this.H;
        C(new b(cVar2.f78061a, j11, this.L, this.O, jB3, j14, j12, cVar2, this.f25773h, cVar2.f78064d ? this.E : null));
        if (this.f25774i) {
            return;
        }
        this.D.removeCallbacks(this.f25788w);
        if (z11) {
            this.D.postDelayed(this.f25788w, M(this.H, p0.b0(this.L)));
        }
        if (this.I) {
            h0();
            return;
        }
        if (z10) {
            x9.c cVar3 = this.H;
            if (cVar3.f78064d) {
                long j15 = cVar3.f78065e;
                if (j15 != C.TIME_UNSET) {
                    if (j15 == 0) {
                        j15 = 5000;
                    }
                    f0(Math.max(0L, (this.J + j15) - SystemClock.elapsedRealtime()));
                }
            }
        }
    }

    private void c0(x9.o oVar) {
        String str = oVar.f78151a;
        if (p0.c(str, "urn:mpeg:dash:utc:direct:2014") || p0.c(str, "urn:mpeg:dash:utc:direct:2012")) {
            d0(oVar);
            return;
        }
        if (p0.c(str, "urn:mpeg:dash:utc:http-iso:2014") || p0.c(str, "urn:mpeg:dash:utc:http-iso:2012")) {
            e0(oVar, new d());
            return;
        }
        if (p0.c(str, "urn:mpeg:dash:utc:http-xsdate:2014") || p0.c(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
            e0(oVar, new h(null));
        } else if (p0.c(str, "urn:mpeg:dash:utc:ntp:2014") || p0.c(str, "urn:mpeg:dash:utc:ntp:2012")) {
            R();
        } else {
            Z(new IOException("Unsupported UTC timing scheme"));
        }
    }

    private void d0(x9.o oVar) {
        try {
            a0(p0.I0(oVar.f78152b) - this.K);
        } catch (ParserException e11) {
            Z(e11);
        }
    }

    private void e0(x9.o oVar, b0.a aVar) {
        g0(new b0(this.f25791z, Uri.parse(oVar.f78152b), 5, aVar), new g(this, null), 1);
    }

    private void f0(long j11) {
        this.D.postDelayed(this.f25787v, j11);
    }

    private void g0(b0 b0Var, Loader.b bVar, int i11) {
        this.f25782q.z(new t9.h(b0Var.f27271a, b0Var.f27272b, this.A.m(b0Var, bVar, i11)), b0Var.f27273c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0() {
        Uri uri;
        this.D.removeCallbacks(this.f25787v);
        if (this.A.h()) {
            return;
        }
        if (this.A.i()) {
            this.I = true;
            return;
        }
        synchronized (this.f25785t) {
            uri = this.F;
        }
        this.I = false;
        g0(new b0(this.f25791z, uri, 4, this.f25783r), this.f25784s, this.f25779n.a(4));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0039  */
    /* JADX WARN: Code duplicated, block: B:19:0x0046  */
    /* JADX WARN: Code duplicated, block: B:22:0x0056  */
    /* JADX WARN: Code duplicated, block: B:23:0x005b  */
    /* JADX WARN: Code duplicated, block: B:25:0x0061  */
    /* JADX WARN: Code duplicated, block: B:27:0x0067  */
    /* JADX WARN: Code duplicated, block: B:30:0x006f  */
    /* JADX WARN: Code duplicated, block: B:34:0x0079  */
    /* JADX WARN: Code duplicated, block: B:36:0x007f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0085  */
    /* JADX WARN: Code duplicated, block: B:39:0x0087  */
    /* JADX WARN: Code duplicated, block: B:42:0x008e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0094  */
    /* JADX WARN: Code duplicated, block: B:48:0x0099  */
    /* JADX WARN: Code duplicated, block: B:52:0x00be  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:59:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00dd  */
    private void i0(long j11, long j12) {
        long j13;
        long jMin;
        long jE1;
        long j14;
        long jR;
        long j15;
        l lVar;
        long j16;
        long jR2;
        float f11;
        float f12;
        l lVar2;
        l lVar3;
        l lVar4;
        x9.c cVar;
        l lVar5;
        long j17;
        long jE2 = p0.e1(j11);
        long j18 = this.f25773h.f27711d.f27764c;
        if (j18 == C.TIME_UNSET) {
            l lVar6 = this.H.f78070j;
            if (lVar6 != null) {
                long j19 = lVar6.f78143c;
                if (j19 != C.TIME_UNSET) {
                    jMin = Math.min(jE2, j19);
                }
                jE1 = p0.e1(j11 - j12);
                if (jE1 < 0 && j13 > 0) {
                    jE1 = 0;
                }
                j14 = this.H.f78063c;
                if (j14 != C.TIME_UNSET) {
                    jE1 = Math.min(jE1 + j14, jE2);
                }
                jR = jE1;
                j15 = this.f25773h.f27711d.f27763b;
                if (j15 != C.TIME_UNSET) {
                    jR = p0.r(j15, jR, jE2);
                } else {
                    lVar = this.H.f78070j;
                    if (lVar != null) {
                        j16 = lVar.f78142b;
                        if (j16 != C.TIME_UNSET) {
                            jR = p0.r(j16, jR, jE2);
                        }
                    }
                }
                if (jR > j13) {
                    j13 = jR;
                }
                jR2 = this.E.f27762a;
                if (jR2 == C.TIME_UNSET) {
                    cVar = this.H;
                    lVar5 = cVar.f78070j;
                    if (lVar5 != null) {
                        j17 = lVar5.f78141a;
                        if (j17 != C.TIME_UNSET) {
                            jR2 = j17;
                        } else {
                            jR2 = cVar.f78067g;
                            if (jR2 == C.TIME_UNSET) {
                                jR2 = this.f25781p;
                            }
                        }
                    } else {
                        jR2 = cVar.f78067g;
                        if (jR2 == C.TIME_UNSET) {
                            jR2 = this.f25781p;
                        }
                    }
                }
                if (jR2 < jR) {
                    jR2 = jR;
                }
                if (jR2 > j13) {
                    jR2 = p0.r(p0.e1(j11 - Math.min(5000000L, j12 / 2)), jR, j13);
                }
                v1.g gVar = this.f25773h.f27711d;
                f11 = gVar.f27765d;
                if (f11 == -3.4028235E38f) {
                    lVar4 = this.H.f78070j;
                    if (lVar4 != null) {
                        f11 = lVar4.f78144d;
                    } else {
                        f11 = -3.4028235E38f;
                    }
                }
                f12 = gVar.f27766e;
                if (f12 == -3.4028235E38f) {
                    lVar3 = this.H.f78070j;
                    if (lVar3 != null) {
                        f12 = lVar3.f78145e;
                    } else {
                        f12 = -3.4028235E38f;
                    }
                }
                if (f11 == -3.4028235E38f && f12 == -3.4028235E38f && ((lVar2 = this.H.f78070j) == null || lVar2.f78141a == C.TIME_UNSET)) {
                    f11 = 1.0f;
                    f12 = 1.0f;
                }
                this.E = new v1.g.a().k(jR2).i(jR).g(j13).j(f11).h(f12).f();
            }
            j13 = jE2;
            jE1 = p0.e1(j11 - j12);
            if (jE1 < 0) {
                jE1 = 0;
            }
            j14 = this.H.f78063c;
            if (j14 != C.TIME_UNSET) {
                jE1 = Math.min(jE1 + j14, jE2);
            }
            jR = jE1;
            j15 = this.f25773h.f27711d.f27763b;
            if (j15 != C.TIME_UNSET) {
                jR = p0.r(j15, jR, jE2);
            } else {
                lVar = this.H.f78070j;
                if (lVar != null) {
                    j16 = lVar.f78142b;
                    if (j16 != C.TIME_UNSET) {
                        jR = p0.r(j16, jR, jE2);
                    }
                }
            }
            if (jR > j13) {
                j13 = jR;
            }
            jR2 = this.E.f27762a;
            if (jR2 == C.TIME_UNSET) {
                cVar = this.H;
                lVar5 = cVar.f78070j;
                if (lVar5 != null) {
                    j17 = lVar5.f78141a;
                    if (j17 != C.TIME_UNSET) {
                        jR2 = j17;
                    } else {
                        jR2 = cVar.f78067g;
                        if (jR2 == C.TIME_UNSET) {
                            jR2 = this.f25781p;
                        }
                    }
                } else {
                    jR2 = cVar.f78067g;
                    if (jR2 == C.TIME_UNSET) {
                        jR2 = this.f25781p;
                    }
                }
            }
            if (jR2 < jR) {
                jR2 = jR;
            }
            if (jR2 > j13) {
                jR2 = p0.r(p0.e1(j11 - Math.min(5000000L, j12 / 2)), jR, j13);
            }
            v1.g gVar2 = this.f25773h.f27711d;
            f11 = gVar2.f27765d;
            if (f11 == -3.4028235E38f) {
                lVar4 = this.H.f78070j;
                if (lVar4 != null) {
                    f11 = lVar4.f78144d;
                } else {
                    f11 = -3.4028235E38f;
                }
            }
            f12 = gVar2.f27766e;
            if (f12 == -3.4028235E38f) {
                lVar3 = this.H.f78070j;
                if (lVar3 != null) {
                    f12 = lVar3.f78145e;
                } else {
                    f12 = -3.4028235E38f;
                }
            }
            if (f11 == -3.4028235E38f) {
                f11 = 1.0f;
                f12 = 1.0f;
            }
            this.E = new v1.g.a().k(jR2).i(jR).g(j13).j(f11).h(f12).f();
        }
        jMin = Math.min(jE2, j18);
        j13 = jMin;
        jE1 = p0.e1(j11 - j12);
        if (jE1 < 0) {
            jE1 = 0;
        }
        j14 = this.H.f78063c;
        if (j14 != C.TIME_UNSET) {
            jE1 = Math.min(jE1 + j14, jE2);
        }
        jR = jE1;
        j15 = this.f25773h.f27711d.f27763b;
        if (j15 != C.TIME_UNSET) {
            jR = p0.r(j15, jR, jE2);
        } else {
            lVar = this.H.f78070j;
            if (lVar != null) {
                j16 = lVar.f78142b;
                if (j16 != C.TIME_UNSET) {
                    jR = p0.r(j16, jR, jE2);
                }
            }
        }
        if (jR > j13) {
            j13 = jR;
        }
        jR2 = this.E.f27762a;
        if (jR2 == C.TIME_UNSET) {
            cVar = this.H;
            lVar5 = cVar.f78070j;
            if (lVar5 != null) {
                j17 = lVar5.f78141a;
                if (j17 != C.TIME_UNSET) {
                    jR2 = j17;
                } else {
                    jR2 = cVar.f78067g;
                    if (jR2 == C.TIME_UNSET) {
                        jR2 = this.f25781p;
                    }
                }
            } else {
                jR2 = cVar.f78067g;
                if (jR2 == C.TIME_UNSET) {
                    jR2 = this.f25781p;
                }
            }
        }
        if (jR2 < jR) {
            jR2 = jR;
        }
        if (jR2 > j13) {
            jR2 = p0.r(p0.e1(j11 - Math.min(5000000L, j12 / 2)), jR, j13);
        }
        v1.g gVar3 = this.f25773h.f27711d;
        f11 = gVar3.f27765d;
        if (f11 == -3.4028235E38f) {
            lVar4 = this.H.f78070j;
            if (lVar4 != null) {
                f11 = lVar4.f78144d;
            } else {
                f11 = -3.4028235E38f;
            }
        }
        f12 = gVar3.f27766e;
        if (f12 == -3.4028235E38f) {
            lVar3 = this.H.f78070j;
            if (lVar3 != null) {
                f12 = lVar3.f78145e;
            } else {
                f12 = -3.4028235E38f;
            }
        }
        if (f11 == -3.4028235E38f) {
            f11 = 1.0f;
            f12 = 1.0f;
        }
        this.E = new v1.g.a().k(jR2).i(jR).g(j13).j(f11).h(f12).f();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void B(k0 k0Var) {
        this.B = k0Var;
        this.f25778m.prepare();
        this.f25778m.b(Looper.myLooper(), z());
        if (this.f25774i) {
            b0(false);
            return;
        }
        this.f25791z = this.f25775j.createDataSource();
        this.A = new Loader("DashMediaSource");
        this.D = p0.w();
        h0();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void D() {
        this.I = false;
        this.f25791z = null;
        Loader loader = this.A;
        if (loader != null) {
            loader.k();
            this.A = null;
        }
        this.J = 0L;
        this.K = 0L;
        this.H = this.f25774i ? this.H : null;
        this.F = this.G;
        this.C = null;
        Handler handler = this.D;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.D = null;
        }
        this.L = C.TIME_UNSET;
        this.M = 0;
        this.N = C.TIME_UNSET;
        this.O = 0;
        this.f25786u.clear();
        this.f25780o.i();
        this.f25778m.release();
    }

    void S(long j11) {
        long j12 = this.N;
        if (j12 == C.TIME_UNSET || j12 < j11) {
            this.N = j11;
        }
    }

    void T() {
        this.D.removeCallbacks(this.f25788w);
        h0();
    }

    void U(b0 b0Var, long j11, long j12) {
        t9.h hVar = new t9.h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
        this.f25779n.b(b0Var.f27271a);
        this.f25782q.q(hVar, b0Var.f27273c);
    }

    void V(b0 b0Var, long j11, long j12) {
        t9.h hVar = new t9.h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
        this.f25779n.b(b0Var.f27271a);
        this.f25782q.t(hVar, b0Var.f27273c);
        x9.c cVar = (x9.c) b0Var.c();
        x9.c cVar2 = this.H;
        int iD = cVar2 == null ? 0 : cVar2.d();
        long j13 = cVar.c(0).f78097b;
        int i11 = 0;
        while (i11 < iD && this.H.c(i11).f78097b < j13) {
            i11++;
        }
        if (cVar.f78064d) {
            if (iD - i11 > cVar.d()) {
                s.i("DashMediaSource", "Loaded out of sync manifest");
            } else {
                long j14 = this.N;
                if (j14 != C.TIME_UNSET) {
                    long j15 = cVar.f78068h;
                    if (1000 * j15 <= j14) {
                        StringBuilder sb2 = new StringBuilder(73);
                        sb2.append("Loaded stale dynamic manifest: ");
                        sb2.append(j15);
                        sb2.append(", ");
                        sb2.append(j14);
                        s.i("DashMediaSource", sb2.toString());
                    }
                }
                this.M = 0;
            }
            int i12 = this.M;
            this.M = i12 + 1;
            if (i12 < this.f25779n.a(b0Var.f27273c)) {
                f0(N());
                return;
            } else {
                this.C = new DashManifestStaleException();
                return;
            }
        }
        this.H = cVar;
        this.I = cVar.f78064d & this.I;
        this.J = j11 - j12;
        this.K = j11;
        synchronized (this.f25785t) {
            try {
                if (b0Var.f27272b.f27437a == this.F) {
                    Uri uriD = this.H.f78071k;
                    if (uriD == null) {
                        uriD = b0Var.d();
                    }
                    this.F = uriD;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (iD != 0) {
            this.O += i11;
            b0(true);
            return;
        }
        x9.c cVar3 = this.H;
        if (!cVar3.f78064d) {
            b0(true);
            return;
        }
        x9.o oVar = cVar3.f78069i;
        if (oVar != null) {
            c0(oVar);
        } else {
            R();
        }
    }

    Loader.c W(b0 b0Var, long j11, long j12, IOException iOException, int i11) {
        t9.h hVar = new t9.h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
        long jC = this.f25779n.c(new z.c(hVar, new i(b0Var.f27273c), iOException, i11));
        Loader.c cVarG = jC == C.TIME_UNSET ? Loader.f27247g : Loader.g(false, jC);
        boolean zC = cVarG.c();
        this.f25782q.x(hVar, b0Var.f27273c, iOException, !zC);
        if (!zC) {
            this.f25779n.b(b0Var.f27271a);
        }
        return cVarG;
    }

    void X(b0 b0Var, long j11, long j12) {
        t9.h hVar = new t9.h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a());
        this.f25779n.b(b0Var.f27271a);
        this.f25782q.t(hVar, b0Var.f27273c);
        a0(((Long) b0Var.c()).longValue() - j11);
    }

    Loader.c Y(b0 b0Var, long j11, long j12, IOException iOException) {
        this.f25782q.x(new t9.h(b0Var.f27271a, b0Var.f27272b, b0Var.d(), b0Var.b(), j11, j12, b0Var.a()), b0Var.f27273c, iOException, true);
        this.f25779n.b(b0Var.f27271a);
        Z(iOException);
        return Loader.f27246f;
    }

    @Override // com.google.android.exoplayer2.source.o
    public v1 a() {
        return this.f25773h;
    }

    @Override // com.google.android.exoplayer2.source.o
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11) {
        int iIntValue = ((Integer) bVar.f76114a).intValue() - this.O;
        p.a aVarW = w(bVar, this.H.c(iIntValue).f78097b);
        com.google.android.exoplayer2.source.dash.b bVar3 = new com.google.android.exoplayer2.source.dash.b(iIntValue + this.O, this.H, this.f25780o, iIntValue, this.f25776k, this.B, this.f25778m, t(bVar), this.f25779n, aVarW, this.L, this.f25790y, bVar2, this.f25777l, this.f25789x, z());
        this.f25786u.put(bVar3.f25817a, bVar3);
        return bVar3;
    }

    @Override // com.google.android.exoplayer2.source.o
    public void k(n nVar) {
        com.google.android.exoplayer2.source.dash.b bVar = (com.google.android.exoplayer2.source.dash.b) nVar;
        bVar.x();
        this.f25786u.remove(bVar.f25817a);
    }

    @Override // com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() {
        this.f25790y.maybeThrowError();
    }
}
