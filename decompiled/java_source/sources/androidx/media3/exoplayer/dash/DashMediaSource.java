package androidx.media3.exoplayer.dash;

import a2.l;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.media3.common.ParserException;
import androidx.media3.common.e0;
import androidx.media3.common.t;
import androidx.media3.common.u;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.drm.j;
import androidx.media3.exoplayer.drm.w;
import androidx.media3.exoplayer.source.r;
import androidx.media3.exoplayer.source.s;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.k;
import androidx.media3.exoplayer.upstream.m;
import androidx.media3.exoplayer.upstream.o;
import androidx.media3.exoplayer.upstream.p;
import androidx.media3.exoplayer.upstream.q;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g2.i;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import w1.n;

/* JADX INFO: loaded from: classes2.dex */
public final class DashMediaSource extends androidx.media3.exoplayer.source.a {
    private Loader A;
    private n B;
    private IOException C;
    private Handler D;
    private t.g E;
    private Uri F;
    private Uri G;
    private a2.c H;
    private boolean I;
    private long J;
    private long K;
    private long L;
    private int M;
    private long N;
    private int O;
    private t P;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f11358h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.media3.datasource.a.InterfaceC0091a f11359i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.media3.exoplayer.dash.a.InterfaceC0095a f11360j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final g2.e f11361k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.media3.exoplayer.drm.t f11362l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final m f11363m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final z1.b f11364n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f11365o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f11366p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final s.a f11367q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final q.a f11368r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final e f11369s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Object f11370t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final SparseArray f11371u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Runnable f11372v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Runnable f11373w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final androidx.media3.exoplayer.dash.f.b f11374x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final p f11375y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private androidx.media3.datasource.a f11376z;

    public static final class Factory implements r.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.media3.exoplayer.dash.a.InterfaceC0095a f11377a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.media3.datasource.a.InterfaceC0091a f11378b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private w f11379c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private g2.e f11380d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private m f11381e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f11382f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f11383g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private q.a f11384h;

        public Factory(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
            this(new androidx.media3.exoplayer.dash.d.a(interfaceC0091a), interfaceC0091a);
        }

