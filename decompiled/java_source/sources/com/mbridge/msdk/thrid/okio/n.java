package com.mbridge.msdk.thrid.okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
final class n implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f38460a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s f38461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f38462c;

    class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            n nVar = n.this;
            if (nVar.f38462c) {
                throw new IOException("closed");
            }
            return (int) Math.min(nVar.f38460a.f38432b, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            n.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            n nVar = n.this;
            if (nVar.f38462c) {
                throw new IOException("closed");
            }
            c cVar = nVar.f38460a;
            if (cVar.f38432b == 0 && nVar.f38461b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1;
            }
            return n.this.f38460a.readByte() & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i11, int i12) throws IOException {
            if (n.this.f38462c) {
                throw new IOException("closed");
            }
            u.a(bArr.length, i11, i12);
            n nVar = n.this;
            c cVar = nVar.f38460a;
            if (cVar.f38432b == 0 && nVar.f38461b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1;
            }
            return n.this.f38460a.read(bArr, i11, i12);
        }

        public String toString() {
            return n.this + ".inputStream()";
        }
    }

    n(s sVar) {
        if (sVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f38461b = sVar;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public long a(byte b11) throws IOException {
        return a(b11, 0L, Long.MAX_VALUE);
    }

    public long a(byte b11, long j11, long j12) throws IOException {
        if (this.f38462c) {
            throw new IllegalStateException("closed");
        }
        if (j11 < 0 || j12 < j11) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j11), Long.valueOf(j12)));
        }
        while (j11 < j12) {
            long jA = this.f38460a.a(b11, j11, j12);
            if (jA != -1) {
                return jA;
            }
            c cVar = this.f38460a;
            long j13 = cVar.f38432b;
            if (j13 >= j12 || this.f38461b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                break;
            }
            j11 = Math.max(j11, j13);
        }
        return -1L;
    }

    @Override // com.mbridge.msdk.thrid.okio.e, com.mbridge.msdk.thrid.okio.d
    public c a() {
        return this.f38460a;
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public long b(c cVar, long j11) throws IOException {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j11 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j11);
        }
        if (this.f38462c) {
            throw new IllegalStateException("closed");
        }
        c cVar2 = this.f38460a;
        if (cVar2.f38432b == 0 && this.f38461b.b(cVar2, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.f38460a.b(cVar, Math.min(j11, this.f38460a.f38432b));
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public f b(long j11) throws IOException {
        e(j11);
        return this.f38460a.b(j11);
    }

    @Override // com.mbridge.msdk.thrid.okio.s
    public t b() {
        return this.f38461b.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String c() throws IOException {
        return d(Long.MAX_VALUE);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte[] c(long j11) throws IOException {
        e(j11);
        return this.f38460a.c(j11);
    }

    @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f38462c) {
            return;
        }
        this.f38462c = true;
        this.f38461b.close();
        this.f38460a.k();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public String d(long j11) throws IOException {
        if (j11 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j11);
        }
        long j12 = j11 == Long.MAX_VALUE ? Long.MAX_VALUE : j11 + 1;
        long jA = a((byte) 10, 0L, j12);
        if (jA != -1) {
            return this.f38460a.h(jA);
        }
        if (j12 < Long.MAX_VALUE && f(j12) && this.f38460a.f(j12 - 1) == 13 && f(1 + j12) && this.f38460a.f(j12) == 10) {
            return this.f38460a.h(j12);
        }
        c cVar = new c();
        c cVar2 = this.f38460a;
        cVar2.a(cVar, 0L, Math.min(32L, cVar2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f38460a.size(), j11) + " content=" + cVar.o().b() + (char) 8230);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int e() throws IOException {
        e(4L);
        return this.f38460a.e();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void e(long j11) throws IOException {
        if (!f(j11)) {
            throw new EOFException();
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public boolean f() throws IOException {
        if (this.f38462c) {
            throw new IllegalStateException("closed");
        }
        return this.f38460a.f() && this.f38461b.b(this.f38460a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    public boolean f(long j11) throws IOException {
        c cVar;
        if (j11 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j11);
        }
        if (this.f38462c) {
            throw new IllegalStateException("closed");
        }
        do {
            cVar = this.f38460a;
            if (cVar.f38432b >= j11) {
                return true;
            }
        } while (this.f38461b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return false;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short g() throws IOException {
        e(2L);
        return this.f38460a.g();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public long i() throws IOException {
        e(1L);
        int i11 = 0;
        while (true) {
            int i12 = i11 + 1;
            if (!f(i12)) {
                break;
            }
            byte bF = this.f38460a.f(i11);
            if ((bF < 48 || bF > 57) && ((bF < 97 || bF > 102) && (bF < 65 || bF > 70))) {
                if (i11 != 0) {
                    break;
                }
                throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bF)));
            }
            i11 = i12;
        }
        return this.f38460a.i();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f38462c;
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public InputStream j() {
        return new a();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        c cVar = this.f38460a;
        if (cVar.f38432b == 0 && this.f38461b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.f38460a.read(byteBuffer);
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public byte readByte() throws IOException {
        e(1L);
        return this.f38460a.readByte();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void readFully(byte[] bArr) throws IOException {
        try {
            e(bArr.length);
            this.f38460a.readFully(bArr);
        } catch (EOFException e11) {
            int i11 = 0;
            while (true) {
                c cVar = this.f38460a;
                long j11 = cVar.f38432b;
                if (j11 <= 0) {
                    throw e11;
                }
                int i12 = cVar.read(bArr, i11, (int) j11);
                if (i12 == -1) {
                    throw new AssertionError();
                }
                i11 += i12;
            }
        }
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public int readInt() throws IOException {
        e(4L);
        return this.f38460a.readInt();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public short readShort() throws IOException {
        e(2L);
        return this.f38460a.readShort();
    }

    @Override // com.mbridge.msdk.thrid.okio.e
    public void skip(long j11) throws IOException {
        if (this.f38462c) {
            throw new IllegalStateException("closed");
        }
        while (j11 > 0) {
            c cVar = this.f38460a;
            if (cVar.f38432b == 0 && this.f38461b.b(cVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j11, this.f38460a.size());
            this.f38460a.skip(jMin);
            j11 -= jMin;
        }
    }

    public String toString() {
        return "buffer(" + this.f38461b + ")";
    }
}
