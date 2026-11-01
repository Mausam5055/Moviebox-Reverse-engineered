package xf;

import com.cloud.tmc.kernel.constants.TmcConstants;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes5.dex */
public class h implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f78266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f78267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f78268c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f78269d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f78270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f78271f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f78272g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f78273h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    byte[] f78274i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    long f78275j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    long f78276k;

    public h(h hVar) {
        this.f78268c = -1L;
        this.f78269d = -1L;
        this.f78270e = -1L;
        this.f78271f = -1;
        this.f78272g = -1;
        this.f78273h = -1;
        this.f78275j = -1L;
        this.f78276k = -1L;
        this.f78266a = hVar.f78266a;
        this.f78267b = hVar.f78267b;
        this.f78272g = hVar.f78272g;
        this.f78270e = hVar.f78270e;
        this.f78269d = hVar.f78269d;
        this.f78268c = hVar.f78268c;
        this.f78271f = hVar.f78271f;
        this.f78273h = hVar.f78273h;
        this.f78274i = hVar.f78274i;
        this.f78275j = hVar.f78275j;
        this.f78276k = hVar.f78276k;
    }

    h(byte[] bArr, InputStream inputStream, Charset charset, boolean z10) throws IOException {
        this.f78268c = -1L;
        this.f78269d = -1L;
        this.f78270e = -1L;
        this.f78271f = -1;
        this.f78272g = -1;
        this.f78273h = -1;
        this.f78275j = -1L;
        this.f78276k = -1L;
        g.a(inputStream, bArr, 0, bArr.length);
        c cVarE = d.e(bArr, 0, bArr.length, ByteOrder.LITTLE_ENDIAN);
        int iA = cVarE.a();
        if (iA != 33639248) {
            i.o(TmcConstants.ROUTE_UNKNOWN, inputStream.available(), TmcConstants.ROUTE_UNKNOWN, 0L, "Central Directory Entry", iA);
        }
        cVarE.c(8);
        short sB = cVarE.b();
        int i11 = sB & 65535;
        if ((sB & 1) != 0) {
            throw new ZipException("Invalid General Purpose Bit Flag: " + i11);
        }
        charset = (sB & 2048) != 0 ? Charset.forName("UTF-8") : charset;
        this.f78271f = cVarE.b() & 65535;
        this.f78272g = cVarE.b() & 65535;
        this.f78273h = cVarE.b() & 65535;
        this.f78268c = ((long) cVarE.a()) & 4294967295L;
        this.f78269d = ((long) cVarE.a()) & 4294967295L;
        this.f78270e = ((long) cVarE.a()) & 4294967295L;
        int iB = cVarE.b() & 65535;
        int iB2 = cVarE.b() & 65535;
        int iB3 = 65535 & cVarE.b();
        cVarE.c(42);
        this.f78275j = ((long) cVarE.a()) & 4294967295L;
        byte[] bArr2 = new byte[iB];
        g.a(inputStream, bArr2, 0, iB);
        if (a(bArr2)) {
            throw new ZipException("Filename contains NUL byte: " + Arrays.toString(bArr2));
        }
        this.f78266a = new String(bArr2, 0, iB, charset);
        if (iB2 > 0) {
            byte[] bArr3 = new byte[iB2];
            this.f78274i = bArr3;
            g.a(inputStream, bArr3, 0, iB2);
        }
        if (iB3 > 0) {
            byte[] bArr4 = new byte[iB3];
            g.a(inputStream, bArr4, 0, iB3);
            this.f78267b = new String(bArr4, 0, iB3, charset);
        }
    }

    private static boolean a(byte[] bArr) {
        for (byte b11 : bArr) {
            if (b11 == 0) {
                return true;
            }
        }
        return false;
    }

    public long b() {
        return this.f78269d;
    }

    public long c() {
        return this.f78268c;
    }

    public Object clone() {
        try {
            h hVar = (h) super.clone();
            byte[] bArr = this.f78274i;
            hVar.f78274i = bArr != null ? (byte[]) bArr.clone() : null;
            return hVar;
        } catch (CloneNotSupportedException e11) {
            throw new AssertionError(e11);
        }
    }

    public byte[] e() {
        return this.f78274i;
    }

    public boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f78266a.equals(((h) obj).f78266a);
        }
        return false;
    }

    public int f() {
        return this.f78271f;
    }

    public String g() {
        return this.f78266a;
    }

    public int hashCode() {
        return this.f78266a.hashCode();
    }

    public long i() {
        return this.f78270e;
    }

    public void j(long j11) {
        this.f78269d = j11;
    }

    public void k(long j11) {
        if (j11 >= 0 && j11 <= 4294967295L) {
            this.f78268c = j11;
            return;
        }
        throw new IllegalArgumentException("Bad CRC32: " + j11);
    }

    public void l(int i11) {
        if (i11 == 0 || i11 == 8) {
            this.f78271f = i11;
            return;
        }
        throw new IllegalArgumentException("Bad method: " + i11);
    }

    public void m(long j11) {
        if (j11 >= 0) {
            this.f78270e = j11;
            return;
        }
        throw new IllegalArgumentException("Bad size: " + j11);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("name:" + this.f78266a);
        stringBuffer.append("\ncomment:" + this.f78267b);
        stringBuffer.append("\ntime:" + this.f78272g);
        stringBuffer.append("\nsize:" + this.f78270e);
        stringBuffer.append("\ncompressedSize:" + this.f78269d);
        stringBuffer.append("\ncrc:" + this.f78268c);
        stringBuffer.append("\ncompressionMethod:" + this.f78271f);
        stringBuffer.append("\nmodDate:" + this.f78273h);
        stringBuffer.append("\nextra length:" + this.f78274i.length);
        stringBuffer.append("\nlocalHeaderRelOffset:" + this.f78275j);
        stringBuffer.append("\ndataOffset:" + this.f78276k);
        return stringBuffer.toString();
    }
}
