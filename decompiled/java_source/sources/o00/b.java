package o00;

import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f70640a = new byte[1];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f70641b = 0;

    protected void b(int i11) {
        h(i11);
    }

    protected void h(long j11) {
        if (j11 != -1) {
            this.f70641b += j11;
        }
    }

    public long k() {
        return this.f70641b;
    }

    protected void l(long j11) {
        this.f70641b -= j11;
    }

    @Override // java.io.InputStream
    public int read() {
        if (read(this.f70640a, 0, 1) == -1) {
            return -1;
        }
        return this.f70640a[0] & 255;
    }
}
