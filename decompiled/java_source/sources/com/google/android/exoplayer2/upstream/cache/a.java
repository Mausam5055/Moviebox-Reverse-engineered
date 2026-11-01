package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.d0;
import com.google.android.exoplayer2.upstream.e0;
import com.google.android.exoplayer2.upstream.j0;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.p0;
import java.io.File;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements com.google.android.exoplayer2.upstream.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Cache f27302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k f27303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k f27304c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.k f27305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f27306e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f27307f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f27308g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f27309h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Uri f27310i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.n f27311j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.n f27312k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.k f27313l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f27314m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f27315n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f27316o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private h f27317p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f27318q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f27319r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f27320s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f27321t;

    public interface b {
    }

    public static final class c implements com.google.android.exoplayer2.upstream.k.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Cache f27322a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.i.a f27324c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f27326e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.k.a f27327f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private PriorityTaskManager f27328g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f27329h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f27330i;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.k.a f27323b = new FileDataSource.b();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private g f27325d = g.f27336a;

        private a d(com.google.android.exoplayer2.upstream.k kVar, int i11, int i12) {
            com.google.android.exoplayer2.upstream.i iVarCreateDataSink;
            Cache cache = (Cache) com.google.android.exoplayer2.util.a.e(this.f27322a);
            if (this.f27326e || kVar == null) {
                iVarCreateDataSink = null;
            } else {
                com.google.android.exoplayer2.upstream.i.a aVar = this.f27324c;
                iVarCreateDataSink = aVar != null ? aVar.createDataSink() : new CacheDataSink.a().a(cache).createDataSink();
            }
            return new a(cache, kVar, this.f27323b.createDataSource(), iVarCreateDataSink, this.f27325d, i11, this.f27328g, i12, null);
        }

        @Override // com.google.android.exoplayer2.upstream.k.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a createDataSource() {
            com.google.android.exoplayer2.upstream.k.a aVar = this.f27327f;
            return d(aVar != null ? aVar.createDataSource() : null, this.f27330i, this.f27329h);
        }

        public a b() {
            com.google.android.exoplayer2.upstream.k.a aVar = this.f27327f;
            return d(aVar != null ? aVar.createDataSource() : null, this.f27330i | 1, -1000);
        }

        public a c() {
            return d(null, this.f27330i | 1, -1000);
        }

        public Cache e() {
            return this.f27322a;
        }

        public g f() {
            return this.f27325d;
        }

        public PriorityTaskManager g() {
            return this.f27328g;
        }

        public c h(Cache cache) {
            this.f27322a = cache;
            return this;
        }

        public c i(com.google.android.exoplayer2.upstream.k.a aVar) {
            this.f27327f = aVar;
            return this;
        }
    }

    private a(Cache cache, com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.k kVar2, com.google.android.exoplayer2.upstream.i iVar, g gVar, int i11, PriorityTaskManager priorityTaskManager, int i12, b bVar) {
        this.f27302a = cache;
        this.f27303b = kVar2;
        this.f27306e = gVar == null ? g.f27336a : gVar;
        this.f27307f = (i11 & 1) != 0;
        this.f27308g = (i11 & 2) != 0;
        this.f27309h = (i11 & 4) != 0;
        if (kVar == null) {
            this.f27305d = d0.f27394a;
            this.f27304c = null;
        } else {
            kVar = priorityTaskManager != null ? new e0(kVar, priorityTaskManager, i12) : kVar;
            this.f27305d = kVar;
            this.f27304c = iVar != null ? new j0(kVar, iVar) : null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f() {
        com.google.android.exoplayer2.upstream.k kVar = this.f27313l;
        if (kVar == null) {
            return;
        }
        try {
            kVar.close();
        } finally {
            this.f27312k = null;
            this.f27313l = null;
            h hVar = this.f27317p;
            if (hVar != null) {
                this.f27302a.g(hVar);
                this.f27317p = null;
            }
        }
    }

    private static Uri j(Cache cache, String str, Uri uri) {
        Uri uriB = l.b(cache.getContentMetadata(str));
        return uriB != null ? uriB : uri;
    }

    private void k(Throwable th2) {
        if (m() || (th2 instanceof Cache.CacheException)) {
            this.f27318q = true;
        }
    }

    private boolean l() {
        return this.f27313l == this.f27305d;
    }

    private boolean m() {
        return this.f27313l == this.f27303b;
    }

    private boolean n() {
        return !m();
    }

    private boolean o() {
        return this.f27313l == this.f27304c;
    }

    private void p() {
    }

    private void q(int i11) {
    }

    private void r(com.google.android.exoplayer2.upstream.n nVar, boolean z10) throws InterruptedIOException {
        h hVarC;
        long jMin;
        com.google.android.exoplayer2.upstream.n nVarA;
        com.google.android.exoplayer2.upstream.k kVar;
        String str = (String) p0.j(nVar.f27445i);
        if (this.f27319r) {
            hVarC = null;
        } else if (this.f27307f) {
            try {
                hVarC = this.f27302a.c(str, this.f27315n, this.f27316o);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            hVarC = this.f27302a.b(str, this.f27315n, this.f27316o);
        }
        if (hVarC == null) {
            kVar = this.f27305d;
            nVarA = nVar.a().h(this.f27315n).g(this.f27316o).a();
        } else if (hVarC.f27340d) {
            Uri uriFromFile = Uri.fromFile((File) p0.j(hVarC.f27341e));
            long j11 = hVarC.f27338b;
            long j12 = this.f27315n - j11;
            long jMin2 = hVarC.f27339c - j12;
            long j13 = this.f27316o;
            if (j13 != -1) {
                jMin2 = Math.min(jMin2, j13);
            }
            nVarA = nVar.a().i(uriFromFile).k(j11).h(j12).g(jMin2).a();
            kVar = this.f27303b;
        } else {
            if (hVarC.d()) {
                jMin = this.f27316o;
            } else {
                jMin = hVarC.f27339c;
                long j14 = this.f27316o;
                if (j14 != -1) {
                    jMin = Math.min(jMin, j14);
                }
            }
            nVarA = nVar.a().h(this.f27315n).g(jMin).a();
            kVar = this.f27304c;
            if (kVar == null) {
                kVar = this.f27305d;
                this.f27302a.g(hVarC);
                hVarC = null;
            }
        }
        this.f27321t = (this.f27319r || kVar != this.f27305d) ? Long.MAX_VALUE : this.f27315n + OSSConstants.MIN_PART_SIZE_LIMIT;
        if (z10) {
            com.google.android.exoplayer2.util.a.g(l());
            if (kVar == this.f27305d) {
                return;
            }
            try {
                f();
            } catch (Throwable th2) {
                if (!((h) p0.j(hVarC)).b()) {
                    throw th2;
                }
                this.f27302a.g(hVarC);
                throw th2;
            }
        }
        if (hVarC != null && hVarC.b()) {
            this.f27317p = hVarC;
        }
        this.f27313l = kVar;
        this.f27312k = nVarA;
        this.f27314m = 0L;
        long jA = kVar.a(nVarA);
        n nVar2 = new n();
        if (nVarA.f27444h == -1 && jA != -1) {
            this.f27316o = jA;
            n.g(nVar2, this.f27315n + jA);
        }
        if (n()) {
            Uri uri = kVar.getUri();
            this.f27310i = uri;
            n.h(nVar2, nVar.f27437a.equals(uri) ? null : this.f27310i);
        }
        if (o()) {
            this.f27302a.f(str, nVar2);
        }
    }

    private void s(String str) {
        this.f27316o = 0L;
        if (o()) {
            n nVar = new n();
            n.g(nVar, this.f27315n);
            this.f27302a.f(str, nVar);
        }
    }

    private int t(com.google.android.exoplayer2.upstream.n nVar) {
        if (this.f27308g && this.f27318q) {
            return 0;
        }
        return (this.f27309h && nVar.f27444h == -1) ? 1 : -1;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(com.google.android.exoplayer2.upstream.n nVar) {
        try {
            String strA = this.f27306e.a(nVar);
            com.google.android.exoplayer2.upstream.n nVarA = nVar.a().f(strA).a();
            this.f27311j = nVarA;
            this.f27310i = j(this.f27302a, strA, nVarA.f27437a);
            this.f27315n = nVar.f27443g;
            int iT = t(nVar);
            boolean z10 = iT != -1;
            this.f27319r = z10;
            if (z10) {
                q(iT);
            }
            if (this.f27319r) {
                this.f27316o = -1L;
            } else {
                long jA = l.a(this.f27302a.getContentMetadata(strA));
                this.f27316o = jA;
                if (jA != -1) {
                    long j11 = jA - nVar.f27443g;
                    this.f27316o = j11;
                    if (j11 < 0) {
                        throw new DataSourceException(2008);
                    }
                }
            }
            long jMin = nVar.f27444h;
            if (jMin != -1) {
                long j12 = this.f27316o;
                if (j12 != -1) {
                    jMin = Math.min(j12, jMin);
                }
                this.f27316o = jMin;
            }
            long j13 = this.f27316o;
            if (j13 > 0 || j13 == -1) {
                r(nVarA, false);
            }
            long j14 = nVar.f27444h;
            return j14 != -1 ? j14 : this.f27316o;
        } catch (Throwable th2) {
            k(th2);
            throw th2;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        this.f27311j = null;
        this.f27310i = null;
        this.f27315n = 0L;
        p();
        try {
            f();
        } catch (Throwable th2) {
            k(th2);
            throw th2;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f27303b.e(k0Var);
        this.f27305d.e(k0Var);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Map getResponseHeaders() {
        return n() ? this.f27305d.getResponseHeaders() : Collections.emptyMap();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return this.f27310i;
    }

    public Cache h() {
        return this.f27302a;
    }

    public g i() {
        return this.f27306e;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0083 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:9:0x0021, B:11:0x0029, B:14:0x0030, B:16:0x0044, B:18:0x004a, B:19:0x0050, B:21:0x0061, B:22:0x0065, B:24:0x006b, B:26:0x0071, B:28:0x0077, B:29:0x0083, B:35:0x0091), top: B:39:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0089  */
    /* JADX WARN: Code duplicated, block: B:33:0x008f  */
    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) {
        long j11;
        if (i12 == 0) {
            return 0;
        }
        if (this.f27316o == 0) {
            return -1;
        }
        com.google.android.exoplayer2.upstream.n nVar = (com.google.android.exoplayer2.upstream.n) com.google.android.exoplayer2.util.a.e(this.f27311j);
        com.google.android.exoplayer2.upstream.n nVar2 = (com.google.android.exoplayer2.upstream.n) com.google.android.exoplayer2.util.a.e(this.f27312k);
        try {
            if (this.f27315n >= this.f27321t) {
                r(nVar, true);
            }
            int i13 = ((com.google.android.exoplayer2.upstream.k) com.google.android.exoplayer2.util.a.e(this.f27313l)).read(bArr, i11, i12);
            if (i13 != -1) {
                if (m()) {
                    this.f27320s += (long) i13;
                }
                long j12 = i13;
                this.f27315n += j12;
                this.f27314m += j12;
                long j13 = this.f27316o;
                if (j13 != -1) {
                    this.f27316o = j13 - j12;
                }
            } else {
                if (!n()) {
                    j11 = this.f27316o;
                    if (j11 <= 0) {
                        if (j11 == -1) {
                        }
                    }
                    f();
                    r(nVar, false);
                    return read(bArr, i11, i12);
                }
                long j14 = nVar2.f27444h;
                if (j14 != -1 && this.f27314m >= j14) {
                    j11 = this.f27316o;
                    if (j11 <= 0) {
                        if (j11 == -1) {
                        }
                    }
                    f();
                    r(nVar, false);
                    return read(bArr, i11, i12);
                }
                s((String) p0.j(nVar.f27445i));
            }
            return i13;
        } catch (Throwable th2) {
            k(th2);
            throw th2;
        }
    }
}
