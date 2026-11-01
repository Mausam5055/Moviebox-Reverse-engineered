package androidx.exifinterface.media;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.OsConstants;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import com.google.logging.type.LogSeverity;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static SimpleDateFormat T;
    private static SimpleDateFormat U;
    private static final d[] Y;
    private static final d[] Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final d[] f9148a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final d[] f9149b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final d[] f9150c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final d f9151d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final d[] f9152e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final d[] f9153f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static final d[] f9154g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static final d[] f9155h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    static final d[][] f9156i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final d[] f9157j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static final HashMap[] f9158k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static final HashMap[] f9159l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static final HashSet f9160m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private static final HashMap f9161n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    static final Charset f9162o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    static final byte[] f9163p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private static final byte[] f9164q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private static final Pattern f9165r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private static final Pattern f9166s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private static final Pattern f9167t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private static final Pattern f9169u0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f9175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private FileDescriptor f9176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AssetManager.AssetInputStream f9177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9179e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashMap[] f9180f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Set f9181g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ByteOrder f9182h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f9183i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9184j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f9185k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f9186l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f9187m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f9188n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f9189o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f9190p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f9191q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f9192r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f9193s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f9194t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final boolean f9168u = Log.isLoggable("ExifInterface", 3);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final List f9170v = Arrays.asList(1, 6, 3, 8);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final List f9171w = Arrays.asList(2, 7, 4, 5);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f9172x = {8, 8, 8};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f9173y = {4};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int[] f9174z = {8};
    static final byte[] A = {-1, -40, -1};
    private static final byte[] B = {102, 116, 121, 112};
    private static final byte[] C = {109, 105, 102, 49};
    private static final byte[] D = {104, 101, 105, 99};
    private static final byte[] E = {79, 76, 89, 77, 80, 0};
    private static final byte[] F = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    private static final byte[] G = {-119, 80, 78, 71, 13, 10, 26, 10};
    private static final byte[] H = {101, 88, 73, 102};
    private static final byte[] I = {73, 72, 68, 82};
    private static final byte[] J = {73, 69, 78, 68};
    private static final byte[] K = {82, 73, 70, 70};
    private static final byte[] L = {87, 69, 66, 80};
    private static final byte[] M = {69, 88, 73, 70};
    private static final byte[] N = {-99, 1, 42};
    private static final byte[] O = "VP8X".getBytes(Charset.defaultCharset());
    private static final byte[] P = "VP8L".getBytes(Charset.defaultCharset());
    private static final byte[] Q = "VP8 ".getBytes(Charset.defaultCharset());
    private static final byte[] R = "ANIM".getBytes(Charset.defaultCharset());
    private static final byte[] S = "ANMF".getBytes(Charset.defaultCharset());
    static final String[] V = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    static final int[] W = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    static final byte[] X = {65, 83, 67, 73, 73, 0, 0, 0};

    /* JADX INFO: renamed from: androidx.exifinterface.media.a$a, reason: collision with other inner class name */
    class C0080a extends MediaDataSource {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f9195a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f f9196b;

        C0080a(f fVar) {
            this.f9196b = fVar;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // android.media.MediaDataSource
        public long getSize() {
            return -1L;
        }

        @Override // android.media.MediaDataSource
        public int readAt(long j11, byte[] bArr, int i11, int i12) {
            if (i12 == 0) {
                return 0;
            }
            if (j11 < 0) {
                return -1;
            }
            try {
                long j12 = this.f9195a;
                if (j12 != j11) {
                    if (j12 >= 0 && j11 >= j12 + ((long) this.f9196b.available())) {
                        return -1;
                    }
                    this.f9196b.l(j11);
                    this.f9195a = j11;
                }
                if (i12 > this.f9196b.available()) {
                    i12 = this.f9196b.available();
                }
                int i13 = this.f9196b.read(bArr, i11, i12);
                if (i13 >= 0) {
                    this.f9195a += (long) i13;
                    return i13;
                }
            } catch (IOException unused) {
            }
            this.f9195a = -1L;
            return -1;
        }
    }

    private static class b extends InputStream implements DataInput {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final ByteOrder f9198e = ByteOrder.LITTLE_ENDIAN;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final ByteOrder f9199f = ByteOrder.BIG_ENDIAN;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final DataInputStream f9200a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ByteOrder f9201b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f9202c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte[] f9203d;

        b(InputStream inputStream) {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        b(InputStream inputStream, ByteOrder byteOrder) {
            this.f9201b = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f9200a = dataInputStream;
            dataInputStream.mark(0);
            this.f9202c = 0;
            this.f9201b = byteOrder;
        }

        b(byte[] bArr) {
            this(new ByteArrayInputStream(bArr), ByteOrder.BIG_ENDIAN);
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f9200a.available();
        }

        public int d() {
            return this.f9202c;
        }

        public long h() {
            return ((long) readInt()) & 4294967295L;
        }

        public void i(ByteOrder byteOrder) {
            this.f9201b = byteOrder;
        }

        public void k(int i11) throws IOException {
            int i12 = 0;
            while (i12 < i11) {
                int i13 = i11 - i12;
                int iSkip = (int) this.f9200a.skip(i13);
                if (iSkip <= 0) {
                    if (this.f9203d == null) {
                        this.f9203d = new byte[8192];
                    }
                    iSkip = this.f9200a.read(this.f9203d, 0, Math.min(8192, i13));
                    if (iSkip == -1) {
                        throw new EOFException("Reached EOF while skipping " + i11 + " bytes.");
                    }
                }
                i12 += iSkip;
            }
            this.f9202c += i12;
        }

        @Override // java.io.InputStream
        public void mark(int i11) {
            throw new UnsupportedOperationException("Mark is currently unsupported");
        }

        @Override // java.io.InputStream
        public int read() {
            this.f9202c++;
            return this.f9200a.read();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i11, int i12) throws IOException {
            int i13 = this.f9200a.read(bArr, i11, i12);
            this.f9202c += i13;
            return i13;
        }

        @Override // java.io.DataInput
        public boolean readBoolean() {
            this.f9202c++;
            return this.f9200a.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() throws IOException {
            this.f9202c++;
            int i11 = this.f9200a.read();
            if (i11 >= 0) {
                return (byte) i11;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() {
            this.f9202c += 2;
            return this.f9200a.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) throws IOException {
            this.f9202c += bArr.length;
            this.f9200a.readFully(bArr);
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i11, int i12) throws IOException {
            this.f9202c += i12;
            this.f9200a.readFully(bArr, i11, i12);
        }

        @Override // java.io.DataInput
        public int readInt() throws IOException {
            this.f9202c += 4;
            int i11 = this.f9200a.read();
            int i12 = this.f9200a.read();
            int i13 = this.f9200a.read();
            int i14 = this.f9200a.read();
            if ((i11 | i12 | i13 | i14) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f9201b;
            if (byteOrder == f9198e) {
                return (i14 << 24) + (i13 << 16) + (i12 << 8) + i11;
            }
            if (byteOrder == f9199f) {
                return (i11 << 24) + (i12 << 16) + (i13 << 8) + i14;
            }
            throw new IOException("Invalid byte order: " + this.f9201b);
        }

        @Override // java.io.DataInput
        public String readLine() {
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() throws IOException {
            this.f9202c += 8;
            int i11 = this.f9200a.read();
            int i12 = this.f9200a.read();
            int i13 = this.f9200a.read();
            int i14 = this.f9200a.read();
            int i15 = this.f9200a.read();
            int i16 = this.f9200a.read();
            int i17 = this.f9200a.read();
            int i18 = this.f9200a.read();
            if ((i11 | i12 | i13 | i14 | i15 | i16 | i17 | i18) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f9201b;
            if (byteOrder == f9198e) {
                return (((long) i18) << 56) + (((long) i17) << 48) + (((long) i16) << 40) + (((long) i15) << 32) + (((long) i14) << 24) + (((long) i13) << 16) + (((long) i12) << 8) + ((long) i11);
            }
            if (byteOrder == f9199f) {
                return (((long) i11) << 56) + (((long) i12) << 48) + (((long) i13) << 40) + (((long) i14) << 32) + (((long) i15) << 24) + (((long) i16) << 16) + (((long) i17) << 8) + ((long) i18);
            }
            throw new IOException("Invalid byte order: " + this.f9201b);
        }

        @Override // java.io.DataInput
        public short readShort() throws IOException {
            this.f9202c += 2;
            int i11 = this.f9200a.read();
            int i12 = this.f9200a.read();
            if ((i11 | i12) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f9201b;
            if (byteOrder == f9198e) {
                return (short) ((i12 << 8) + i11);
            }
            if (byteOrder == f9199f) {
                return (short) ((i11 << 8) + i12);
            }
            throw new IOException("Invalid byte order: " + this.f9201b);
        }

        @Override // java.io.DataInput
        public String readUTF() {
            this.f9202c += 2;
            return this.f9200a.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() {
            this.f9202c++;
            return this.f9200a.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() throws IOException {
            this.f9202c += 2;
            int i11 = this.f9200a.read();
            int i12 = this.f9200a.read();
            if ((i11 | i12) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.f9201b;
            if (byteOrder == f9198e) {
                return (i12 << 8) + i11;
            }
            if (byteOrder == f9199f) {
                return (i11 << 8) + i12;
            }
            throw new IOException("Invalid byte order: " + this.f9201b);
        }

        @Override // java.io.InputStream
        public void reset() {
            throw new UnsupportedOperationException("Reset is currently unsupported");
        }

        @Override // java.io.DataInput
        public int skipBytes(int i11) {
            throw new UnsupportedOperationException("skipBytes is currently unsupported");
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f9204a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9205b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f9206c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f9207d;

        c(int i11, int i12, long j11, byte[] bArr) {
            this.f9204a = i11;
            this.f9205b = i12;
            this.f9206c = j11;
            this.f9207d = bArr;
        }

        c(int i11, int i12, byte[] bArr) {
            this(i11, i12, -1L, bArr);
        }

        public static c a(String str) {
            byte[] bytes = (str + (char) 0).getBytes(a.f9162o0);
            return new c(2, bytes.length, bytes);
        }

        public static c b(long j11, ByteOrder byteOrder) {
            return c(new long[]{j11}, byteOrder);
        }

        public static c c(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.W[4] * jArr.length]);
            byteBufferWrap.order(byteOrder);
            for (long j11 : jArr) {
                byteBufferWrap.putInt((int) j11);
            }
            return new c(4, jArr.length, byteBufferWrap.array());
        }

        public static c d(e eVar, ByteOrder byteOrder) {
            return e(new e[]{eVar}, byteOrder);
        }

        public static c e(e[] eVarArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.W[5] * eVarArr.length]);
            byteBufferWrap.order(byteOrder);
            for (e eVar : eVarArr) {
                byteBufferWrap.putInt((int) eVar.f9212a);
                byteBufferWrap.putInt((int) eVar.f9213b);
            }
            return new c(5, eVarArr.length, byteBufferWrap.array());
        }

        public static c f(int i11, ByteOrder byteOrder) {
            return g(new int[]{i11}, byteOrder);
        }

        public static c g(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[a.W[3] * iArr.length]);
            byteBufferWrap.order(byteOrder);
            for (int i11 : iArr) {
                byteBufferWrap.putShort((short) i11);
            }
            return new c(3, iArr.length, byteBufferWrap.array());
        }

        public double h(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            }
            if (objK instanceof String) {
                return Double.parseDouble((String) objK);
            }
            if (objK instanceof long[]) {
                long[] jArr = (long[]) objK;
                if (jArr.length == 1) {
                    return jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objK instanceof int[]) {
                int[] iArr = (int[]) objK;
                if (iArr.length == 1) {
                    return iArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objK instanceof double[]) {
                double[] dArr = (double[]) objK;
                if (dArr.length == 1) {
                    return dArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objK instanceof e[])) {
                throw new NumberFormatException("Couldn't find a double value");
            }
            e[] eVarArr = (e[]) objK;
            if (eVarArr.length == 1) {
                return eVarArr[0].a();
            }
            throw new NumberFormatException("There are more than one component");
        }

        public int i(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            }
            if (objK instanceof String) {
                return Integer.parseInt((String) objK);
            }
            if (objK instanceof long[]) {
                long[] jArr = (long[]) objK;
                if (jArr.length == 1) {
                    return (int) jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objK instanceof int[])) {
                throw new NumberFormatException("Couldn't find a integer value");
            }
            int[] iArr = (int[]) objK;
            if (iArr.length == 1) {
                return iArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }

        public String j(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                return null;
            }
            if (objK instanceof String) {
                return (String) objK;
            }
            StringBuilder sb2 = new StringBuilder();
            int i11 = 0;
            if (objK instanceof long[]) {
                long[] jArr = (long[]) objK;
                while (i11 < jArr.length) {
                    sb2.append(jArr[i11]);
                    i11++;
                    if (i11 != jArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (objK instanceof int[]) {
                int[] iArr = (int[]) objK;
                while (i11 < iArr.length) {
                    sb2.append(iArr[i11]);
                    i11++;
                    if (i11 != iArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (objK instanceof double[]) {
                double[] dArr = (double[]) objK;
                while (i11 < dArr.length) {
                    sb2.append(dArr[i11]);
                    i11++;
                    if (i11 != dArr.length) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            if (!(objK instanceof e[])) {
                return null;
            }
            e[] eVarArr = (e[]) objK;
            while (i11 < eVarArr.length) {
                sb2.append(eVarArr[i11].f9212a);
                sb2.append('/');
                sb2.append(eVarArr[i11].f9213b);
                i11++;
                if (i11 != eVarArr.length) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }

        /* JADX WARN: Code duplicated, block: B:162:0x018f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Not initialized variable reg: 5, insn: 0x0030: MOVE (r4 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:17:0x0030 */
        Object k(ByteOrder byteOrder) throws Throwable {
            b bVar;
            InputStream inputStream;
            byte b11;
            byte b12;
            int length = 0;
            InputStream inputStream2 = null;
            try {
                try {
                    bVar = new b(this.f9207d);
                    try {
                        bVar.i(byteOrder);
                        switch (this.f9204a) {
                            case 1:
                            case 6:
                                byte[] bArr = this.f9207d;
                                if (bArr.length != 1 || (b11 = bArr[0]) < 0 || b11 > 1) {
                                    String str = new String(bArr, a.f9162o0);
                                    try {
                                        bVar.close();
                                        break;
                                    } catch (IOException e11) {
                                        Log.e("ExifInterface", "IOException occurred while closing InputStream", e11);
                                    }
                                    return str;
                                }
                                String str2 = new String(new char[]{(char) (b11 + 48)});
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e12) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e12);
                                }
                                return str2;
                            case 2:
                            case 7:
                                if (this.f9205b >= a.X.length) {
                                    int i11 = 0;
                                    while (true) {
                                        byte[] bArr2 = a.X;
                                        if (i11 >= bArr2.length) {
                                            length = bArr2.length;
                                        } else if (this.f9207d[i11] == bArr2[i11]) {
                                            i11++;
                                        }
                                    }
                                }
                                StringBuilder sb2 = new StringBuilder();
                                while (length < this.f9205b && (b12 = this.f9207d[length]) != 0) {
                                    if (b12 >= 32) {
                                        sb2.append((char) b12);
                                    } else {
                                        sb2.append('?');
                                    }
                                    length++;
                                }
                                String string = sb2.toString();
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e13) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e13);
                                }
                                return string;
                            case 3:
                                int[] iArr = new int[this.f9205b];
                                while (length < this.f9205b) {
                                    iArr[length] = bVar.readUnsignedShort();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e14) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e14);
                                }
                                return iArr;
                            case 4:
                                long[] jArr = new long[this.f9205b];
                                while (length < this.f9205b) {
                                    jArr[length] = bVar.h();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e15) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e15);
                                }
                                return jArr;
                            case 5:
                                e[] eVarArr = new e[this.f9205b];
                                while (length < this.f9205b) {
                                    eVarArr[length] = new e(bVar.h(), bVar.h());
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e16) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e16);
                                }
                                return eVarArr;
                            case 8:
                                int[] iArr2 = new int[this.f9205b];
                                while (length < this.f9205b) {
                                    iArr2[length] = bVar.readShort();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e17) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e17);
                                }
                                return iArr2;
                            case 9:
                                int[] iArr3 = new int[this.f9205b];
                                while (length < this.f9205b) {
                                    iArr3[length] = bVar.readInt();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e18) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e18);
                                }
                                return iArr3;
                            case 10:
                                e[] eVarArr2 = new e[this.f9205b];
                                while (length < this.f9205b) {
                                    eVarArr2[length] = new e(bVar.readInt(), bVar.readInt());
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e19) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e19);
                                }
                                return eVarArr2;
                            case 11:
                                double[] dArr = new double[this.f9205b];
                                while (length < this.f9205b) {
                                    dArr[length] = bVar.readFloat();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e20) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e20);
                                }
                                return dArr;
                            case 12:
                                double[] dArr2 = new double[this.f9205b];
                                while (length < this.f9205b) {
                                    dArr2[length] = bVar.readDouble();
                                    length++;
                                }
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e21) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e21);
                                }
                                return dArr2;
                            default:
                                try {
                                    bVar.close();
                                    break;
                                } catch (IOException e22) {
                                    Log.e("ExifInterface", "IOException occurred while closing InputStream", e22);
                                }
                                return null;
                        }
                    } catch (IOException e23) {
                        e = e23;
                        Log.w("ExifInterface", "IOException occurred during reading a value", e);
                        if (bVar != null) {
                            try {
                                bVar.close();
                            } catch (IOException e24) {
                                Log.e("ExifInterface", "IOException occurred while closing InputStream", e24);
                            }
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e25) {
                            Log.e("ExifInterface", "IOException occurred while closing InputStream", e25);
                        }
                    }
                    throw th;
                }
            } catch (IOException e26) {
                e = e26;
                bVar = null;
            } catch (Throwable th3) {
                th = th3;
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                throw th;
            }
        }

        public String toString() {
            return "(" + a.V[this.f9204a] + ", data length:" + this.f9207d.length + ")";
        }
    }

    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f9208a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f9209b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9210c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f9211d;

        d(String str, int i11, int i12) {
            this.f9209b = str;
            this.f9208a = i11;
            this.f9210c = i12;
            this.f9211d = -1;
        }

        d(String str, int i11, int i12, int i13) {
            this.f9209b = str;
            this.f9208a = i11;
            this.f9210c = i12;
            this.f9211d = i13;
        }

        boolean a(int i11) {
            int i12;
            int i13 = this.f9210c;
            if (i13 == 7 || i11 == 7 || i13 == i11 || (i12 = this.f9211d) == i11) {
                return true;
            }
            if ((i13 == 4 || i12 == 4) && i11 == 3) {
                return true;
            }
            if ((i13 == 9 || i12 == 9) && i11 == 8) {
                return true;
            }
            return (i13 == 12 || i12 == 12) && i11 == 11;
        }
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f9212a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f9213b;

        e(long j11, long j12) {
            if (j12 == 0) {
                this.f9212a = 0L;
                this.f9213b = 1L;
            } else {
                this.f9212a = j11;
                this.f9213b = j12;
            }
        }

        public double a() {
            return this.f9212a / this.f9213b;
        }

        public String toString() {
            return this.f9212a + "/" + this.f9213b;
        }
    }

    private static class f extends b {
        f(InputStream inputStream) {
            super(inputStream);
            if (!inputStream.markSupported()) {
                throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
            }
            this.f9200a.mark(Integer.MAX_VALUE);
        }

        f(byte[] bArr) {
            super(bArr);
            this.f9200a.mark(Integer.MAX_VALUE);
        }

        public void l(long j11) throws IOException {
            int i11 = this.f9202c;
            if (i11 > j11) {
                this.f9202c = 0;
                this.f9200a.reset();
            } else {
                j11 -= (long) i11;
            }
            k((int) j11);
        }
    }

    static {
        d[] dVarArr = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ImageWidth", 256, 3, 4), new d("ImageLength", InputDeviceCompat.SOURCE_KEYBOARD, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("Orientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", Sdk$SDKError.Reason.MRAID_ERROR_VALUE, 3), new d("Software", Sdk$SDKError.Reason.MRAID_BRIDGE_ERROR_VALUE, 2), new d("DateTime", 306, 2), new d("Artist", Sdk$SDKError.Reason.JSON_PARAMS_ENCODE_ERROR_VALUE, 2), new d("WhitePoint", Sdk$SDKError.Reason.AD_CLOSED_MISSING_HEARTBEAT_VALUE, 5), new d("PrimaryChromaticities", Sdk$SDKError.Reason.SILENT_MODE_MONITOR_ERROR_VALUE, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("SensorTopBorder", 4, 4), new d("SensorLeftBorder", 5, 4), new d("SensorBottomBorder", 6, 4), new d("SensorRightBorder", 7, 4), new d("ISO", 23, 3), new d("JpgFromRaw", 46, 7), new d("Xmp", LogSeverity.ALERT_VALUE, 1)};
        Y = dVarArr;
        d[] dVarArr2 = {new d("ExposureTime", 33434, 5), new d("FNumber", 33437, 5), new d("ExposureProgram", 34850, 3), new d("SpectralSensitivity", 34852, 2), new d("PhotographicSensitivity", 34855, 3), new d("OECF", 34856, 7), new d("SensitivityType", 34864, 3), new d("StandardOutputSensitivity", 34865, 4), new d("RecommendedExposureIndex", 34866, 4), new d("ISOSpeed", 34867, 4), new d("ISOSpeedLatitudeyyy", 34868, 4), new d("ISOSpeedLatitudezzz", 34869, 4), new d("ExifVersion", 36864, 2), new d("DateTimeOriginal", 36867, 2), new d("DateTimeDigitized", 36868, 2), new d("OffsetTime", 36880, 2), new d("OffsetTimeOriginal", 36881, 2), new d("OffsetTimeDigitized", 36882, 2), new d("ComponentsConfiguration", 37121, 7), new d("CompressedBitsPerPixel", 37122, 5), new d("ShutterSpeedValue", 37377, 10), new d("ApertureValue", 37378, 5), new d("BrightnessValue", 37379, 10), new d("ExposureBiasValue", 37380, 10), new d("MaxApertureValue", 37381, 5), new d("SubjectDistance", 37382, 5), new d("MeteringMode", 37383, 3), new d("LightSource", 37384, 3), new d("Flash", 37385, 3), new d("FocalLength", 37386, 5), new d("SubjectArea", 37396, 3), new d("MakerNote", 37500, 7), new d("UserComment", 37510, 7), new d("SubSecTime", 37520, 2), new d("SubSecTimeOriginal", 37521, 2), new d("SubSecTimeDigitized", 37522, 2), new d("FlashpixVersion", UnixStat.LINK_FLAG, 7), new d("ColorSpace", 40961, 3), new d("PixelXDimension", 40962, 3, 4), new d("PixelYDimension", 40963, 3, 4), new d("RelatedSoundFile", 40964, 2), new d("InteroperabilityIFDPointer", 40965, 4), new d("FlashEnergy", 41483, 5), new d("SpatialFrequencyResponse", 41484, 7), new d("FocalPlaneXResolution", 41486, 5), new d("FocalPlaneYResolution", 41487, 5), new d("FocalPlaneResolutionUnit", 41488, 3), new d("SubjectLocation", 41492, 3), new d("ExposureIndex", 41493, 5), new d("SensingMethod", 41495, 3), new d("FileSource", 41728, 7), new d("SceneType", 41729, 7), new d("CFAPattern", 41730, 7), new d("CustomRendered", 41985, 3), new d("ExposureMode", 41986, 3), new d("WhiteBalance", 41987, 3), new d("DigitalZoomRatio", 41988, 5), new d("FocalLengthIn35mmFilm", 41989, 3), new d("SceneCaptureType", 41990, 3), new d("GainControl", 41991, 3), new d("Contrast", 41992, 3), new d("Saturation", 41993, 3), new d("Sharpness", 41994, 3), new d("DeviceSettingDescription", 41995, 7), new d("SubjectDistanceRange", 41996, 3), new d("ImageUniqueID", 42016, 2), new d("CameraOwnerName", 42032, 2), new d("BodySerialNumber", 42033, 2), new d("LensSpecification", 42034, 5), new d("LensMake", 42035, 2), new d("LensModel", 42036, 2), new d("Gamma", 42240, 5), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        Z = dVarArr2;
        d[] dVarArr3 = {new d("GPSVersionID", 0, 1), new d("GPSLatitudeRef", 1, 2), new d("GPSLatitude", 2, 5, 10), new d("GPSLongitudeRef", 3, 2), new d("GPSLongitude", 4, 5, 10), new d("GPSAltitudeRef", 5, 1), new d("GPSAltitude", 6, 5), new d("GPSTimeStamp", 7, 5), new d("GPSSatellites", 8, 2), new d("GPSStatus", 9, 2), new d("GPSMeasureMode", 10, 2), new d("GPSDOP", 11, 5), new d("GPSSpeedRef", 12, 2), new d("GPSSpeed", 13, 5), new d("GPSTrackRef", 14, 2), new d("GPSTrack", 15, 5), new d("GPSImgDirectionRef", 16, 2), new d("GPSImgDirection", 17, 5), new d("GPSMapDatum", 18, 2), new d("GPSDestLatitudeRef", 19, 2), new d("GPSDestLatitude", 20, 5), new d("GPSDestLongitudeRef", 21, 2), new d("GPSDestLongitude", 22, 5), new d("GPSDestBearingRef", 23, 2), new d("GPSDestBearing", 24, 5), new d("GPSDestDistanceRef", 25, 2), new d("GPSDestDistance", 26, 5), new d("GPSProcessingMethod", 27, 7), new d("GPSAreaInformation", 28, 7), new d("GPSDateStamp", 29, 2), new d("GPSDifferential", 30, 3), new d("GPSHPositioningError", 31, 5)};
        f9148a0 = dVarArr3;
        d[] dVarArr4 = {new d("InteroperabilityIndex", 1, 2)};
        f9149b0 = dVarArr4;
        d[] dVarArr5 = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ThumbnailImageWidth", 256, 3, 4), new d("ThumbnailImageLength", InputDeviceCompat.SOURCE_KEYBOARD, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("ThumbnailOrientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", Sdk$SDKError.Reason.MRAID_ERROR_VALUE, 3), new d("Software", Sdk$SDKError.Reason.MRAID_BRIDGE_ERROR_VALUE, 2), new d("DateTime", 306, 2), new d("Artist", Sdk$SDKError.Reason.JSON_PARAMS_ENCODE_ERROR_VALUE, 2), new d("WhitePoint", Sdk$SDKError.Reason.AD_CLOSED_MISSING_HEARTBEAT_VALUE, 5), new d("PrimaryChromaticities", Sdk$SDKError.Reason.SILENT_MODE_MONITOR_ERROR_VALUE, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        f9150c0 = dVarArr5;
        f9151d0 = new d("StripOffsets", 273, 3);
        d[] dVarArr6 = {new d("ThumbnailImage", 256, 7), new d("CameraSettingsIFDPointer", 8224, 4), new d("ImageProcessingIFDPointer", 8256, 4)};
        f9152e0 = dVarArr6;
        d[] dVarArr7 = {new d("PreviewImageStart", InputDeviceCompat.SOURCE_KEYBOARD, 4), new d("PreviewImageLength", 258, 4)};
        f9153f0 = dVarArr7;
        d[] dVarArr8 = {new d("AspectFrame", 4371, 3)};
        f9154g0 = dVarArr8;
        d[] dVarArr9 = {new d("ColorSpace", 55, 3)};
        f9155h0 = dVarArr9;
        d[][] dVarArr10 = {dVarArr, dVarArr2, dVarArr3, dVarArr4, dVarArr5, dVarArr, dVarArr6, dVarArr7, dVarArr8, dVarArr9};
        f9156i0 = dVarArr10;
        f9157j0 = new d[]{new d("SubIFDPointer", 330, 4), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("InteroperabilityIFDPointer", 40965, 4), new d("CameraSettingsIFDPointer", 8224, 1), new d("ImageProcessingIFDPointer", 8256, 1)};
        f9158k0 = new HashMap[dVarArr10.length];
        f9159l0 = new HashMap[dVarArr10.length];
        f9160m0 = new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        f9161n0 = new HashMap();
        Charset charsetForName = Charset.forName(C.ASCII_NAME);
        f9162o0 = charsetForName;
        f9163p0 = "Exif\u0000\u0000".getBytes(charsetForName);
        f9164q0 = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale);
        T = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale);
        U = simpleDateFormat2;
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i11 = 0;
        while (true) {
            d[][] dVarArr11 = f9156i0;
            if (i11 >= dVarArr11.length) {
                HashMap map = f9161n0;
                d[] dVarArr12 = f9157j0;
                map.put(Integer.valueOf(dVarArr12[0].f9208a), 5);
                map.put(Integer.valueOf(dVarArr12[1].f9208a), 1);
                map.put(Integer.valueOf(dVarArr12[2].f9208a), 2);
                map.put(Integer.valueOf(dVarArr12[3].f9208a), 3);
                map.put(Integer.valueOf(dVarArr12[4].f9208a), 7);
                map.put(Integer.valueOf(dVarArr12[5].f9208a), 8);
                f9165r0 = Pattern.compile(".*[1-9].*");
                f9166s0 = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                f9167t0 = Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                f9169u0 = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            f9158k0[i11] = new HashMap();
            f9159l0[i11] = new HashMap();
            for (d dVar : dVarArr11[i11]) {
                f9158k0[i11].put(Integer.valueOf(dVar.f9208a), dVar);
                f9159l0[i11].put(dVar.f9209b, dVar);
            }
            i11++;
        }
    }

    public a(InputStream inputStream) {
        this(inputStream, 0);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0062  */
    public a(InputStream inputStream, int i11) {
        d[][] dVarArr = f9156i0;
        this.f9180f = new HashMap[dVarArr.length];
        this.f9181g = new HashSet(dVarArr.length);
        this.f9182h = ByteOrder.BIG_ENDIAN;
        if (inputStream == null) {
            throw new NullPointerException("inputStream cannot be null");
        }
        this.f9175a = null;
        if (i11 == 1) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, f9163p0.length);
            if (!r(bufferedInputStream)) {
                Log.w("ExifInterface", "Given data does not follow the structure of an Exif-only data.");
                return;
            }
            this.f9179e = true;
            this.f9177c = null;
            this.f9176b = null;
            inputStream = bufferedInputStream;
        } else if (inputStream instanceof AssetManager.AssetInputStream) {
            this.f9177c = (AssetManager.AssetInputStream) inputStream;
            this.f9176b = null;
        } else if (inputStream instanceof FileInputStream) {
            FileInputStream fileInputStream = (FileInputStream) inputStream;
            if (y(fileInputStream.getFD())) {
                this.f9177c = null;
                this.f9176b = fileInputStream.getFD();
            } else {
                this.f9177c = null;
                this.f9176b = null;
            }
        } else {
            this.f9177c = null;
            this.f9176b = null;
        }
        C(inputStream);
    }

    private boolean A(HashMap map) {
        c cVar = (c) map.get("ImageLength");
        c cVar2 = (c) map.get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            return false;
        }
        return cVar.i(this.f9182h) <= 512 && cVar2.i(this.f9182h) <= 512;
    }

    private boolean B(byte[] bArr) {
        int i11 = 0;
        while (true) {
            byte[] bArr2 = K;
            if (i11 >= bArr2.length) {
                int i12 = 0;
                while (true) {
                    byte[] bArr3 = L;
                    if (i12 >= bArr3.length) {
                        return true;
                    }
                    if (bArr[K.length + i12 + 4] != bArr3[i12]) {
                        return false;
                    }
                    i12++;
                }
            } else {
                if (bArr[i11] != bArr2[i11]) {
                    return false;
                }
                i11++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x009f A[Catch: all -> 0x0015, TRY_LEAVE, TryCatch #0 {all -> 0x0015, blocks: (B:4:0x0004, B:6:0x0009, B:13:0x001e, B:15:0x0022, B:16:0x0030, B:18:0x0038, B:20:0x0041, B:31:0x0061, B:21:0x0045, B:23:0x004b, B:26:0x0052, B:29:0x005a, B:30:0x005e, B:32:0x006b, B:34:0x0075, B:37:0x007d, B:40:0x0085, B:43:0x008d, B:47:0x009b, B:49:0x009f), top: B:60:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:63:? A[RETURN, SYNTHETIC] */
    private void C(InputStream inputStream) {
        boolean z10;
        if (inputStream == null) {
            throw new NullPointerException("inputstream shouldn't be null");
        }
        for (int i11 = 0; i11 < f9156i0.length; i11++) {
            try {
                try {
                    this.f9180f[i11] = new HashMap();
                } catch (Throwable th2) {
                    a();
                    if (f9168u) {
                        E();
                    }
                    throw th2;
                }
            } catch (IOException e11) {
                e = e11;
                z10 = f9168u;
                if (z10) {
                    Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                }
                a();
                if (!z10) {
                    return;
                }
            } catch (UnsupportedOperationException e12) {
                e = e12;
                z10 = f9168u;
                if (z10) {
                    Log.w("ExifInterface", "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface.", e);
                }
                a();
                if (!z10) {
                    return;
                }
            }
        }
        if (!this.f9179e) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            this.f9178d = g(bufferedInputStream);
            inputStream = bufferedInputStream;
        }
        if (L(this.f9178d)) {
            f fVar = new f(inputStream);
            if (this.f9179e) {
                n(fVar);
            } else {
                int i12 = this.f9178d;
                if (i12 == 12) {
                    e(fVar);
                } else if (i12 == 7) {
                    h(fVar);
                } else if (i12 == 10) {
                    m(fVar);
                } else {
                    k(fVar);
                }
            }
            fVar.l(this.f9190p);
            K(fVar);
        } else {
            b bVar = new b(inputStream);
            int i13 = this.f9178d;
            if (i13 == 4) {
                f(bVar, 0, 0);
            } else if (i13 == 13) {
                i(bVar);
            } else if (i13 == 9) {
                j(bVar);
            } else if (i13 == 14) {
                o(bVar);
            }
        }
        a();
        if (!f9168u) {
            return;
        }
        E();
    }

    private void D(b bVar) throws IOException {
        ByteOrder byteOrderF = F(bVar);
        this.f9182h = byteOrderF;
        bVar.i(byteOrderF);
        int unsignedShort = bVar.readUnsignedShort();
        int i11 = this.f9178d;
        if (i11 != 7 && i11 != 10 && unsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(unsignedShort));
        }
        int i12 = bVar.readInt();
        if (i12 < 8) {
            throw new IOException("Invalid first Ifd offset: " + i12);
        }
        int i13 = i12 - 8;
        if (i13 > 0) {
            bVar.k(i13);
        }
    }

    private void E() {
        for (int i11 = 0; i11 < this.f9180f.length; i11++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("The size of tag group[");
            sb2.append(i11);
            sb2.append("]: ");
            sb2.append(this.f9180f[i11].size());
            for (Map.Entry entry : this.f9180f[i11].entrySet()) {
                c cVar = (c) entry.getValue();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("tagName: ");
                sb3.append((String) entry.getKey());
                sb3.append(", tagType: ");
                sb3.append(cVar.toString());
                sb3.append(", tagValue: '");
                sb3.append(cVar.j(this.f9182h));
                sb3.append("'");
            }
        }
    }

    private ByteOrder F(b bVar) throws IOException {
        short s11 = bVar.readShort();
        if (s11 == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s11 == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(s11));
    }

    private void G(byte[] bArr, int i11) throws IOException {
        f fVar = new f(bArr);
        D(fVar);
        H(fVar, i11);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0284  */
    /* JADX WARN: Code duplicated, block: B:102:0x0288  */
    /* JADX WARN: Code duplicated, block: B:116:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:44:0x0103  */
    /* JADX WARN: Code duplicated, block: B:45:0x010d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0113  */
    /* JADX WARN: Code duplicated, block: B:49:0x0119  */
    /* JADX WARN: Code duplicated, block: B:50:0x0129  */
    /* JADX WARN: Code duplicated, block: B:53:0x0130  */
    /* JADX WARN: Code duplicated, block: B:55:0x013a  */
    /* JADX WARN: Code duplicated, block: B:56:0x013c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0141  */
    /* JADX WARN: Code duplicated, block: B:63:0x018e  */
    /* JADX WARN: Code duplicated, block: B:66:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:69:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:71:0x01be  */
    /* JADX WARN: Code duplicated, block: B:73:0x01c1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:83:0x01de  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:87:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:90:0x0202  */
    /* JADX WARN: Code duplicated, block: B:92:0x020f  */
    /* JADX WARN: Code duplicated, block: B:94:0x021c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x021e  */
    /* JADX WARN: Code duplicated, block: B:96:0x0239 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x023b  */
    /* JADX WARN: Code duplicated, block: B:99:0x0250  */
    private void H(f fVar, int i11) throws IOException {
        long j11;
        char c11;
        Integer num;
        long j12;
        int i12;
        int unsignedShort;
        long jH;
        int i13;
        int i14 = 5;
        char c12 = 0;
        int i15 = 1;
        this.f9181g.add(Integer.valueOf(fVar.f9202c));
        short s11 = fVar.readShort();
        if (f9168u) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("numberOfDirectoryEntry: ");
            sb2.append((int) s11);
        }
        if (s11 <= 0) {
            return;
        }
        short s12 = 0;
        while (s12 < s11) {
            int unsignedShort2 = fVar.readUnsignedShort();
            int unsignedShort3 = fVar.readUnsignedShort();
            int i16 = fVar.readInt();
            long jD = ((long) fVar.d()) + 4;
            d dVar = (d) f9158k0[i11].get(Integer.valueOf(unsignedShort2));
            boolean z10 = f9168u;
            if (z10) {
                Integer numValueOf = Integer.valueOf(i11);
                Integer numValueOf2 = Integer.valueOf(unsignedShort2);
                String str = dVar != null ? dVar.f9209b : null;
                Integer numValueOf3 = Integer.valueOf(unsignedShort3);
                Integer numValueOf4 = Integer.valueOf(i16);
                Object[] objArr = new Object[i14];
                objArr[c12] = numValueOf;
                objArr[i15] = numValueOf2;
                objArr[2] = str;
                objArr[3] = numValueOf3;
                objArr[4] = numValueOf4;
                String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", objArr);
            }
            if (dVar != null) {
                if (unsignedShort3 > 0) {
                    int[] iArr = W;
                    if (unsignedShort3 >= iArr.length) {
                        if (z10) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Skip the tag entry since data format is invalid: ");
                            sb3.append(unsignedShort3);
                        }
                    } else if (dVar.a(unsignedShort3)) {
                        if (unsignedShort3 == 7) {
                            unsignedShort3 = dVar.f9210c;
                        }
                        j11 = ((long) iArr[unsignedShort3]) * ((long) i16);
                        if (j11 < 0 || j11 > 2147483647L) {
                            if (z10) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("Skip the tag entry since the number of components is invalid: ");
                                sb4.append(i16);
                            }
                            c11 = c12;
                        } else {
                            c11 = 1;
                        }
                    } else if (z10) {
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("Skip the tag entry since data format (");
                        sb5.append(V[unsignedShort3]);
                        sb5.append(") is unexpected for tag: ");
                        sb5.append(dVar.f9209b);
                    }
                } else if (z10) {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Skip the tag entry since data format is invalid: ");
                    sb6.append(unsignedShort3);
                }
                if (c11 == 0) {
                    fVar.l(jD);
                    s12 = s12;
                    i12 = 1;
                } else {
                    if (j11 > 4) {
                        i13 = fVar.readInt();
                        if (z10) {
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append("seek to data offset: ");
                            sb7.append(i13);
                        }
                        if (this.f9178d != 7) {
                            if ("MakerNote".equals(dVar.f9209b)) {
                                this.f9191q = i13;
                            } else if (i11 != 6 && "ThumbnailImage".equals(dVar.f9209b)) {
                                this.f9192r = i13;
                                this.f9193s = i16;
                                c cVarF = c.f(6, this.f9182h);
                                c cVarB = c.b(this.f9192r, this.f9182h);
                                c cVarB2 = c.b(this.f9193s, this.f9182h);
                                this.f9180f[4].put("Compression", cVarF);
                                this.f9180f[4].put("JPEGInterchangeFormat", cVarB);
                                this.f9180f[4].put("JPEGInterchangeFormatLength", cVarB2);
                            }
                        }
                        fVar.l(i13);
                    } else {
                        s12 = s12;
                        jD = jD;
                        i16 = i16;
                    }
                    num = (Integer) f9161n0.get(Integer.valueOf(unsignedShort2));
                    if (z10) {
                        StringBuilder sb8 = new StringBuilder();
                        sb8.append("nextIfdType: ");
                        sb8.append(num);
                        sb8.append(" byteCount: ");
                        sb8.append(j11);
                    }
                    if (num != null) {
                        if (unsignedShort3 != 3) {
                            if (unsignedShort3 != 4) {
                                jH = fVar.h();
                            } else if (unsignedShort3 == 8) {
                                unsignedShort = fVar.readShort();
                            } else if (unsignedShort3 != 9 || unsignedShort3 == 13) {
                                unsignedShort = fVar.readInt();
                            } else {
                                jH = -1;
                            }
                            if (z10) {
                                String.format("Offset: %d, tagName: %s", Long.valueOf(jH), dVar.f9209b);
                            }
                            if (jH > 0) {
                                if (!this.f9181g.contains(Integer.valueOf((int) jH))) {
                                    fVar.l(jH);
                                    H(fVar, num.intValue());
                                } else if (z10) {
                                    StringBuilder sb9 = new StringBuilder();
                                    sb9.append("Skip jump into the IFD since it has already been read: IfdType ");
                                    sb9.append(num);
                                    sb9.append(" (at ");
                                    sb9.append(jH);
                                    sb9.append(")");
                                }
                            } else if (z10) {
                                StringBuilder sb10 = new StringBuilder();
                                sb10.append("Skip jump into the IFD since its offset is invalid: ");
                                sb10.append(jH);
                            }
                            fVar.l(jD);
                            i12 = 1;
                        } else {
                            unsignedShort = fVar.readUnsignedShort();
                        }
                        jH = unsignedShort;
                        if (z10) {
                            String.format("Offset: %d, tagName: %s", Long.valueOf(jH), dVar.f9209b);
                        }
                        if (jH > 0) {
                            if (!this.f9181g.contains(Integer.valueOf((int) jH))) {
                                fVar.l(jH);
                                H(fVar, num.intValue());
                            } else if (z10) {
                                StringBuilder sb11 = new StringBuilder();
                                sb11.append("Skip jump into the IFD since it has already been read: IfdType ");
                                sb11.append(num);
                                sb11.append(" (at ");
                                sb11.append(jH);
                                sb11.append(")");
                            }
                        } else if (z10) {
                            StringBuilder sb12 = new StringBuilder();
                            sb12.append("Skip jump into the IFD since its offset is invalid: ");
                            sb12.append(jH);
                        }
                        fVar.l(jD);
                        i12 = 1;
                    } else {
                        j12 = jD;
                        int iD = fVar.d() + this.f9190p;
                        byte[] bArr = new byte[(int) j11];
                        fVar.readFully(bArr);
                        c cVar = new c(unsignedShort3, i16, iD, bArr);
                        this.f9180f[i11].put(dVar.f9209b, cVar);
                        if ("DNGVersion".equals(dVar.f9209b)) {
                            this.f9178d = 3;
                        }
                        if (((!"Make".equals(dVar.f9209b) || "Model".equals(dVar.f9209b)) && cVar.j(this.f9182h).contains("PENTAX")) || ("Compression".equals(dVar.f9209b) && cVar.i(this.f9182h) == 65535)) {
                            this.f9178d = 8;
                        }
                        if (fVar.d() != j12) {
                            fVar.l(j12);
                        }
                        i12 = 1;
                    }
                }
                i15 = i12;
                s12 = (short) (s12 + 1);
                s11 = s11;
                i14 = 5;
                c12 = 0;
            } else if (z10) {
                StringBuilder sb13 = new StringBuilder();
                sb13.append("Skip the tag entry since tag number is not defined: ");
                sb13.append(unsignedShort2);
            }
            c11 = c12;
            j11 = 0;
            if (c11 == 0) {
                fVar.l(jD);
                s12 = s12;
                i12 = 1;
            } else {
                if (j11 > 4) {
                    i13 = fVar.readInt();
                    if (z10) {
                        StringBuilder sb14 = new StringBuilder();
                        sb14.append("seek to data offset: ");
                        sb14.append(i13);
                    }
                    if (this.f9178d != 7) {
                        if ("MakerNote".equals(dVar.f9209b)) {
                            this.f9191q = i13;
                        } else if (i11 != 6) {
                        }
                    }
                    fVar.l(i13);
                } else {
                    s12 = s12;
                    jD = jD;
                    i16 = i16;
                }
                num = (Integer) f9161n0.get(Integer.valueOf(unsignedShort2));
                if (z10) {
                    StringBuilder sb15 = new StringBuilder();
                    sb15.append("nextIfdType: ");
                    sb15.append(num);
                    sb15.append(" byteCount: ");
                    sb15.append(j11);
                }
                if (num != null) {
                    if (unsignedShort3 != 3) {
                        if (unsignedShort3 != 4) {
                            jH = fVar.h();
                        } else if (unsignedShort3 == 8) {
                            if (unsignedShort3 != 9) {
                            }
                            unsignedShort = fVar.readInt();
                        } else {
                            unsignedShort = fVar.readShort();
                        }
                        if (z10) {
                            String.format("Offset: %d, tagName: %s", Long.valueOf(jH), dVar.f9209b);
                        }
                        if (jH > 0) {
                            if (!this.f9181g.contains(Integer.valueOf((int) jH))) {
                                fVar.l(jH);
                                H(fVar, num.intValue());
                            } else if (z10) {
                                StringBuilder sb16 = new StringBuilder();
                                sb16.append("Skip jump into the IFD since it has already been read: IfdType ");
                                sb16.append(num);
                                sb16.append(" (at ");
                                sb16.append(jH);
                                sb16.append(")");
                            }
                        } else if (z10) {
                            StringBuilder sb17 = new StringBuilder();
                            sb17.append("Skip jump into the IFD since its offset is invalid: ");
                            sb17.append(jH);
                        }
                        fVar.l(jD);
                        i12 = 1;
                    } else {
                        unsignedShort = fVar.readUnsignedShort();
                    }
                    jH = unsignedShort;
                    if (z10) {
                        String.format("Offset: %d, tagName: %s", Long.valueOf(jH), dVar.f9209b);
                    }
                    if (jH > 0) {
                        if (!this.f9181g.contains(Integer.valueOf((int) jH))) {
                            fVar.l(jH);
                            H(fVar, num.intValue());
                        } else if (z10) {
                            StringBuilder sb18 = new StringBuilder();
                            sb18.append("Skip jump into the IFD since it has already been read: IfdType ");
                            sb18.append(num);
                            sb18.append(" (at ");
                            sb18.append(jH);
                            sb18.append(")");
                        }
                    } else if (z10) {
                        StringBuilder sb19 = new StringBuilder();
                        sb19.append("Skip jump into the IFD since its offset is invalid: ");
                        sb19.append(jH);
                    }
                    fVar.l(jD);
                    i12 = 1;
                } else {
                    j12 = jD;
                    int iD2 = fVar.d() + this.f9190p;
                    byte[] bArr2 = new byte[(int) j11];
                    fVar.readFully(bArr2);
                    c cVar2 = new c(unsignedShort3, i16, iD2, bArr2);
                    this.f9180f[i11].put(dVar.f9209b, cVar2);
                    if ("DNGVersion".equals(dVar.f9209b)) {
                        this.f9178d = 3;
                    }
                    if (!"Make".equals(dVar.f9209b)) {
                    }
                    this.f9178d = 8;
                    if (fVar.d() != j12) {
                        fVar.l(j12);
                    }
                    i12 = 1;
                }
            }
            i15 = i12;
            s12 = (short) (s12 + 1);
            s11 = s11;
            i14 = 5;
            c12 = 0;
        }
        int i17 = i15;
        int i18 = fVar.readInt();
        boolean z11 = f9168u;
        if (z11) {
            Object[] objArr2 = new Object[i17];
            objArr2[0] = Integer.valueOf(i18);
            String.format("nextIfdOffset: %d", objArr2);
        }
        long j13 = i18;
        if (j13 <= 0) {
            if (z11) {
                StringBuilder sb20 = new StringBuilder();
                sb20.append("Stop reading file since a wrong offset may cause an infinite loop: ");
                sb20.append(i18);
                return;
            }
            return;
        }
        if (this.f9181g.contains(Integer.valueOf(i18))) {
            if (z11) {
                StringBuilder sb21 = new StringBuilder();
                sb21.append("Stop reading file since re-reading an IFD may cause an infinite loop: ");
                sb21.append(i18);
                return;
            }
            return;
        }
        fVar.l(j13);
        if (this.f9180f[4].isEmpty()) {
            H(fVar, 4);
        } else if (this.f9180f[5].isEmpty()) {
            H(fVar, 5);
        }
    }

    private void I(int i11, String str, String str2) {
        if (this.f9180f[i11].isEmpty() || this.f9180f[i11].get(str) == null) {
            return;
        }
        HashMap map = this.f9180f[i11];
        map.put(str2, map.get(str));
        this.f9180f[i11].remove(str);
    }

    private void J(f fVar, int i11) throws Throwable {
        c cVar = (c) this.f9180f[i11].get("ImageLength");
        c cVar2 = (c) this.f9180f[i11].get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            c cVar3 = (c) this.f9180f[i11].get("JPEGInterchangeFormat");
            c cVar4 = (c) this.f9180f[i11].get("JPEGInterchangeFormatLength");
            if (cVar3 == null || cVar4 == null) {
                return;
            }
            int i12 = cVar3.i(this.f9182h);
            int i13 = cVar3.i(this.f9182h);
            fVar.l(i12);
            byte[] bArr = new byte[i13];
            fVar.read(bArr);
            f(new b(bArr), i12, i11);
        }
    }

    private void K(b bVar) throws Throwable {
        HashMap map = this.f9180f[4];
        c cVar = (c) map.get("Compression");
        if (cVar == null) {
            this.f9189o = 6;
            p(bVar, map);
            return;
        }
        int i11 = cVar.i(this.f9182h);
        this.f9189o = i11;
        if (i11 != 1) {
            if (i11 == 6) {
                p(bVar, map);
                return;
            } else if (i11 != 7) {
                return;
            }
        }
        if (z(map)) {
            q(bVar, map);
        }
    }

    private static boolean L(int i11) {
        return (i11 == 4 || i11 == 9 || i11 == 13 || i11 == 14) ? false : true;
    }

    private void M(int i11, int i12) throws Throwable {
        if (this.f9180f[i11].isEmpty() || this.f9180f[i12].isEmpty()) {
            return;
        }
        c cVar = (c) this.f9180f[i11].get("ImageLength");
        c cVar2 = (c) this.f9180f[i11].get("ImageWidth");
        c cVar3 = (c) this.f9180f[i12].get("ImageLength");
        c cVar4 = (c) this.f9180f[i12].get("ImageWidth");
        if (cVar == null || cVar2 == null || cVar3 == null || cVar4 == null) {
            return;
        }
        int i13 = cVar.i(this.f9182h);
        int i14 = cVar2.i(this.f9182h);
        int i15 = cVar3.i(this.f9182h);
        int i16 = cVar4.i(this.f9182h);
        if (i13 >= i15 || i14 >= i16) {
            return;
        }
        HashMap[] mapArr = this.f9180f;
        HashMap map = mapArr[i11];
        mapArr[i11] = mapArr[i12];
        mapArr[i12] = map;
    }

    private void N(f fVar, int i11) throws Throwable {
        c cVarF;
        c cVarF2;
        c cVar = (c) this.f9180f[i11].get("DefaultCropSize");
        c cVar2 = (c) this.f9180f[i11].get("SensorTopBorder");
        c cVar3 = (c) this.f9180f[i11].get("SensorLeftBorder");
        c cVar4 = (c) this.f9180f[i11].get("SensorBottomBorder");
        c cVar5 = (c) this.f9180f[i11].get("SensorRightBorder");
        if (cVar == null) {
            if (cVar2 == null || cVar3 == null || cVar4 == null || cVar5 == null) {
                J(fVar, i11);
                return;
            }
            int i12 = cVar2.i(this.f9182h);
            int i13 = cVar4.i(this.f9182h);
            int i14 = cVar5.i(this.f9182h);
            int i15 = cVar3.i(this.f9182h);
            if (i13 <= i12 || i14 <= i15) {
                return;
            }
            c cVarF3 = c.f(i13 - i12, this.f9182h);
            c cVarF4 = c.f(i14 - i15, this.f9182h);
            this.f9180f[i11].put("ImageLength", cVarF3);
            this.f9180f[i11].put("ImageWidth", cVarF4);
            return;
        }
        if (cVar.f9204a == 5) {
            e[] eVarArr = (e[]) cVar.k(this.f9182h);
            if (eVarArr == null || eVarArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(eVarArr));
                return;
            }
            cVarF = c.d(eVarArr[0], this.f9182h);
            cVarF2 = c.d(eVarArr[1], this.f9182h);
        } else {
            int[] iArr = (int[]) cVar.k(this.f9182h);
            if (iArr == null || iArr.length != 2) {
                Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                return;
            }
            cVarF = c.f(iArr[0], this.f9182h);
            cVarF2 = c.f(iArr[1], this.f9182h);
        }
        this.f9180f[i11].put("ImageWidth", cVarF);
        this.f9180f[i11].put("ImageLength", cVarF2);
    }

    private void O() throws Throwable {
        M(0, 5);
        M(0, 4);
        M(5, 4);
        c cVar = (c) this.f9180f[1].get("PixelXDimension");
        c cVar2 = (c) this.f9180f[1].get("PixelYDimension");
        if (cVar != null && cVar2 != null) {
            this.f9180f[0].put("ImageWidth", cVar);
            this.f9180f[0].put("ImageLength", cVar2);
        }
        if (this.f9180f[4].isEmpty() && A(this.f9180f[5])) {
            HashMap[] mapArr = this.f9180f;
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap();
        }
        A(this.f9180f[4]);
        I(0, "ThumbnailOrientation", "Orientation");
        I(0, "ThumbnailImageLength", "ImageLength");
        I(0, "ThumbnailImageWidth", "ImageWidth");
        I(5, "ThumbnailOrientation", "Orientation");
        I(5, "ThumbnailImageLength", "ImageLength");
        I(5, "ThumbnailImageWidth", "ImageWidth");
        I(4, "Orientation", "ThumbnailOrientation");
        I(4, "ImageLength", "ThumbnailImageLength");
        I(4, "ImageWidth", "ThumbnailImageWidth");
    }

    private void a() {
        String strB = b("DateTimeOriginal");
        if (strB != null && b("DateTime") == null) {
            this.f9180f[0].put("DateTime", c.a(strB));
        }
        if (b("ImageWidth") == null) {
            this.f9180f[0].put("ImageWidth", c.b(0L, this.f9182h));
        }
        if (b("ImageLength") == null) {
            this.f9180f[0].put("ImageLength", c.b(0L, this.f9182h));
        }
        if (b("Orientation") == null) {
            this.f9180f[0].put("Orientation", c.b(0L, this.f9182h));
        }
        if (b("LightSource") == null) {
            this.f9180f[1].put("LightSource", c.b(0L, this.f9182h));
        }
    }

    private c d(String str) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        if ("ISOSpeedRatings".equals(str)) {
            str = "PhotographicSensitivity";
        }
        for (int i11 = 0; i11 < f9156i0.length; i11++) {
            c cVar = (c) this.f9180f[i11].get(str);
            if (cVar != null) {
                return cVar;
            }
        }
        return null;
    }

    private void e(f fVar) throws IOException {
        String strExtractMetadata;
        String strExtractMetadata2;
        String strExtractMetadata3;
        int i11;
        if (Build.VERSION.SDK_INT < 28) {
            throw new UnsupportedOperationException("Reading EXIF from HEIF files is supported from SDK 28 and above");
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                androidx.exifinterface.media.b.C0081b.a(mediaMetadataRetriever, new C0080a(fVar));
                String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(33);
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(34);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(26);
                String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(strExtractMetadata6)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(29);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(30);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(strExtractMetadata7)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    strExtractMetadata = null;
                    strExtractMetadata2 = null;
                    strExtractMetadata3 = null;
                }
                if (strExtractMetadata != null) {
                    this.f9180f[0].put("ImageWidth", c.f(Integer.parseInt(strExtractMetadata), this.f9182h));
                }
                if (strExtractMetadata2 != null) {
                    this.f9180f[0].put("ImageLength", c.f(Integer.parseInt(strExtractMetadata2), this.f9182h));
                }
                if (strExtractMetadata3 != null) {
                    int i12 = Integer.parseInt(strExtractMetadata3);
                    if (i12 == 90) {
                        i11 = 6;
                    } else if (i12 != 180) {
                        i11 = i12 != 270 ? 1 : 8;
                    } else {
                        i11 = 3;
                    }
                    this.f9180f[0].put("Orientation", c.f(i11, this.f9182h));
                }
                if (strExtractMetadata4 != null && strExtractMetadata5 != null) {
                    int i13 = Integer.parseInt(strExtractMetadata4);
                    int i14 = Integer.parseInt(strExtractMetadata5);
                    if (i14 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    fVar.l(i13);
                    byte[] bArr = new byte[6];
                    if (fVar.read(bArr) != 6) {
                        throw new IOException("Can't read identifier");
                    }
                    int i15 = i13 + 6;
                    int i16 = i14 - 6;
                    if (!Arrays.equals(bArr, f9163p0)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i16];
                    if (fVar.read(bArr2) != i16) {
                        throw new IOException("Can't read exif");
                    }
                    this.f9190p = i15;
                    G(bArr2, 0);
                }
                if (f9168u) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Heif meta: ");
                    sb2.append(strExtractMetadata);
                    sb2.append("x");
                    sb2.append(strExtractMetadata2);
                    sb2.append(", rotation ");
                    sb2.append(strExtractMetadata3);
                }
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.");
            }
        } catch (Throwable th2) {
            mediaMetadataRetriever.release();
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009e A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:36:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:37:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:61:0x015b A[LOOP:0: B:10:0x002e->B:61:0x015b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:79:0x0161 A[SYNTHETIC] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Unknown Source)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    private void f(androidx.exifinterface.media.a.b r20, int r21, int r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.a.f(androidx.exifinterface.media.a$b, int, int):void");
    }

    private int g(BufferedInputStream bufferedInputStream) throws IOException {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (t(bArr)) {
            return 4;
        }
        if (w(bArr)) {
            return 9;
        }
        if (s(bArr)) {
            return 12;
        }
        if (u(bArr)) {
            return 7;
        }
        if (x(bArr)) {
            return 10;
        }
        if (v(bArr)) {
            return 13;
        }
        return B(bArr) ? 14 : 0;
    }

    private void h(f fVar) throws Throwable {
        int i11;
        int i12;
        k(fVar);
        c cVar = (c) this.f9180f[1].get("MakerNote");
        if (cVar != null) {
            f fVar2 = new f(cVar.f9207d);
            fVar2.i(this.f9182h);
            byte[] bArr = E;
            byte[] bArr2 = new byte[bArr.length];
            fVar2.readFully(bArr2);
            fVar2.l(0L);
            byte[] bArr3 = F;
            byte[] bArr4 = new byte[bArr3.length];
            fVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                fVar2.l(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                fVar2.l(12L);
            }
            H(fVar2, 6);
            c cVar2 = (c) this.f9180f[7].get("PreviewImageStart");
            c cVar3 = (c) this.f9180f[7].get("PreviewImageLength");
            if (cVar2 != null && cVar3 != null) {
                this.f9180f[5].put("JPEGInterchangeFormat", cVar2);
                this.f9180f[5].put("JPEGInterchangeFormatLength", cVar3);
            }
            c cVar4 = (c) this.f9180f[8].get("AspectFrame");
            if (cVar4 != null) {
                int[] iArr = (int[]) cVar4.k(this.f9182h);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                int i13 = iArr[2];
                int i14 = iArr[0];
                if (i13 <= i14 || (i11 = iArr[3]) <= (i12 = iArr[1])) {
                    return;
                }
                int i15 = (i13 - i14) + 1;
                int i16 = (i11 - i12) + 1;
                if (i15 < i16) {
                    int i17 = i15 + i16;
                    i16 = i17 - i16;
                    i15 = i17 - i16;
                }
                c cVarF = c.f(i15, this.f9182h);
                c cVarF2 = c.f(i16, this.f9182h);
                this.f9180f[0].put("ImageWidth", cVarF);
                this.f9180f[0].put("ImageLength", cVarF2);
            }
        }
    }

    private void i(b bVar) throws Throwable {
        if (f9168u) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getPngAttributes starting with: ");
            sb2.append(bVar);
        }
        bVar.i(ByteOrder.BIG_ENDIAN);
        byte[] bArr = G;
        bVar.k(bArr.length);
        int length = bArr.length;
        while (true) {
            try {
                int i11 = bVar.readInt();
                byte[] bArr2 = new byte[4];
                if (bVar.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i12 = length + 8;
                if (i12 == 16 && !Arrays.equals(bArr2, I)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, J)) {
                    return;
                }
                if (Arrays.equals(bArr2, H)) {
                    byte[] bArr3 = new byte[i11];
                    if (bVar.read(bArr3) != i11) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + androidx.exifinterface.media.b.a(bArr2));
                    }
                    int i13 = bVar.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == i13) {
                        this.f9190p = i12;
                        G(bArr3, 0);
                        O();
                        K(new b(bArr3));
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i13 + ", calculated CRC value: " + crc32.getValue());
                }
                int i14 = i11 + 4;
                bVar.k(i14);
                length = i12 + i14;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    private void j(b bVar) throws Throwable {
        boolean z10 = f9168u;
        if (z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getRafAttributes starting with: ");
            sb2.append(bVar);
        }
        bVar.k(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        bVar.read(bArr);
        bVar.read(bArr2);
        bVar.read(bArr3);
        int i11 = ByteBuffer.wrap(bArr).getInt();
        int i12 = ByteBuffer.wrap(bArr2).getInt();
        int i13 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i12];
        bVar.k(i11 - bVar.d());
        bVar.read(bArr4);
        f(new b(bArr4), i11, 5);
        bVar.k(i13 - bVar.d());
        bVar.i(ByteOrder.BIG_ENDIAN);
        int i14 = bVar.readInt();
        if (z10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("numberOfDirectoryEntry: ");
            sb3.append(i14);
        }
        for (int i15 = 0; i15 < i14; i15++) {
            int unsignedShort = bVar.readUnsignedShort();
            int unsignedShort2 = bVar.readUnsignedShort();
            if (unsignedShort == f9151d0.f9208a) {
                short s11 = bVar.readShort();
                short s12 = bVar.readShort();
                c cVarF = c.f(s11, this.f9182h);
                c cVarF2 = c.f(s12, this.f9182h);
                this.f9180f[0].put("ImageLength", cVarF);
                this.f9180f[0].put("ImageWidth", cVarF2);
                if (f9168u) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Updated to length: ");
                    sb4.append((int) s11);
                    sb4.append(", width: ");
                    sb4.append((int) s12);
                    return;
                }
                return;
            }
            bVar.k(unsignedShort2);
        }
    }

    private void k(f fVar) throws Throwable {
        c cVar;
        D(fVar);
        H(fVar, 0);
        N(fVar, 0);
        N(fVar, 5);
        N(fVar, 4);
        O();
        if (this.f9178d != 8 || (cVar = (c) this.f9180f[1].get("MakerNote")) == null) {
            return;
        }
        f fVar2 = new f(cVar.f9207d);
        fVar2.i(this.f9182h);
        fVar2.k(6);
        H(fVar2, 9);
        c cVar2 = (c) this.f9180f[9].get("ColorSpace");
        if (cVar2 != null) {
            this.f9180f[1].put("ColorSpace", cVar2);
        }
    }

    private void m(f fVar) throws Throwable {
        if (f9168u) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getRw2Attributes starting with: ");
            sb2.append(fVar);
        }
        k(fVar);
        c cVar = (c) this.f9180f[0].get("JpgFromRaw");
        if (cVar != null) {
            f(new b(cVar.f9207d), (int) cVar.f9206c, 5);
        }
        c cVar2 = (c) this.f9180f[0].get("ISO");
        c cVar3 = (c) this.f9180f[1].get("PhotographicSensitivity");
        if (cVar2 == null || cVar3 != null) {
            return;
        }
        this.f9180f[1].put("PhotographicSensitivity", cVar2);
    }

    private void n(f fVar) throws IOException {
        byte[] bArr = f9163p0;
        fVar.k(bArr.length);
        byte[] bArr2 = new byte[fVar.available()];
        fVar.readFully(bArr2);
        this.f9190p = bArr.length;
        G(bArr2, 0);
    }

    private void o(b bVar) throws Throwable {
        if (f9168u) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getWebpAttributes starting with: ");
            sb2.append(bVar);
        }
        bVar.i(ByteOrder.LITTLE_ENDIAN);
        bVar.k(K.length);
        int i11 = bVar.readInt() + 8;
        byte[] bArr = L;
        bVar.k(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                if (bVar.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int i12 = bVar.readInt();
                int i13 = length + 8;
                if (Arrays.equals(M, bArr2)) {
                    byte[] bArr3 = new byte[i12];
                    if (bVar.read(bArr3) == i12) {
                        this.f9190p = i13;
                        G(bArr3, 0);
                        K(new b(bArr3));
                        return;
                    } else {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + androidx.exifinterface.media.b.a(bArr2));
                    }
                }
                if (i12 % 2 == 1) {
                    i12++;
                }
                length = i13 + i12;
                if (length == i11) {
                    return;
                }
                if (length > i11) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                bVar.k(i12);
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    private void p(b bVar, HashMap map) throws Throwable {
        c cVar = (c) map.get("JPEGInterchangeFormat");
        c cVar2 = (c) map.get("JPEGInterchangeFormatLength");
        if (cVar == null || cVar2 == null) {
            return;
        }
        int i11 = cVar.i(this.f9182h);
        int i12 = cVar2.i(this.f9182h);
        if (this.f9178d == 7) {
            i11 += this.f9191q;
        }
        if (i11 > 0 && i12 > 0) {
            this.f9183i = true;
            if (this.f9175a == null && this.f9177c == null && this.f9176b == null) {
                byte[] bArr = new byte[i12];
                bVar.skip(i11);
                bVar.read(bArr);
                this.f9188n = bArr;
            }
            this.f9186l = i11;
            this.f9187m = i12;
        }
        if (f9168u) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Setting thumbnail attributes with offset: ");
            sb2.append(i11);
            sb2.append(", length: ");
            sb2.append(i12);
        }
    }

    private void q(b bVar, HashMap map) {
        c cVar = (c) map.get("StripOffsets");
        c cVar2 = (c) map.get("StripByteCounts");
        if (cVar == null || cVar2 == null) {
            return;
        }
        long[] jArrB = androidx.exifinterface.media.b.b(cVar.k(this.f9182h));
        long[] jArrB2 = androidx.exifinterface.media.b.b(cVar2.k(this.f9182h));
        if (jArrB == null || jArrB.length == 0) {
            Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
            return;
        }
        if (jArrB2 == null || jArrB2.length == 0) {
            Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
            return;
        }
        if (jArrB.length != jArrB2.length) {
            Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
            return;
        }
        long j11 = 0;
        for (long j12 : jArrB2) {
            j11 += j12;
        }
        int i11 = (int) j11;
        byte[] bArr = new byte[i11];
        this.f9185k = true;
        this.f9184j = true;
        this.f9183i = true;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < jArrB.length; i14++) {
            int i15 = (int) jArrB[i14];
            int i16 = (int) jArrB2[i14];
            if (i14 < jArrB.length - 1 && i15 + i16 != jArrB[i14 + 1]) {
                this.f9185k = false;
            }
            int i17 = i15 - i12;
            if (i17 < 0) {
                return;
            }
            long j13 = i17;
            if (bVar.skip(j13) != j13) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Failed to skip ");
                sb2.append(i17);
                sb2.append(" bytes.");
                return;
            }
            int i18 = i12 + i17;
            byte[] bArr2 = new byte[i16];
            if (bVar.read(bArr2) != i16) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Failed to read ");
                sb3.append(i16);
                sb3.append(" bytes.");
                return;
            }
            i12 = i18 + i16;
            System.arraycopy(bArr2, 0, bArr, i13, i16);
            i13 += i16;
        }
        this.f9188n = bArr;
        if (this.f9185k) {
            this.f9186l = (int) jArrB[0];
            this.f9187m = i11;
        }
    }

    private static boolean r(BufferedInputStream bufferedInputStream) throws IOException {
        byte[] bArr = f9163p0;
        bufferedInputStream.mark(bArr.length);
        byte[] bArr2 = new byte[bArr.length];
        bufferedInputStream.read(bArr2);
        bufferedInputStream.reset();
        int i11 = 0;
        while (true) {
            byte[] bArr3 = f9163p0;
            if (i11 >= bArr3.length) {
                return true;
            }
            if (bArr2[i11] != bArr3[i11]) {
                return false;
            }
            i11++;
        }
    }

    private boolean s(byte[] bArr) throws Throwable {
        long j11;
        b bVar = null;
        try {
            b bVar2 = new b(bArr);
            try {
                long length = bVar2.readInt();
                byte[] bArr2 = new byte[4];
                bVar2.read(bArr2);
                if (!Arrays.equals(bArr2, B)) {
                    bVar2.close();
                    return false;
                }
                if (length == 1) {
                    length = bVar2.readLong();
                    j11 = 16;
                    if (length < 16) {
                        bVar2.close();
                        return false;
                    }
                } else {
                    j11 = 8;
                }
                if (length > bArr.length) {
                    length = bArr.length;
                }
                long j12 = length - j11;
                if (j12 < 8) {
                    bVar2.close();
                    return false;
                }
                byte[] bArr3 = new byte[4];
                boolean z10 = false;
                boolean z11 = false;
                for (long j13 = 0; j13 < j12 / 4; j13++) {
                    if (bVar2.read(bArr3) != 4) {
                        bVar2.close();
                        return false;
                    }
                    if (j13 != 1) {
                        if (Arrays.equals(bArr3, C)) {
                            z10 = true;
                        } else if (Arrays.equals(bArr3, D)) {
                            z11 = true;
                        }
                        if (z10 && z11) {
                            bVar2.close();
                            return true;
                        }
                    }
                }
                bVar2.close();
            } catch (Exception unused) {
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
        return false;
    }

    private static boolean t(byte[] bArr) {
        int i11 = 0;
        while (true) {
            byte[] bArr2 = A;
            if (i11 >= bArr2.length) {
                return true;
            }
            if (bArr[i11] != bArr2[i11]) {
                return false;
            }
            i11++;
        }
    }

    private boolean u(byte[] bArr) throws Throwable {
        b bVar = null;
        try {
            b bVar2 = new b(bArr);
            try {
                ByteOrder byteOrderF = F(bVar2);
                this.f9182h = byteOrderF;
                bVar2.i(byteOrderF);
                short s11 = bVar2.readShort();
                boolean z10 = s11 == 20306 || s11 == 21330;
                bVar2.close();
                return z10;
            } catch (Exception unused) {
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private boolean v(byte[] bArr) {
        int i11 = 0;
        while (true) {
            byte[] bArr2 = G;
            if (i11 >= bArr2.length) {
                return true;
            }
            if (bArr[i11] != bArr2[i11]) {
                return false;
            }
            i11++;
        }
    }

    private boolean w(byte[] bArr) {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i11 = 0; i11 < bytes.length; i11++) {
            if (bArr[i11] != bytes[i11]) {
                return false;
            }
        }
        return true;
    }

    private boolean x(byte[] bArr) throws Throwable {
        b bVar = null;
        try {
            b bVar2 = new b(bArr);
            try {
                ByteOrder byteOrderF = F(bVar2);
                this.f9182h = byteOrderF;
                bVar2.i(byteOrderF);
                boolean z10 = bVar2.readShort() == 85;
                bVar2.close();
                return z10;
            } catch (Exception unused) {
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                if (bVar != null) {
                    bVar.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static boolean y(FileDescriptor fileDescriptor) {
        try {
            androidx.exifinterface.media.b.a.c(fileDescriptor, 0L, OsConstants.SEEK_CUR);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean z(HashMap map) throws Throwable {
        c cVar;
        c cVar2 = (c) map.get("BitsPerSample");
        if (cVar2 == null) {
            return false;
        }
        int[] iArr = (int[]) cVar2.k(this.f9182h);
        int[] iArr2 = f9172x;
        if (Arrays.equals(iArr2, iArr)) {
            return true;
        }
        if (this.f9178d != 3 || (cVar = (c) map.get("PhotometricInterpretation")) == null) {
            return false;
        }
        int i11 = cVar.i(this.f9182h);
        return (i11 == 1 && Arrays.equals(iArr, f9174z)) || (i11 == 6 && Arrays.equals(iArr, iArr2));
    }

    public String b(String str) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        c cVarD = d(str);
        if (cVarD != null) {
            if (!f9160m0.contains(str)) {
                return cVarD.j(this.f9182h);
            }
            if (str.equals("GPSTimeStamp")) {
                int i11 = cVarD.f9204a;
                if (i11 != 5 && i11 != 10) {
                    Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + cVarD.f9204a);
                    return null;
                }
                e[] eVarArr = (e[]) cVarD.k(this.f9182h);
                if (eVarArr == null || eVarArr.length != 3) {
                    Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(eVarArr));
                    return null;
                }
                e eVar = eVarArr[0];
                Integer numValueOf = Integer.valueOf((int) (eVar.f9212a / eVar.f9213b));
                e eVar2 = eVarArr[1];
                Integer numValueOf2 = Integer.valueOf((int) (eVar2.f9212a / eVar2.f9213b));
                e eVar3 = eVarArr[2];
                return String.format("%02d:%02d:%02d", numValueOf, numValueOf2, Integer.valueOf((int) (eVar3.f9212a / eVar3.f9213b)));
            }
            try {
                return Double.toString(cVarD.h(this.f9182h));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public int c(String str, int i11) {
        if (str == null) {
            throw new NullPointerException("tag shouldn't be null");
        }
        c cVarD = d(str);
        if (cVarD == null) {
            return i11;
        }
        try {
            return cVarD.i(this.f9182h);
        } catch (NumberFormatException unused) {
            return i11;
        }
    }

    public int l() {
        switch (c("Orientation", 1)) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 8:
                return 270;
            case 6:
            case 7:
                return 90;
            default:
                return 0;
        }
    }
}
