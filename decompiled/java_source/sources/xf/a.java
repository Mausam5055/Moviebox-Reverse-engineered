package xf;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes5.dex */
public class a extends DeflaterOutputStream {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final byte[] f78242p = new byte[0];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final byte[] f78243q = {0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f78244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet f78245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f78246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f78247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ByteArrayOutputStream f78248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ZipEntry f78249f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final CRC32 f78250g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f78251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f78252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f78253j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f78254k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f78255l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f78256m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f78257n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f78258o;

    public a(OutputStream outputStream) {
        this(outputStream, 4);
    }

    public a(OutputStream outputStream, int i11) {
        super(outputStream, new Deflater(-1, true));
        this.f78244a = f78242p;
        this.f78245b = new HashSet();
        this.f78246c = 8;
        this.f78247d = -1;
        this.f78248e = new ByteArrayOutputStream();
        this.f78250g = new CRC32();
        this.f78251h = 0L;
        this.f78252i = 0;
        this.f78255l = false;
        this.f78256m = false;
        this.f78258o = 0;
        this.f78257n = i11;
    }

    private void b(int i11, int i12, int i13) {
        if ((i12 | i13) < 0 || i12 > i11 || i11 - i12 < i13) {
            throw new ArrayIndexOutOfBoundsException("length=" + i11 + "; regionStart=" + i12 + "; regionLength=" + i13);
        }
    }

    private void d() throws IOException {
        if (this.f78256m) {
            throw new IOException("Stream is closed");
        }
    }

    private int i(ZipEntry zipEntry, int i11) {
        int i12;
        if (zipEntry.getMethod() != 0 || (i12 = this.f78257n) == 0) {
            return 0;
        }
        return (i12 - (i11 % i12)) % i12;
    }

    private void k(OutputStream outputStream, int i11) throws IOException {
        if (i11 <= 0) {
            return;
        }
        while (true) {
            int i12 = i11 - 1;
            if (i11 <= 0) {
                return;
            }
            outputStream.write(0);
            i11 = i12;
        }
    }

    private long m(OutputStream outputStream, long j11) throws IOException {
        outputStream.write((int) (255 & j11));
        outputStream.write(((int) (j11 >> 8)) & 255);
        outputStream.write(((int) (j11 >> 16)) & 255);
        outputStream.write(((int) (j11 >> 24)) & 255);
        return j11;
    }

    private int n(OutputStream outputStream, int i11) throws IOException {
        if (i11 <= 65535) {
            outputStream.write(i11 & 255);
            outputStream.write((i11 >> 8) & 255);
            return i11;
        }
        throw new IllegalArgumentException("value " + i11 + " is too large for type 'short'.");
    }

