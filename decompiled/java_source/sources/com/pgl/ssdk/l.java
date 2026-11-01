package com.pgl.ssdk;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes5.dex */
public class l implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FileChannel f40176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f40177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f40178c;

    public l(FileChannel fileChannel, long j11, long j12) {
        if (j11 < 0) {
            throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j12)));
        }
        if (j12 < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j12)));
        }
        this.f40176a = fileChannel;
        this.f40177b = j11;
        this.f40178c = j12;
    }

    private static void a(long j11, long j12, long j13) {
        if (j11 < 0) {
            throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j11)));
        }
        if (j12 < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j12)));
        }
        if (j11 > j13) {
            throw new IndexOutOfBoundsException("offset (" + j11 + ") > source size (" + j13 + ")");
        }
        long j14 = j11 + j12;
        if (j14 < j11) {
            throw new IndexOutOfBoundsException("offset (" + j11 + ") + size (" + j12 + ") overflow");
        }
        if (j14 <= j13) {
            return;
        }
        throw new IndexOutOfBoundsException("offset (" + j11 + ") + size (" + j12 + ") > source size (" + j13 + ")");
    }

    @Override // com.pgl.ssdk.o
    public long a() {
        long j11 = this.f40178c;
        if (j11 != -1) {
            return j11;
        }
        try {
            return this.f40176a.size();
        } catch (IOException unused) {
            return 0L;
        }
    }

    @Override // com.pgl.ssdk.o
    public ByteBuffer a(long j11, int i11) throws IOException {
        if (i11 < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(i11)));
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i11);
        a(j11, i11, byteBufferAllocate);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    public void a(long j11, int i11, ByteBuffer byteBuffer) throws IOException {
        int i12;
        a(j11, i11, a());
        if (i11 == 0) {
            return;
        }
        if (i11 > byteBuffer.remaining()) {
            throw new BufferOverflowException();
        }
        long j12 = this.f40177b + j11;
        int iLimit = byteBuffer.limit();
        try {
            byteBuffer.limit(byteBuffer.position() + i11);
            while (i11 > 0) {
                synchronized (this.f40176a) {
                    this.f40176a.position(j12);
                    i12 = this.f40176a.read(byteBuffer);
                }
                j12 += (long) i12;
                i11 -= i12;
            }
            byteBuffer.limit(iLimit);
        } catch (Throwable th2) {
            byteBuffer.limit(iLimit);
            throw th2;
        }
    }

    @Override // com.pgl.ssdk.o
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public l a(long j11, long j12) {
        long jA = a();
        a(j11, j12, jA);
        return (j11 == 0 && j12 == jA) ? this : new l(this.f40176a, this.f40177b + j11, j12);
    }
}
