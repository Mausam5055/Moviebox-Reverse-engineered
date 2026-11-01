package xl;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
class l implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f78366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Charset f78367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f78368c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f78369d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f78370e;

    class a extends ByteArrayOutputStream {
        a(int i11) {
            super(i11);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i11 = ((ByteArrayOutputStream) this).count;
            if (i11 > 0) {
                int i12 = i11 - 1;
                if (((ByteArrayOutputStream) this).buf[i12] == 13) {
                    i11 = i12;
                }
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i11, l.this.f78367b.name());
            } catch (UnsupportedEncodingException e11) {
                throw new AssertionError(e11);
            }
        }
    }

    public l(InputStream inputStream, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (!charset.equals(d.f78320a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f78366a = inputStream;
        this.f78367b = charset;
        this.f78368c = new byte[8192];
    }

    private void k() throws IOException {
        InputStream inputStream = this.f78366a;
        byte[] bArr = this.f78368c;
        int i11 = inputStream.read(bArr, 0, bArr.length);
        if (i11 == -1) {
            throw new EOFException();
        }
        this.f78369d = 0;
        this.f78370e = i11;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f78366a) {
            try {
                if (this.f78368c != null) {
                    this.f78368c = null;
                    this.f78366a.close();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean d() {
        return this.f78370e == -1;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public String h() {
        int i11;
        byte[] bArr;
        int i12;
        synchronized (this.f78366a) {
            try {
                if (this.f78368c == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f78369d >= this.f78370e) {
                    k();
                }
                for (int i13 = this.f78369d; i13 != this.f78370e; i13++) {
                    byte[] bArr2 = this.f78368c;
                    if (bArr2[i13] == 10) {
                        int i14 = this.f78369d;
                        if (i13 != i14) {
                            i12 = i13 - 1;
                            if (bArr2[i12] != 13) {
                                i12 = i13;
                            }
                        } else {
                            i12 = i13;
                        }
                        String str = new String(bArr2, i14, i12 - i14, this.f78367b.name());
                        this.f78369d = i13 + 1;
                        return str;
                    }
                }
                a aVar = new a((this.f78370e - this.f78369d) + 80);
                loop1: while (true) {
                    byte[] bArr3 = this.f78368c;
                    int i15 = this.f78369d;
                    aVar.write(bArr3, i15, this.f78370e - i15);
                    this.f78370e = -1;
                    k();
                    i11 = this.f78369d;
                    while (i11 != this.f78370e) {
                        bArr = this.f78368c;
                        if (bArr[i11] == 10) {
                            break loop1;
                        }
                        i11++;
                    }
                }
                int i16 = this.f78369d;
                if (i11 != i16) {
                    aVar.write(bArr, i16, i11 - i16);
                }
                this.f78369d = i11 + 1;
                return aVar.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
