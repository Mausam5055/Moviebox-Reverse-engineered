package com.bykv.vk.openvk.preload.geckox.buffer.a;

import com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
final class c implements com.bykv.vk.openvk.preload.geckox.buffer.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f20642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f20643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RandomAccessFile f20644c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicBoolean f20645d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private File f20646e;

    c(long j11, File file) throws IOException {
        this.f20642a = j11;
        this.f20646e = file;
        file.getParentFile().mkdirs();
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            this.f20644c = randomAccessFile;
            randomAccessFile.setLength(j11);
        } catch (Exception e11) {
            CloseableUtils.close(this.f20644c);
            throw new IOException("create raf swap failed! path: " + file.getAbsolutePath() + " caused by: " + e11.getMessage(), e11);
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int a(byte[] bArr, int i11, int i12) throws IOException {
        if (this.f20645d.get()) {
            throw new IOException("released!");
        }
        if (bArr == null || bArr.length == 0 || i12 <= 0 || i11 < 0 || i11 >= bArr.length) {
            return 0;
        }
        if (i11 + i12 > bArr.length) {
            i12 = bArr.length - i11;
        }
        synchronized (this) {
            try {
                long j11 = this.f20643b;
                long j12 = this.f20642a;
                if (j11 == j12) {
                    return 0;
                }
                if (((long) i12) + j11 > j12) {
                    i12 = (int) (j12 - j11);
                }
                this.f20644c.write(bArr, i11, i12);
                this.f20643b += (long) i12;
                return i12;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final synchronized long a(long j11) throws IOException {
        int iSkipBytes;
        if (this.f20645d.get()) {
            throw new IOException("released!");
        }
        int i11 = (int) j11;
        if (i11 != j11) {
            throw new IOException("too large:".concat(String.valueOf(j11)));
        }
        iSkipBytes = this.f20644c.skipBytes(i11);
        this.f20643b = this.f20644c.getFilePointer();
        return iSkipBytes;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void a() throws IOException {
        if (this.f20645d.get()) {
            throw new IOException("released!");
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void a(int i11) throws IOException {
        a(new byte[]{(byte) i11});
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void a(byte[] bArr) throws IOException {
        a(bArr, 0, bArr.length);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int b(byte[] bArr) throws IOException {
        return b(bArr, 0, bArr.length);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int b(byte[] bArr, int i11, int i12) throws IOException {
        if (this.f20645d.get()) {
            throw new IOException("released!");
        }
        if (bArr == null || i12 <= 0 || i11 < 0 || i11 >= bArr.length) {
            return 0;
        }
        if (i11 + i12 > bArr.length) {
            i12 = bArr.length - i11;
        }
        synchronized (this) {
            try {
                long j11 = this.f20643b;
                long j12 = this.f20642a;
                if (j11 == j12) {
                    return -1;
                }
                if (((long) i12) + j11 > j12) {
                    i12 = (int) (j12 - j11);
                }
                int i13 = this.f20644c.read(bArr, i11, i12);
                if (i13 == -1) {
                    return -1;
                }
                this.f20643b += (long) i13;
                return i13;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final long b() {
        return this.f20642a;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000e A[PHI: r0
  0x000e: PHI (r0v5 long) = (r0v2 long), (r0v3 long) binds: [B:5:0x000c, B:8:0x0014] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void b(long j11) throws IOException {
        if (this.f20645d.get()) {
            throw new IOException("released!");
        }
        long j12 = 0;
        if (j11 < 0) {
            j11 = j12;
        } else {
            j12 = this.f20642a;
            if (j11 > j12) {
                j11 = j12;
            }
        }
        this.f20643b = j11;
        this.f20644c.seek(j11);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final long c() throws IOException {
        if (this.f20645d.get()) {
            throw new IOException("released!");
        }
        return this.f20643b;
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final int d() throws IOException {
        byte[] bArr = new byte[1];
        if (b(bArr) == 0) {
            return -1;
        }
        return bArr[0];
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final void e() {
        if (this.f20645d.getAndSet(true)) {
            return;
        }
        CloseableUtils.close(this.f20644c);
    }

    @Override // com.bykv.vk.openvk.preload.geckox.buffer.a
    public final File f() {
        return this.f20646e;
    }
}
