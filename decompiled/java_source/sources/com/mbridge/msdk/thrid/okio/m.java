package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
final class m implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f38457a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f38458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f38459c;

    m(r rVar) {
        if (rVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.f38458b = rVar;
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public c a() {
        return this.f38457a;
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d a(long j11) throws IOException {
        if (this.f38459c) {
            throw new IllegalStateException("closed");
        }
        this.f38457a.a(j11);
        return d();
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d a(String str) throws IOException {
        if (this.f38459c) {
            throw new IllegalStateException("closed");
        }
        this.f38457a.a(str);
        return d();
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public void a(c cVar, long j11) throws IOException {
        if (this.f38459c) {
            throw new IllegalStateException("closed");
        }
        this.f38457a.a(cVar, j11);
        d();
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public t b() {
        return this.f38458b.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f38459c) {
            return;
        }
        c cVar = this.f38457a;
        long j11 = cVar.f38432b;
        if (j11 > 0) {
            this.f38458b.a(cVar, j11);
        }
        th = null;
        try {
            this.f38458b.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f38459c = true;
        if (th != null) {
            u.a(th);
        }
    }

    public d d() throws IOException {
        if (this.f38459c) {
            throw new IllegalStateException("closed");
        }
        long jM = this.f38457a.m();
        if (jM > 0) {
            this.f38458b.a(this.f38457a, jM);
        }
        return this;
    }

    @Override // com.mbridge.msdk.thrid.okio.d, com.mbridge.msdk.thrid.okio.r, java.io.Flushable
    public void flush() throws IOException {
        if (this.f38459c) {
            throw new IllegalStateException("closed");
        }
        c cVar = this.f38457a;
        long j11 = cVar.f38432b;
        if (j11 > 0) {
            this.f38458b.a(cVar, j11);
        }
        this.f38458b.flush();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f38459c;
    }

    public String toString() {
        return "buffer(" + this.f38458b + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (this.f38459c) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.f38457a.write(byteBuffer);
        d();
        return iWrite;
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d write(byte[] bArr) throws IOException {
        if (this.f38459c) {
            throw new IllegalStateException("closed");
        }
        this.f38457a.write(bArr);
        return d();
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d write(byte[] bArr, int i11, int i12) throws IOException {
        if (this.f38459c) {
            throw new IllegalStateException("closed");
        }
        this.f38457a.write(bArr, i11, i12);
        return d();
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d writeByte(int i11) throws IOException {
        if (this.f38459c) {
            throw new IllegalStateException("closed");
        }
        this.f38457a.writeByte(i11);
        return d();
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d writeInt(int i11) throws IOException {
        if (this.f38459c) {
            throw new IllegalStateException("closed");
        }
        this.f38457a.writeInt(i11);
        return d();
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d writeShort(int i11) throws IOException {
        if (this.f38459c) {
            throw new IllegalStateException("closed");
        }
        this.f38457a.writeShort(i11);
        return d();
    }
}
