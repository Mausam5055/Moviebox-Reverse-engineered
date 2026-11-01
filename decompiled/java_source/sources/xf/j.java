package xf;

import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.zip.ZipException;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes5.dex */
public class j extends FilterOutputStream {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final byte[] f78287m = new byte[0];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final byte[] f78288n = {-1, -1, -1, -1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet f78289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f78290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f78291c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f78292d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ByteArrayOutputStream f78293e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private h f78294f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f78295g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private byte[] f78296h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private byte[] f78297i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f78298j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f78299k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f78300l;

    public j(OutputStream outputStream) {
        this(outputStream, false);
    }

    public j(OutputStream outputStream, boolean z10) {
        this(outputStream, z10, 4);
    }

    public j(OutputStream outputStream, boolean z10, int i11) {
        super(outputStream);
        this.f78289a = new HashSet();
        this.f78291c = f78287m;
        this.f78292d = 8;
        this.f78293e = new ByteArrayOutputStream();
        this.f78295g = 0L;
        this.f78300l = 0;
        this.f78290b = z10;
        this.f78299k = i11;
    }

    private void d() throws IOException {
        if (this.f78293e == null) {
            throw new IOException("Stream is closed");
        }
    }

    private void h(String str, byte[] bArr) {
        if (bArr.length <= 65535) {
            return;
        }
        throw new IllegalArgumentException(str + " too long in UTF-8:" + bArr.length + " bytes");
    }

    private int m(h hVar, long j11) {
        int i11;
        if (hVar.f() != 0 || (i11 = this.f78299k) == 0) {
            return 0;
        }
        return (int) ((((long) i11) - (j11 % ((long) i11))) % ((long) i11));
    }

    private void n(OutputStream outputStream, long j11) throws IOException {
        if (j11 <= 0) {
            return;
        }
        while (true) {
            long j12 = j11 - 1;
            if (j11 <= 0) {
                return;
            }
            outputStream.write(0);
            j11 = j12;
        }
    }

    static int q(OutputStream outputStream, int i11) throws IOException {
        outputStream.write(i11 & 255);
        outputStream.write((i11 >> 8) & 255);
        return i11;
    }

    static long r(OutputStream outputStream, long j11) throws IOException {
        outputStream.write((int) (255 & j11));
        outputStream.write(((int) (j11 >> 8)) & 255);
        outputStream.write(((int) (j11 >> 16)) & 255);
        outputStream.write(((int) (j11 >> 24)) & 255);
        return j11;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (((FilterOutputStream) this).out != null) {
            l();
            ((FilterOutputStream) this).out.close();
            ((FilterOutputStream) this).out = null;
        }
    }

    public void k() throws IOException {
        long j11;
        d();
        h hVar = this.f78294f;
        if (hVar == null) {
            return;
        }
        if (hVar.f() != 0) {
            r(((FilterOutputStream) this).out, 134695760L);
            r(((FilterOutputStream) this).out, this.f78294f.f78268c);
            r(((FilterOutputStream) this).out, this.f78294f.f78269d);
            r(((FilterOutputStream) this).out, this.f78294f.f78270e);
            j11 = 46;
        } else {
            j11 = 30;
        }
        int i11 = this.f78294f.f() == 0 ? 0 : 8;
        r(this.f78293e, 33639248L);
        q(this.f78293e, 20);
        q(this.f78293e, 20);
        q(this.f78293e, i11 | 2048);
        q(this.f78293e, this.f78294f.f());
        q(this.f78293e, this.f78294f.f78272g);
        q(this.f78293e, this.f78294f.f78273h);
        r(this.f78293e, this.f78294f.f78268c);
        long jB = j11 + (this.f78294f.f() == 8 ? this.f78294f.b() : this.f78294f.i());
        r(this.f78293e, this.f78294f.b());
        r(this.f78293e, this.f78294f.i());
        long jQ = jB + ((long) q(this.f78293e, this.f78296h.length));
        byte[] bArr = this.f78294f.f78274i;
        if (bArr != null) {
            jQ += (long) q(this.f78293e, bArr.length);
        } else {
            q(this.f78293e, 0);
        }
        q(this.f78293e, this.f78297i.length);
        q(this.f78293e, 0);
        q(this.f78293e, 0);
        r(this.f78293e, 0L);
        r(this.f78293e, this.f78294f.f78275j);
        this.f78293e.write(this.f78296h);
        this.f78296h = null;
        byte[] bArr2 = this.f78294f.f78274i;
        if (bArr2 != null) {
            this.f78293e.write(bArr2);
        }
        this.f78295g += jQ + ((long) this.f78300l);
        this.f78300l = 0;
        byte[] bArr3 = this.f78297i;
        if (bArr3.length > 0) {
            this.f78293e.write(bArr3);
            this.f78297i = f78287m;
        }
        this.f78294f = null;
    }

