package androidx.media3.datasource.cache;

import android.net.Uri;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.a1;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.FileDataSource;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import java.io.File;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements androidx.media3.datasource.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Cache f10783a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.datasource.a f10784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.datasource.a f10785c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.datasource.a f10786d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f10787e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f10788f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f10789g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f10790h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Uri f10791i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private w1.h f10792j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private w1.h f10793k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private androidx.media3.datasource.a f10794l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f10795m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f10796n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f10797o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private h f10798p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f10799q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f10800r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f10801s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f10802t;

    public interface b {
    }

    public static final class c implements androidx.media3.datasource.a.InterfaceC0091a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Cache f10803a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private w1.d.a f10805c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f10807e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private androidx.media3.datasource.a.InterfaceC0091a f10808f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private PriorityTaskManager f10809g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f10810h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f10811i;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private androidx.media3.datasource.a.InterfaceC0091a f10804b = new FileDataSource.a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private g f10806d = g.f10817a;

        private a e(androidx.media3.datasource.a aVar, int i11, int i12) {
            w1.d dVarCreateDataSink;
            Cache cache = (Cache) androidx.media3.common.util.a.e(this.f10803a);
            if (this.f10807e || aVar == null) {
                dVarCreateDataSink = null;
            } else {
                w1.d.a aVar2 = this.f10805c;
                dVarCreateDataSink = aVar2 != null ? aVar2.createDataSink() : new CacheDataSink.a().a(cache).createDataSink();
            }
            return new a(cache, aVar, this.f10804b.createDataSource(), dVarCreateDataSink, this.f10806d, i11, this.f10809g, i12, null);
        }

        @Override // androidx.media3.datasource.a.InterfaceC0091a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public a createDataSource() {
            androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a = this.f10808f;
            return e(interfaceC0091a != null ? interfaceC0091a.createDataSource() : null, this.f10811i, this.f10810h);
        }

        public a c() {
            androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a = this.f10808f;
            return e(interfaceC0091a != null ? interfaceC0091a.createDataSource() : null, this.f10811i | 1, -4000);
        }

        public a d() {
            return e(null, this.f10811i | 1, -4000);
        }

        public Cache f() {
            return this.f10803a;
        }

        public g g() {
            return this.f10806d;
        }

        public PriorityTaskManager h() {
            return this.f10809g;
        }

        public c i(Cache cache) {
            this.f10803a = cache;
            return this;
        }

        public c j(androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
            this.f10808f = interfaceC0091a;
            return this;
        }
    }

    private a(Cache cache, androidx.media3.datasource.a aVar, androidx.media3.datasource.a aVar2, w1.d dVar, g gVar, int i11, PriorityTaskManager priorityTaskManager, int i12, b bVar) {
        this.f10783a = cache;
        this.f10784b = aVar2;
        this.f10787e = gVar == null ? g.f10817a : gVar;
        this.f10788f = (i11 & 1) != 0;
        this.f10789g = (i11 & 2) != 0;
        this.f10790h = (i11 & 4) != 0;
        if (aVar == null) {
            this.f10786d = androidx.media3.datasource.f.f10914a;
            this.f10785c = null;
        } else {
            aVar = priorityTaskManager != null ? new w1.k(aVar, priorityTaskManager, i12) : aVar;
            this.f10786d = aVar;
            this.f10785c = dVar != null ? new w1.m(aVar, dVar) : null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d() {
        androidx.media3.datasource.a aVar = this.f10794l;
        if (aVar == null) {
            return;
        }
        try {
            aVar.close();
        } finally {
            this.f10793k = null;
            this.f10794l = null;
            h hVar = this.f10798p;
            if (hVar != null) {
                this.f10783a.g(hVar);
                this.f10798p = null;
            }
        }
    }

    private static Uri g(Cache cache, String str, Uri uri) {
        Uri uriB = l.b(cache.getContentMetadata(str));
        return uriB != null ? uriB : uri;
    }

    private void h(Throwable th2) {
        if (j() || (th2 instanceof Cache.CacheException)) {
            this.f10799q = true;
        }
    }

    private boolean i() {
        return this.f10794l == this.f10786d;
    }

    private boolean j() {
        return this.f10794l == this.f10784b;
    }

    private boolean k() {
        return !j();
    }

    private boolean l() {
        return this.f10794l == this.f10785c;
    }

    private void m() {
    }

    private void n(int i11) {
    }

    private void o(w1.h hVar, boolean z10) throws InterruptedIOException {
        h hVarC;
        long jMin;
        w1.h hVarA;
        androidx.media3.datasource.a aVar;
        String str = (String) a1.i(hVar.f77519i);
        if (this.f10800r) {
            hVarC = null;
        } else if (this.f10788f) {
            try {
                hVarC = this.f10783a.c(str, this.f10796n, this.f10797o);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            hVarC = this.f10783a.b(str, this.f10796n, this.f10797o);
        }
        if (hVarC == null) {
            aVar = this.f10786d;
            hVarA = hVar.a().h(this.f10796n).g(this.f10797o).a();
        } else if (hVarC.f10821d) {
            Uri uriFromFile = Uri.fromFile((File) a1.i(hVarC.f10822e));
            long j11 = hVarC.f10819b;
            long j12 = this.f10796n - j11;
            long jMin2 = hVarC.f10820c - j12;
            long j13 = this.f10797o;
            if (j13 != -1) {
                jMin2 = Math.min(jMin2, j13);
            }
            hVarA = hVar.a().i(uriFromFile).k(j11).h(j12).g(jMin2).a();
            aVar = this.f10784b;
        } else {
            if (hVarC.d()) {
                jMin = this.f10797o;
            } else {
                jMin = hVarC.f10820c;
                long j14 = this.f10797o;
                if (j14 != -1) {
                    jMin = Math.min(jMin, j14);
                }
            }
            hVarA = hVar.a().h(this.f10796n).g(jMin).a();
            aVar = this.f10785c;
            if (aVar == null) {
                aVar = this.f10786d;
                this.f10783a.g(hVarC);
                hVarC = null;
            }
        }
        this.f10802t = (this.f10800r || aVar != this.f10786d) ? Long.MAX_VALUE : this.f10796n + OSSConstants.MIN_PART_SIZE_LIMIT;
        if (z10) {
            androidx.media3.common.util.a.g(i());
            if (aVar == this.f10786d) {
                return;
            }
            try {
                d();
            } catch (Throwable th2) {
                if (!((h) a1.i(hVarC)).b()) {
                    throw th2;
                }
                this.f10783a.g(hVarC);
                throw th2;
            }
        }
        if (hVarC != null && hVarC.b()) {
            this.f10798p = hVarC;
        }
        this.f10794l = aVar;
        this.f10793k = hVarA;
        this.f10795m = 0L;
        long jA = aVar.a(hVarA);
        n nVar = new n();
        if (hVarA.f77518h == -1 && jA != -1) {
            this.f10797o = jA;
            n.g(nVar, this.f10796n + jA);
        }
        if (k()) {
            Uri uri = aVar.getUri();
            this.f10791i = uri;
            n.h(nVar, hVar.f77511a.equals(uri) ? null : this.f10791i);
        }
        if (l()) {
            this.f10783a.h(str, nVar);
        }
    }

    private void p(String str) {
        this.f10797o = 0L;
        if (l()) {
            n nVar = new n();
            n.g(nVar, this.f10796n);
            this.f10783a.h(str, nVar);
        }
    }

    private int q(w1.h hVar) {
        if (this.f10789g && this.f10799q) {
            return 0;
        }
        return (this.f10790h && hVar.f77518h == -1) ? 1 : -1;
    }

    @Override // androidx.media3.datasource.a
    public long a(w1.h hVar) {
        try {
            String strA = this.f10787e.a(hVar);
            w1.h hVarA = hVar.a().f(strA).a();
            this.f10792j = hVarA;
            this.f10791i = g(this.f10783a, strA, hVarA.f77511a);
            this.f10796n = hVar.f77517g;
            int iQ = q(hVar);
            boolean z10 = iQ != -1;
            this.f10800r = z10;
            if (z10) {
                n(iQ);
            }
            if (this.f10800r) {
                this.f10797o = -1L;
            } else {
                long jA = l.a(this.f10783a.getContentMetadata(strA));
                this.f10797o = jA;
                if (jA != -1) {
                    long j11 = jA - hVar.f77517g;
                    this.f10797o = j11;
                    if (j11 < 0) {
                        throw new DataSourceException(2008);
                    }
                }
            }
            long jMin = hVar.f77518h;
            if (jMin != -1) {
                long j12 = this.f10797o;
                if (j12 != -1) {
                    jMin = Math.min(j12, jMin);
                }
                this.f10797o = jMin;
            }
            long j13 = this.f10797o;
            if (j13 > 0 || j13 == -1) {
                o(hVarA, false);
            }
            long j14 = hVar.f77518h;
            return j14 != -1 ? j14 : this.f10797o;
        } catch (Throwable th2) {
            h(th2);
            throw th2;
        }
    }

    @Override // androidx.media3.datasource.a
    public void c(w1.n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f10784b.c(nVar);
        this.f10786d.c(nVar);
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        this.f10792j = null;
        this.f10791i = null;
        this.f10796n = 0L;
        m();
        try {
            d();
        } catch (Throwable th2) {
            h(th2);
            throw th2;
        }
    }

    public Cache e() {
        return this.f10783a;
    }

    public g f() {
        return this.f10787e;
    }

    @Override // androidx.media3.datasource.a
    public Map getResponseHeaders() {
        return k() ? this.f10786d.getResponseHeaders() : Collections.emptyMap();
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        return this.f10791i;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0083 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:9:0x0021, B:11:0x0029, B:14:0x0030, B:16:0x0044, B:18:0x004a, B:19:0x0050, B:21:0x0061, B:22:0x0065, B:24:0x006b, B:26:0x0071, B:28:0x0077, B:29:0x0083, B:35:0x0091), top: B:39:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0089  */
    /* JADX WARN: Code duplicated, block: B:33:0x008f  */
    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) {
        long j11;
        if (i12 == 0) {
            return 0;
        }
        if (this.f10797o == 0) {
            return -1;
        }
        w1.h hVar = (w1.h) androidx.media3.common.util.a.e(this.f10792j);
        w1.h hVar2 = (w1.h) androidx.media3.common.util.a.e(this.f10793k);
        try {
            if (this.f10796n >= this.f10802t) {
                o(hVar, true);
            }
            int i13 = ((androidx.media3.datasource.a) androidx.media3.common.util.a.e(this.f10794l)).read(bArr, i11, i12);
            if (i13 != -1) {
                if (j()) {
                    this.f10801s += (long) i13;
                }
                long j12 = i13;
                this.f10796n += j12;
                this.f10795m += j12;
                long j13 = this.f10797o;
                if (j13 != -1) {
                    this.f10797o = j13 - j12;
                }
            } else {
                if (!k()) {
                    j11 = this.f10797o;
                    if (j11 <= 0) {
                        if (j11 == -1) {
                        }
                    }
                    d();
                    o(hVar, false);
                    return read(bArr, i11, i12);
                }
                long j14 = hVar2.f77518h;
                if (j14 != -1 && this.f10795m >= j14) {
                    j11 = this.f10797o;
                    if (j11 <= 0) {
                        if (j11 == -1) {
                        }
                    }
                    d();
                    o(hVar, false);
                    return read(bArr, i11, i12);
                }
                p((String) a1.i(hVar.f77519i));
            }
            return i13;
        } catch (Throwable th2) {
            h(th2);
            throw th2;
        }
    }
}