        public Factory(androidx.media3.exoplayer.dash.a.InterfaceC0095a interfaceC0095a, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
            this.f11377a = (androidx.media3.exoplayer.dash.a.InterfaceC0095a) androidx.media3.common.util.a.e(interfaceC0095a);
            this.f11378b = interfaceC0091a;
            this.f11379c = new j();
            this.f11381e = new k();
            this.f11382f = 30000L;
            this.f11383g = 5000000L;
            this.f11380d = new g2.f();
            c(true);
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public DashMediaSource d(t tVar) {
            androidx.media3.common.util.a.e(tVar.f10211b);
            q.a dVar = this.f11384h;
            if (dVar == null) {
                dVar = new a2.d();
            }
            List list = tVar.f10211b.f10306d;
            return new DashMediaSource(tVar, null, this.f11378b, !list.isEmpty() ? new androidx.media3.exoplayer.offline.r(dVar, list) : dVar, this.f11377a, this.f11380d, null, this.f11379c.a(tVar), this.f11381e, this.f11382f, this.f11383g, null);
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Factory c(boolean z10) {
            this.f11377a.c(z10);
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Factory b(int i11) {
            this.f11377a.b(i11);
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public Factory e(w wVar) {
            this.f11379c = (w) androidx.media3.common.util.a.f(wVar, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public Factory f(m mVar) {
            this.f11381e = (m) androidx.media3.common.util.a.f(mVar, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // androidx.media3.exoplayer.source.r.a
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public Factory a(i3.s.a aVar) {
            this.f11377a.a((i3.s.a) androidx.media3.common.util.a.e(aVar));
            return this;
        }
    }

    class a implements androidx.media3.exoplayer.util.d.b {
        a() {
        }

        @Override // androidx.media3.exoplayer.util.d.b
        public void a(IOException iOException) {
            DashMediaSource.this.Y(iOException);
        }

        @Override // androidx.media3.exoplayer.util.d.b
        public void onInitialized() {
            DashMediaSource.this.Z(androidx.media3.exoplayer.util.d.i());
        }
    }

    private static final class b extends e0 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long f11386e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f11387f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long f11388g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f11389h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final long f11390i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final long f11391j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final long f11392k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final a2.c f11393l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final t f11394m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final t.g f11395n;

        public b(long j11, long j12, long j13, int i11, long j14, long j15, long j16, a2.c cVar, t tVar, t.g gVar) {
            androidx.media3.common.util.a.g(cVar.f48d == (gVar != null));
            this.f11386e = j11;
            this.f11387f = j12;
            this.f11388g = j13;
            this.f11389h = i11;
            this.f11390i = j14;
            this.f11391j = j15;
            this.f11392k = j16;
            this.f11393l = cVar;
            this.f11394m = tVar;
            this.f11395n = gVar;
        }

        private long s(long j11) {
            z1.e eVarK;
            long j12 = this.f11392k;
            if (!t(this.f11393l)) {
                return j12;
            }
            if (j11 > 0) {
                j12 += j11;
                if (j12 > this.f11391j) {
                    return C.TIME_UNSET;
                }
            }
            long j13 = this.f11390i + j12;
            long jF = this.f11393l.f(0);
            int i11 = 0;
            while (i11 < this.f11393l.d() - 1 && j13 >= jF) {
                j13 -= jF;
                i11++;
                jF = this.f11393l.f(i11);
            }
            a2.g gVarC = this.f11393l.c(i11);
            int iA = gVarC.a(2);
            return (iA == -1 || (eVarK = ((a2.j) ((a2.a) gVarC.f83c.get(iA)).f37c.get(0)).k()) == null || eVarK.f(jF) == 0) ? j12 : (j12 + eVarK.getTimeUs(eVarK.e(j13, jF))) - j13;
        }

        private static boolean t(a2.c cVar) {
            return cVar.f48d && cVar.f49e != C.TIME_UNSET && cVar.f46b == C.TIME_UNSET;
        }

        @Override // androidx.media3.common.e0
        public int b(Object obj) {
            int iIntValue;
            if ((obj instanceof Integer) && (iIntValue = ((Integer) obj).intValue() - this.f11389h) >= 0 && iIntValue < i()) {
                return iIntValue;
            }
            return -1;
        }

        @Override // androidx.media3.common.e0
        public e0.b g(int i11, e0.b bVar, boolean z10) {
            androidx.media3.common.util.a.c(i11, 0, i());
            return bVar.t(z10 ? this.f11393l.c(i11).f81a : null, z10 ? Integer.valueOf(this.f11389h + i11) : null, 0, this.f11393l.f(i11), a1.R0(this.f11393l.c(i11).f82b - this.f11393l.c(0).f82b) - this.f11390i);
        }

        @Override // androidx.media3.common.e0
        public int i() {
            return this.f11393l.d();
        }

        @Override // androidx.media3.common.e0
        public Object m(int i11) {
            androidx.media3.common.util.a.c(i11, 0, i());
            return Integer.valueOf(this.f11389h + i11);
        }

        @Override // androidx.media3.common.e0
        public e0.c o(int i11, e0.c cVar, long j11) {
            androidx.media3.common.util.a.c(i11, 0, 1);
            long jS = s(j11);
            Object obj = e0.c.f9941q;
            t tVar = this.f11394m;
            a2.c cVar2 = this.f11393l;
            return cVar.g(obj, tVar, cVar2, this.f11386e, this.f11387f, this.f11388g, true, t(cVar2), this.f11395n, jS, this.f11391j, 0, i() - 1, this.f11390i);
        }

        @Override // androidx.media3.common.e0
        public int p() {
            return 1;
        }
    }

    private final class c implements androidx.media3.exoplayer.dash.f.b {
        private c() {
        }

        /* synthetic */ c(DashMediaSource dashMediaSource, a aVar) {
            this();
        }

        @Override // androidx.media3.exoplayer.dash.f.b
        public void a(long j11) {
            DashMediaSource.this.Q(j11);
        }

        @Override // androidx.media3.exoplayer.dash.f.b
        public void b() {
            DashMediaSource.this.R();
        }
    }

    static final class d implements q.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Pattern f11397a = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        d() {
        }

        @Override // androidx.media3.exoplayer.upstream.q.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            String line = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8)).readLine();
            try {
                Matcher matcher = f11397a.matcher(line);
                if (!matcher.matches()) {
                    throw ParserException.createForMalformedManifest("Couldn't parse timestamp: " + line, null);
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

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void q(q qVar, long j11, long j12, boolean z10) {
            DashMediaSource.this.S(qVar, j11, j12);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void p(q qVar, long j11, long j12) {
            DashMediaSource.this.T(qVar, j11, j12);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Loader.c k(q qVar, long j11, long j12, IOException iOException, int i11) {
            return DashMediaSource.this.U(qVar, j11, j12, iOException, i11);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void o(q qVar, long j11, long j12, int i11) {
            DashMediaSource.this.V(qVar, j11, j12, i11);
        }
    }

    final class f implements p {
        f() {
        }

        private void a() throws IOException {
            if (DashMediaSource.this.C != null) {
                throw DashMediaSource.this.C;
            }
        }

        @Override // androidx.media3.exoplayer.upstream.p
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

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void q(q qVar, long j11, long j12, boolean z10) {
            DashMediaSource.this.S(qVar, j11, j12);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void p(q qVar, long j11, long j12) {
            DashMediaSource.this.W(qVar, j11, j12);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Loader.c k(q qVar, long j11, long j12, IOException iOException, int i11) {
            return DashMediaSource.this.X(qVar, j11, j12, iOException);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        public /* synthetic */ void o(Loader.d dVar, long j11, long j12, int i11) {
            o.a(this, dVar, j11, j12, i11);
        }
    }

    private static final class h implements q.a {
        private h() {
        }

        /* synthetic */ h(a aVar) {
            this();
        }

        @Override // androidx.media3.exoplayer.upstream.q.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long parse(Uri uri, InputStream inputStream) {
            return Long.valueOf(a1.Z0(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }
    }

    static {
        u.a("media3.exoplayer.dash");
    }

    private DashMediaSource(t tVar, a2.c cVar, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, q.a aVar, androidx.media3.exoplayer.dash.a.InterfaceC0095a interfaceC0095a, g2.e eVar, androidx.media3.exoplayer.upstream.f fVar, androidx.media3.exoplayer.drm.t tVar2, m mVar, long j11, long j12) {
        this.P = tVar;
        this.E = tVar.f10213d;
        this.F = ((t.h) androidx.media3.common.util.a.e(tVar.f10211b)).f10303a;
        this.G = tVar.f10211b.f10303a;
        this.H = cVar;
        this.f11359i = interfaceC0091a;
        this.f11368r = aVar;
        this.f11360j = interfaceC0095a;
        this.f11362l = tVar2;
        this.f11363m = mVar;
        this.f11365o = j11;
        this.f11366p = j12;
        this.f11361k = eVar;
        this.f11364n = new z1.b();
        boolean z10 = cVar != null;
        this.f11358h = z10;
        a aVar2 = null;
        this.f11367q = u(null);
        this.f11370t = new Object();
        this.f11371u = new SparseArray();
        this.f11374x = new c(this, aVar2);
        this.N = C.TIME_UNSET;
        this.L = C.TIME_UNSET;
        if (!z10) {
            this.f11369s = new e(this, aVar2);
            this.f11375y = new f();
            this.f11372v = new Runnable() { // from class: z1.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f79160a.g0();
                }
            };
            this.f11373w = new Runnable() { // from class: z1.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f79161a.O();
                }
            };
            return;
        }
        androidx.media3.common.util.a.g(true ^ cVar.f48d);
        this.f11369s = null;
        this.f11372v = null;
        this.f11373w = null;
        this.f11375y = new p.a();
    }

    /* synthetic */ DashMediaSource(t tVar, a2.c cVar, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a, q.a aVar, androidx.media3.exoplayer.dash.a.InterfaceC0095a interfaceC0095a, g2.e eVar, androidx.media3.exoplayer.upstream.f fVar, androidx.media3.exoplayer.drm.t tVar2, m mVar, long j11, long j12, a aVar2) {
        this(tVar, cVar, interfaceC0091a, aVar, interfaceC0095a, eVar, fVar, tVar2, mVar, j11, j12);
    }

    private static long I(a2.g gVar, long j11, long j12) {
        long jR0 = a1.R0(gVar.f82b);
        boolean zM = M(gVar);
        long jMin = Long.MAX_VALUE;
        for (int i11 = 0; i11 < gVar.f83c.size(); i11++) {
            a2.a aVar = (a2.a) gVar.f83c.get(i11);
            List list = aVar.f37c;
            int i12 = aVar.f36b;
            boolean z10 = (i12 == 1 || i12 == 2) ? false : true;
            if ((!zM || !z10) && !list.isEmpty()) {
                z1.e eVarK = ((a2.j) list.get(0)).k();
                if (eVarK == null) {
                    return jR0 + j11;
                }
                long jI = eVarK.i(j11, j12);
                if (jI == 0) {
                    return jR0;
                }
                long jB = (eVarK.b(j11, j12) + jI) - 1;
                jMin = Math.min(jMin, eVarK.a(jB, j11) + eVarK.getTimeUs(jB) + jR0);
            }
        }
        return jMin;
    }

    private static long J(a2.g gVar, long j11, long j12) {
        long jR0 = a1.R0(gVar.f82b);
        boolean zM = M(gVar);
        long jMax = jR0;
        for (int i11 = 0; i11 < gVar.f83c.size(); i11++) {
            a2.a aVar = (a2.a) gVar.f83c.get(i11);
            List list = aVar.f37c;
            int i12 = aVar.f36b;
            boolean z10 = (i12 == 1 || i12 == 2) ? false : true;
            if ((!zM || !z10) && !list.isEmpty()) {
                z1.e eVarK = ((a2.j) list.get(0)).k();
                if (eVarK == null || eVarK.i(j11, j12) == 0) {
                    return jR0;
                }
                jMax = Math.max(jMax, eVarK.getTimeUs(eVarK.b(j11, j12)) + jR0);
            }
        }
        return jMax;
    }

    private static long K(a2.c cVar, long j11) {
        z1.e eVarK;
        int iD = cVar.d() - 1;
        a2.g gVarC = cVar.c(iD);
        long jR0 = a1.R0(gVarC.f82b);
        long jF = cVar.f(iD);
        long jR1 = a1.R0(j11);
        long jR2 = a1.R0(cVar.f45a);
        long jR3 = a1.R0(cVar.f49e);
        if (jR3 == C.TIME_UNSET || jR3 >= 5000000) {
            jR3 = 5000000;
        }
        for (int i11 = 0; i11 < gVarC.f83c.size(); i11++) {
            List list = ((a2.a) gVarC.f83c.get(i11)).f37c;
            if (!list.isEmpty() && (eVarK = ((a2.j) list.get(0)).k()) != null) {
                long jC = ((jR2 + jR0) + eVarK.c(jF, jR1)) - jR1;
                if (jC > 0 && (jC < jR3 - 100000 || (jC > jR3 && jC < jR3 + 100000))) {
                    jR3 = jC;
                }
            }
        }
        return com.google.common.math.f.c(jR3, 1000L, RoundingMode.CEILING);
    }

    private long L() {
        return Math.min((this.M - 1) * 1000, 5000);
    }

    private static boolean M(a2.g gVar) {
        for (int i11 = 0; i11 < gVar.f83c.size(); i11++) {
            int i12 = ((a2.a) gVar.f83c.get(i11)).f36b;
            if (i12 == 1 || i12 == 2) {
                return true;
            }
        }
        return false;
    }

    private static boolean N(a2.g gVar) {
        for (int i11 = 0; i11 < gVar.f83c.size(); i11++) {
            z1.e eVarK = ((a2.j) ((a2.a) gVar.f83c.get(i11)).f37c.get(0)).k();
            if (eVarK == null || eVarK.g()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O() {
        a0(false);
    }

    private void P() {
        androidx.media3.exoplayer.util.d.l(this.A, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(IOException iOException) {
        androidx.media3.common.util.u.d("DashMediaSource", "Failed to resolve time offset.", iOException);
        this.L = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        a0(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(long j11) {
        this.L = j11;
        a0(true);
    }

    private void a0(boolean z10) {
        long j11;
        long j12;
        for (int i11 = 0; i11 < this.f11371u.size(); i11++) {
            int iKeyAt = this.f11371u.keyAt(i11);
            if (iKeyAt >= this.O) {
                ((androidx.media3.exoplayer.dash.c) this.f11371u.valueAt(i11)).G(this.H, iKeyAt - this.O);
            }
        }
        a2.g gVarC = this.H.c(0);
        int iD = this.H.d() - 1;
        a2.g gVarC2 = this.H.c(iD);
        long jF = this.H.f(iD);
        long jR0 = a1.R0(a1.h0(this.L));
        long J = J(gVarC, this.H.f(0), jR0);
        long jI = I(gVarC2, jF, jR0);
        boolean z11 = this.H.f48d && !N(gVarC2);
        if (z11) {
            long j13 = this.H.f50f;
            if (j13 != C.TIME_UNSET) {
                J = Math.max(J, jI - a1.R0(j13));
            }
        }
        long j14 = jI - J;
        a2.c cVar = this.H;
        if (cVar.f48d) {
            androidx.media3.common.util.a.g(cVar.f45a != C.TIME_UNSET);
            long jR1 = (jR0 - a1.R0(this.H.f45a)) - J;
            h0(jR1, j14);
            long jY1 = this.H.f45a + a1.y1(J);
            long jR2 = jR1 - a1.R0(this.E.f10285a);
            long jMin = Math.min(this.f11366p, j14 / 2);
            j11 = jY1;
            j12 = jR2 < jMin ? jMin : jR2;
        } else {
            j11 = C.TIME_UNSET;
            j12 = 0;
        }
        long jR3 = J - a1.R0(gVarC.f82b);
        a2.c cVar2 = this.H;
        A(new b(cVar2.f45a, j11, this.L, this.O, jR3, j14, j12, cVar2, a(), this.H.f48d ? this.E : null));
        if (this.f11358h) {
            return;
        }
        this.D.removeCallbacks(this.f11373w);
        if (z11) {
            this.D.postDelayed(this.f11373w, K(this.H, a1.h0(this.L)));
        }
        if (this.I) {
            g0();
            return;
        }
        if (z10) {
            a2.c cVar3 = this.H;
            if (cVar3.f48d) {
                long j15 = cVar3.f49e;
                if (j15 != C.TIME_UNSET) {
                    if (j15 == 0) {
                        j15 = 5000;
                    }
                    e0(Math.max(0L, (this.J + j15) - SystemClock.elapsedRealtime()));
                }
            }
        }
    }

    private void b0(a2.o oVar) {
        String str = oVar.f135a;
        if (Objects.equals(str, "urn:mpeg:dash:utc:direct:2014") || Objects.equals(str, "urn:mpeg:dash:utc:direct:2012")) {
            c0(oVar);
            return;
        }
        if (Objects.equals(str, "urn:mpeg:dash:utc:http-iso:2014") || Objects.equals(str, "urn:mpeg:dash:utc:http-iso:2012")) {
            d0(oVar, new d());
            return;
        }
        if (Objects.equals(str, "urn:mpeg:dash:utc:http-xsdate:2014") || Objects.equals(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
            d0(oVar, new h(null));
        } else if (Objects.equals(str, "urn:mpeg:dash:utc:ntp:2014") || Objects.equals(str, "urn:mpeg:dash:utc:ntp:2012")) {
            P();
        } else {
            Y(new IOException("Unsupported UTC timing scheme"));
        }
    }

    private void c0(a2.o oVar) {
        try {
            Z(a1.Z0(oVar.f136b) - this.K);
        } catch (ParserException e11) {
            Y(e11);
        }
    }

    private void d0(a2.o oVar, q.a aVar) {
        f0(new q(this.f11376z, Uri.parse(oVar.f136b), 5, aVar), new g(this, null), 1);
    }

    private void e0(long j11) {
        this.D.postDelayed(this.f11372v, j11);
    }

    private void f0(q qVar, Loader.b bVar, int i11) {
        this.A.m(qVar, bVar, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0() {
        Uri uri;
        this.D.removeCallbacks(this.f11372v);
        if (this.A.h()) {
            return;
        }
        if (this.A.i()) {
            this.I = true;
            return;
        }
        synchronized (this.f11370t) {
            uri = this.F;
        }
        this.I = false;
        f0(new q(this.f11376z, new w1.h.b().i(uri).b(1).a(), 4, this.f11368r), this.f11369s, this.f11363m.a(4));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003b  */
    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    /* JADX WARN: Code duplicated, block: B:23:0x0059  */
    /* JADX WARN: Code duplicated, block: B:25:0x005f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0065  */
    /* JADX WARN: Code duplicated, block: B:30:0x006d  */
    /* JADX WARN: Code duplicated, block: B:34:0x0077  */
    /* JADX WARN: Code duplicated, block: B:36:0x007d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0083  */
    /* JADX WARN: Code duplicated, block: B:39:0x0085  */
    /* JADX WARN: Code duplicated, block: B:42:0x008c  */
    /* JADX WARN: Code duplicated, block: B:45:0x0092  */
    /* JADX WARN: Code duplicated, block: B:48:0x0097  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:54:0x00be  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:59:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:61:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d7  */
    private void h0(long j11, long j12) {
        long j13;
        long jMin;
        long jY1;
        long j14;
        long jQ;
        long j15;
        l lVar;
        long j16;
        long jQ2;
        float f11;
        float f12;
        l lVar2;
        l lVar3;
        l lVar4;
        a2.c cVar;
        l lVar5;
        long j17;
        t.g gVar = a().f10213d;
        long jY2 = a1.y1(j11);
        long j18 = gVar.f10287c;
        if (j18 == C.TIME_UNSET) {
            l lVar6 = this.H.f54j;
            if (lVar6 != null) {
                long j19 = lVar6.f128c;
                if (j19 != C.TIME_UNSET) {
                    jMin = Math.min(jY2, j19);
                }
                jY1 = a1.y1(j11 - j12);
                if (jY1 < 0 && j13 > 0) {
                    jY1 = 0;
                }
                j14 = this.H.f47c;
                if (j14 != C.TIME_UNSET) {
                    jY1 = Math.min(jY1 + j14, jY2);
                }
                jQ = jY1;
                j15 = gVar.f10286b;
                if (j15 != C.TIME_UNSET) {
                    jQ = a1.q(j15, jQ, jY2);
                } else {
                    lVar = this.H.f54j;
                    if (lVar != null) {
                        j16 = lVar.f127b;
                        if (j16 != C.TIME_UNSET) {
                            jQ = a1.q(j16, jQ, jY2);
                        }
                    }
                }
                if (jQ > j13) {
                    j13 = jQ;
                }
                jQ2 = this.E.f10285a;
                if (jQ2 == C.TIME_UNSET) {
                    cVar = this.H;
                    lVar5 = cVar.f54j;
                    if (lVar5 != null) {
                        j17 = lVar5.f126a;
                        if (j17 != C.TIME_UNSET) {
                            jQ2 = j17;
                        } else {
                            jQ2 = cVar.f51g;
                            if (jQ2 == C.TIME_UNSET) {
                                jQ2 = this.f11365o;
                            }
                        }
                    } else {
                        jQ2 = cVar.f51g;
                        if (jQ2 == C.TIME_UNSET) {
                            jQ2 = this.f11365o;
                        }
                    }
                }
                if (jQ2 < jQ) {
                    jQ2 = jQ;
                }
                if (jQ2 > j13) {
                    jQ2 = a1.q(a1.y1(j11 - Math.min(this.f11366p, j12 / 2)), jQ, j13);
                }
                f11 = gVar.f10288d;
                if (f11 == -3.4028235E38f) {
                    lVar4 = this.H.f54j;
                    if (lVar4 != null) {
                        f11 = lVar4.f129d;
                    } else {
                        f11 = -3.4028235E38f;
                    }
                }
                f12 = gVar.f10289e;
                if (f12 == -3.4028235E38f) {
                    lVar3 = this.H.f54j;
                    if (lVar3 != null) {
                        f12 = lVar3.f130e;
                    } else {
                        f12 = -3.4028235E38f;
                    }
                }
                if (f11 == -3.4028235E38f && f12 == -3.4028235E38f && ((lVar2 = this.H.f54j) == null || lVar2.f126a == C.TIME_UNSET)) {
                    f11 = 1.0f;
                    f12 = 1.0f;
                }
                this.E = new t.g.a().k(jQ2).i(jQ).g(j13).j(f11).h(f12).f();
            }
            j13 = jY2;
            jY1 = a1.y1(j11 - j12);
            if (jY1 < 0) {
                jY1 = 0;
            }
            j14 = this.H.f47c;
            if (j14 != C.TIME_UNSET) {
                jY1 = Math.min(jY1 + j14, jY2);
            }
            jQ = jY1;
            j15 = gVar.f10286b;
            if (j15 != C.TIME_UNSET) {
                jQ = a1.q(j15, jQ, jY2);
            } else {
                lVar = this.H.f54j;
                if (lVar != null) {
                    j16 = lVar.f127b;
                    if (j16 != C.TIME_UNSET) {
                        jQ = a1.q(j16, jQ, jY2);
                    }
                }
            }
            if (jQ > j13) {
                j13 = jQ;
            }
            jQ2 = this.E.f10285a;
            if (jQ2 == C.TIME_UNSET) {
                cVar = this.H;
                lVar5 = cVar.f54j;
                if (lVar5 != null) {
                    j17 = lVar5.f126a;
                    if (j17 != C.TIME_UNSET) {
                        jQ2 = j17;
                    } else {
                        jQ2 = cVar.f51g;
                        if (jQ2 == C.TIME_UNSET) {
                            jQ2 = this.f11365o;
                        }
                    }
                } else {
                    jQ2 = cVar.f51g;
                    if (jQ2 == C.TIME_UNSET) {
                        jQ2 = this.f11365o;
                    }
                }
            }
            if (jQ2 < jQ) {
                jQ2 = jQ;
            }
            if (jQ2 > j13) {
                jQ2 = a1.q(a1.y1(j11 - Math.min(this.f11366p, j12 / 2)), jQ, j13);
            }
            f11 = gVar.f10288d;
            if (f11 == -3.4028235E38f) {
                lVar4 = this.H.f54j;
                if (lVar4 != null) {
                    f11 = lVar4.f129d;
                } else {
                    f11 = -3.4028235E38f;
                }
            }
            f12 = gVar.f10289e;
            if (f12 == -3.4028235E38f) {
                lVar3 = this.H.f54j;
                if (lVar3 != null) {
                    f12 = lVar3.f130e;
                } else {
                    f12 = -3.4028235E38f;
                }
            }
            if (f11 == -3.4028235E38f) {
                f11 = 1.0f;
                f12 = 1.0f;
            }
            this.E = new t.g.a().k(jQ2).i(jQ).g(j13).j(f11).h(f12).f();
        }
        jMin = Math.min(jY2, j18);
        j13 = jMin;
        jY1 = a1.y1(j11 - j12);
        if (jY1 < 0) {
            jY1 = 0;
        }
        j14 = this.H.f47c;
        if (j14 != C.TIME_UNSET) {
            jY1 = Math.min(jY1 + j14, jY2);
        }
        jQ = jY1;
        j15 = gVar.f10286b;
        if (j15 != C.TIME_UNSET) {
            jQ = a1.q(j15, jQ, jY2);
        } else {
            lVar = this.H.f54j;
            if (lVar != null) {
                j16 = lVar.f127b;
                if (j16 != C.TIME_UNSET) {
                    jQ = a1.q(j16, jQ, jY2);
                }
            }
        }
        if (jQ > j13) {
            j13 = jQ;
        }
        jQ2 = this.E.f10285a;
        if (jQ2 == C.TIME_UNSET) {
            cVar = this.H;
            lVar5 = cVar.f54j;
            if (lVar5 != null) {
                j17 = lVar5.f126a;
                if (j17 != C.TIME_UNSET) {
                    jQ2 = j17;
                } else {
                    jQ2 = cVar.f51g;
                    if (jQ2 == C.TIME_UNSET) {
                        jQ2 = this.f11365o;
                    }
                }
            } else {
                jQ2 = cVar.f51g;
                if (jQ2 == C.TIME_UNSET) {
                    jQ2 = this.f11365o;
                }
            }
        }
        if (jQ2 < jQ) {
            jQ2 = jQ;
        }
        if (jQ2 > j13) {
            jQ2 = a1.q(a1.y1(j11 - Math.min(this.f11366p, j12 / 2)), jQ, j13);
        }
        f11 = gVar.f10288d;
        if (f11 == -3.4028235E38f) {
            lVar4 = this.H.f54j;
            if (lVar4 != null) {
                f11 = lVar4.f129d;
            } else {
                f11 = -3.4028235E38f;
            }
        }
        f12 = gVar.f10289e;
        if (f12 == -3.4028235E38f) {
            lVar3 = this.H.f54j;
            if (lVar3 != null) {
                f12 = lVar3.f130e;
            } else {
                f12 = -3.4028235E38f;
            }
        }
        if (f11 == -3.4028235E38f) {
            f11 = 1.0f;
            f12 = 1.0f;
        }
        this.E = new t.g.a().k(jQ2).i(jQ).g(j13).j(f11).h(f12).f();
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void B() {
        this.I = false;
        this.f11376z = null;
        Loader loader = this.A;
        if (loader != null) {
            loader.k();
            this.A = null;
        }
        this.J = 0L;
        this.K = 0L;
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
        this.f11371u.clear();
        this.f11364n.i();
        this.f11362l.release();
    }

    void Q(long j11) {
        long j12 = this.N;
        if (j12 == C.TIME_UNSET || j12 < j11) {
            this.N = j11;
        }
    }

    void R() {
        this.D.removeCallbacks(this.f11373w);
        g0();
    }

    void S(q qVar, long j11, long j12) {
        i iVar = new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a());
        this.f11363m.b(qVar.f13014a);
        this.f11367q.s(iVar, qVar.f13016c);
    }

    void T(q qVar, long j11, long j12) {
        i iVar = new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a());
        this.f11363m.b(qVar.f13014a);
        this.f11367q.v(iVar, qVar.f13016c);
        a2.c cVar = (a2.c) qVar.c();
        a2.c cVar2 = this.H;
        int iD = cVar2 == null ? 0 : cVar2.d();
        long j13 = cVar.c(0).f82b;
        int i11 = 0;
        while (i11 < iD && this.H.c(i11).f82b < j13) {
            i11++;
        }
        if (cVar.f48d) {
            if (iD - i11 > cVar.d()) {
                androidx.media3.common.util.u.h("DashMediaSource", "Loaded out of sync manifest");
            } else {
                long j14 = this.N;
                if (j14 == C.TIME_UNSET || cVar.f52h * 1000 > j14) {
                    this.M = 0;
                } else {
                    androidx.media3.common.util.u.h("DashMediaSource", "Loaded stale dynamic manifest: " + cVar.f52h + ", " + this.N);
                }
            }
            int i12 = this.M;
            this.M = i12 + 1;
            if (i12 < this.f11363m.a(qVar.f13016c)) {
                e0(L());
                return;
            } else {
                this.C = new DashManifestStaleException();
                return;
            }
        }
        this.H = cVar;
        this.I = cVar.f48d & this.I;
        this.J = j11 - j12;
        this.K = j11;
        this.O += i11;
        synchronized (this.f11370t) {
            try {
                if (qVar.f13015b.f77511a == this.F) {
                    Uri uriD = this.H.f55k;
                    if (uriD == null) {
                        uriD = qVar.d();
                    }
                    this.F = uriD;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        a2.c cVar3 = this.H;
        if (!cVar3.f48d || this.L != C.TIME_UNSET) {
            a0(true);
            return;
        }
        a2.o oVar = cVar3.f53i;
        if (oVar != null) {
            b0(oVar);
        } else {
            P();
        }
    }

    Loader.c U(q qVar, long j11, long j12, IOException iOException, int i11) {
        i iVar = new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a());
        long jC = this.f11363m.c(new m.c(iVar, new g2.j(qVar.f13016c), iOException, i11));
        Loader.c cVarG = jC == C.TIME_UNSET ? Loader.f12950g : Loader.g(false, jC);
        boolean zC = cVarG.c();
        this.f11367q.z(iVar, qVar.f13016c, iOException, !zC);
        if (!zC) {
            this.f11363m.b(qVar.f13014a);
        }
        return cVarG;
    }

    void V(q qVar, long j11, long j12, int i11) {
        this.f11367q.B(i11 == 0 ? new i(qVar.f13014a, qVar.f13015b, j11) : new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a()), qVar.f13016c, i11);
    }

    void W(q qVar, long j11, long j12) {
        i iVar = new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a());
        this.f11363m.b(qVar.f13014a);
        this.f11367q.v(iVar, qVar.f13016c);
        Z(((Long) qVar.c()).longValue() - j11);
    }

    Loader.c X(q qVar, long j11, long j12, IOException iOException) {
        this.f11367q.z(new i(qVar.f13014a, qVar.f13015b, qVar.d(), qVar.b(), j11, j12, qVar.a()), qVar.f13016c, iOException, true);
        this.f11363m.b(qVar.f13014a);
        Y(iOException);
        return Loader.f12949f;
    }

    @Override // androidx.media3.exoplayer.source.r
    public synchronized t a() {
        return this.P;
    }

    @Override // androidx.media3.exoplayer.source.r
    public androidx.media3.exoplayer.source.q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j11) {
        int iIntValue = ((Integer) bVar.f12883a).intValue() - this.O;
        s.a aVarU = u(bVar);
        androidx.media3.exoplayer.dash.c cVar = new androidx.media3.exoplayer.dash.c(iIntValue + this.O, this.H, this.f11364n, iIntValue, this.f11360j, this.B, null, this.f11362l, s(bVar), this.f11363m, aVarU, this.L, this.f11375y, bVar2, this.f11361k, this.f11374x, x());
        this.f11371u.put(cVar.f11401a, cVar);
        return cVar;
    }

    @Override // androidx.media3.exoplayer.source.r
    public void j(androidx.media3.exoplayer.source.q qVar) {
        androidx.media3.exoplayer.dash.c cVar = (androidx.media3.exoplayer.dash.c) qVar;
        cVar.C();
        this.f11371u.remove(cVar.f11401a);
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public synchronized void l(t tVar) {
        this.P = tVar;
    }

    @Override // androidx.media3.exoplayer.source.r
    public void maybeThrowSourceInfoRefreshError() {
        this.f11375y.maybeThrowError();
    }

    @Override // androidx.media3.exoplayer.source.a, androidx.media3.exoplayer.source.r
    public boolean q(t tVar) {
        t tVarA = a();
        t.h hVar = (t.h) androidx.media3.common.util.a.e(tVarA.f10211b);
        t.h hVar2 = tVar.f10211b;
        return hVar2 != null && hVar2.f10303a.equals(hVar.f10303a) && hVar2.f10306d.equals(hVar.f10306d) && Objects.equals(hVar2.f10305c, hVar.f10305c) && tVarA.f10213d.equals(tVar.f10213d);
    }

    @Override // androidx.media3.exoplayer.source.a
    protected void z(n nVar) {
        this.B = nVar;
        this.f11362l.c(Looper.myLooper(), x());
        this.f11362l.prepare();
        if (this.f11358h) {
            a0(false);
            return;
        }
        this.f11376z = this.f11359i.createDataSource();
        this.A = new Loader("DashMediaSource");
        this.D = a1.A();
        g0();
    }
}
