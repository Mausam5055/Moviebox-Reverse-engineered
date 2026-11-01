package com.google.android.exoplayer2.upstream.cache;

import java.io.IOException;
import java.io.InterruptedIOException;

/* JADX INFO: loaded from: classes3.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.cache.a f27343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Cache f27344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.n f27345c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f27346d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f27347e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a f27348f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f27349g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f27350h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f27351i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile boolean f27352j;

    public interface a {
        void a(long j11, long j12, long j13);
    }

    public i(com.google.android.exoplayer2.upstream.cache.a aVar, com.google.android.exoplayer2.upstream.n nVar, byte[] bArr, a aVar2) {
        this.f27343a = aVar;
        this.f27344b = aVar.h();
        this.f27345c = nVar;
        this.f27347e = bArr == null ? new byte[131072] : bArr;
        this.f27348f = aVar2;
        this.f27346d = aVar.i().a(nVar);
        this.f27349g = nVar.f27443g;
    }

    private long c() {
        long j11 = this.f27350h;
        if (j11 == -1) {
            return -1L;
        }
        return j11 - this.f27345c.f27443g;
    }

    private void d(long j11) {
        this.f27351i += j11;
        a aVar = this.f27348f;
        if (aVar != null) {
            aVar.a(c(), this.f27351i, j11);
        }
    }

    private void e(long j11) {
        if (this.f27350h == j11) {
            return;
        }
        this.f27350h = j11;
        a aVar = this.f27348f;
        if (aVar != null) {
            aVar.a(c(), this.f27351i, 0L);
        }
    }

    private long f(long j11, long j12) throws IOException {
        long jA;
        boolean z10 = true;
        boolean z11 = j11 + j12 == this.f27350h || j12 == -1;
        if (j12 != -1) {
            try {
                jA = this.f27343a.a(this.f27345c.a().h(j11).g(j12).a());
            } catch (IOException unused) {
                com.google.android.exoplayer2.upstream.m.a(this.f27343a);
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
                jA = this.f27343a.a(this.f27345c.a().h(j11).g(-1L).a());
            } catch (IOException e11) {
                com.google.android.exoplayer2.upstream.m.a(this.f27343a);
                throw e11;
            }
        }
        if (z11 && jA != -1) {
            try {
                e(jA + j11);
            } catch (IOException e12) {
                com.google.android.exoplayer2.upstream.m.a(this.f27343a);
                throw e12;
            }
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 != -1) {
            g();
            com.google.android.exoplayer2.upstream.cache.a aVar = this.f27343a;
            byte[] bArr = this.f27347e;
            i11 = aVar.read(bArr, 0, bArr.length);
            if (i11 != -1) {
                d(i11);
                i12 += i11;
            }
        }
        if (z11) {
            e(j11 + ((long) i12));
        }
        this.f27343a.close();
        return i12;
    }

    private void g() throws InterruptedIOException {
        if (this.f27352j) {
            throw new InterruptedIOException();
        }
    }

    public void a() throws InterruptedIOException {
        g();
        Cache cache = this.f27344b;
        String str = this.f27346d;
        com.google.android.exoplayer2.upstream.n nVar = this.f27345c;
        this.f27351i = cache.a(str, nVar.f27443g, nVar.f27444h);
        com.google.android.exoplayer2.upstream.n nVar2 = this.f27345c;
        long j11 = nVar2.f27444h;
        if (j11 != -1) {
            this.f27350h = nVar2.f27443g + j11;
        } else {
            long jA = l.a(this.f27344b.getContentMetadata(this.f27346d));
            if (jA == -1) {
                jA = -1;
            }
            this.f27350h = jA;
        }
        a aVar = this.f27348f;
        if (aVar != null) {
            aVar.a(c(), this.f27351i, 0L);
        }
        while (true) {
            long j12 = this.f27350h;
            if (j12 != -1 && this.f27349g >= j12) {
                return;
            }
            g();
            long j13 = this.f27350h;
            long cachedLength = this.f27344b.getCachedLength(this.f27346d, this.f27349g, j13 == -1 ? Long.MAX_VALUE : j13 - this.f27349g);
            if (cachedLength > 0) {
                this.f27349g += cachedLength;
            } else {
                long j14 = -cachedLength;
                if (j14 == Long.MAX_VALUE) {
                    j14 = -1;
                }
                long j15 = this.f27349g;
                this.f27349g = j15 + f(j15, j14);
            }
        }
    }

    public void b() {
        this.f27352j = true;
    }
}
