package p00;

import com.google.android.gms.gcm.Task;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.compress.archivers.zip.r;
import org.apache.commons.compress.archivers.zip.s;

/* JADX INFO: loaded from: classes7.dex */
public class b extends o00.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f72254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f72255d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f72256e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f72257f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f72258g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f72259h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final InputStream f72260i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private a f72261j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final r f72262k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final String f72263l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Map f72264m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f72265n;

    public b(InputStream inputStream) {
        this(inputStream, Task.EXTRAS_LIMIT_BYTES, 512);
    }

    public b(InputStream inputStream, int i11, int i12) {
        this(inputStream, i11, i12, null);
    }

    public b(InputStream inputStream, int i11, int i12, String str) {
        this(inputStream, i11, i12, str, false);
    }

    public b(InputStream inputStream, int i11, int i12, String str, boolean z10) {
        this.f72254c = new byte[256];
        this.f72264m = new HashMap();
        this.f72260i = inputStream;
        this.f72257f = false;
        this.f72263l = str;
        this.f72262k = s.a(str);
        this.f72255d = i12;
        this.f72256e = i11;
        this.f72265n = z10;
    }

    private void T() throws IOException {
        byte[] bArrR;
        if (this.f72261j.i()) {
            do {
                bArrR = r();
                if (bArrR == null) {
                    this.f72261j = null;
                    return;
                }
            } while (new c(bArrR).a());
        }
    }

    private void Z() {
        if (t()) {
            return;
        }
        long j11 = this.f72258g;
        if (j11 > 0) {
            int i11 = this.f72255d;
            if (j11 % ((long) i11) != 0) {
                h(q00.c.c(this.f72260i, (((j11 / ((long) i11)) + 1) * ((long) i11)) - j11));
            }
        }
    }

    private void a0() throws IOException {
        boolean zMarkSupported = this.f72260i.markSupported();
        if (zMarkSupported) {
            this.f72260i.mark(this.f72255d);
        }
        try {
            if (u(U()) || !zMarkSupported) {
                return;
            }
            l(this.f72255d);
            this.f72260i.reset();
        } catch (Throwable th2) {
            if (zMarkSupported) {
                l(this.f72255d);
                this.f72260i.reset();
            }
            throw th2;
        }
    }

    private void m(Map map) {
        this.f72261j.C(map);
    }

    private void n() {
        long jK = k();
        int i11 = this.f72256e;
        long j11 = jK % ((long) i11);
        if (j11 > 0) {
            h(q00.c.c(this.f72260i, ((long) i11) - j11));
        }
    }

    private byte[] r() throws IOException {
        byte[] bArrU = U();
        V(u(bArrU));
        if (!s() || bArrU == null) {
            return bArrU;
        }
        a0();
        n();
        return null;
    }

    private boolean t() {
        a aVar = this.f72261j;
        return aVar != null && aVar.h();
    }

    private void w() throws IOException {
        Map mapV = v(this);
        p();
        m(mapV);
    }

    private void x() {
        this.f72264m = v(this);
        p();
    }

    protected byte[] U() {
        byte[] bArr = new byte[this.f72255d];
        int iA = q00.c.a(this.f72260i, bArr);
        b(iA);
        if (iA != this.f72255d) {
            return null;
        }
        return bArr;
    }

    protected final void V(boolean z10) {
        this.f72257f = z10;
    }

    @Override // java.io.InputStream
    public int available() {
        if (t()) {
            return 0;
        }
        long j11 = this.f72258g;
        long j12 = this.f72259h;
        if (j11 - j12 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) (j11 - j12);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f72260i.close();
    }

    @Override // java.io.InputStream
    public void mark(int i11) {
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    protected byte[] o() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i11 = read(this.f72254c);
            if (i11 < 0) {
                break;
            }
            byteArrayOutputStream.write(this.f72254c, 0, i11);
        }
        p();
        if (this.f72261j == null) {
            return null;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        while (length > 0 && byteArray[length - 1] == 0) {
            length--;
        }
        if (length == byteArray.length) {
            return byteArray;
        }
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 0, bArr, 0, length);
        return bArr;
    }

    public o00.a p() {
        return q();
    }

    public a q() throws IOException {
        if (s()) {
            return null;
        }
        if (this.f72261j != null) {
            q00.c.c(this, Long.MAX_VALUE);
            Z();
        }
        byte[] bArrR = r();
        if (bArrR == null) {
            this.f72261j = null;
            return null;
        }
        try {
            a aVar = new a(bArrR, this.f72262k, this.f72265n);
            this.f72261j = aVar;
            this.f72259h = 0L;
            this.f72258g = aVar.g();
            if (this.f72261j.j()) {
                byte[] bArrO = o();
                if (bArrO == null) {
                    return null;
                }
                this.f72261j.w(this.f72262k.a(bArrO));
            }
            if (this.f72261j.k()) {
                byte[] bArrO2 = o();
                if (bArrO2 == null) {
                    return null;
                }
                this.f72261j.y(this.f72262k.a(bArrO2));
            }
            if (this.f72261j.l()) {
                x();
            }
            if (this.f72261j.n()) {
                w();
            } else if (!this.f72264m.isEmpty()) {
                m(this.f72264m);
            }
            if (this.f72261j.m()) {
                T();
            }
            this.f72258g = this.f72261j.g();
            return this.f72261j;
        } catch (IllegalArgumentException e11) {
            throw new IOException("Error detected parsing the header", e11);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) throws IOException {
        if (s() || t() || this.f72259h >= this.f72258g) {
            return -1;
        }
        if (this.f72261j == null) {
            throw new IllegalStateException("No current tar entry");
        }
        int iMin = Math.min(i12, available());
        int i13 = this.f72260i.read(bArr, i11, iMin);
        if (i13 != -1) {
            b(i13);
            this.f72259h += (long) i13;
        } else {
            if (iMin > 0) {
                throw new IOException("Truncated TAR archive");
            }
            V(true);
        }
        return i13;
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
    }

    protected final boolean s() {
        return this.f72257f;
    }

    @Override // java.io.InputStream
    public long skip(long j11) throws IOException {
        if (j11 <= 0 || t()) {
            return 0L;
        }
        long jC = q00.c.c(this.f72260i, Math.min(j11, this.f72258g - this.f72259h));
        h(jC);
        this.f72259h += jC;
        return jC;
    }

    protected boolean u(byte[] bArr) {
        return bArr == null || q00.a.a(bArr, this.f72255d);
    }

    Map v(InputStream inputStream) throws IOException {
        int i11;
        int i12;
        HashMap map = new HashMap(this.f72264m);
        do {
            int i13 = 0;
            int i14 = 0;
            while (true) {
                i11 = inputStream.read();
                if (i11 == -1) {
                    break;
                }
                i13++;
                if (i11 == 10) {
                    break;
                }
                if (i11 == 32) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        i12 = inputStream.read();
                        if (i12 == -1) {
                            break;
                        }
                        i13++;
                        if (i12 == 61) {
                            String string = byteArrayOutputStream.toString("UTF-8");
                            int i15 = i14 - i13;
                            if (i15 == 1) {
                                map.remove(string);
                                break;
                            }
                            byte[] bArr = new byte[i15];
                            int iA = q00.c.a(inputStream, bArr);
                            if (iA == i15) {
                                map.put(string, new String(bArr, 0, i15 - 1, "UTF-8"));
                                break;
                            }
                            throw new IOException("Failed to read Paxheader. Expected " + i15 + " bytes, read " + iA);
                        }
                        byteArrayOutputStream.write((byte) i12);
                    }
                    i11 = i12;
                    break;
                }
                i14 = (i14 * 10) + (i11 - 48);
            }
        } while (i11 != -1);
        return map;
    }
}
