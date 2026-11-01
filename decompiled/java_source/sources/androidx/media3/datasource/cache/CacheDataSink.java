package androidx.media3.datasource.cache;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class CacheDataSink implements w1.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Cache f10758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f10759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f10760c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private w1.h f10761d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f10762e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private File f10763f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private OutputStream f10764g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f10765h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f10766i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private r f10767j;

    public static final class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public static final class a implements w1.d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Cache f10768a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f10769b = 5242880;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f10770c = com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSink.DEFAULT_BUFFER_SIZE;

        public a a(Cache cache) {
            this.f10768a = cache;
            return this;
        }

        @Override // w1.d.a
        public w1.d createDataSink() {
            return new CacheDataSink((Cache) androidx.media3.common.util.a.e(this.f10768a), this.f10769b, this.f10770c);
        }
    }

    public CacheDataSink(Cache cache, long j11, int i11) {
        androidx.media3.common.util.a.h(j11 > 0 || j11 == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        if (j11 != -1 && j11 < 2097152) {
            u.h("CacheDataSink", "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.f10758a = (Cache) androidx.media3.common.util.a.e(cache);
        this.f10759b = j11 == -1 ? Long.MAX_VALUE : j11;
        this.f10760c = i11;
    }

    private void b() {
        OutputStream outputStream = this.f10764g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            a1.m(this.f10764g);
            this.f10764g = null;
            File file = (File) a1.i(this.f10763f);
            this.f10763f = null;
            this.f10758a.d(file, this.f10765h);
        } catch (Throwable th2) {
            a1.m(this.f10764g);
            this.f10764g = null;
            File file2 = (File) a1.i(this.f10763f);
            this.f10763f = null;
            file2.delete();
            throw th2;
        }
    }

    private void c(w1.h hVar) {
        long j11 = hVar.f77518h;
        this.f10763f = this.f10758a.startFile((String) a1.i(hVar.f77519i), hVar.f77517g + this.f10766i, j11 != -1 ? Math.min(j11 - this.f10766i, this.f10762e) : -1L);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f10763f);
        if (this.f10760c > 0) {
            r rVar = this.f10767j;
            if (rVar == null) {
                this.f10767j = new r(fileOutputStream, this.f10760c);
            } else {
                rVar.b(fileOutputStream);
            }
            this.f10764g = this.f10767j;
        } else {
            this.f10764g = fileOutputStream;
        }
        this.f10765h = 0L;
    }

    @Override // w1.d
    public void a(w1.h hVar) throws CacheDataSinkException {
        androidx.media3.common.util.a.e(hVar.f77519i);
        if (hVar.f77518h == -1 && hVar.d(2)) {
            this.f10761d = null;
            return;
        }
        this.f10761d = hVar;
        this.f10762e = hVar.d(4) ? this.f10759b : Long.MAX_VALUE;
        this.f10766i = 0L;
        try {
            c(hVar);
        } catch (IOException e11) {
            throw new CacheDataSinkException(e11);
        }
    }

    @Override // w1.d
    public void close() throws CacheDataSinkException {
        if (this.f10761d == null) {
            return;
        }
        try {
            b();
        } catch (IOException e11) {
            throw new CacheDataSinkException(e11);
        }
    }

    @Override // w1.d
    public void write(byte[] bArr, int i11, int i12) throws CacheDataSinkException {
        w1.h hVar = this.f10761d;
        if (hVar == null) {
            return;
        }
        int i13 = 0;
        while (i13 < i12) {
            try {
                if (this.f10765h == this.f10762e) {
                    b();
                    c(hVar);
                }
                int iMin = (int) Math.min(i12 - i13, this.f10762e - this.f10765h);
                ((OutputStream) a1.i(this.f10764g)).write(bArr, i11 + i13, iMin);
                i13 += iMin;
                long j11 = iMin;
                this.f10765h += j11;
                this.f10766i += j11;
            } catch (IOException e11) {
                throw new CacheDataSinkException(e11);
            }
        }
    }
}
