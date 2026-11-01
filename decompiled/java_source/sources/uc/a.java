package uc;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f76714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f76715b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Timer f76716c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f76718e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f76717d = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f76719f = -1;

    public a(InputStream inputStream, i iVar, Timer timer) {
        this.f76716c = timer;
        this.f76714a = inputStream;
        this.f76715b = iVar;
        this.f76718e = iVar.c();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        try {
            return this.f76714a.available();
        } catch (IOException e11) {
            this.f76715b.o(this.f76716c.getDurationMicros());
            f.d(this.f76715b);
            throw e11;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        long durationMicros = this.f76716c.getDurationMicros();
        if (this.f76719f == -1) {
            this.f76719f = durationMicros;
        }
        try {
            this.f76714a.close();
            long j11 = this.f76717d;
            if (j11 != -1) {
                this.f76715b.m(j11);
            }
            long j12 = this.f76718e;
            if (j12 != -1) {
                this.f76715b.p(j12);
            }
            this.f76715b.o(this.f76719f);
            this.f76715b.a();
        } catch (IOException e11) {
            this.f76715b.o(this.f76716c.getDurationMicros());
            f.d(this.f76715b);
            throw e11;
        }
    }

    @Override // java.io.InputStream
    public void mark(int i11) {
        this.f76714a.mark(i11);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f76714a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            int i11 = this.f76714a.read();
            long durationMicros = this.f76716c.getDurationMicros();
            if (this.f76718e == -1) {
                this.f76718e = durationMicros;
            }
            if (i11 == -1 && this.f76719f == -1) {
                this.f76719f = durationMicros;
                this.f76715b.o(durationMicros);
                this.f76715b.a();
            } else {
                long j11 = this.f76717d + 1;
                this.f76717d = j11;
                this.f76715b.m(j11);
            }
            return i11;
        } catch (IOException e11) {
            this.f76715b.o(this.f76716c.getDurationMicros());
            f.d(this.f76715b);
            throw e11;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            int i11 = this.f76714a.read(bArr);
            long durationMicros = this.f76716c.getDurationMicros();
            if (this.f76718e == -1) {
                this.f76718e = durationMicros;
            }
            if (i11 == -1 && this.f76719f == -1) {
                this.f76719f = durationMicros;
                this.f76715b.o(durationMicros);
                this.f76715b.a();
            } else {
                long j11 = this.f76717d + ((long) i11);
                this.f76717d = j11;
                this.f76715b.m(j11);
            }
            return i11;
        } catch (IOException e11) {
            this.f76715b.o(this.f76716c.getDurationMicros());
            f.d(this.f76715b);
            throw e11;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) throws IOException {
        try {
            int i13 = this.f76714a.read(bArr, i11, i12);
            long durationMicros = this.f76716c.getDurationMicros();
            if (this.f76718e == -1) {
                this.f76718e = durationMicros;
            }
            if (i13 == -1 && this.f76719f == -1) {
                this.f76719f = durationMicros;
                this.f76715b.o(durationMicros);
                this.f76715b.a();
            } else {
                long j11 = this.f76717d + ((long) i13);
                this.f76717d = j11;
                this.f76715b.m(j11);
            }
            return i13;
        } catch (IOException e11) {
            this.f76715b.o(this.f76716c.getDurationMicros());
            f.d(this.f76715b);
            throw e11;
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        try {
            this.f76714a.reset();
        } catch (IOException e11) {
            this.f76715b.o(this.f76716c.getDurationMicros());
            f.d(this.f76715b);
            throw e11;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j11) throws IOException {
        try {
            long jSkip = this.f76714a.skip(j11);
            long durationMicros = this.f76716c.getDurationMicros();
            if (this.f76718e == -1) {
                this.f76718e = durationMicros;
            }
            if (jSkip == -1 && this.f76719f == -1) {
                this.f76719f = durationMicros;
                this.f76715b.o(durationMicros);
            } else {
                long j12 = this.f76717d + jSkip;
                this.f76717d = j12;
                this.f76715b.m(j12);
            }
            return jSkip;
        } catch (IOException e11) {
            this.f76715b.o(this.f76716c.getDurationMicros());
            f.d(this.f76715b);
            throw e11;
        }
    }
}