    @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f78256m) {
            return;
        }
        finish();
        ((DeflaterOutputStream) this).def.end();
        ((DeflaterOutputStream) this).out.close();
        ((DeflaterOutputStream) this).out = null;
        this.f78256m = true;
    }

    @Override // java.util.zip.DeflaterOutputStream
    public void finish() throws IOException {
        d();
        if (this.f78255l) {
            return;
        }
        if (this.f78245b.isEmpty()) {
            throw new ZipException("No entries");
        }
        if (this.f78249f != null) {
            h();
        }
        int size = this.f78248e.size();
        m(this.f78248e, 101010256L);
        n(this.f78248e, 0);
        n(this.f78248e, 0);
        n(this.f78248e, this.f78245b.size());
        n(this.f78248e, this.f78245b.size());
        m(this.f78248e, size);
        m(this.f78248e, this.f78252i + this.f78258o);
        n(this.f78248e, this.f78244a.length);
        byte[] bArr = this.f78244a;
        if (bArr.length > 0) {
            this.f78248e.write(bArr);
        }
        this.f78248e.writeTo(((DeflaterOutputStream) this).out);
        this.f78248e = null;
        this.f78255l = true;
    }

    public void h() throws IOException {
        int i11;
        int iM;
        d();
        ZipEntry zipEntry = this.f78249f;
        if (zipEntry == null) {
            return;
        }
        if (zipEntry.getMethod() == 8) {
            super.finish();
        }
        if (this.f78249f.getMethod() == 0) {
            if (this.f78250g.getValue() != this.f78249f.getCrc()) {
                throw new ZipException("CRC mismatch");
            }
            if (this.f78249f.getSize() != this.f78251h) {
                throw new ZipException("Size mismatch");
            }
        }
        if (this.f78249f.getMethod() != 0) {
            m(((DeflaterOutputStream) this).out, 134695760L);
            this.f78249f.setCrc(this.f78250g.getValue());
            m(((DeflaterOutputStream) this).out, this.f78249f.getCrc());
            this.f78249f.setCompressedSize(((DeflaterOutputStream) this).def.getTotalOut());
            m(((DeflaterOutputStream) this).out, this.f78249f.getCompressedSize());
            this.f78249f.setSize(((DeflaterOutputStream) this).def.getTotalIn());
            m(((DeflaterOutputStream) this).out, this.f78249f.getSize());
            i11 = 46;
        } else {
            i11 = 30;
        }
        int i12 = this.f78249f.getMethod() == 0 ? 0 : 8;
        m(this.f78248e, 33639248L);
        n(this.f78248e, 20);
        n(this.f78248e, 20);
        n(this.f78248e, i12 | 2048);
        n(this.f78248e, this.f78249f.getMethod());
        n(this.f78248e, 0);
        n(this.f78248e, 33);
        m(this.f78248e, this.f78250g.getValue());
        if (this.f78249f.getMethod() == 8) {
            iM = (int) (((long) i11) + m(this.f78248e, ((DeflaterOutputStream) this).def.getTotalOut()));
            m(this.f78248e, ((DeflaterOutputStream) this).def.getTotalIn());
        } else {
            iM = (int) (((long) i11) + m(this.f78248e, this.f78251h));
            m(this.f78248e, this.f78251h);
        }
        int iN = iM + n(this.f78248e, this.f78253j);
        if (this.f78249f.getExtra() != null) {
            iN += n(this.f78248e, this.f78249f.getExtra().length);
        } else {
            n(this.f78248e, 0);
        }
        String comment = this.f78249f.getComment();
        byte[] bytes = f78242p;
        if (comment != null) {
            bytes = comment.getBytes(Charset.forName("UTF-8"));
        }
        n(this.f78248e, bytes.length);
        n(this.f78248e, 0);
        n(this.f78248e, 0);
        m(this.f78248e, 0L);
        m(this.f78248e, this.f78252i);
        this.f78248e.write(this.f78254k);
        this.f78254k = null;
        if (this.f78249f.getExtra() != null) {
            this.f78248e.write(this.f78249f.getExtra());
        }
        this.f78252i += iN + this.f78258o;
        this.f78258o = 0;
        if (bytes.length > 0) {
            this.f78248e.write(bytes);
        }
        this.f78249f = null;
        this.f78250g.reset();
        this.f78251h = 0L;
        ((DeflaterOutputStream) this).def.reset();
    }

    public void l(ZipEntry zipEntry) throws IOException {
        if (this.f78249f != null) {
            h();
        }
        int method = zipEntry.getMethod();
        if (method == -1) {
            method = this.f78246c;
        }
        if (method == 0) {
            if (zipEntry.getCompressedSize() == -1) {
                zipEntry.setCompressedSize(zipEntry.getSize());
            } else if (zipEntry.getSize() == -1) {
                zipEntry.setSize(zipEntry.getCompressedSize());
            }
            if (zipEntry.getCrc() == -1) {
                throw new ZipException("STORED entry missing CRC");
            }
            if (zipEntry.getSize() == -1) {
                throw new ZipException("STORED entry missing size");
            }
            if (zipEntry.getSize() != zipEntry.getCompressedSize()) {
                throw new ZipException("STORED entry size/compressed size mismatch");
            }
        }
        d();
        if (this.f78245b.contains(zipEntry.getName())) {
            throw new ZipException("Entry already exists: " + zipEntry.getName());
        }
        if (this.f78245b.size() == 65535) {
            throw new ZipException("Too many entries for the zip file format's 16-bit entry count");
        }
        byte[] bytes = zipEntry.getName().getBytes(Charset.forName("UTF-8"));
        this.f78254k = bytes;
        int length = bytes.length;
        this.f78253j = length;
        if (length > 65535) {
            throw new IllegalArgumentException("Name too long: " + this.f78253j + " UTF-8 bytes");
        }
        ((DeflaterOutputStream) this).def.setLevel(this.f78247d);
        zipEntry.setMethod(method);
        this.f78249f = zipEntry;
        this.f78245b.add(zipEntry.getName());
        int i11 = method == 0 ? 0 : 8;
        m(((DeflaterOutputStream) this).out, 67324752L);
        n(((DeflaterOutputStream) this).out, 20);
        n(((DeflaterOutputStream) this).out, i11 | 2048);
        n(((DeflaterOutputStream) this).out, method);
        if (this.f78249f.getTime() == -1) {
            this.f78249f.setTime(System.currentTimeMillis());
        }
        n(((DeflaterOutputStream) this).out, 0);
        n(((DeflaterOutputStream) this).out, 33);
        if (method == 0) {
            m(((DeflaterOutputStream) this).out, this.f78249f.getCrc());
            m(((DeflaterOutputStream) this).out, this.f78249f.getSize());
            m(((DeflaterOutputStream) this).out, this.f78249f.getSize());
        } else {
            m(((DeflaterOutputStream) this).out, 0L);
            m(((DeflaterOutputStream) this).out, 0L);
            m(((DeflaterOutputStream) this).out, 0L);
        }
        n(((DeflaterOutputStream) this).out, this.f78253j);
        this.f78258o = i(this.f78249f, this.f78252i + 30 + this.f78253j + (this.f78249f.getExtra() != null ? this.f78249f.getExtra().length : 0));
        if (this.f78249f.getExtra() != null) {
            n(((DeflaterOutputStream) this).out, this.f78249f.getExtra().length + this.f78258o);
        } else {
            n(((DeflaterOutputStream) this).out, this.f78258o);
        }
        ((DeflaterOutputStream) this).out.write(this.f78254k);
        if (this.f78249f.getExtra() != null) {
            ((DeflaterOutputStream) this).out.write(this.f78249f.getExtra());
        }
        k(((DeflaterOutputStream) this).out, this.f78258o);
    }

    @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i11) throws IOException {
        byte[] bArr = f78243q;
        bArr[0] = (byte) (i11 & 255);
        write(bArr, 0, 1);
    }

    @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i11, int i12) throws IOException {
        b(bArr.length, i11, i12);
        ZipEntry zipEntry = this.f78249f;
        if (zipEntry == null) {
            throw new ZipException("No active entry");
        }
        if (zipEntry.getMethod() == 0) {
            ((DeflaterOutputStream) this).out.write(bArr, i11, i12);
        } else {
            super.write(bArr, i11, i12);
        }
        this.f78250g.update(bArr, i11, i12);
        this.f78251h += (long) i12;
    }
}
