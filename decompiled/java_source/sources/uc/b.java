package uc;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OutputStream f76720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Timer f76721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    i f76722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f76723d = -1;

    public b(OutputStream outputStream, i iVar, Timer timer) {
        this.f76720a = outputStream;
        this.f76722c = iVar;
        this.f76721b = timer;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        long j11 = this.f76723d;
        if (j11 != -1) {
            this.f76722c.j(j11);
        }
        this.f76722c.n(this.f76721b.getDurationMicros());
        try {
            this.f76720a.close();
        } catch (IOException e11) {
            this.f76722c.o(this.f76721b.getDurationMicros());
            f.d(this.f76722c);
            throw e11;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.f76720a.flush();
        } catch (IOException e11) {
            this.f76722c.o(this.f76721b.getDurationMicros());
            f.d(this.f76722c);
            throw e11;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i11) throws IOException {
        try {
            this.f76720a.write(i11);
            long j11 = this.f76723d + 1;
            this.f76723d = j11;
            this.f76722c.j(j11);
        } catch (IOException e11) {
            this.f76722c.o(this.f76721b.getDurationMicros());
            f.d(this.f76722c);
            throw e11;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.f76720a.write(bArr);
            long length = this.f76723d + ((long) bArr.length);
            this.f76723d = length;
            this.f76722c.j(length);
        } catch (IOException e11) {
            this.f76722c.o(this.f76721b.getDurationMicros());
            f.d(this.f76722c);
            throw e11;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i11, int i12) throws IOException {
        try {
            this.f76720a.write(bArr, i11, i12);
            long j11 = this.f76723d + ((long) i12);
            this.f76723d = j11;
            this.f76722c.j(j11);
        } catch (IOException e11) {
            this.f76722c.o(this.f76721b.getDurationMicros());
            f.d(this.f76722c);
            throw e11;
        }
    }
}
