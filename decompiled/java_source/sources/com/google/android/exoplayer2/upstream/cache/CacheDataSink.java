package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.util.p0;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class CacheDataSink implements com.google.android.exoplayer2.upstream.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Cache f27277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f27278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f27279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.n f27280d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f27281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private File f27282f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private OutputStream f27283g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f27284h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f27285i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private r f27286j;

    public static final class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public static final class a implements com.google.android.exoplayer2.upstream.i.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Cache f27287a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f27288b = 5242880;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f27289c = com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSink.DEFAULT_BUFFER_SIZE;

        public a a(Cache cache) {
            this.f27287a = cache;
            return this;
        }

        @Override // com.google.android.exoplayer2.upstream.i.a
        public com.google.android.exoplayer2.upstream.i createDataSink() {
            return new CacheDataSink((Cache) com.google.android.exoplayer2.util.a.e(this.f27287a), this.f27288b, this.f27289c);
        }
    }

    public CacheDataSink(Cache cache, long j11, int i11) {
        com.google.android.exoplayer2.util.a.h(j11 > 0 || j11 == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        if (j11 != -1 && j11 < 2097152) {
            com.google.android.exoplayer2.util.s.i("CacheDataSink", "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.f27277a = (Cache) com.google.android.exoplayer2.util.a.e(cache);
        this.f27278b = j11 == -1 ? Long.MAX_VALUE : j11;
        this.f27279c = i11;
    }

    private void b() {
        OutputStream outputStream = this.f27283g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            p0.n(this.f27283g);
            this.f27283g = null;
            File file = (File) p0.j(this.f27282f);
            this.f27282f = null;
            this.f27277a.d(file, this.f27284h);
        } catch (Throwable th2) {
            p0.n(this.f27283g);
            this.f27283g = null;
            File file2 = (File) p0.j(this.f27282f);
            this.f27282f = null;
            file2.delete();
            throw th2;
        }
    }

    private void c(com.google.android.exoplayer2.upstream.n nVar) {
        long j11 = nVar.f27444h;
        this.f27282f = this.f27277a.startFile((String) p0.j(nVar.f27445i), nVar.f27443g + this.f27285i, j11 != -1 ? Math.min(j11 - this.f27285i, this.f27281e) : -1L);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f27282f);
        if (this.f27279c > 0) {
            r rVar = this.f27286j;
            if (rVar == null) {
                this.f27286j = new r(fileOutputStream, this.f27279c);
            } else {
                rVar.b(fileOutputStream);
            }
            this.f27283g = this.f27286j;
        } else {
            this.f27283g = fileOutputStream;
        }
        this.f27284h = 0L;
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public void a(com.google.android.exoplayer2.upstream.n nVar) throws CacheDataSinkException {
        com.google.android.exoplayer2.util.a.e(nVar.f27445i);
        if (nVar.f27444h == -1 && nVar.d(2)) {
            this.f27280d = null;
            return;
        }
        this.f27280d = nVar;
        this.f27281e = nVar.d(4) ? this.f27278b : Long.MAX_VALUE;
        this.f27285i = 0L;
        try {
            c(nVar);
        } catch (IOException e11) {
            throw new CacheDataSinkException(e11);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public void close() throws CacheDataSinkException {
        if (this.f27280d == null) {
            return;
        }
        try {
            b();
        } catch (IOException e11) {
            throw new CacheDataSinkException(e11);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public void write(byte[] bArr, int i11, int i12) throws CacheDataSinkException {
        com.google.android.exoplayer2.upstream.n nVar = this.f27280d;
        if (nVar == null) {
            return;
        }
        int i13 = 0;
        while (i13 < i12) {
            try {
                if (this.f27284h == this.f27281e) {
                    b();
                    c(nVar);
                }
                int iMin = (int) Math.min(i12 - i13, this.f27281e - this.f27284h);
                ((OutputStream) p0.j(this.f27283g)).write(bArr, i11 + i13, iMin);
                i13 += iMin;
                long j11 = iMin;
                this.f27284h += j11;
                this.f27285i += j11;
            } catch (IOException e11) {
                throw new CacheDataSinkException(e11);
            }
        }
    }
}
