package d3;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.i;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import androidx.media3.common.util.v;
import androidx.media3.common.y;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i3.s;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import l2.f0;
import l2.h;
import l2.l0;
import l2.m0;
import l2.o;
import l2.q;
import l2.r;
import l2.s0;
import l2.t;
import l2.t0;
import l2.w;
import l2.x;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public class e implements r {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final x f61155f0 = new x() { // from class: d3.d
        @Override // l2.x
        public /* synthetic */ x a(s.a aVar) {
            return w.d(this, aVar);
        }

        @Override // l2.x
        public /* synthetic */ x b(int i11) {
            return w.b(this, i11);
        }

        @Override // l2.x
        public /* synthetic */ r[] c(Uri uri, Map map) {
            return w.a(this, uri, map);
        }

        @Override // l2.x
        public final r[] createExtractors() {
            return e.B();
        }

        @Override // l2.x
        public /* synthetic */ x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static final byte[] f61156g0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static final byte[] f61157h0 = a1.u0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static final byte[] f61158i0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final byte[] f61159j0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static final UUID f61160k0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static final Map f61161l0;
    private long A;
    private boolean B;
    private long C;
    private long D;
    private long E;
    private v F;
    private v G;
    private boolean H;
    private boolean I;
    private int J;
    private long K;
    private long L;
    private int M;
    private int N;
    private int[] O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private boolean T;
    private long U;
    private int V;
    private int W;
    private int X;
    private boolean Y;
    private boolean Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d3.c f61162a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f61163a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f61164b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private int f61165b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SparseArray f61166c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private byte f61167c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f61168d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private boolean f61169d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f61170e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private t f61171e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final s.a f61172f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j0 f61173g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j0 f61174h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final j0 f61175i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final j0 f61176j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final j0 f61177k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final j0 f61178l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final j0 f61179m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final j0 f61180n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final j0 f61181o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final j0 f61182p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ByteBuffer f61183q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f61184r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f61185s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f61186t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f61187u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f61188v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f61189w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private c f61190x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f61191y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f61192z;

    private final class b implements d3.b {
        private b() {
        }

        @Override // d3.b
        public void a(int i11, int i12, l2.s sVar) throws ParserException {
            e.this.m(i11, i12, sVar);
        }

        @Override // d3.b
        public void endMasterElement(int i11) throws ParserException {
            e.this.p(i11);
        }

        @Override // d3.b
        public void floatElement(int i11, double d11) {
            e.this.s(i11, d11);
        }

        @Override // d3.b
        public int getElementType(int i11) {
            return e.this.v(i11);
        }

        @Override // d3.b
        public void integerElement(int i11, long j11) throws ParserException {
            e.this.y(i11, j11);
        }

        @Override // d3.b
        public boolean isLevel1Element(int i11) {
            return e.this.A(i11);
        }

        @Override // d3.b
        public void startMasterElement(int i11, long j11, long j12) throws ParserException {
            e.this.H(i11, j11, j12);
        }

        @Override // d3.b
        public void stringElement(int i11, String str) throws ParserException {
            e.this.I(i11, str);
        }
    }

    protected static final class c {
        public byte[] P;
        public t0 V;
        public boolean W;
        public s0 Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f61194a;

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        public int f61195a0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f61196b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f61197c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f61198d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f61199e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f61200f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f61201g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f61202h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f61203i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public byte[] f61204j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public s0.a f61205k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public byte[] f61206l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public DrmInitData f61207m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f61208n = -1;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f61209o = -1;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f61210p = -1;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f61211q = -1;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f61212r = -1;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f61213s = 0;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f61214t = -1;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public float f61215u = 0.0f;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public float f61216v = 0.0f;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public float f61217w = 0.0f;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public byte[] f61218x = null;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f61219y = -1;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public boolean f61220z = false;
        public int A = -1;
        public int B = -1;
        public int C = -1;
        public int D = 1000;
        public int E = 200;
        public float F = -1.0f;
        public float G = -1.0f;
        public float H = -1.0f;
        public float I = -1.0f;
        public float J = -1.0f;
        public float K = -1.0f;
        public float L = -1.0f;
        public float M = -1.0f;
        public float N = -1.0f;
        public float O = -1.0f;
        public int Q = 1;
        public int R = -1;
        public int S = 8000;
        public long T = 0;
        public long U = 0;
        public boolean X = true;
        private String Y = "eng";

        protected c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            androidx.media3.common.util.a.e(this.Z);
        }

        private byte[] g(String str) throws ParserException {
            byte[] bArr = this.f61206l;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.createForMalformedContainer("Missing CodecPrivate for codec " + str, null);
        }

        private byte[] h() {
            if (this.F == -1.0f || this.G == -1.0f || this.H == -1.0f || this.I == -1.0f || this.J == -1.0f || this.K == -1.0f || this.L == -1.0f || this.M == -1.0f || this.N == -1.0f || this.O == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put((byte) 0);
            byteBufferOrder.putShort((short) ((this.F * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.G * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.H * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.I * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.J * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.K * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.L * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.M * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) (this.N + 0.5f));
            byteBufferOrder.putShort((short) (this.O + 0.5f));
            byteBufferOrder.putShort((short) this.D);
            byteBufferOrder.putShort((short) this.E);
            return bArr;
        }

        private static Pair k(j0 j0Var) throws ParserException {
            try {
                j0Var.X(16);
                long jX = j0Var.x();
                if (jX == 1482049860) {
                    return new Pair("video/divx", null);
                }
                if (jX == 859189832) {
                    return new Pair(MimeTypes.VIDEO_H263, null);
                }
                if (jX != 826496599) {
                    u.h("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair(MimeTypes.VIDEO_UNKNOWN, null);
                }
                byte[] bArrE = j0Var.e();
                for (int iF = j0Var.f() + 20; iF < bArrE.length - 4; iF++) {
                    if (bArrE[iF] == 0 && bArrE[iF + 1] == 0 && bArrE[iF + 2] == 1 && bArrE[iF + 3] == 15) {
                        return new Pair(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(bArrE, iF, bArrE.length)));
                    }
                }
                throw ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        private static boolean l(j0 j0Var) throws ParserException {
            try {
                int iZ = j0Var.z();
                if (iZ == 1) {
                    return true;
                }
                if (iZ != 65534) {
                    return false;
                }
                j0Var.W(24);
                return j0Var.A() == e.f61160k0.getMostSignificantBits() && j0Var.A() == e.f61160k0.getLeastSignificantBits();
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing MS/ACM codec private", null);
            }
        }

        private static List m(byte[] bArr) throws ParserException {
            int i11;
            int i12;
            try {
                if (bArr[0] != 2) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i13 = 0;
                int i14 = 1;
                while (true) {
                    i11 = bArr[i14];
                    if ((i11 & 255) != 255) {
                        break;
                    }
                    i13 += 255;
                    i14++;
                }
                int i15 = i14 + 1;
                int i16 = i13 + (i11 & 255);
                int i17 = 0;
                while (true) {
                    i12 = bArr[i15];
                    if ((i12 & 255) != 255) {
                        break;
                    }
                    i17 += 255;
                    i15++;
                }
                int i18 = i15 + 1;
                int i19 = i17 + (i12 & 255);
                if (bArr[i18] != 1) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr2 = new byte[i16];
                System.arraycopy(bArr, i18, bArr2, 0, i16);
                int i20 = i18 + i16;
                if (bArr[i20] != 3) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i21 = i20 + i19;
                if (bArr[i21] != 5) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr3 = new byte[bArr.length - i21];
                System.arraycopy(bArr, i21, bArr3, 0, bArr.length - i21);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean o(boolean z10) {
            if ("A_OPUS".equals(this.f61197c)) {
                return z10;
            }
            return this.f61201g > 0;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:219:0x0453  */
        /* JADX WARN: Code duplicated, block: B:224:0x046c  */
        /* JADX WARN: Code duplicated, block: B:225:0x046e  */
        /* JADX WARN: Code duplicated, block: B:228:0x047b  */
        /* JADX WARN: Code duplicated, block: B:229:0x048d  */
        /* JADX WARN: Code duplicated, block: B:231:0x0493  */
        /* JADX WARN: Code duplicated, block: B:233:0x0497  */
        /* JADX WARN: Code duplicated, block: B:235:0x049c  */
        /* JADX WARN: Code duplicated, block: B:238:0x04a4  */
        /* JADX WARN: Code duplicated, block: B:240:0x04a9  */
        /* JADX WARN: Code duplicated, block: B:243:0x04ae  */
        /* JADX WARN: Code duplicated, block: B:246:0x04bc  */
        /* JADX WARN: Code duplicated, block: B:249:0x04c2  */
        /* JADX WARN: Code duplicated, block: B:252:0x04f5  */
        /* JADX WARN: Code duplicated, block: B:257:0x0515  */
        /* JADX WARN: Code duplicated, block: B:276:0x0561  */
        /* JADX WARN: Code duplicated, block: B:278:0x0587  */
        /* JADX WARN: Code duplicated, block: B:280:0x058d  */
        /* JADX WARN: Code duplicated, block: B:296:0x05b8  */
        /* JADX WARN: Code duplicated, block: B:301:0x05d3  */
        /* JADX WARN: Code duplicated, block: B:302:0x05d6  */
        /* JADX WARN: Code duplicated, block: B:4:0x0028  */
        public void i(t tVar, int i11) throws ParserException {
            int i12;
            List listSingletonList;
            String str;
            int i13;
            int i14;
            List list;
            String str2;
            String str3;
            int i15;
            androidx.media3.common.r.b bVar;
            int i16;
            int iIntValue;
            int i17;
            float f11;
            int i18;
            int i19;
            int i20;
            String str4;
            o oVarA;
            String str5 = this.f61197c;
            str5.hashCode();
            String str6 = MimeTypes.AUDIO_RAW;
            switch (str5) {
                case "V_MPEG4/ISO/AP":
                case "V_MPEG4/ISO/SP":
                case "V_MPEG4/ISO/ASP":
                    i12 = 0;
                    byte[] bArr = this.f61206l;
                    listSingletonList = bArr == null ? null : Collections.singletonList(bArr);
                    str6 = MimeTypes.VIDEO_MP4V;
                    str = null;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null && (oVarA = o.a(new j0(this.P))) != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z10 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i21 = i15 | (z10 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    } else if (y.t(str3)) {
                        if (this.f61213s == 0) {
                            i19 = this.f61211q;
                            iIntValue = -1;
                            if (i19 == -1) {
                                i19 = this.f61208n;
                            }
                            this.f61211q = i19;
                            i20 = this.f61212r;
                            if (i20 == -1) {
                                i20 = this.f61209o;
                            }
                            this.f61212r = i20;
                        } else {
                            iIntValue = -1;
                        }
                        i17 = this.f61211q;
                        if (i17 != iIntValue || (i18 = this.f61212r) == iIntValue) {
                            f11 = -1.0f;
                        } else {
                            f11 = (this.f61209o * i17) / (this.f61208n * i18);
                        }
                        i iVarA = this.f61220z ? new i.b().d(this.A).c(this.C).e(this.B).f(h()).g(this.f61210p).b(this.f61210p).a() : null;
                        if (this.f61196b != null && e.f61161l0.containsKey(this.f61196b)) {
                            iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                        }
                        if (this.f61214t == 0 || Float.compare(this.f61215u, 0.0f) != 0 || Float.compare(this.f61216v, 0.0f) != 0) {
                            i12 = iIntValue;
                        } else if (Float.compare(this.f61217w, 0.0f) != 0) {
                            if (Float.compare(this.f61217w, 90.0f) == 0) {
                                i12 = 90;
                            } else if (Float.compare(this.f61217w, -180.0f) == 0 || Float.compare(this.f61217w, 180.0f) == 0) {
                                i12 = 180;
                            } else if (Float.compare(this.f61217w, -90.0f) == 0) {
                                i12 = 270;
                            } else {
                                i12 = iIntValue;
                            }
                        }
                        bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                        i16 = 2;
                    } else {
                        if (MimeTypes.APPLICATION_SUBRIP.equals(str3) && !MimeTypes.TEXT_SSA.equals(str3) && !MimeTypes.TEXT_VTT.equals(str3) && !MimeTypes.APPLICATION_VOBSUB.equals(str3) && !MimeTypes.APPLICATION_PGS.equals(str3) && !MimeTypes.APPLICATION_DVBSUBS.equals(str3)) {
                            throw ParserException.createForMalformedContainer("Unexpected MIME type.", null);
                        }
                        i16 = 3;
                    }
                    if (this.f61196b != null && !e.f61161l0.containsKey(this.f61196b)) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE0 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN = bVarE0.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i21 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack;
                    s0VarTrack.c(rVarN);
                    return;
                case "A_MS/ACM":
                    i12 = 0;
                    if (l(new j0(g(this.f61197c)))) {
                        int iI0 = a1.i0(this.R);
                        if (iI0 != 0) {
                            i13 = iI0;
                            listSingletonList = null;
                            str = null;
                            i14 = -1;
                            if (this.P != null) {
                                str = oVarA.f68654c;
                                str6 = "video/dolby-vision";
                            }
                            str3 = str6;
                            boolean z11 = this.X;
                            if (this.W) {
                                i15 = 2;
                            } else {
                                i15 = i12;
                            }
                            int i22 = i15 | (z11 ? 1 : 0);
                            bVar = new androidx.media3.common.r.b();
                            if (y.o(str3)) {
                                if (y.t(str3)) {
                                    if (this.f61213s == 0) {
                                        i19 = this.f61211q;
                                        iIntValue = -1;
                                        if (i19 == -1) {
                                            i19 = this.f61208n;
                                        }
                                        this.f61211q = i19;
                                        i20 = this.f61212r;
                                        if (i20 == -1) {
                                            i20 = this.f61209o;
                                        }
                                        this.f61212r = i20;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    i17 = this.f61211q;
                                    if (i17 != iIntValue) {
                                        f11 = -1.0f;
                                    } else {
                                        f11 = -1.0f;
                                    }
                                    if (this.f61220z) {
                                    }
                                    if (this.f61196b != null) {
                                        iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                                    }
                                    if (this.f61214t == 0) {
                                        i12 = iIntValue;
                                    } else {
                                        i12 = iIntValue;
                                    }
                                    bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                                    i16 = 2;
                                } else {
                                    if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                                    }
                                    i16 = 3;
                                }
                                break;
                            } else {
                                bVar.R(this.Q).v0(this.S).o0(i13);
                                i16 = 1;
                            }
                            if (this.f61196b != null) {
                                bVar.h0(this.f61196b);
                            }
                            androidx.media3.common.r.b bVarE1 = bVar.e0(i11);
                            if (this.f61194a) {
                                str4 = MimeTypes.VIDEO_WEBM;
                            } else {
                                str4 = "video/x-matroska";
                            }
                            androidx.media3.common.r rVarN2 = bVarE1.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i22 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                            s0 s0VarTrack2 = tVar.track(this.f61198d, i16);
                            this.Z = s0VarTrack2;
                            s0VarTrack2.c(rVarN2);
                            return;
                        }
                        u.h("MatroskaExtractor", "Unsupported PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    } else {
                        u.h("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    }
                    listSingletonList = null;
                    str = null;
                    str6 = MimeTypes.AUDIO_UNKNOWN;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z12 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i23 = i15 | (z12 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE2 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN3 = bVarE2.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i23 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack3 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack3;
                    s0VarTrack3.c(rVarN3);
                    return;
                case "A_TRUEHD":
                    i12 = 0;
                    this.V = new t0();
                    str6 = MimeTypes.AUDIO_TRUEHD;
                    listSingletonList = null;
                    str = null;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z13 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i24 = i15 | (z13 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE3 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN4 = bVarE3.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i24 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack4 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack4;
                    s0VarTrack4.c(rVarN4);
                    return;
                case "A_VORBIS":
                    i12 = 0;
                    listSingletonList = m(g(this.f61197c));
                    str6 = MimeTypes.AUDIO_VORBIS;
                    i14 = 8192;
                    str = null;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z14 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i25 = i15 | (z14 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE4 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN5 = bVarE4.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i25 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack5 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack5;
                    s0VarTrack5.c(rVarN5);
                    return;
                case "A_MPEG/L2":
                    i12 = 0;
                    str6 = MimeTypes.AUDIO_MPEG_L2;
                    listSingletonList = null;
                    str = null;
                    i14 = 4096;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z15 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i26 = i15 | (z15 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE5 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN6 = bVarE5.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i26 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack6 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack6;
                    s0VarTrack6.c(rVarN6);
                    return;
                case "A_MPEG/L3":
                    i12 = 0;
                    str6 = MimeTypes.AUDIO_MPEG;
                    listSingletonList = null;
                    str = null;
                    i14 = 4096;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z16 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i27 = i15 | (z16 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE6 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN7 = bVarE6.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i27 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack7 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack7;
                    s0VarTrack7.c(rVarN7);
                    return;
                case "V_MS/VFW/FOURCC":
                    i12 = 0;
                    Pair pairK = k(new j0(g(this.f61197c)));
                    str6 = (String) pairK.first;
                    listSingletonList = (List) pairK.second;
                    str = null;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z17 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i28 = i15 | (z17 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE7 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN8 = bVarE7.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i28 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack8 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack8;
                    s0VarTrack8.c(rVarN8);
                    return;
                case "S_DVBSUB":
                    byte[] bArr2 = new byte[4];
                    i12 = 0;
                    System.arraycopy(g(this.f61197c), 0, bArr2, 0, 4);
                    listSingletonList = ImmutableList.of(bArr2);
                    str6 = MimeTypes.APPLICATION_DVBSUBS;
                    str = null;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z18 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i29 = i15 | (z18 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE8 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN9 = bVarE8.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i29 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack9 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack9;
                    s0VarTrack9.c(rVarN9);
                    return;
                case "V_MPEG4/ISO/AVC":
                    l2.d dVarB = l2.d.b(new j0(g(this.f61197c)));
                    list = dVarB.f68528a;
                    this.f61195a0 = dVarB.f68529b;
                    str2 = dVarB.f68539l;
                    str6 = MimeTypes.VIDEO_H264;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    List list2 = list;
                    str = str2;
                    listSingletonList = list2;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z19 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i210 = i15 | (z19 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE9 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN10 = bVarE9.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i210 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack10 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack10;
                    s0VarTrack10.c(rVarN10);
                    return;
                case "S_VOBSUB":
                    listSingletonList = ImmutableList.of(g(this.f61197c));
                    str6 = MimeTypes.APPLICATION_VOBSUB;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z110 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i211 = i15 | (z110 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE10 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN11 = bVarE10.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i211 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack11 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack11;
                    s0VarTrack11.c(rVarN11);
                    return;
                case "A_DTS/LOSSLESS":
                    str6 = MimeTypes.AUDIO_DTS_HD;
                    listSingletonList = null;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z111 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i212 = i15 | (z111 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE11 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN12 = bVarE11.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i212 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack12 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack12;
                    s0VarTrack12.c(rVarN12);
                    return;
                case "A_AAC":
                    listSingletonList = Collections.singletonList(g(this.f61197c));
                    l2.a.b bVarE = l2.a.e(this.f61206l);
                    this.S = bVarE.f68483a;
                    this.Q = bVarE.f68484b;
                    str = bVarE.f68485c;
                    str6 = MimeTypes.AUDIO_AAC;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z112 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i213 = i15 | (z112 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE12 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN13 = bVarE12.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i213 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack13 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack13;
                    s0VarTrack13.c(rVarN13);
                    return;
                case "A_AC3":
                    str6 = MimeTypes.AUDIO_AC3;
                    listSingletonList = null;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z113 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i214 = i15 | (z113 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE13 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN14 = bVarE13.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i214 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack14 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack14;
                    s0VarTrack14.c(rVarN14);
                    return;
                case "A_DTS":
                case "A_DTS/EXPRESS":
                    str6 = MimeTypes.AUDIO_DTS;
                    listSingletonList = null;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z114 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i215 = i15 | (z114 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE14 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN15 = bVarE14.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i215 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack15 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack15;
                    s0VarTrack15.c(rVarN15);
                    return;
                case "V_AV1":
                    byte[] bArr3 = this.f61206l;
                    listSingletonList = bArr3 == null ? null : ImmutableList.of(bArr3);
                    str6 = "video/av01";
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z115 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i216 = i15 | (z115 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE15 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN16 = bVarE15.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i216 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack16 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack16;
                    s0VarTrack16.c(rVarN16);
                    return;
                case "V_VP8":
                    str6 = MimeTypes.VIDEO_VP8;
                    listSingletonList = null;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z116 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i217 = i15 | (z116 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE16 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN17 = bVarE16.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i217 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack17 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack17;
                    s0VarTrack17.c(rVarN17);
                    return;
                case "V_VP9":
                    byte[] bArr4 = this.f61206l;
                    listSingletonList = bArr4 == null ? null : ImmutableList.of(bArr4);
                    str6 = MimeTypes.VIDEO_VP9;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z117 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i218 = i15 | (z117 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE17 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN18 = bVarE17.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i218 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack18 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack18;
                    s0VarTrack18.c(rVarN18);
                    return;
                case "S_HDMV/PGS":
                    str6 = MimeTypes.APPLICATION_PGS;
                    listSingletonList = null;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z118 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i219 = i15 | (z118 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE18 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN19 = bVarE18.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i219 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack19 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack19;
                    s0VarTrack19.c(rVarN19);
                    return;
                case "V_THEORA":
                    str6 = MimeTypes.VIDEO_UNKNOWN;
                    listSingletonList = null;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z119 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i2110 = i15 | (z119 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE19 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN110 = bVarE19.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i2110 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack110 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack110;
                    s0VarTrack110.c(rVarN110);
                    return;
                case "A_PCM/FLOAT/IEEE":
                    if (this.R == 32) {
                        listSingletonList = null;
                        str = null;
                        i12 = 0;
                        i14 = -1;
                        i13 = 4;
                    } else {
                        u.h("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        listSingletonList = null;
                        str = null;
                        str6 = MimeTypes.AUDIO_UNKNOWN;
                        i12 = 0;
                        i14 = -1;
                        i13 = -1;
                    }
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1110 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i2111 = i15 | (z1110 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE110 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN111 = bVarE110.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i2111 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack111 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack111;
                    s0VarTrack111.c(rVarN111);
                    return;
                case "A_PCM/INT/BIG":
                    int i30 = this.R;
                    if (i30 == 8) {
                        i13 = 3;
                    } else if (i30 == 16) {
                        i13 = ASTNode.DEOP;
                    } else if (i30 == 24) {
                        i13 = 1342177280;
                    } else {
                        if (i30 != 32) {
                            u.h("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                            listSingletonList = null;
                            str = null;
                            str6 = MimeTypes.AUDIO_UNKNOWN;
                            i12 = 0;
                            i14 = -1;
                            i13 = -1;
                            if (this.P != null) {
                                str = oVarA.f68654c;
                                str6 = "video/dolby-vision";
                            }
                            str3 = str6;
                            boolean z1111 = this.X;
                            if (this.W) {
                                i15 = 2;
                            } else {
                                i15 = i12;
                            }
                            int i2112 = i15 | (z1111 ? 1 : 0);
                            bVar = new androidx.media3.common.r.b();
                            if (y.o(str3)) {
                                if (y.t(str3)) {
                                    if (this.f61213s == 0) {
                                        i19 = this.f61211q;
                                        iIntValue = -1;
                                        if (i19 == -1) {
                                            i19 = this.f61208n;
                                        }
                                        this.f61211q = i19;
                                        i20 = this.f61212r;
                                        if (i20 == -1) {
                                            i20 = this.f61209o;
                                        }
                                        this.f61212r = i20;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    i17 = this.f61211q;
                                    if (i17 != iIntValue) {
                                        f11 = -1.0f;
                                    } else {
                                        f11 = -1.0f;
                                    }
                                    if (this.f61220z) {
                                    }
                                    if (this.f61196b != null) {
                                        iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                                    }
                                    if (this.f61214t == 0) {
                                        i12 = iIntValue;
                                    } else {
                                        i12 = iIntValue;
                                    }
                                    bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                                    i16 = 2;
                                } else {
                                    if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                                    }
                                    i16 = 3;
                                }
                                break;
                            } else {
                                bVar.R(this.Q).v0(this.S).o0(i13);
                                i16 = 1;
                            }
                            if (this.f61196b != null) {
                                bVar.h0(this.f61196b);
                            }
                            androidx.media3.common.r.b bVarE111 = bVar.e0(i11);
                            if (this.f61194a) {
                                str4 = MimeTypes.VIDEO_WEBM;
                            } else {
                                str4 = "video/x-matroska";
                            }
                            androidx.media3.common.r rVarN112 = bVarE111.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i2112 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                            s0 s0VarTrack112 = tVar.track(this.f61198d, i16);
                            this.Z = s0VarTrack112;
                            s0VarTrack112.c(rVarN112);
                            return;
                        }
                        i13 = 1610612736;
                    }
                    listSingletonList = null;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1112 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i2113 = i15 | (z1112 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE112 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN113 = bVarE112.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i2113 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack113 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack113;
                    s0VarTrack113.c(rVarN113);
                    return;
                case "A_PCM/INT/LIT":
                    int iI1 = a1.i0(this.R);
                    if (iI1 != 0) {
                        i13 = iI1;
                        listSingletonList = null;
                        str = null;
                        i12 = 0;
                        i14 = -1;
                        if (this.P != null) {
                            str = oVarA.f68654c;
                            str6 = "video/dolby-vision";
                        }
                        str3 = str6;
                        boolean z1113 = this.X;
                        if (this.W) {
                            i15 = 2;
                        } else {
                            i15 = i12;
                        }
                        int i2114 = i15 | (z1113 ? 1 : 0);
                        bVar = new androidx.media3.common.r.b();
                        if (y.o(str3)) {
                            if (y.t(str3)) {
                                if (this.f61213s == 0) {
                                    i19 = this.f61211q;
                                    iIntValue = -1;
                                    if (i19 == -1) {
                                        i19 = this.f61208n;
                                    }
                                    this.f61211q = i19;
                                    i20 = this.f61212r;
                                    if (i20 == -1) {
                                        i20 = this.f61209o;
                                    }
                                    this.f61212r = i20;
                                } else {
                                    iIntValue = -1;
                                }
                                i17 = this.f61211q;
                                if (i17 != iIntValue) {
                                    f11 = -1.0f;
                                } else {
                                    f11 = -1.0f;
                                }
                                if (this.f61220z) {
                                }
                                if (this.f61196b != null) {
                                    iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                                }
                                if (this.f61214t == 0) {
                                    i12 = iIntValue;
                                } else {
                                    i12 = iIntValue;
                                }
                                bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                                i16 = 2;
                            } else {
                                if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                                }
                                i16 = 3;
                            }
                            break;
                        } else {
                            bVar.R(this.Q).v0(this.S).o0(i13);
                            i16 = 1;
                        }
                        if (this.f61196b != null) {
                            bVar.h0(this.f61196b);
                        }
                        androidx.media3.common.r.b bVarE113 = bVar.e0(i11);
                        if (this.f61194a) {
                            str4 = MimeTypes.VIDEO_WEBM;
                        } else {
                            str4 = "video/x-matroska";
                        }
                        androidx.media3.common.r rVarN114 = bVarE113.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i2114 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                        s0 s0VarTrack114 = tVar.track(this.f61198d, i16);
                        this.Z = s0VarTrack114;
                        s0VarTrack114.c(rVarN114);
                        return;
                    }
                    u.h("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.R + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    listSingletonList = null;
                    str = null;
                    str6 = MimeTypes.AUDIO_UNKNOWN;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1114 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i2115 = i15 | (z1114 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE114 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN115 = bVarE114.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i2115 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack115 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack115;
                    s0VarTrack115.c(rVarN115);
                    return;
                case "S_TEXT/ASS":
                    listSingletonList = ImmutableList.of(e.f61157h0, g(this.f61197c));
                    str = null;
                    str6 = MimeTypes.TEXT_SSA;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1115 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i2116 = i15 | (z1115 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE115 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN116 = bVarE115.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i2116 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack116 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack116;
                    s0VarTrack116.c(rVarN116);
                    return;
                case "V_MPEGH/ISO/HEVC":
                    f0 f0VarA = f0.a(new j0(g(this.f61197c)));
                    list = f0VarA.f68567a;
                    this.f61195a0 = f0VarA.f68568b;
                    str2 = f0VarA.f68580n;
                    str6 = MimeTypes.VIDEO_H265;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    List list3 = list;
                    str = str2;
                    listSingletonList = list3;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1116 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i2117 = i15 | (z1116 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE116 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN117 = bVarE116.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i2117 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack117 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack117;
                    s0VarTrack117.c(rVarN117);
                    return;
                case "S_TEXT/WEBVTT":
                    listSingletonList = null;
                    str = null;
                    str6 = MimeTypes.TEXT_VTT;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1117 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i2118 = i15 | (z1117 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE117 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN118 = bVarE117.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i2118 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack118 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack118;
                    s0VarTrack118.c(rVarN118);
                    return;
                case "S_TEXT/UTF8":
                    listSingletonList = null;
                    str = null;
                    str6 = MimeTypes.APPLICATION_SUBRIP;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1118 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i2119 = i15 | (z1118 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE118 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN119 = bVarE118.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i2119 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack119 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack119;
                    s0VarTrack119.c(rVarN119);
                    return;
                case "V_MPEG2":
                    str6 = MimeTypes.VIDEO_MPEG2;
                    listSingletonList = null;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1119 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i21110 = i15 | (z1119 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE119 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN1110 = bVarE119.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i21110 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack1110 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack1110;
                    s0VarTrack1110.c(rVarN1110);
                    return;
                case "A_EAC3":
                    str6 = MimeTypes.AUDIO_E_AC3;
                    listSingletonList = null;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z11110 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i21111 = i15 | (z11110 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE1110 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN1111 = bVarE1110.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i21111 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack1111 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack1111;
                    s0VarTrack1111.c(rVarN1111);
                    return;
                case "A_FLAC":
                    listSingletonList = Collections.singletonList(g(this.f61197c));
                    str6 = MimeTypes.AUDIO_FLAC;
                    str = null;
                    i12 = 0;
                    i14 = -1;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z11111 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i21112 = i15 | (z11111 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE1111 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN1112 = bVarE1111.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i21112 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack1112 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack1112;
                    s0VarTrack1112.c(rVarN1112);
                    return;
                case "A_OPUS":
                    listSingletonList = new ArrayList(3);
                    listSingletonList.add(g(this.f61197c));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    listSingletonList.add(byteBufferAllocate.order(byteOrder).putLong(this.T).array());
                    listSingletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.U).array());
                    str6 = MimeTypes.AUDIO_OPUS;
                    i14 = 5760;
                    str = null;
                    i12 = 0;
                    i13 = -1;
                    if (this.P != null) {
                        str = oVarA.f68654c;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z11112 = this.X;
                    if (this.W) {
                        i15 = 2;
                    } else {
                        i15 = i12;
                    }
                    int i21113 = i15 | (z11112 ? 1 : 0);
                    bVar = new androidx.media3.common.r.b();
                    if (y.o(str3)) {
                        if (y.t(str3)) {
                            if (this.f61213s == 0) {
                                i19 = this.f61211q;
                                iIntValue = -1;
                                if (i19 == -1) {
                                    i19 = this.f61208n;
                                }
                                this.f61211q = i19;
                                i20 = this.f61212r;
                                if (i20 == -1) {
                                    i20 = this.f61209o;
                                }
                                this.f61212r = i20;
                            } else {
                                iIntValue = -1;
                            }
                            i17 = this.f61211q;
                            if (i17 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f61220z) {
                            }
                            if (this.f61196b != null) {
                                iIntValue = ((Integer) e.f61161l0.get(this.f61196b)).intValue();
                            }
                            if (this.f61214t == 0) {
                                i12 = iIntValue;
                            } else {
                                i12 = iIntValue;
                            }
                            bVar.B0(this.f61208n).d0(this.f61209o).q0(f11).t0(i12).r0(this.f61218x).x0(this.f61219y).T(iVarA);
                            i16 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i16 = 3;
                        }
                        break;
                    } else {
                        bVar.R(this.Q).v0(this.S).o0(i13);
                        i16 = 1;
                    }
                    if (this.f61196b != null) {
                        bVar.h0(this.f61196b);
                    }
                    androidx.media3.common.r.b bVarE1112 = bVar.e0(i11);
                    if (this.f61194a) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = "video/x-matroska";
                    }
                    androidx.media3.common.r rVarN1113 = bVarE1112.U(str4).u0(str3).k0(i14).j0(this.Y).w0(i21113 == true ? 1 : 0).g0(listSingletonList).S(str).Y(this.f61207m).N();
                    s0 s0VarTrack1113 = tVar.track(this.f61198d, i16);
                    this.Z = s0VarTrack1113;
                    s0VarTrack1113.c(rVarN1113);
                    return;
                default:
                    throw ParserException.createForMalformedContainer("Unrecognized codec identifier.", null);
            }
        }

        public void j() {
            t0 t0Var = this.V;
            if (t0Var != null) {
                t0Var.a(this.Z, this.f61205k);
            }
        }

        public void n() {
            t0 t0Var = this.V;
            if (t0Var != null) {
                t0Var.b();
            }
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        f61161l0 = Collections.unmodifiableMap(map);
    }

    @Deprecated
    public e() {
        this(new d3.a(), 2, s.a.f64923a);
    }

    e(d3.c cVar, int i11, s.a aVar) {
        this.f61185s = -1L;
        this.f61186t = C.TIME_UNSET;
        this.f61187u = C.TIME_UNSET;
        this.f61188v = C.TIME_UNSET;
        this.C = -1L;
        this.D = -1L;
        this.E = C.TIME_UNSET;
        this.f61162a = cVar;
        cVar.b(new b());
        this.f61172f = aVar;
        this.f61168d = (i11 & 1) == 0;
        this.f61170e = (i11 & 2) == 0;
        this.f61164b = new g();
        this.f61166c = new SparseArray();
        this.f61175i = new j0(4);
        this.f61176j = new j0(ByteBuffer.allocate(4).putInt(-1).array());
        this.f61177k = new j0(4);
        this.f61173g = new j0(androidx.media3.container.g.f10593a);
        this.f61174h = new j0(4);
        this.f61178l = new j0();
        this.f61179m = new j0();
        this.f61180n = new j0(8);
        this.f61181o = new j0();
        this.f61182p = new j0();
        this.O = new int[1];
    }

    public e(s.a aVar, int i11) {
        this(new d3.a(), i11, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r[] B() {
        return new r[]{new e(s.a.f64923a, 2)};
    }

    private boolean C(l0 l0Var, long j11) {
        if (this.B) {
            this.D = j11;
            l0Var.f68620a = this.C;
            this.B = false;
            return true;
        }
        if (this.f61191y) {
            long j12 = this.D;
            if (j12 != -1) {
                l0Var.f68620a = j12;
                this.D = -1L;
                return true;
            }
        }
        return false;
    }

    private void D(l2.s sVar, int i11) {
        if (this.f61175i.g() >= i11) {
            return;
        }
        if (this.f61175i.b() < i11) {
            j0 j0Var = this.f61175i;
            j0Var.c(Math.max(j0Var.b() * 2, i11));
        }
        sVar.readFully(this.f61175i.e(), this.f61175i.g(), i11 - this.f61175i.g());
        this.f61175i.V(i11);
    }

    private void E() {
        this.V = 0;
        this.W = 0;
        this.X = 0;
        this.Y = false;
        this.Z = false;
        this.f61163a0 = false;
        this.f61165b0 = 0;
        this.f61167c0 = (byte) 0;
        this.f61169d0 = false;
        this.f61178l.S(0);
    }

    private long F(long j11) throws ParserException {
        long j12 = this.f61186t;
        if (j12 != C.TIME_UNSET) {
            return a1.e1(j11, j12, 1000L);
        }
        throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private static void G(String str, long j11, byte[] bArr) {
        byte[] bArrT;
        int i11;
        str.hashCode();
        switch (str) {
            case "S_TEXT/ASS":
                bArrT = t(j11, "%01d:%02d:%02d:%02d", 10000L);
                i11 = 21;
                break;
            case "S_TEXT/WEBVTT":
                bArrT = t(j11, "%02d:%02d:%02d.%03d", 1000L);
                i11 = 25;
                break;
            case "S_TEXT/UTF8":
                bArrT = t(j11, "%02d:%02d:%02d,%03d", 1000L);
                i11 = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(bArrT, 0, bArr, i11, bArrT.length);
    }

    private int J(l2.s sVar, c cVar, int i11, boolean z10) throws ParserException {
        int i12;
        if ("S_TEXT/UTF8".equals(cVar.f61197c)) {
            K(sVar, f61156g0, i11);
            return r();
        }
        if ("S_TEXT/ASS".equals(cVar.f61197c)) {
            K(sVar, f61158i0, i11);
            return r();
        }
        if ("S_TEXT/WEBVTT".equals(cVar.f61197c)) {
            K(sVar, f61159j0, i11);
            return r();
        }
        s0 s0Var = cVar.Z;
        if (!this.Y) {
            if (cVar.f61203i) {
                this.R &= -1073741825;
                if (!this.Z) {
                    sVar.readFully(this.f61175i.e(), 0, 1);
                    this.V++;
                    if ((this.f61175i.e()[0] & 128) == 128) {
                        throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                    }
                    this.f61167c0 = this.f61175i.e()[0];
                    this.Z = true;
                }
                byte b11 = this.f61167c0;
                if ((b11 & 1) == 1) {
                    boolean z11 = (b11 & 2) == 2;
                    this.R |= 1073741824;
                    if (!this.f61169d0) {
                        sVar.readFully(this.f61180n.e(), 0, 8);
                        this.V += 8;
                        this.f61169d0 = true;
                        this.f61175i.e()[0] = (byte) ((z11 ? 128 : 0) | 8);
                        this.f61175i.W(0);
                        s0Var.a(this.f61175i, 1, 1);
                        this.W++;
                        this.f61180n.W(0);
                        s0Var.a(this.f61180n, 8, 1);
                        this.W += 8;
                    }
                    if (z11) {
                        if (!this.f61163a0) {
                            sVar.readFully(this.f61175i.e(), 0, 1);
                            this.V++;
                            this.f61175i.W(0);
                            this.f61165b0 = this.f61175i.H();
                            this.f61163a0 = true;
                        }
                        int i13 = this.f61165b0 * 4;
                        this.f61175i.S(i13);
                        sVar.readFully(this.f61175i.e(), 0, i13);
                        this.V += i13;
                        short s11 = (short) ((this.f61165b0 / 2) + 1);
                        int i14 = (s11 * 6) + 2;
                        ByteBuffer byteBuffer = this.f61183q;
                        if (byteBuffer == null || byteBuffer.capacity() < i14) {
                            this.f61183q = ByteBuffer.allocate(i14);
                        }
                        this.f61183q.position(0);
                        this.f61183q.putShort(s11);
                        int i15 = 0;
                        int i16 = 0;
                        while (true) {
                            i12 = this.f61165b0;
                            if (i15 >= i12) {
                                break;
                            }
                            int iL = this.f61175i.L();
                            if (i15 % 2 == 0) {
                                this.f61183q.putShort((short) (iL - i16));
                            } else {
                                this.f61183q.putInt(iL - i16);
                            }
                            i15++;
                            i16 = iL;
                        }
                        int i17 = (i11 - this.V) - i16;
                        if (i12 % 2 == 1) {
                            this.f61183q.putInt(i17);
                        } else {
                            this.f61183q.putShort((short) i17);
                            this.f61183q.putInt(0);
                        }
                        this.f61181o.U(this.f61183q.array(), i14);
                        s0Var.a(this.f61181o, i14, 1);
                        this.W += i14;
                    }
                }
            } else {
                byte[] bArr = cVar.f61204j;
                if (bArr != null) {
                    this.f61178l.U(bArr, bArr.length);
                }
            }
            if (cVar.o(z10)) {
                this.R |= ASTNode.DEOP;
                this.f61182p.S(0);
                int iG = (this.f61178l.g() + i11) - this.V;
                this.f61175i.S(4);
                this.f61175i.e()[0] = (byte) ((iG >> 24) & 255);
                this.f61175i.e()[1] = (byte) ((iG >> 16) & 255);
                this.f61175i.e()[2] = (byte) ((iG >> 8) & 255);
                this.f61175i.e()[3] = (byte) (iG & 255);
                s0Var.a(this.f61175i, 4, 2);
                this.W += 4;
            }
            this.Y = true;
        }
        int iG2 = i11 + this.f61178l.g();
        if (!"V_MPEG4/ISO/AVC".equals(cVar.f61197c) && !"V_MPEGH/ISO/HEVC".equals(cVar.f61197c)) {
            if (cVar.V != null) {
                androidx.media3.common.util.a.g(this.f61178l.g() == 0);
                cVar.V.d(sVar);
            }
            while (true) {
                int i18 = this.V;
                if (i18 >= iG2) {
                    break;
                }
                int iL2 = L(sVar, s0Var, iG2 - i18);
                this.V += iL2;
                this.W += iL2;
            }
        } else {
            byte[] bArrE = this.f61174h.e();
            bArrE[0] = 0;
            bArrE[1] = 0;
            bArrE[2] = 0;
            int i19 = cVar.f61195a0;
            int i20 = 4 - i19;
            while (this.V < iG2) {
                int i21 = this.X;
                if (i21 == 0) {
                    M(sVar, bArrE, i20, i19);
                    this.V += i19;
                    this.f61174h.W(0);
                    this.X = this.f61174h.L();
                    this.f61173g.W(0);
                    s0Var.b(this.f61173g, 4);
                    this.W += 4;
                } else {
                    int iL3 = L(sVar, s0Var, i21);
                    this.V += iL3;
                    this.W += iL3;
                    this.X -= iL3;
                }
            }
        }
        if ("A_VORBIS".equals(cVar.f61197c)) {
            this.f61176j.W(0);
            s0Var.b(this.f61176j, 4);
            this.W += 4;
        }
        return r();
    }

    private void K(l2.s sVar, byte[] bArr, int i11) {
        int length = bArr.length + i11;
        if (this.f61179m.b() < length) {
            this.f61179m.T(Arrays.copyOf(bArr, length + i11));
        } else {
            System.arraycopy(bArr, 0, this.f61179m.e(), 0, bArr.length);
        }
        sVar.readFully(this.f61179m.e(), bArr.length, i11);
        this.f61179m.W(0);
        this.f61179m.V(length);
    }

    private int L(l2.s sVar, s0 s0Var, int i11) {
        int iA = this.f61178l.a();
        if (iA <= 0) {
            return s0Var.e(sVar, i11, false);
        }
        int iMin = Math.min(i11, iA);
        s0Var.b(this.f61178l, iMin);
        return iMin;
    }

    private void M(l2.s sVar, byte[] bArr, int i11, int i12) {
        int iMin = Math.min(i12, this.f61178l.a());
        sVar.readFully(bArr, i11 + iMin, i12 - iMin);
        if (iMin > 0) {
            this.f61178l.l(bArr, i11, iMin);
        }
    }

    private void j(int i11) throws ParserException {
        if (this.F == null || this.G == null) {
            throw ParserException.createForMalformedContainer("Element " + i11 + " must be in a Cues", null);
        }
    }

    private void k(int i11) throws ParserException {
        if (this.f61190x != null) {
            return;
        }
        throw ParserException.createForMalformedContainer("Element " + i11 + " must be in a TrackEntry", null);
    }

    private void l() {
        androidx.media3.common.util.a.i(this.f61171e0);
    }

    private m0 n(v vVar, v vVar2) {
        int i11;
        if (this.f61185s == -1 || this.f61188v == C.TIME_UNSET || vVar == null || vVar.d() == 0 || vVar2 == null || vVar2.d() != vVar.d()) {
            return new m0.b(this.f61188v);
        }
        int iD = vVar.d();
        int[] iArrCopyOf = new int[iD];
        long[] jArrCopyOf = new long[iD];
        long[] jArrCopyOf2 = new long[iD];
        long[] jArrCopyOf3 = new long[iD];
        int i12 = 0;
        for (int i13 = 0; i13 < iD; i13++) {
            jArrCopyOf3[i13] = vVar.c(i13);
            jArrCopyOf[i13] = this.f61185s + vVar2.c(i13);
        }
        while (true) {
            i11 = iD - 1;
            if (i12 >= i11) {
                break;
            }
            int i14 = i12 + 1;
            iArrCopyOf[i12] = (int) (jArrCopyOf[i14] - jArrCopyOf[i12]);
            jArrCopyOf2[i12] = jArrCopyOf3[i14] - jArrCopyOf3[i12];
            i12 = i14;
        }
        int i15 = i11;
        while (i15 > 0 && jArrCopyOf3[i15] > this.f61188v) {
            i15--;
        }
        iArrCopyOf[i15] = (int) ((this.f61185s + this.f61184r) - jArrCopyOf[i15]);
        jArrCopyOf2[i15] = this.f61188v - jArrCopyOf3[i15];
        if (i15 < i11) {
            u.h("MatroskaExtractor", "Discarding trailing cue points with timestamps greater than total duration");
            int i16 = i15 + 1;
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i16);
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i16);
            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i16);
            jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i16);
        }
        return new h(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
    }

    private void o(c cVar, long j11, int i11, int i12, int i13) {
        t0 t0Var = cVar.V;
        if (t0Var != null) {
            t0Var.c(cVar.Z, j11, i11, i12, i13, cVar.f61205k);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.f61197c) || "S_TEXT/ASS".equals(cVar.f61197c) || "S_TEXT/WEBVTT".equals(cVar.f61197c)) {
                if (this.N > 1) {
                    u.h("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j12 = this.L;
                    if (j12 == C.TIME_UNSET) {
                        u.h("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        G(cVar.f61197c, j12, this.f61179m.e());
                        for (int iF = this.f61179m.f(); iF < this.f61179m.g(); iF++) {
                            if (this.f61179m.e()[iF] == 0) {
                                this.f61179m.V(iF);
                                break;
                            }
                        }
                        s0 s0Var = cVar.Z;
                        j0 j0Var = this.f61179m;
                        s0Var.b(j0Var, j0Var.g());
                        i12 += this.f61179m.g();
                    }
                }
            }
            if ((268435456 & i11) != 0) {
                if (this.N > 1) {
                    this.f61182p.S(0);
                } else {
                    int iG = this.f61182p.g();
                    cVar.Z.a(this.f61182p, iG, 2);
                    i12 += iG;
                }
            }
            cVar.Z.d(j11, i11, i12, i13, cVar.f61205k);
        }
        this.I = true;
    }

    private static int[] q(int[] iArr, int i11) {
        if (iArr == null) {
            return new int[i11];
        }
        return iArr.length >= i11 ? iArr : new int[Math.max(iArr.length * 2, i11)];
    }

    private int r() {
        int i11 = this.W;
        E();
        return i11;
    }

    private static byte[] t(long j11, String str, long j12) {
        androidx.media3.common.util.a.a(j11 != C.TIME_UNSET);
        int i11 = (int) (j11 / 3600000000L);
        long j13 = j11 - (((long) i11) * 3600000000L);
        int i12 = (int) (j13 / 60000000);
        long j14 = j13 - (((long) i12) * 60000000);
        int i13 = (int) (j14 / 1000000);
        return a1.u0(String.format(Locale.US, str, Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf((int) ((j14 - (((long) i13) * 1000000)) / j12))));
    }

    private static boolean z(String str) {
        str.hashCode();
        switch (str) {
            case "V_MPEG4/ISO/AP":
            case "V_MPEG4/ISO/SP":
            case "A_MS/ACM":
            case "A_TRUEHD":
            case "A_VORBIS":
            case "A_MPEG/L2":
            case "A_MPEG/L3":
            case "V_MS/VFW/FOURCC":
            case "S_DVBSUB":
            case "V_MPEG4/ISO/ASP":
            case "V_MPEG4/ISO/AVC":
            case "S_VOBSUB":
            case "A_DTS/LOSSLESS":
            case "A_AAC":
            case "A_AC3":
            case "A_DTS":
            case "V_AV1":
            case "V_VP8":
            case "V_VP9":
            case "S_HDMV/PGS":
            case "V_THEORA":
            case "A_DTS/EXPRESS":
            case "A_PCM/FLOAT/IEEE":
            case "A_PCM/INT/BIG":
            case "A_PCM/INT/LIT":
            case "S_TEXT/ASS":
            case "V_MPEGH/ISO/HEVC":
            case "S_TEXT/WEBVTT":
            case "S_TEXT/UTF8":
            case "V_MPEG2":
            case "A_EAC3":
            case "A_FLAC":
            case "A_OPUS":
                return true;
            default:
                return false;
        }
    }

    protected boolean A(int i11) {
        return i11 == 357149030 || i11 == 524531317 || i11 == 475249515 || i11 == 374648427;
    }

    protected void H(int i11, long j11, long j12) throws ParserException {
        l();
        if (i11 == 160) {
            this.T = false;
            this.U = 0L;
            return;
        }
        if (i11 == 174) {
            c cVar = new c();
            this.f61190x = cVar;
            cVar.f61194a = this.f61189w;
            return;
        }
        if (i11 == 187) {
            this.H = false;
            return;
        }
        if (i11 == 19899) {
            this.f61192z = -1;
            this.A = -1L;
            return;
        }
        if (i11 == 20533) {
            u(i11).f61203i = true;
            return;
        }
        if (i11 == 21968) {
            u(i11).f61220z = true;
            return;
        }
        if (i11 == 408125543) {
            long j13 = this.f61185s;
            if (j13 != -1 && j13 != j11) {
                throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            }
            this.f61185s = j11;
            this.f61184r = j12;
            return;
        }
        if (i11 == 475249515) {
            this.F = new v();
            this.G = new v();
        } else if (i11 == 524531317 && !this.f61191y) {
            if (this.f61168d && this.C != -1) {
                this.B = true;
            } else {
                this.f61171e0.f(new m0.b(this.f61188v));
                this.f61191y = true;
            }
        }
    }

    protected void I(int i11, String str) throws ParserException {
        if (i11 == 134) {
            u(i11).f61197c = str;
            return;
        }
        if (i11 != 17026) {
            if (i11 == 21358) {
                u(i11).f61196b = str;
                return;
            } else {
                if (i11 != 2274716) {
                    return;
                }
                u(i11).Y = str;
                return;
            }
        }
        if ("webm".equals(str) || "matroska".equals(str)) {
            this.f61189w = Objects.equals(str, "webm");
            return;
        }
        throw ParserException.createForMalformedContainer("DocType " + str + " not supported", null);
    }

    @Override // l2.r
    public final void b(t tVar) {
        if (this.f61170e) {
            tVar = new i3.t(tVar, this.f61172f);
        }
        this.f61171e0 = tVar;
    }

    @Override // l2.r
    public final int c(l2.s sVar, l0 l0Var) {
        this.I = false;
        boolean zA = true;
        while (zA && !this.I) {
            zA = this.f61162a.a(sVar);
            if (zA && C(l0Var, sVar.getPosition())) {
                return 1;
            }
        }
        if (zA) {
            return 0;
        }
        for (int i11 = 0; i11 < this.f61166c.size(); i11++) {
            c cVar = (c) this.f61166c.valueAt(i11);
            cVar.f();
            cVar.j();
        }
        return -1;
    }

    @Override // l2.r
    public final boolean d(l2.s sVar) {
        return new f().b(sVar);
    }

    @Override // l2.r
    public /* synthetic */ r e() {
        return q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return q.a(this);
    }

    /* JADX WARN: Code duplicated, block: B:97:0x0282  */
    protected void m(int i11, int i12, l2.s sVar) throws ParserException {
        c cVar;
        int i13;
        c cVar2;
        c cVar3;
        long j11;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18 = 0;
        int i19 = 1;
        if (i11 != 161 && i11 != 163) {
            if (i11 == 165) {
                if (this.J != 2) {
                    return;
                }
                x((c) this.f61166c.get(this.P), this.S, sVar, i12);
                return;
            }
            if (i11 == 16877) {
                w(u(i11), sVar, i12);
                return;
            }
            if (i11 == 16981) {
                k(i11);
                byte[] bArr = new byte[i12];
                this.f61190x.f61204j = bArr;
                sVar.readFully(bArr, 0, i12);
                return;
            }
            if (i11 == 18402) {
                byte[] bArr2 = new byte[i12];
                sVar.readFully(bArr2, 0, i12);
                u(i11).f61205k = new s0.a(1, bArr2, 0, 0);
                return;
            }
            if (i11 == 21419) {
                Arrays.fill(this.f61177k.e(), (byte) 0);
                sVar.readFully(this.f61177k.e(), 4 - i12, i12);
                this.f61177k.W(0);
                this.f61192z = (int) this.f61177k.J();
                return;
            }
            if (i11 == 25506) {
                k(i11);
                byte[] bArr3 = new byte[i12];
                this.f61190x.f61206l = bArr3;
                sVar.readFully(bArr3, 0, i12);
                return;
            }
            if (i11 != 30322) {
                throw ParserException.createForMalformedContainer("Unexpected id: " + i11, null);
            }
            k(i11);
            byte[] bArr4 = new byte[i12];
            this.f61190x.f61218x = bArr4;
            sVar.readFully(bArr4, 0, i12);
            return;
        }
        if (this.J == 0) {
            this.P = (int) this.f61164b.d(sVar, false, true, 8);
            this.Q = this.f61164b.b();
            this.L = C.TIME_UNSET;
            this.J = 1;
            this.f61175i.S(0);
        }
        c cVar4 = (c) this.f61166c.get(this.P);
        if (cVar4 == null) {
            sVar.skipFully(i12 - this.Q);
            this.J = 0;
            return;
        }
        cVar4.f();
        if (this.J == 1) {
            D(sVar, 3);
            int i20 = (this.f61175i.e()[2] & 6) >> 1;
            byte b11 = 255;
            if (i20 == 0) {
                this.N = 1;
                int[] iArrQ = q(this.O, 1);
                this.O = iArrQ;
                iArrQ[0] = (i12 - this.Q) - 3;
            } else {
                int i21 = 4;
                D(sVar, 4);
                int i22 = (this.f61175i.e()[3] & 255) + 1;
                this.N = i22;
                int[] iArrQ2 = q(this.O, i22);
                this.O = iArrQ2;
                if (i20 == 2) {
                    int i23 = (i12 - this.Q) - 4;
                    int i24 = this.N;
                    Arrays.fill(iArrQ2, 0, i24, i23 / i24);
                } else {
                    if (i20 == 1) {
                        int i25 = 0;
                        int i26 = 0;
                        while (true) {
                            i14 = this.N;
                            if (i25 >= i14 - 1) {
                                break;
                            }
                            this.O[i25] = 0;
                            while (true) {
                                i15 = i21 + 1;
                                D(sVar, i15);
                                int i27 = this.f61175i.e()[i21] & 255;
                                int[] iArr = this.O;
                                i16 = iArr[i25] + i27;
                                iArr[i25] = i16;
                                if (i27 != 255) {
                                    break;
                                } else {
                                    i21 = i15;
                                }
                            }
                            i26 += i16;
                            i25++;
                            i21 = i15;
                        }
                        this.O[i14 - 1] = ((i12 - this.Q) - i21) - i26;
                    } else {
                        if (i20 != 3) {
                            throw ParserException.createForMalformedContainer("Unexpected lacing value: " + i20, null);
                        }
                        int i28 = 0;
                        int i29 = 0;
                        while (true) {
                            int i30 = this.N;
                            if (i28 >= i30 - 1) {
                                cVar2 = cVar4;
                                this.O[i30 - 1] = ((i12 - this.Q) - i21) - i29;
                                break;
                            }
                            this.O[i28] = i18;
                            int i31 = i21 + 1;
                            D(sVar, i31);
                            if (this.f61175i.e()[i21] == 0) {
                                throw ParserException.createForMalformedContainer("No valid varint length mask found", null);
                            }
                            int i32 = i18;
                            while (true) {
                                if (i32 >= 8) {
                                    cVar3 = cVar4;
                                    j11 = 0;
                                    break;
                                }
                                int i33 = i19 << (7 - i32);
                                if ((this.f61175i.e()[i21] & i33) != 0) {
                                    i31 += i32;
                                    D(sVar, i31);
                                    cVar3 = cVar4;
                                    j11 = (~i33) & this.f61175i.e()[i21] & b11;
                                    int i34 = i21 + 1;
                                    while (i34 < i31) {
                                        j11 = (j11 << 8) | ((long) (this.f61175i.e()[i34] & b11));
                                        i34++;
                                        b11 = 255;
                                    }
                                    if (i28 <= 0) {
                                        break;
                                    }
                                    j11 -= (1 << ((i32 * 7) + 6)) - 1;
                                    break;
                                }
                                i32++;
                                i19 = 1;
                                b11 = 255;
                            }
                            i21 = i31;
                            if (j11 < -2147483648L || j11 > 2147483647L) {
                                throw ParserException.createForMalformedContainer("EBML lacing sample size out of range.", null);
                            }
                            int i35 = (int) j11;
                            int[] iArr2 = this.O;
                            if (i28 != 0) {
                                i35 += iArr2[i28 - 1];
                            }
                            iArr2[i28] = i35;
                            i29 += i35;
                            i28++;
                            cVar4 = cVar3;
                            i18 = 0;
                            i19 = 1;
                            b11 = 255;
                        }
                    }
                    this.K = this.E + F((this.f61175i.e()[0] << 8) | (this.f61175i.e()[1] & 255));
                    cVar = cVar2;
                    if (cVar.f61199e != 2 || (i11 == 163 && (this.f61175i.e()[2] & 128) == 128)) {
                        i17 = 1;
                    } else {
                        i17 = 0;
                    }
                    this.R = i17;
                    this.J = 2;
                    this.M = 0;
                    i13 = 163;
                }
            }
            cVar2 = cVar4;
            this.K = this.E + F((this.f61175i.e()[0] << 8) | (this.f61175i.e()[1] & 255));
            cVar = cVar2;
            if (cVar.f61199e != 2) {
                i17 = 1;
            } else {
                i17 = 1;
            }
            this.R = i17;
            this.J = 2;
            this.M = 0;
            i13 = 163;
        } else {
            cVar = cVar4;
            i13 = 163;
        }
        if (i11 == i13) {
            while (true) {
                int i36 = this.M;
                if (i36 >= this.N) {
                    this.J = 0;
                    return;
                }
                o(cVar, ((long) ((this.M * cVar.f61200f) / 1000)) + this.K, this.R, J(sVar, cVar, this.O[i36], false), 0);
                this.M++;
            }
        } else {
            while (true) {
                int i37 = this.M;
                if (i37 >= this.N) {
                    return;
                }
                int[] iArr3 = this.O;
                iArr3[i37] = J(sVar, cVar, iArr3[i37], true);
                this.M++;
            }
        }
    }

    protected void p(int i11) throws ParserException {
        l();
        if (i11 == 160) {
            if (this.J != 2) {
                return;
            }
            c cVar = (c) this.f61166c.get(this.P);
            cVar.f();
            if (this.U > 0 && "A_OPUS".equals(cVar.f61197c)) {
                this.f61182p.T(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.U).array());
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.N; i13++) {
                i12 += this.O[i13];
            }
            int i14 = 0;
            while (i14 < this.N) {
                long j11 = this.K + ((long) ((cVar.f61200f * i14) / 1000));
                int i15 = this.R;
                if (i14 == 0 && !this.T) {
                    i15 |= 1;
                }
                int i16 = this.O[i14];
                int i17 = i12 - i16;
                o(cVar, j11, i15, i16, i17);
                i14++;
                i12 = i17;
            }
            this.J = 0;
            return;
        }
        if (i11 == 174) {
            c cVar2 = (c) androidx.media3.common.util.a.i(this.f61190x);
            String str = cVar2.f61197c;
            if (str == null) {
                throw ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
            }
            if (z(str)) {
                cVar2.i(this.f61171e0, cVar2.f61198d);
                this.f61166c.put(cVar2.f61198d, cVar2);
            }
            this.f61190x = null;
            return;
        }
        if (i11 == 19899) {
            int i18 = this.f61192z;
            if (i18 != -1) {
                long j12 = this.A;
                if (j12 != -1) {
                    if (i18 == 475249515) {
                        this.C = j12;
                        return;
                    }
                    return;
                }
            }
            throw ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
        }
        if (i11 == 25152) {
            k(i11);
            c cVar3 = this.f61190x;
            if (cVar3.f61203i) {
                if (cVar3.f61205k == null) {
                    throw ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
                }
                cVar3.f61207m = new DrmInitData(new DrmInitData.SchemeData(androidx.media3.common.h.f9981a, MimeTypes.VIDEO_WEBM, this.f61190x.f61205k.f68680b));
                return;
            }
            return;
        }
        if (i11 == 28032) {
            k(i11);
            c cVar4 = this.f61190x;
            if (cVar4.f61203i && cVar4.f61204j != null) {
                throw ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
            }
            return;
        }
        if (i11 == 357149030) {
            if (this.f61186t == C.TIME_UNSET) {
                this.f61186t = 1000000L;
            }
            long j13 = this.f61187u;
            if (j13 != C.TIME_UNSET) {
                this.f61188v = F(j13);
                return;
            }
            return;
        }
        if (i11 == 374648427) {
            if (this.f61166c.size() == 0) {
                throw ParserException.createForMalformedContainer("No valid tracks were found", null);
            }
            this.f61171e0.endTracks();
        } else {
            if (i11 != 475249515) {
                return;
            }
            if (!this.f61191y) {
                this.f61171e0.f(n(this.F, this.G));
                this.f61191y = true;
            }
            this.F = null;
            this.G = null;
        }
    }

    @Override // l2.r
    public final void release() {
    }

    protected void s(int i11, double d11) {
        if (i11 == 181) {
            u(i11).S = (int) d11;
        }
        if (i11 == 17545) {
            this.f61187u = (long) d11;
            return;
        }
        switch (i11) {
            case 21969:
                u(i11).F = (float) d11;
                break;
            case 21970:
                u(i11).G = (float) d11;
                break;
            case 21971:
                u(i11).H = (float) d11;
                break;
            case 21972:
                u(i11).I = (float) d11;
                break;
            case 21973:
                u(i11).J = (float) d11;
                break;
            case 21974:
                u(i11).K = (float) d11;
                break;
            case 21975:
                u(i11).L = (float) d11;
                break;
            case 21976:
                u(i11).M = (float) d11;
                break;
            case 21977:
                u(i11).N = (float) d11;
                break;
            case 21978:
                u(i11).O = (float) d11;
                break;
            default:
                switch (i11) {
                    case 30323:
                        u(i11).f61215u = (float) d11;
                        break;
                    case 30324:
                        u(i11).f61216v = (float) d11;
                        break;
                    case 30325:
                        u(i11).f61217w = (float) d11;
                        break;
                }
                break;
        }
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        this.E = C.TIME_UNSET;
        this.J = 0;
        this.f61162a.reset();
        this.f61164b.e();
        E();
        for (int i11 = 0; i11 < this.f61166c.size(); i11++) {
            ((c) this.f61166c.valueAt(i11)).n();
        }
    }

    protected c u(int i11) throws ParserException {
        k(i11);
        return this.f61190x;
    }

    protected int v(int i11) {
        switch (i11) {
            case MRAID_JS_WRITE_FAILED_VALUE:
            case PRIVACY_URL_ERROR_VALUE:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case AD_RESPONSE_EMPTY_VALUE:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21938:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    protected void w(c cVar, l2.s sVar, int i11) {
        if (cVar.f61202h != 1685485123 && cVar.f61202h != 1685480259) {
            sVar.skipFully(i11);
            return;
        }
        byte[] bArr = new byte[i11];
        cVar.P = bArr;
        sVar.readFully(bArr, 0, i11);
    }

    protected void x(c cVar, int i11, l2.s sVar, int i12) {
        if (i11 != 4 || !"V_VP9".equals(cVar.f61197c)) {
            sVar.skipFully(i12);
        } else {
            this.f61182p.S(i12);
            sVar.readFully(this.f61182p.e(), 0, i12);
        }
    }

    protected void y(int i11, long j11) throws ParserException {
        if (i11 == 20529) {
            if (j11 == 0) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingOrder " + j11 + " not supported", null);
        }
        if (i11 == 20530) {
            if (j11 == 1) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingScope " + j11 + " not supported", null);
        }
        switch (i11) {
            case MRAID_JS_WRITE_FAILED_VALUE:
                u(i11).f61199e = (int) j11;
                return;
            case PRIVACY_URL_ERROR_VALUE:
                u(i11).X = j11 == 1;
                return;
            case 155:
                this.L = F(j11);
                return;
            case 159:
                u(i11).Q = (int) j11;
                return;
            case 176:
                u(i11).f61208n = (int) j11;
                return;
            case 179:
                j(i11);
                this.F.a(F(j11));
                return;
            case 186:
                u(i11).f61209o = (int) j11;
                return;
            case AD_RESPONSE_EMPTY_VALUE:
                u(i11).f61198d = (int) j11;
                return;
            case 231:
                this.E = F(j11);
                return;
            case 238:
                this.S = (int) j11;
                return;
            case 241:
                if (this.H) {
                    return;
                }
                j(i11);
                this.G.a(j11);
                this.H = true;
                return;
            case 251:
                this.T = true;
                return;
            case 16871:
                u(i11).f61202h = (int) j11;
                return;
            case 16980:
                if (j11 == 3) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentCompAlgo " + j11 + " not supported", null);
            case 17029:
                if (j11 < 1 || j11 > 2) {
                    throw ParserException.createForMalformedContainer("DocTypeReadVersion " + j11 + " not supported", null);
                }
                return;
            case 17143:
                if (j11 == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("EBMLReadVersion " + j11 + " not supported", null);
            case 18401:
                if (j11 == 5) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentEncAlgo " + j11 + " not supported", null);
            case 18408:
                if (j11 == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("AESSettingsCipherMode " + j11 + " not supported", null);
            case 21420:
                this.A = j11 + this.f61185s;
                return;
            case 21432:
                int i12 = (int) j11;
                k(i11);
                if (i12 == 0) {
                    this.f61190x.f61219y = 0;
                    return;
                }
                if (i12 == 1) {
                    this.f61190x.f61219y = 2;
                    return;
                } else if (i12 == 3) {
                    this.f61190x.f61219y = 1;
                    return;
                } else {
                    if (i12 != 15) {
                        return;
                    }
                    this.f61190x.f61219y = 3;
                    return;
                }
            case 21680:
                u(i11).f61211q = (int) j11;
                return;
            case 21682:
                u(i11).f61213s = (int) j11;
                return;
            case 21690:
                u(i11).f61212r = (int) j11;
                return;
            case 21930:
                u(i11).W = j11 == 1;
                return;
            case 21938:
                k(i11);
                c cVar = this.f61190x;
                cVar.f61220z = true;
                cVar.f61210p = (int) j11;
                return;
            case 21998:
                u(i11).f61201g = (int) j11;
                return;
            case 22186:
                u(i11).T = j11;
                return;
            case 22203:
                u(i11).U = j11;
                return;
            case 25188:
                u(i11).R = (int) j11;
                return;
            case 30114:
                this.U = j11;
                return;
            case 30321:
                k(i11);
                int i13 = (int) j11;
                if (i13 == 0) {
                    this.f61190x.f61214t = 0;
                    return;
                }
                if (i13 == 1) {
                    this.f61190x.f61214t = 1;
                    return;
                } else if (i13 == 2) {
                    this.f61190x.f61214t = 2;
                    return;
                } else {
                    if (i13 != 3) {
                        return;
                    }
                    this.f61190x.f61214t = 3;
                    return;
                }
            case 2352003:
                u(i11).f61200f = (int) j11;
                return;
            case 2807729:
                this.f61186t = j11;
                return;
            default:
                switch (i11) {
                    case 21945:
                        k(i11);
                        int i14 = (int) j11;
                        if (i14 == 1) {
                            this.f61190x.C = 2;
                            return;
                        } else {
                            if (i14 != 2) {
                                return;
                            }
                            this.f61190x.C = 1;
                            return;
                        }
                    case 21946:
                        k(i11);
                        int iK = i.k((int) j11);
                        if (iK != -1) {
                            this.f61190x.B = iK;
                            return;
                        }
                        return;
                    case 21947:
                        k(i11);
                        this.f61190x.f61220z = true;
                        int iJ = i.j((int) j11);
                        if (iJ != -1) {
                            this.f61190x.A = iJ;
                            return;
                        }
                        return;
                    case 21948:
                        u(i11).D = (int) j11;
                        return;
                    case 21949:
                        u(i11).E = (int) j11;
                        return;
                    default:
                        return;
                }
        }
    }
}
