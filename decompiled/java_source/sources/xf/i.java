package xf;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes5.dex */
public class i implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f78277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedHashMap f78278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private File f78279c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RandomAccessFile f78280d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f78281e;

    class a implements Enumeration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Iterator f78282a;

        a(Iterator it) {
            this.f78282a = it;
        }

        @Override // java.util.Enumeration
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public h nextElement() {
            i.this.d();
            return (h) this.f78282a.next();
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            i.this.d();
            return this.f78282a.hasNext();
        }
    }

    public static class b extends InputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final RandomAccessFile f78284a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f78285b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f78286c;

        public b(RandomAccessFile randomAccessFile, long j11) {
            this(randomAccessFile, j11, randomAccessFile.length());
        }

        public b(RandomAccessFile randomAccessFile, long j11, long j12) {
            this.f78284a = randomAccessFile;
            this.f78286c = j11;
            this.f78285b = j12;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f78286c < this.f78285b ? 1 : 0;
        }

        @Override // java.io.InputStream
        public int read() {
            return g.b(this);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i11, int i12) {
            synchronized (this.f78284a) {
                try {
                    long j11 = this.f78285b;
                    long j12 = this.f78286c;
                    long j13 = j11 - j12;
                    if (i12 > j13) {
                        i12 = (int) j13;
                    }
                    this.f78284a.seek(j12);
                    int i13 = this.f78284a.read(bArr, i11, i12);
                    if (i13 <= 0) {
                        return -1;
                    }
                    this.f78286c += (long) i13;
                    return i13;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // java.io.InputStream
        public long skip(long j11) {
            long j12 = this.f78285b;
            long j13 = this.f78286c;
            if (j11 > j12 - j13) {
                j11 = j12 - j13;
            }
            this.f78286c = j13 + j11;
            return j11;
        }
    }

    public i(File file) {
        this(file, 1);
    }

    public i(File file, int i11) throws IOException {
        this.f78278b = new LinkedHashMap();
        String path = file.getPath();
        this.f78277a = path;
        if (i11 != 1 && i11 != 5) {
            throw new IllegalArgumentException("Bad mode: " + i11);
        }
        if ((i11 & 4) != 0) {
            this.f78279c = file;
            file.deleteOnExit();
        } else {
            this.f78279c = null;
        }
        this.f78280d = new RandomAccessFile(path, CampaignEx.JSON_KEY_AD_R);
        n();
    }

    public i(String str) {
        this(new File(str), 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f78280d == null) {
            throw new IllegalStateException("Zip file closed");
        }
    }

    private void n() throws IOException {
        long length = this.f78280d.length();
        long j11 = length - 22;
        if (j11 < 0) {
            throw new ZipException("File too short to be a zip file: " + this.f78280d.length());
        }
        this.f78280d.seek(0L);
        if (Integer.reverseBytes(this.f78280d.readInt()) != 67324752) {
            throw new ZipException("Not a zip archive");
        }
        long j12 = length - 65558;
        long j13 = j12 >= 0 ? j12 : 0L;
        do {
            this.f78280d.seek(j11);
            if (Integer.reverseBytes(this.f78280d.readInt()) == 101010256) {
                byte[] bArr = new byte[18];
                this.f78280d.readFully(bArr);
                c cVarE = d.e(bArr, 0, 18, ByteOrder.LITTLE_ENDIAN);
                int iB = cVarE.b() & 65535;
                int iB2 = cVarE.b() & 65535;
                int iB3 = cVarE.b() & 65535;
                int iB4 = cVarE.b() & 65535;
                cVarE.d(4);
                long jA = ((long) cVarE.a()) & 4294967295L;
                int iB5 = cVarE.b() & 65535;
                if (iB3 != iB4 || iB != 0 || iB2 != 0) {
                    throw new ZipException("Spanned archives not supported");
                }
                if (iB5 > 0) {
                    byte[] bArr2 = new byte[iB5];
                    this.f78280d.readFully(bArr2);
                    this.f78281e = new String(bArr2, 0, iB5, f.f78264a);
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new b(this.f78280d, jA), 4096);
                byte[] bArr3 = new byte[46];
                for (int i11 = 0; i11 < iB3; i11++) {
                    h hVar = new h(bArr3, bufferedInputStream, f.f78264a, false);
                    if (hVar.f78275j >= jA) {
                        throw new ZipException("Local file header offset is after central directory");
                    }
                    String strG = hVar.g();
                    if (this.f78278b.put(strG, hVar) != null) {
                        throw new ZipException("Duplicate entry name: " + strG);
                    }
                }
                return;
            }
            j11--;
        } while (j11 >= j13);
        throw new ZipException("End Of Central Directory signature not found");
    }

    static void o(String str, long j11, String str2, long j12, String str3, int i11) throws ZipException {
        throw new ZipException("file name:" + str + ", file size" + j11 + ", entry name:" + str2 + ", entry localHeaderRelOffset:" + j12 + ", " + str3 + " signature not found; was " + Integer.toHexString(i11));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        RandomAccessFile randomAccessFile = this.f78280d;
        if (randomAccessFile != null) {
            synchronized (randomAccessFile) {
                this.f78280d = null;
                randomAccessFile.close();
            }
            File file = this.f78279c;
            if (file != null) {
                file.delete();
                this.f78279c = null;
            }
        }
    }

    public Enumeration h() {
        d();
        return new a(this.f78278b.values().iterator());
    }

    public String k() {
        d();
        return this.f78281e;
    }

    public h l(String str) {
        d();
        if (str == null) {
            throw new NullPointerException("entryName == null");
        }
        h hVar = (h) this.f78278b.get(str);
        if (hVar != null) {
            return hVar;
        }
        return (h) this.f78278b.get(str + "/");
    }

    public InputStream m(h hVar) {
        b bVar;
        h hVarL = l(hVar.g());
        if (hVarL == null) {
            return null;
        }
        RandomAccessFile randomAccessFile = this.f78280d;
        synchronized (randomAccessFile) {
            try {
                bVar = new b(randomAccessFile, hVarL.f78275j);
                DataInputStream dataInputStream = new DataInputStream(bVar);
                int iReverseBytes = Integer.reverseBytes(dataInputStream.readInt());
                if (iReverseBytes != 67324752) {
                    o(this.f78277a, randomAccessFile.length(), hVarL.g(), hVarL.f78275j, "Local File Header", iReverseBytes);
                }
                dataInputStream.skipBytes(2);
                short sReverseBytes = Short.reverseBytes(dataInputStream.readShort());
                int i11 = sReverseBytes & 65535;
                if ((sReverseBytes & 1) != 0) {
                    throw new ZipException("Invalid General Purpose Bit Flag: " + i11);
                }
                dataInputStream.skipBytes(18);
                int iReverseBytes2 = Short.reverseBytes(dataInputStream.readShort()) & 65535;
                int iReverseBytes3 = 65535 & Short.reverseBytes(dataInputStream.readShort());
                dataInputStream.close();
                bVar.skip(iReverseBytes2 + iReverseBytes3);
                if (hVarL.f78271f == 0) {
                    bVar.f78285b = bVar.f78286c + hVarL.f78270e;
                } else {
                    bVar.f78285b = bVar.f78286c + hVarL.f78269d;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }
}
