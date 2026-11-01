package e10;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import org.jsoup.helper.d;

/* JADX INFO: loaded from: classes7.dex */
public final class a extends BufferedInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f61482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f61483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f61484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f61485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f61486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f61487f;

    private a(InputStream inputStream, int i11, int i12) {
        super(inputStream, i11);
        this.f61485d = 0L;
        d.d(i12 >= 0);
        this.f61483b = i12;
        this.f61486e = i12;
        this.f61482a = i12 != 0;
        this.f61484c = System.nanoTime();
    }

    private boolean d() {
        return this.f61485d != 0 && System.nanoTime() - this.f61484c > this.f61485d;
    }

    public static a k(InputStream inputStream, int i11, int i12) {
        return inputStream instanceof a ? (a) inputStream : new a(inputStream, i11, i12);
    }

    public ByteBuffer h(int i11) throws IOException {
        d.e(i11 >= 0, "maxSize must be 0 (unlimited) or larger");
        boolean z10 = i11 > 0;
        int i12 = 32768;
        if (z10 && i11 < 32768) {
            i12 = i11;
        }
        byte[] bArr = new byte[i12];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i12);
        while (true) {
            int i13 = read(bArr);
            if (i13 == -1) {
                break;
            }
            if (z10) {
                if (i13 >= i11) {
                    byteArrayOutputStream.write(bArr, 0, i11);
                    break;
                }
                i11 -= i13;
            }
            byteArrayOutputStream.write(bArr, 0, i13);
        }
        return ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
    }

    public a i(long j11, long j12) {
        this.f61484c = j11;
        this.f61485d = j12 * 1000000;
        return this;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) throws IOException {
        int i13;
        if (this.f61487f || (this.f61482a && this.f61486e <= 0)) {
            return -1;
        }
        if (Thread.interrupted()) {
            this.f61487f = true;
            return -1;
        }
        if (d()) {
            throw new SocketTimeoutException("Read timeout");
        }
        if (this.f61482a && i12 > (i13 = this.f61486e)) {
            i12 = i13;
        }
        try {
            int i14 = super.read(bArr, i11, i12);
            this.f61486e -= i14;
            return i14;
        } catch (SocketTimeoutException unused) {
            return 0;
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        this.f61486e = this.f61483b - ((BufferedInputStream) this).markpos;
    }
}
