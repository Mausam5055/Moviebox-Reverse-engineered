package rb;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
class g implements Closeable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Logger f74252g = Logger.getLogger(g.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RandomAccessFile f74253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f74254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74255c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f74256d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f74257e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final byte[] f74258f = new byte[16];

    class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f74259a = true;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ StringBuilder f74260b;

        a(StringBuilder sb2) {
            this.f74260b = sb2;
        }

        @Override // rb.g.d
        public void read(InputStream inputStream, int i11) {
            if (this.f74259a) {
                this.f74259a = false;
            } else {
                this.f74260b.append(", ");
            }
            this.f74260b.append(i11);
        }
    }

    static class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final b f74262c = new b(0, 0);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f74263a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f74264b;

        b(int i11, int i12) {
            this.f74263a = i11;
            this.f74264b = i12;
        }

        public String toString() {
            return getClass().getSimpleName() + "[position = " + this.f74263a + ", length = " + this.f74264b + "]";
        }
    }

    private final class c extends InputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f74265a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f74266b;

        private c(b bVar) {
            this.f74265a = g.this.a0(bVar.f74263a + 4);
            this.f74266b = bVar.f74264b;
        }

        /* synthetic */ c(g gVar, b bVar, a aVar) {
            this(bVar);
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f74266b == 0) {
                return -1;
            }
            g.this.f74253a.seek(this.f74265a);
            int i11 = g.this.f74253a.read();
            this.f74265a = g.this.a0(this.f74265a + 1);
            this.f74266b--;
            return i11;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i11, int i12) throws IOException {
            g.r(bArr, "buffer");
            if ((i11 | i12) < 0 || i12 > bArr.length - i11) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i13 = this.f74266b;
            if (i13 <= 0) {
                return -1;
            }
            if (i12 > i13) {
                i12 = i13;
            }
            g.this.T(this.f74265a, bArr, i11, i12);
            this.f74265a = g.this.a0(this.f74265a + i12);
            this.f74266b -= i12;
            return i12;
        }
    }

    public interface d {
        void read(InputStream inputStream, int i11);
    }

    public g(File file) throws IOException {
        if (!file.exists()) {
            p(file);
        }
        this.f74253a = s(file);
        u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(int i11, byte[] bArr, int i12, int i13) throws IOException {
        int iA0 = a0(i11);
        int i14 = iA0 + i13;
        int i15 = this.f74254b;
        if (i14 <= i15) {
            this.f74253a.seek(iA0);
            this.f74253a.readFully(bArr, i12, i13);
            return;
        }
        int i16 = i15 - iA0;
        this.f74253a.seek(iA0);
        this.f74253a.readFully(bArr, i12, i16);
        this.f74253a.seek(16L);
        this.f74253a.readFully(bArr, i12 + i16, i13 - i16);
    }

    private void U(int i11, byte[] bArr, int i12, int i13) throws IOException {
        int iA0 = a0(i11);
        int i14 = iA0 + i13;
        int i15 = this.f74254b;
        if (i14 <= i15) {
            this.f74253a.seek(iA0);
            this.f74253a.write(bArr, i12, i13);
            return;
        }
        int i16 = i15 - iA0;
        this.f74253a.seek(iA0);
        this.f74253a.write(bArr, i12, i16);
        this.f74253a.seek(16L);
        this.f74253a.write(bArr, i12 + i16, i13 - i16);
    }

    private void V(int i11) throws IOException {
        this.f74253a.setLength(i11);
        this.f74253a.getChannel().force(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a0(int i11) {
        int i12 = this.f74254b;
        return i11 < i12 ? i11 : (i11 + 16) - i12;
    }

    private void c0(int i11, int i12, int i13, int i14) throws IOException {
        g0(this.f74258f, i11, i12, i13, i14);
        this.f74253a.seek(0L);
        this.f74253a.write(this.f74258f);
    }

    private static void d0(byte[] bArr, int i11, int i12) {
        bArr[i11] = (byte) (i12 >> 24);
        bArr[i11 + 1] = (byte) (i12 >> 16);
        bArr[i11 + 2] = (byte) (i12 >> 8);
        bArr[i11 + 3] = (byte) i12;
    }

    private static void g0(byte[] bArr, int... iArr) {
        int i11 = 0;
        for (int i12 : iArr) {
            d0(bArr, i11, i12);
            i11 += 4;
        }
    }

    private void n(int i11) throws IOException {
        int i12 = i11 + 4;
        int iW = w();
        if (iW >= i12) {
            return;
        }
        int i13 = this.f74254b;
        do {
            iW += i13;
            i13 <<= 1;
        } while (iW < i12);
        V(i13);
        b bVar = this.f74257e;
        int iA0 = a0(bVar.f74263a + 4 + bVar.f74264b);
        if (iA0 < this.f74256d.f74263a) {
            FileChannel channel = this.f74253a.getChannel();
            channel.position(this.f74254b);
            long j11 = iA0 - 4;
            if (channel.transferTo(16L, j11, channel) != j11) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i14 = this.f74257e.f74263a;
        int i15 = this.f74256d.f74263a;
        if (i14 < i15) {
            int i16 = (this.f74254b + i14) - 16;
            c0(i13, this.f74255c, i15, i16);
            this.f74257e = new b(i16, this.f74257e.f74264b);
        } else {
            c0(i13, this.f74255c, i15, i14);
        }
        this.f74254b = i13;
    }

    private static void p(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile randomAccessFileS = s(file2);
        try {
            randomAccessFileS.setLength(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
            randomAccessFileS.seek(0L);
            byte[] bArr = new byte[16];
            g0(bArr, 4096, 0, 0, 0);
            randomAccessFileS.write(bArr);
            randomAccessFileS.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th2) {
            randomAccessFileS.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object r(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }

    private static RandomAccessFile s(File file) {
        return new RandomAccessFile(file, "rwd");
    }

    private b t(int i11) throws IOException {
        if (i11 == 0) {
            return b.f74262c;
        }
        this.f74253a.seek(i11);
        return new b(i11, this.f74253a.readInt());
    }

    private void u() throws IOException {
        this.f74253a.seek(0L);
        this.f74253a.readFully(this.f74258f);
        int iV = v(this.f74258f, 0);
        this.f74254b = iV;
        if (iV <= this.f74253a.length()) {
            this.f74255c = v(this.f74258f, 4);
            int iV2 = v(this.f74258f, 8);
            int iV3 = v(this.f74258f, 12);
            this.f74256d = t(iV2);
            this.f74257e = t(iV3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f74254b + ", Actual length: " + this.f74253a.length());
    }

    private static int v(byte[] bArr, int i11) {
        return ((bArr[i11] & 255) << 24) + ((bArr[i11 + 1] & 255) << 16) + ((bArr[i11 + 2] & 255) << 8) + (bArr[i11 + 3] & 255);
    }

    private int w() {
        return this.f74254b - Z();
    }

    public int Z() {
        if (this.f74255c == 0) {
            return 16;
        }
        b bVar = this.f74257e;
        int i11 = bVar.f74263a;
        int i12 = this.f74256d.f74263a;
        return i11 >= i12 ? (i11 - i12) + 4 + bVar.f74264b + 16 : (((i11 + 4) + bVar.f74264b) + this.f74254b) - i12;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f74253a.close();
    }

    public void k(byte[] bArr) {
        l(bArr, 0, bArr.length);
    }

    public synchronized void l(byte[] bArr, int i11, int i12) {
        int iA0;
        try {
            r(bArr, "buffer");
            if ((i11 | i12) < 0 || i12 > bArr.length - i11) {
                throw new IndexOutOfBoundsException();
            }
            n(i12);
            boolean zQ = q();
            if (zQ) {
                iA0 = 16;
            } else {
                b bVar = this.f74257e;
                iA0 = a0(bVar.f74263a + 4 + bVar.f74264b);
            }
            b bVar2 = new b(iA0, i12);
            d0(this.f74258f, 0, i12);
            U(bVar2.f74263a, this.f74258f, 0, 4);
            U(bVar2.f74263a + 4, bArr, i11, i12);
            c0(this.f74254b, this.f74255c + 1, zQ ? bVar2.f74263a : this.f74256d.f74263a, bVar2.f74263a);
            this.f74257e = bVar2;
            this.f74255c++;
            if (zQ) {
                this.f74256d = bVar2;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void m() {
        try {
            c0(4096, 0, 0, 0);
            this.f74255c = 0;
            b bVar = b.f74262c;
            this.f74256d = bVar;
            this.f74257e = bVar;
            if (this.f74254b > 4096) {
                V(4096);
            }
            this.f74254b = 4096;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void o(d dVar) {
        int iA0 = this.f74256d.f74263a;
        for (int i11 = 0; i11 < this.f74255c; i11++) {
            b bVarT = t(iA0);
            dVar.read(new c(this, bVarT, null), bVarT.f74264b);
            iA0 = a0(bVarT.f74263a + 4 + bVarT.f74264b);
        }
    }

    public synchronized boolean q() {
        return this.f74255c == 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append('[');
        sb2.append("fileLength=");
        sb2.append(this.f74254b);
        sb2.append(", size=");
        sb2.append(this.f74255c);
        sb2.append(", first=");
        sb2.append(this.f74256d);
        sb2.append(", last=");
        sb2.append(this.f74257e);
        sb2.append(", element lengths=[");
        try {
            o(new a(sb2));
        } catch (IOException e11) {
            f74252g.log(Level.WARNING, "read error", (Throwable) e11);
        }
        sb2.append("]]");
        return sb2.toString();
    }

    public synchronized void x() {
        try {
            if (q()) {
                throw new NoSuchElementException();
            }
            if (this.f74255c == 1) {
                m();
            } else {
                b bVar = this.f74256d;
                int iA0 = a0(bVar.f74263a + 4 + bVar.f74264b);
                T(iA0, this.f74258f, 0, 4);
                int iV = v(this.f74258f, 0);
                c0(this.f74254b, this.f74255c - 1, iA0, this.f74257e.f74263a);
                this.f74255c--;
                this.f74256d = new b(iA0, iV);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
