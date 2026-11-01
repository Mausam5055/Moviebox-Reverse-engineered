package androidx.media3.datasource.cache;

import java.io.InterruptedIOException;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.datasource.cache.a f10824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Cache f10825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w1.h f10826c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f10827d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f10828e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a f10829f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f10830g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f10831h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f10832i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile boolean f10833j;

    public interface a {
        void a(long j11, long j12, long j13);
    }

    public i(androidx.media3.datasource.cache.a aVar, w1.h hVar, byte[] bArr, a aVar2) {
        this.f10824a = aVar;
        this.f10825b = aVar.e();
        this.f10826c = hVar;
        this.f10828e = bArr == null ? new byte[131072] : bArr;
        this.f10829f = aVar2;
        this.f10827d = aVar.f().a(hVar);
        this.f10830g = hVar.f77517g;
    }

    private long c() {
        long j11 = this.f10831h;
        if (j11 == -1) {
            return -1L;
        }
        return j11 - this.f10826c.f77517g;
    }

    private void d(long j11) {
        this.f10832i += j11;
        a aVar = this.f10829f;
        if (aVar != null) {
            aVar.a(c(), this.f10832i, j11);
        }
    }

    private void e(long j11) {
        if (this.f10831h == j11) {
            return;
        }
        this.f10831h = j11;
        a aVar = this.f10829f;
        if (aVar != null) {
            aVar.a(c(), this.f10832i, 0L);
        }
    }

    private long f(long j11, long j12) throws Exception {
        long jA;
        boolean z10 = true;
        boolean z11 = j11 + j12 == this.f10831h || j12 == -1;
        if (j12 != -1) {
            try {
                jA = this.f10824a.a(this.f10826c.a().h(j11).g(j12).a());
            } catch (Exception unused) {
                w1.g.a(this.f10824a);
                z10 = false;
                jA = -1;
            }
        } else {
            z10 = false;
            jA = -1;
        }
        if (!z10) {
            g();
            try {
                jA = this.f10824a.a(this.f10826c.a().h(j11).g(-1L).a());
            } catch (Exception e11) {
                w1.g.a(this.f10824a);
                throw e11;
            }
        }
        if (z11 && jA != -1) {
            try {
                e(jA + j11);
            } catch (Exception e12) {
                w1.g.a(this.f10824a);
                throw e12;
            }
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 != -1) {
            g();
            androidx.media3.datasource.cache.a aVar = this.f10824a;
            byte[] bArr = this.f10828e;
            i11 = aVar.read(bArr, 0, bArr.length);
            if (i11 != -1) {
                d(i11);
                i12 += i11;
            }
        }
        if (z11) {
            e(j11 + ((long) i12));
        }
        this.f10824a.close();
        return i12;
    }

    private void g() throws InterruptedIOException {
        if (this.f10833j) {
            throw new InterruptedIOException();
        }
    }

    public void a() throws InterruptedIOException {
        g();
        Cache cache = this.f10825b;
        String str = this.f10827d;
        w1.h hVar = this.f10826c;
        this.f10832i = cache.a(str, hVar.f77517g, hVar.f77518h);
        w1.h hVar2 = this.f10826c;
        long j11 = hVar2.f77518h;
        if (j11 != -1) {
            this.f10831h = hVar2.f77517g + j11;
        } else {
            long jA = l.a(this.f10825b.getContentMetadata(this.f10827d));
            if (jA == -1) {
                jA = -1;
            }
            this.f10831h = jA;
        }
        a aVar = this.f10829f;
        if (aVar != null) {
            aVar.a(c(), this.f10832i, 0L);
        }
        while (true) {
            long j12 = this.f10831h;
            if (j12 != -1 && this.f10830g >= j12) {
                return;
            }
            g();
            long j13 = this.f10831h;
            long cachedLength = this.f10825b.getCachedLength(this.f10827d, this.f10830g, j13 == -1 ? Long.MAX_VALUE : j13 - this.f10830g);
            if (cachedLength > 0) {
                this.f10830g += cachedLength;
            } else {
                long j14 = -cachedLength;
                if (j14 == Long.MAX_VALUE) {
                    j14 = -1;
                }
                long j15 = this.f10830g;
                this.f10830g = j15 + f(j15, j14);
            }
        }
    }

    public void b() {
        this.f10833j = true;
    }
}
