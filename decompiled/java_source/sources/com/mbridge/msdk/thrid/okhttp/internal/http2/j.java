package com.mbridge.msdk.thrid.okhttp.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
final class j implements Closeable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Logger f38202g = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okio.d f38203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f38204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okio.c f38205c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f38206d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f38207e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final d.b f38208f;

    j(com.mbridge.msdk.thrid.okio.d dVar, boolean z10) {
        this.f38203a = dVar;
        this.f38204b = z10;
        com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
        this.f38205c = cVar;
        this.f38208f = new d.b(cVar);
        this.f38206d = 16384;
    }

    private static void a(com.mbridge.msdk.thrid.okio.d dVar, int i11) throws IOException {
        dVar.writeByte((i11 >>> 16) & 255);
        dVar.writeByte((i11 >>> 8) & 255);
        dVar.writeByte(i11 & 255);
    }

    private void b(int i11, long j11) throws IOException {
        while (j11 > 0) {
            int iMin = (int) Math.min(this.f38206d, j11);
            long j12 = iMin;
            j11 -= j12;
            a(i11, iMin, (byte) 9, j11 == 0 ? (byte) 4 : (byte) 0);
            this.f38203a.a(this.f38205c, j12);
        }
    }

    void a(int i11, byte b11, com.mbridge.msdk.thrid.okio.c cVar, int i12) throws IOException {
        a(i11, i12, (byte) 0, b11);
        if (i12 > 0) {
            this.f38203a.a(cVar, i12);
        }
    }

    public void a(int i11, int i12, byte b11, byte b12) throws IOException {
        Logger logger = f38202g;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(e.a(false, i11, i12, b11, b12));
        }
        int i13 = this.f38206d;
        if (i12 > i13) {
            throw e.a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i13), Integer.valueOf(i12));
        }
        if ((Integer.MIN_VALUE & i11) != 0) {
            throw e.a("reserved bit set: %s", Integer.valueOf(i11));
        }
        a(this.f38203a, i12);
        this.f38203a.writeByte(b11 & 255);
        this.f38203a.writeByte(b12 & 255);
        this.f38203a.writeInt(i11 & Integer.MAX_VALUE);
    }

    public synchronized void a(int i11, int i12, List<c> list) throws IOException {
        if (this.f38207e) {
            throw new IOException("closed");
        }
        this.f38208f.a(list);
        long size = this.f38205c.size();
        int iMin = (int) Math.min(this.f38206d - 4, size);
        long j11 = iMin;
        a(i11, iMin + 4, (byte) 5, size == j11 ? (byte) 4 : (byte) 0);
        this.f38203a.writeInt(i12 & Integer.MAX_VALUE);
        this.f38203a.a(this.f38205c, j11);
        if (size > j11) {
            b(i11, size - j11);
        }
    }

    public synchronized void a(int i11, long j11) throws IOException {
        if (this.f38207e) {
            throw new IOException("closed");
        }
        if (j11 == 0 || j11 > 2147483647L) {
            throw e.a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j11));
        }
        a(i11, 4, (byte) 8, (byte) 0);
        this.f38203a.writeInt((int) j11);
        this.f38203a.flush();
    }

    public synchronized void a(int i11, b bVar) throws IOException {
        if (this.f38207e) {
            throw new IOException("closed");
        }
        if (bVar.f38052a == -1) {
            throw new IllegalArgumentException();
        }
        a(i11, 4, (byte) 3, (byte) 0);
        this.f38203a.writeInt(bVar.f38052a);
        this.f38203a.flush();
    }

    public synchronized void a(int i11, b bVar, byte[] bArr) throws IOException {
        try {
            if (this.f38207e) {
                throw new IOException("closed");
            }
            if (bVar.f38052a == -1) {
                throw e.a("errorCode.httpCode == -1", new Object[0]);
            }
            a(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.f38203a.writeInt(i11);
            this.f38203a.writeInt(bVar.f38052a);
            if (bArr.length > 0) {
                this.f38203a.write(bArr);
            }
            this.f38203a.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void a(m mVar) throws IOException {
        try {
            if (this.f38207e) {
                throw new IOException("closed");
            }
            this.f38206d = mVar.c(this.f38206d);
            if (mVar.b() != -1) {
                this.f38208f.b(mVar.b());
            }
            a(0, 0, (byte) 4, (byte) 1);
            this.f38203a.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void a(boolean z10, int i11, int i12) throws IOException {
        if (this.f38207e) {
            throw new IOException("closed");
        }
        a(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
        this.f38203a.writeInt(i11);
        this.f38203a.writeInt(i12);
        this.f38203a.flush();
    }

    public synchronized void a(boolean z10, int i11, int i12, List<c> list) throws IOException {
        if (this.f38207e) {
            throw new IOException("closed");
        }
        a(z10, i11, list);
    }

    public synchronized void a(boolean z10, int i11, com.mbridge.msdk.thrid.okio.c cVar, int i12) throws IOException {
        if (this.f38207e) {
            throw new IOException("closed");
        }
        a(i11, z10 ? (byte) 1 : (byte) 0, cVar, i12);
    }

    void a(boolean z10, int i11, List<c> list) throws IOException {
        if (this.f38207e) {
            throw new IOException("closed");
        }
        this.f38208f.a(list);
        long size = this.f38205c.size();
        int iMin = (int) Math.min(this.f38206d, size);
        long j11 = iMin;
        byte b11 = size == j11 ? (byte) 4 : (byte) 0;
        if (z10) {
            b11 = (byte) (b11 | 1);
        }
        a(i11, iMin, (byte) 1, b11);
        this.f38203a.a(this.f38205c, j11);
        if (size > j11) {
            b(i11, size - j11);
        }
    }

    public synchronized void b(m mVar) throws IOException {
        int i11;
        try {
            if (this.f38207e) {
                throw new IOException("closed");
            }
            int i12 = 0;
            a(0, mVar.d() * 6, (byte) 4, (byte) 0);
            while (i12 < 10) {
                if (mVar.d(i12)) {
                    if (i12 == 4) {
                        i11 = 3;
                    } else {
                        i11 = i12 == 7 ? 4 : i12;
                    }
                    this.f38203a.writeShort(i11);
                    this.f38203a.writeInt(mVar.a(i12));
                }
                i12++;
            }
            this.f38203a.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f38207e = true;
        this.f38203a.close();
    }

    public synchronized void d() throws IOException {
        try {
            if (this.f38207e) {
                throw new IOException("closed");
            }
            if (this.f38204b) {
                Logger logger = f38202g;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(com.mbridge.msdk.thrid.okhttp.internal.c.a(">> CONNECTION %s", e.f38082a.b()));
                }
                this.f38203a.write(e.f38082a.g());
                this.f38203a.flush();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void flush() throws IOException {
        if (this.f38207e) {
            throw new IOException("closed");
        }
        this.f38203a.flush();
    }

    public int h() {
        return this.f38206d;
    }
}