    public void l() throws IOException {
        if (((FilterOutputStream) this).out == null) {
            throw new IOException("Stream is closed");
        }
        if (this.f78293e == null) {
            return;
        }
        if (this.f78289a.isEmpty()) {
            throw new ZipException("No entries");
        }
        if (this.f78294f != null) {
            k();
        }
        int size = this.f78293e.size();
        r(this.f78293e, 101010256L);
        q(this.f78293e, 0);
        q(this.f78293e, 0);
        if (this.f78298j) {
            q(this.f78293e, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            q(this.f78293e, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            r(this.f78293e, -1L);
            r(this.f78293e, -1L);
        } else {
            q(this.f78293e, this.f78289a.size());
            q(this.f78293e, this.f78289a.size());
            r(this.f78293e, size);
            r(this.f78293e, this.f78295g + ((long) this.f78300l));
        }
        q(this.f78293e, this.f78291c.length);
        byte[] bArr = this.f78291c;
        if (bArr.length > 0) {
            this.f78293e.write(bArr);
        }
        this.f78293e.writeTo(((FilterOutputStream) this).out);
        this.f78293e = null;
    }

    public void o(h hVar) throws IOException {
        if (this.f78294f != null) {
            k();
        }
        int iF = hVar.f();
        if (iF == -1) {
            iF = this.f78292d;
        }
        if (iF == 0) {
            if (hVar.b() == -1) {
                hVar.j(hVar.i());
            } else if (hVar.i() == -1) {
                hVar.m(hVar.b());
            }
            if (hVar.c() == -1) {
                throw new ZipException("STORED entry missing CRC");
            }
            if (hVar.i() == -1) {
                throw new ZipException("STORED entry missing size");
            }
            if (hVar.f78270e != hVar.f78269d) {
                throw new ZipException("STORED entry size/compressed size mismatch");
            }
        }
        d();
        hVar.f78267b = null;
        hVar.f78274i = null;
        hVar.f78272g = 40691;
        hVar.f78273h = 18698;
        String str = hVar.f78266a;
        Charset charset = f.f78264a;
        byte[] bytes = str.getBytes(charset);
        this.f78296h = bytes;
        h("Name", bytes);
        this.f78297i = f78287m;
        String str2 = hVar.f78267b;
        if (str2 != null) {
            byte[] bytes2 = str2.getBytes(charset);
            this.f78297i = bytes2;
            h("Comment", bytes2);
        }
        hVar.l(iF);
        this.f78294f = hVar;
        hVar.f78275j = this.f78295g;
        this.f78289a.add(hVar.f78266a);
        int i11 = iF == 0 ? 0 : 8;
        r(((FilterOutputStream) this).out, 67324752L);
        q(((FilterOutputStream) this).out, 20);
        q(((FilterOutputStream) this).out, i11 | 2048);
        q(((FilterOutputStream) this).out, iF);
        q(((FilterOutputStream) this).out, this.f78294f.f78272g);
        q(((FilterOutputStream) this).out, this.f78294f.f78273h);
        if (iF == 0) {
            r(((FilterOutputStream) this).out, this.f78294f.f78268c);
            r(((FilterOutputStream) this).out, this.f78294f.f78270e);
            r(((FilterOutputStream) this).out, this.f78294f.f78270e);
        } else {
            r(((FilterOutputStream) this).out, 0L);
            r(((FilterOutputStream) this).out, 0L);
            r(((FilterOutputStream) this).out, 0L);
        }
        int length = this.f78296h.length;
        q(((FilterOutputStream) this).out, length);
        int iM = m(this.f78294f, this.f78295g + 30 + ((long) length) + ((long) (this.f78294f.e() != null ? this.f78294f.e().length : 0)));
        this.f78300l = iM;
        byte[] bArr = this.f78294f.f78274i;
        if (bArr != null) {
            q(((FilterOutputStream) this).out, bArr.length + iM);
        } else {
            q(((FilterOutputStream) this).out, iM);
        }
        ((FilterOutputStream) this).out.write(this.f78296h);
        byte[] bArr2 = this.f78294f.f78274i;
        if (bArr2 != null) {
            ((FilterOutputStream) this).out.write(bArr2);
        }
        n(((FilterOutputStream) this).out, this.f78300l);
    }

    public void p(String str) {
        if (str == null) {
            this.f78291c = f78287m;
            return;
        }
        byte[] bytes = str.getBytes(f.f78264a);
        h("Comment", bytes);
        this.f78291c = bytes;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i11, int i12) throws IOException {
        b.a(bArr.length, i11, i12);
        h hVar = this.f78294f;
        if (hVar == null) {
            throw new ZipException("No active entry");
        }
        if (hVar.f() == 0) {
            ((FilterOutputStream) this).out.write(bArr, i11, i12);
        } else {
            ((FilterOutputStream) this).out.write(bArr, i11, i12);
        }
    }
}
