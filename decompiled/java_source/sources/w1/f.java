package w1;

import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.datasource.a f77505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f77506b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f77510f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f77508d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f77509e = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f77507c = new byte[1];

    public f(androidx.media3.datasource.a aVar, h hVar) {
        this.f77505a = aVar;
        this.f77506b = hVar;
    }

    private void d() {
        if (this.f77508d) {
            return;
        }
        this.f77505a.a(this.f77506b);
        this.f77508d = true;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f77509e) {
            return;
        }
        this.f77505a.close();
        this.f77509e = true;
    }

    public void h() {
        d();
    }

    @Override // java.io.InputStream
    public int read() {
        if (read(this.f77507c) == -1) {
            return -1;
        }
        return this.f77507c[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) {
        androidx.media3.common.util.a.g(!this.f77509e);
        d();
        int i13 = this.f77505a.read(bArr, i11, i12);
        if (i13 == -1) {
            return -1;
        }
        this.f77510f += (long) i13;
        return i13;
    }
}
