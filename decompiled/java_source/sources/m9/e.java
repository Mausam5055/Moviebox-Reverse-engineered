package m9;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.x;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.a0;
import g9.b0;
import g9.e0;
import g9.f0;
import g9.l;
import g9.m;
import g9.n;
import g9.q;
import g9.r;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
public class e implements l {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final r f69357c0 = new r() { // from class: m9.d
        @Override // g9.r
        public /* synthetic */ l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // g9.r
        public final l[] createExtractors() {
            return e.z();
        }
    };

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final byte[] f69358d0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final byte[] f69359e0 = p0.n0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final byte[] f69360f0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static final byte[] f69361g0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static final UUID f69362h0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static final Map f69363i0;
    private long A;
    private long B;
    private t C;
    private t D;
    private boolean E;
    private boolean F;
    private int G;
    private long H;
    private long I;
    private int J;
    private int K;
    private int[] L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private long R;
    private int S;
    private int T;
    private int U;
    private boolean V;
    private boolean W;
    private boolean X;
    private int Y;
    private byte Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m9.c f69364a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f69365a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f69366b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private n f69367b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SparseArray f69368c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f69369d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d0 f69370e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d0 f69371f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d0 f69372g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final d0 f69373h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final d0 f69374i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final d0 f69375j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final d0 f69376k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final d0 f69377l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final d0 f69378m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final d0 f69379n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ByteBuffer f69380o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f69381p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f69382q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f69383r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f69384s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f69385t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private c f69386u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f69387v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f69388w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f69389x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f69390y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f69391z;

    private final class b implements m9.b {
        private b() {
        }

        @Override // m9.b
        public void a(int i11, int i12, m mVar) throws ParserException {
            e.this.k(i11, i12, mVar);
        }

        @Override // m9.b
        public void endMasterElement(int i11) throws ParserException {
            e.this.n(i11);
        }

        @Override // m9.b
        public void floatElement(int i11, double d11) {
            e.this.q(i11, d11);
        }

        @Override // m9.b
        public int getElementType(int i11) {
            return e.this.t(i11);
        }

        @Override // m9.b
        public void integerElement(int i11, long j11) throws ParserException {
            e.this.w(i11, j11);
        }

        @Override // m9.b
        public boolean isLevel1Element(int i11) {
            return e.this.y(i11);
        }

        @Override // m9.b
        public void startMasterElement(int i11, long j11, long j12) throws ParserException {
            e.this.F(i11, j11, j12);
        }

        @Override // m9.b
        public void stringElement(int i11, String str) throws ParserException {
            e.this.G(i11, str);
        }
    }

    protected static final class c {
        public byte[] N;
        public f0 T;
        public boolean U;
        public e0 X;
        public int Y;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f69393a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f69394b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f69395c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f69396d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f69397e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f69398f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f69399g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f69400h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public byte[] f69401i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public e0.a f69402j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public byte[] f69403k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public DrmInitData f69404l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f69405m = -1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f69406n = -1;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f69407o = -1;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f69408p = -1;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f69409q = 0;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f69410r = -1;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public float f69411s = 0.0f;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public float f69412t = 0.0f;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public float f69413u = 0.0f;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public byte[] f69414v = null;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f69415w = -1;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f69416x = false;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f69417y = -1;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f69418z = -1;
        public int A = -1;
        public int B = 1000;
        public int C = 200;
        public float D = -1.0f;
        public float E = -1.0f;
        public float F = -1.0f;
        public float G = -1.0f;
        public float H = -1.0f;
        public float I = -1.0f;
        public float J = -1.0f;
        public float K = -1.0f;
        public float L = -1.0f;
        public float M = -1.0f;
        public int O = 1;
        public int P = -1;
        public int Q = 8000;
        public long R = 0;
        public long S = 0;
        public boolean V = true;
        private String W = "eng";

        protected c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            com.google.android.exoplayer2.util.a.e(this.X);
        }

        private byte[] g(String str) throws ParserException {
            byte[] bArr = this.f69403k;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.createForMalformedContainer("Missing CodecPrivate for codec " + str, null);
        }

        private byte[] h() {
            if (this.D == -1.0f || this.E == -1.0f || this.F == -1.0f || this.G == -1.0f || this.H == -1.0f || this.I == -1.0f || this.J == -1.0f || this.K == -1.0f || this.L == -1.0f || this.M == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put((byte) 0);
            byteBufferOrder.putShort((short) ((this.D * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.E * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.F * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.G * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.H * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.I * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.J * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.K * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) (this.L + 0.5f));
            byteBufferOrder.putShort((short) (this.M + 0.5f));
            byteBufferOrder.putShort((short) this.B);
            byteBufferOrder.putShort((short) this.C);
            return bArr;
        }

        private static Pair k(d0 d0Var) throws ParserException {
            try {
                d0Var.Q(16);
                long jT = d0Var.t();
                if (jT == 1482049860) {
                    return new Pair("video/divx", null);
                }
                if (jT == 859189832) {
                    return new Pair(MimeTypes.VIDEO_H263, null);
                }
                if (jT != 826496599) {
                    s.i("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair(MimeTypes.VIDEO_UNKNOWN, null);
                }
                byte[] bArrD = d0Var.d();
                for (int iE = d0Var.e() + 20; iE < bArrD.length - 4; iE++) {
                    if (bArrD[iE] == 0 && bArrD[iE + 1] == 0 && bArrD[iE + 2] == 1 && bArrD[iE + 3] == 15) {
                        return new Pair(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(bArrD, iE, bArrD.length)));
                    }
                }
                throw ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        private static boolean l(d0 d0Var) throws ParserException {
            try {
                int iV = d0Var.v();
                if (iV == 1) {
                    return true;
                }
                if (iV != 65534) {
                    return false;
                }
                d0Var.P(24);
                return d0Var.w() == e.f69362h0.getMostSignificantBits() && d0Var.w() == e.f69362h0.getLeastSignificantBits();
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
            if ("A_OPUS".equals(this.f69394b)) {
                return z10;
            }
            return this.f69398f > 0;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:205:0x0428  */
        /* JADX WARN: Code duplicated, block: B:210:0x043f  */
        /* JADX WARN: Code duplicated, block: B:211:0x0441  */
        /* JADX WARN: Code duplicated, block: B:214:0x044e  */
        /* JADX WARN: Code duplicated, block: B:215:0x0460  */
        /* JADX WARN: Code duplicated, block: B:217:0x0466  */
        /* JADX WARN: Code duplicated, block: B:219:0x046a  */
        /* JADX WARN: Code duplicated, block: B:221:0x046f  */
        /* JADX WARN: Code duplicated, block: B:224:0x0477  */
        /* JADX WARN: Code duplicated, block: B:226:0x047c  */
        /* JADX WARN: Code duplicated, block: B:229:0x0481  */
        /* JADX WARN: Code duplicated, block: B:232:0x048f  */
        /* JADX WARN: Code duplicated, block: B:235:0x0495  */
        /* JADX WARN: Code duplicated, block: B:238:0x04a8  */
        /* JADX WARN: Code duplicated, block: B:243:0x04c8  */
        /* JADX WARN: Code duplicated, block: B:249:0x04e1  */
        /* JADX WARN: Code duplicated, block: B:250:0x04e3  */
        /* JADX WARN: Code duplicated, block: B:252:0x04ed  */
        /* JADX WARN: Code duplicated, block: B:253:0x04f0  */
        /* JADX WARN: Code duplicated, block: B:255:0x04fa  */
        /* JADX WARN: Code duplicated, block: B:261:0x0512  */
        /* JADX WARN: Code duplicated, block: B:263:0x0539  */
        /* JADX WARN: Code duplicated, block: B:265:0x053f  */
        /* JADX WARN: Code duplicated, block: B:281:0x056a  */
        /* JADX WARN: Code duplicated, block: B:4:0x0028  */
        public void i(n nVar, int i11) throws ParserException {
            List listSingletonList;
            int i12;
            String str;
            int i13;
            List list;
            String str2;
            int iC0;
            byte[] bArr;
            String str3;
            int i14;
            o1.b bVar;
            int i15;
            int iIntValue;
            int i16;
            float f11;
            int i17;
            int i18;
            int i19;
            com.google.android.exoplayer2.video.d dVarA;
            String str4 = this.f69394b;
            str4.hashCode();
            String str5 = MimeTypes.AUDIO_RAW;
            switch (str4) {
                case "V_MPEG4/ISO/AP":
                case "V_MPEG4/ISO/SP":
                case "V_MPEG4/ISO/ASP":
                    byte[] bArr2 = this.f69403k;
                    listSingletonList = bArr2 == null ? null : Collections.singletonList(bArr2);
                    str5 = MimeTypes.VIDEO_MP4V;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null && (dVarA = com.google.android.exoplayer2.video.d.a(new d0(bArr))) != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z10 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i20 = i14 | (z10 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    } else if (w.t(str3)) {
                        if (this.f69409q == 0) {
                            i18 = this.f69407o;
                            iIntValue = -1;
                            if (i18 == -1) {
                                i18 = this.f69405m;
                            }
                            this.f69407o = i18;
                            i19 = this.f69408p;
                            if (i19 == -1) {
                                i19 = this.f69406n;
                            }
                            this.f69408p = i19;
                        } else {
                            iIntValue = -1;
                        }
                        i16 = this.f69407o;
                        if (i16 != iIntValue || (i17 = this.f69408p) == iIntValue) {
                            f11 = -1.0f;
                        } else {
                            f11 = (this.f69406n * i16) / (this.f69405m * i17);
                        }
                        com.google.android.exoplayer2.video.c cVar = this.f69416x ? new com.google.android.exoplayer2.video.c(this.f69417y, this.A, this.f69418z, h()) : null;
                        if (this.f69393a != null && e.f69363i0.containsKey(this.f69393a)) {
                            iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                        }
                        if (this.f69410r == 0 && Float.compare(this.f69411s, 0.0f) == 0 && Float.compare(this.f69412t, 0.0f) == 0) {
                            if (Float.compare(this.f69413u, 0.0f) == 0) {
                                iIntValue = 0;
                            } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                iIntValue = 90;
                            } else if (Float.compare(this.f69412t, -180.0f) != 0 || Float.compare(this.f69412t, 180.0f) == 0) {
                                iIntValue = 180;
                            } else if (Float.compare(this.f69412t, -90.0f) == 0) {
                                iIntValue = 270;
                            }
                        }
                        bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                        i15 = 2;
                    } else {
                        if (MimeTypes.APPLICATION_SUBRIP.equals(str3) && !MimeTypes.TEXT_SSA.equals(str3) && !MimeTypes.TEXT_VTT.equals(str3) && !MimeTypes.APPLICATION_VOBSUB.equals(str3) && !MimeTypes.APPLICATION_PGS.equals(str3) && !MimeTypes.APPLICATION_DVBSUBS.equals(str3)) {
                            throw ParserException.createForMalformedContainer("Unexpected MIME type.", null);
                        }
                        i15 = 3;
                    }
                    if (this.f69393a != null && !e.f69363i0.containsKey(this.f69393a)) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i20).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack;
                    e0VarTrack.e(o1VarE);
                    return;
                case "A_MS/ACM":
                    if (l(new d0(g(this.f69394b)))) {
                        int iC1 = p0.c0(this.P);
                        if (iC1 == 0) {
                            s.i("MatroskaExtractor", "Unsupported PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        } else {
                            i12 = iC1;
                            listSingletonList = null;
                            str = null;
                        }
                        i13 = -1;
                        bArr = this.N;
                        if (bArr != null) {
                            str = dVarA.f27833c;
                            str5 = "video/dolby-vision";
                        }
                        str3 = str5;
                        boolean z11 = this.V;
                        if (this.U) {
                            i14 = 2;
                        } else {
                            i14 = 0;
                        }
                        int i21 = i14 | (z11 ? 1 : 0);
                        bVar = new o1.b();
                        if (w.p(str3)) {
                            if (w.t(str3)) {
                                if (this.f69409q == 0) {
                                    i18 = this.f69407o;
                                    iIntValue = -1;
                                    if (i18 == -1) {
                                        i18 = this.f69405m;
                                    }
                                    this.f69407o = i18;
                                    i19 = this.f69408p;
                                    if (i19 == -1) {
                                        i19 = this.f69406n;
                                    }
                                    this.f69408p = i19;
                                } else {
                                    iIntValue = -1;
                                }
                                i16 = this.f69407o;
                                if (i16 != iIntValue) {
                                    f11 = -1.0f;
                                } else {
                                    f11 = -1.0f;
                                }
                                if (this.f69416x) {
                                }
                                if (this.f69393a != null) {
                                    iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                                }
                                if (this.f69410r == 0) {
                                    if (Float.compare(this.f69413u, 0.0f) == 0) {
                                        iIntValue = 0;
                                    } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                        iIntValue = 90;
                                    } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                        iIntValue = 180;
                                    } else {
                                        iIntValue = 180;
                                    }
                                }
                                bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                                i15 = 2;
                            } else {
                                if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                                }
                                i15 = 3;
                            }
                            break;
                        } else {
                            bVar.H(this.O).f0(this.Q).Y(i12);
                            i15 = 1;
                        }
                        if (this.f69393a != null) {
                            bVar.U(this.f69393a);
                        }
                        o1 o1VarE2 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i21).T(listSingletonList).I(str).M(this.f69404l).E();
                        e0 e0VarTrack2 = nVar.track(this.f69395c, i15);
                        this.X = e0VarTrack2;
                        e0VarTrack2.e(o1VarE2);
                        return;
                    }
                    s.i("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    str5 = MimeTypes.AUDIO_UNKNOWN;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z12 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i22 = i14 | (z12 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE3 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i22).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack3 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack3;
                    e0VarTrack3.e(o1VarE3);
                    return;
                case "A_TRUEHD":
                    this.T = new f0();
                    str5 = MimeTypes.AUDIO_TRUEHD;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z13 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i23 = i14 | (z13 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE4 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i23).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack4 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack4;
                    e0VarTrack4.e(o1VarE4);
                    return;
                case "A_VORBIS":
                    listSingletonList = m(g(this.f69394b));
                    str5 = MimeTypes.AUDIO_VORBIS;
                    i13 = 8192;
                    str = null;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z14 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i24 = i14 | (z14 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE5 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i24).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack5 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack5;
                    e0VarTrack5.e(o1VarE5);
                    return;
                case "A_MPEG/L2":
                    str5 = MimeTypes.AUDIO_MPEG_L2;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = 4096;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z15 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i25 = i14 | (z15 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE6 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i25).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack6 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack6;
                    e0VarTrack6.e(o1VarE6);
                    return;
                case "A_MPEG/L3":
                    str5 = MimeTypes.AUDIO_MPEG;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = 4096;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z16 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i26 = i14 | (z16 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE7 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i26).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack7 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack7;
                    e0VarTrack7.e(o1VarE7);
                    return;
                case "V_MS/VFW/FOURCC":
                    Pair pairK = k(new d0(g(this.f69394b)));
                    str5 = (String) pairK.first;
                    listSingletonList = (List) pairK.second;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z17 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i27 = i14 | (z17 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE8 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i27).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack8 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack8;
                    e0VarTrack8.e(o1VarE8);
                    return;
                case "S_DVBSUB":
                    byte[] bArr3 = new byte[4];
                    System.arraycopy(g(this.f69394b), 0, bArr3, 0, 4);
                    listSingletonList = ImmutableList.of(bArr3);
                    str5 = MimeTypes.APPLICATION_DVBSUBS;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z18 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i28 = i14 | (z18 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE9 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i28).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack9 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack9;
                    e0VarTrack9.e(o1VarE9);
                    return;
                case "V_MPEG4/ISO/AVC":
                    com.google.android.exoplayer2.video.a aVarB = com.google.android.exoplayer2.video.a.b(new d0(g(this.f69394b)));
                    list = aVarB.f27819a;
                    this.Y = aVarB.f27820b;
                    str2 = aVarB.f27824f;
                    str5 = MimeTypes.VIDEO_H264;
                    i12 = -1;
                    i13 = -1;
                    List list2 = list;
                    str = str2;
                    listSingletonList = list2;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z19 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i29 = i14 | (z19 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE10 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i29).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack10 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack10;
                    e0VarTrack10.e(o1VarE10);
                    return;
                case "S_VOBSUB":
                    listSingletonList = ImmutableList.of(g(this.f69394b));
                    str5 = MimeTypes.APPLICATION_VOBSUB;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z110 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i210 = i14 | (z110 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE11 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i210).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack11 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack11;
                    e0VarTrack11.e(o1VarE11);
                    return;
                case "A_DTS/LOSSLESS":
                    str5 = MimeTypes.AUDIO_DTS_HD;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z111 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i211 = i14 | (z111 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE12 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i211).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack12 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack12;
                    e0VarTrack12.e(o1VarE12);
                    return;
                case "A_AAC":
                    listSingletonList = Collections.singletonList(g(this.f69394b));
                    com.google.android.exoplayer2.audio.a.b bVarF = com.google.android.exoplayer2.audio.a.f(this.f69403k);
                    this.Q = bVarF.f24598a;
                    this.O = bVarF.f24599b;
                    str = bVarF.f24600c;
                    str5 = MimeTypes.AUDIO_AAC;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z112 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i212 = i14 | (z112 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE13 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i212).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack13 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack13;
                    e0VarTrack13.e(o1VarE13);
                    return;
                case "A_AC3":
                    str5 = MimeTypes.AUDIO_AC3;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z113 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i213 = i14 | (z113 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE14 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i213).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack14 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack14;
                    e0VarTrack14.e(o1VarE14);
                    return;
                case "A_DTS":
                case "A_DTS/EXPRESS":
                    str5 = MimeTypes.AUDIO_DTS;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z114 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i214 = i14 | (z114 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE15 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i214).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack15 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack15;
                    e0VarTrack15.e(o1VarE15);
                    return;
                case "V_AV1":
                    str5 = "video/av01";
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z115 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i215 = i14 | (z115 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE16 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i215).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack16 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack16;
                    e0VarTrack16.e(o1VarE16);
                    return;
                case "V_VP8":
                    str5 = MimeTypes.VIDEO_VP8;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z116 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i216 = i14 | (z116 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE17 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i216).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack17 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack17;
                    e0VarTrack17.e(o1VarE17);
                    return;
                case "V_VP9":
                    str5 = MimeTypes.VIDEO_VP9;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z117 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i217 = i14 | (z117 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE18 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i217).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack18 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack18;
                    e0VarTrack18.e(o1VarE18);
                    return;
                case "S_HDMV/PGS":
                    str5 = MimeTypes.APPLICATION_PGS;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z118 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i218 = i14 | (z118 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE19 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i218).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack19 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack19;
                    e0VarTrack19.e(o1VarE19);
                    return;
                case "V_THEORA":
                    str5 = MimeTypes.VIDEO_UNKNOWN;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z119 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i219 = i14 | (z119 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE110 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i219).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack110 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack110;
                    e0VarTrack110.e(o1VarE110);
                    return;
                case "A_PCM/FLOAT/IEEE":
                    if (this.P == 32) {
                        listSingletonList = null;
                        str = null;
                        i12 = 4;
                    } else {
                        s.i("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        listSingletonList = null;
                        str = null;
                        i12 = -1;
                    }
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1110 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i2110 = i14 | (z1110 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE111 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i2110).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack111 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack111;
                    e0VarTrack111.e(o1VarE111);
                    return;
                case "A_PCM/INT/BIG":
                    int i30 = this.P;
                    if (i30 == 8) {
                        listSingletonList = null;
                        str = null;
                        i12 = 3;
                    } else if (i30 == 16) {
                        iC0 = ASTNode.DEOP;
                        i12 = iC0;
                        listSingletonList = null;
                        str = null;
                    } else {
                        s.i("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        listSingletonList = null;
                        str = null;
                        i12 = -1;
                    }
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1111 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i2111 = i14 | (z1111 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE112 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i2111).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack112 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack112;
                    e0VarTrack112.e(o1VarE112);
                    return;
                case "A_PCM/INT/LIT":
                    iC0 = p0.c0(this.P);
                    if (iC0 == 0) {
                        s.i("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.P + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        str5 = MimeTypes.AUDIO_UNKNOWN;
                        listSingletonList = null;
                        str = null;
                        i12 = -1;
                    } else {
                        i12 = iC0;
                        listSingletonList = null;
                        str = null;
                    }
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1112 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i2112 = i14 | (z1112 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE113 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i2112).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack113 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack113;
                    e0VarTrack113.e(o1VarE113);
                    return;
                case "S_TEXT/ASS":
                    listSingletonList = ImmutableList.of(e.f69359e0, g(this.f69394b));
                    str5 = MimeTypes.TEXT_SSA;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1113 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i2113 = i14 | (z1113 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE114 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i2113).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack114 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack114;
                    e0VarTrack114.e(o1VarE114);
                    return;
                case "V_MPEGH/ISO/HEVC":
                    com.google.android.exoplayer2.video.f fVarA = com.google.android.exoplayer2.video.f.a(new d0(g(this.f69394b)));
                    list = fVarA.f27848a;
                    this.Y = fVarA.f27849b;
                    str2 = fVarA.f27853f;
                    str5 = MimeTypes.VIDEO_H265;
                    i12 = -1;
                    i13 = -1;
                    List list3 = list;
                    str = str2;
                    listSingletonList = list3;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1114 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i2114 = i14 | (z1114 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE115 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i2114).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack115 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack115;
                    e0VarTrack115.e(o1VarE115);
                    return;
                case "S_TEXT/WEBVTT":
                    str5 = MimeTypes.TEXT_VTT;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1115 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i2115 = i14 | (z1115 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE116 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i2115).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack116 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack116;
                    e0VarTrack116.e(o1VarE116);
                    return;
                case "S_TEXT/UTF8":
                    str5 = MimeTypes.APPLICATION_SUBRIP;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1116 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i2116 = i14 | (z1116 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE117 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i2116).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack117 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack117;
                    e0VarTrack117.e(o1VarE117);
                    return;
                case "V_MPEG2":
                    str5 = MimeTypes.VIDEO_MPEG2;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1117 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i2117 = i14 | (z1117 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE118 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i2117).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack118 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack118;
                    e0VarTrack118.e(o1VarE118);
                    return;
                case "A_EAC3":
                    str5 = MimeTypes.AUDIO_E_AC3;
                    listSingletonList = null;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1118 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i2118 = i14 | (z1118 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE119 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i2118).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack119 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack119;
                    e0VarTrack119.e(o1VarE119);
                    return;
                case "A_FLAC":
                    listSingletonList = Collections.singletonList(g(this.f69394b));
                    str5 = MimeTypes.AUDIO_FLAC;
                    str = null;
                    i12 = -1;
                    i13 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z1119 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i2119 = i14 | (z1119 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE1110 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i2119).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack1110 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack1110;
                    e0VarTrack1110.e(o1VarE1110);
                    return;
                case "A_OPUS":
                    listSingletonList = new ArrayList(3);
                    listSingletonList.add(g(this.f69394b));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    listSingletonList.add(byteBufferAllocate.order(byteOrder).putLong(this.R).array());
                    listSingletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.S).array());
                    str5 = MimeTypes.AUDIO_OPUS;
                    i13 = 5760;
                    str = null;
                    i12 = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str = dVarA.f27833c;
                        str5 = "video/dolby-vision";
                    }
                    str3 = str5;
                    boolean z11110 = this.V;
                    if (this.U) {
                        i14 = 2;
                    } else {
                        i14 = 0;
                    }
                    int i21110 = i14 | (z11110 ? 1 : 0);
                    bVar = new o1.b();
                    if (w.p(str3)) {
                        if (w.t(str3)) {
                            if (this.f69409q == 0) {
                                i18 = this.f69407o;
                                iIntValue = -1;
                                if (i18 == -1) {
                                    i18 = this.f69405m;
                                }
                                this.f69407o = i18;
                                i19 = this.f69408p;
                                if (i19 == -1) {
                                    i19 = this.f69406n;
                                }
                                this.f69408p = i19;
                            } else {
                                iIntValue = -1;
                            }
                            i16 = this.f69407o;
                            if (i16 != iIntValue) {
                                f11 = -1.0f;
                            } else {
                                f11 = -1.0f;
                            }
                            if (this.f69416x) {
                            }
                            if (this.f69393a != null) {
                                iIntValue = ((Integer) e.f69363i0.get(this.f69393a)).intValue();
                            }
                            if (this.f69410r == 0) {
                                if (Float.compare(this.f69413u, 0.0f) == 0) {
                                    iIntValue = 0;
                                } else if (Float.compare(this.f69412t, 90.0f) == 0) {
                                    iIntValue = 90;
                                } else if (Float.compare(this.f69412t, -180.0f) != 0) {
                                    iIntValue = 180;
                                } else {
                                    iIntValue = 180;
                                }
                            }
                            bVar.j0(this.f69405m).Q(this.f69406n).a0(f11).d0(iIntValue).b0(this.f69414v).h0(this.f69415w).J(cVar);
                            i15 = 2;
                        } else {
                            if (MimeTypes.APPLICATION_SUBRIP.equals(str3)) {
                            }
                            i15 = 3;
                        }
                        break;
                    } else {
                        bVar.H(this.O).f0(this.Q).Y(i12);
                        i15 = 1;
                    }
                    if (this.f69393a != null) {
                        bVar.U(this.f69393a);
                    }
                    o1 o1VarE1111 = bVar.R(i11).e0(str3).W(i13).V(this.W).g0(i21110).T(listSingletonList).I(str).M(this.f69404l).E();
                    e0 e0VarTrack1111 = nVar.track(this.f69395c, i15);
                    this.X = e0VarTrack1111;
                    e0VarTrack1111.e(o1VarE1111);
                    return;
                default:
                    throw ParserException.createForMalformedContainer("Unrecognized codec identifier.", null);
            }
        }

        public void j() {
            f0 f0Var = this.T;
            if (f0Var != null) {
                f0Var.a(this.X, this.f69402j);
            }
        }

        public void n() {
            f0 f0Var = this.T;
            if (f0Var != null) {
                f0Var.b();
            }
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        f69363i0 = Collections.unmodifiableMap(map);
    }

    public e() {
        this(0);
    }

    public e(int i11) {
        this(new m9.a(), i11);
    }

    e(m9.c cVar, int i11) {
        this.f69382q = -1L;
        this.f69383r = C.TIME_UNSET;
        this.f69384s = C.TIME_UNSET;
        this.f69385t = C.TIME_UNSET;
        this.f69391z = -1L;
        this.A = -1L;
        this.B = C.TIME_UNSET;
        this.f69364a = cVar;
        cVar.b(new b());
        this.f69369d = (i11 & 1) == 0;
        this.f69366b = new g();
        this.f69368c = new SparseArray();
        this.f69372g = new d0(4);
        this.f69373h = new d0(ByteBuffer.allocate(4).putInt(-1).array());
        this.f69374i = new d0(4);
        this.f69370e = new d0(x.f27664a);
        this.f69371f = new d0(4);
        this.f69375j = new d0();
        this.f69376k = new d0();
        this.f69377l = new d0(8);
        this.f69378m = new d0();
        this.f69379n = new d0();
        this.L = new int[1];
    }

    private boolean A(a0 a0Var, long j11) {
        if (this.f69390y) {
            this.A = j11;
            a0Var.f63369a = this.f69391z;
            this.f69390y = false;
            return true;
        }
        if (this.f69387v) {
            long j12 = this.A;
            if (j12 != -1) {
                a0Var.f63369a = j12;
                this.A = -1L;
                return true;
            }
        }
        return false;
    }

    private void B(m mVar, int i11) {
        if (this.f69372g.f() >= i11) {
            return;
        }
        if (this.f69372g.b() < i11) {
            d0 d0Var = this.f69372g;
            d0Var.c(Math.max(d0Var.b() * 2, i11));
        }
        mVar.readFully(this.f69372g.d(), this.f69372g.f(), i11 - this.f69372g.f());
        this.f69372g.O(i11);
    }

    private void C() {
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = 0;
        this.Z = (byte) 0;
        this.f69365a0 = false;
        this.f69375j.L(0);
    }

    private long D(long j11) throws ParserException {
        long j12 = this.f69383r;
        if (j12 != C.TIME_UNSET) {
            return p0.N0(j11, j12, 1000L);
        }
        throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private static void E(String str, long j11, byte[] bArr) {
        byte[] bArrR;
        int i11;
        str.hashCode();
        switch (str) {
            case "S_TEXT/ASS":
                bArrR = r(j11, "%01d:%02d:%02d:%02d", 10000L);
                i11 = 21;
                break;
            case "S_TEXT/WEBVTT":
                bArrR = r(j11, "%02d:%02d:%02d.%03d", 1000L);
                i11 = 25;
                break;
            case "S_TEXT/UTF8":
                bArrR = r(j11, "%02d:%02d:%02d,%03d", 1000L);
                i11 = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(bArrR, 0, bArr, i11, bArrR.length);
    }

    private int H(m mVar, c cVar, int i11, boolean z10) throws ParserException {
        int i12;
        if ("S_TEXT/UTF8".equals(cVar.f69394b)) {
            I(mVar, f69358d0, i11);
            return p();
        }
        if ("S_TEXT/ASS".equals(cVar.f69394b)) {
            I(mVar, f69360f0, i11);
            return p();
        }
        if ("S_TEXT/WEBVTT".equals(cVar.f69394b)) {
            I(mVar, f69361g0, i11);
            return p();
        }
        e0 e0Var = cVar.X;
        if (!this.V) {
            if (cVar.f69400h) {
                this.O &= -1073741825;
                if (!this.W) {
                    mVar.readFully(this.f69372g.d(), 0, 1);
                    this.S++;
                    if ((this.f69372g.d()[0] & 128) == 128) {
                        throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                    }
                    this.Z = this.f69372g.d()[0];
                    this.W = true;
                }
                byte b11 = this.Z;
                if ((b11 & 1) == 1) {
                    boolean z11 = (b11 & 2) == 2;
                    this.O |= 1073741824;
                    if (!this.f69365a0) {
                        mVar.readFully(this.f69377l.d(), 0, 8);
                        this.S += 8;
                        this.f69365a0 = true;
                        this.f69372g.d()[0] = (byte) ((z11 ? 128 : 0) | 8);
                        this.f69372g.P(0);
                        e0Var.f(this.f69372g, 1, 1);
                        this.T++;
                        this.f69377l.P(0);
                        e0Var.f(this.f69377l, 8, 1);
                        this.T += 8;
                    }
                    if (z11) {
                        if (!this.X) {
                            mVar.readFully(this.f69372g.d(), 0, 1);
                            this.S++;
                            this.f69372g.P(0);
                            this.Y = this.f69372g.D();
                            this.X = true;
                        }
                        int i13 = this.Y * 4;
                        this.f69372g.L(i13);
                        mVar.readFully(this.f69372g.d(), 0, i13);
                        this.S += i13;
                        short s11 = (short) ((this.Y / 2) + 1);
                        int i14 = (s11 * 6) + 2;
                        ByteBuffer byteBuffer = this.f69380o;
                        if (byteBuffer == null || byteBuffer.capacity() < i14) {
                            this.f69380o = ByteBuffer.allocate(i14);
                        }
                        this.f69380o.position(0);
                        this.f69380o.putShort(s11);
                        int i15 = 0;
                        int i16 = 0;
                        while (true) {
                            i12 = this.Y;
                            if (i15 >= i12) {
                                break;
                            }
                            int iH = this.f69372g.H();
                            if (i15 % 2 == 0) {
                                this.f69380o.putShort((short) (iH - i16));
                            } else {
                                this.f69380o.putInt(iH - i16);
                            }
                            i15++;
                            i16 = iH;
                        }
                        int i17 = (i11 - this.S) - i16;
                        if (i12 % 2 == 1) {
                            this.f69380o.putInt(i17);
                        } else {
                            this.f69380o.putShort((short) i17);
                            this.f69380o.putInt(0);
                        }
                        this.f69378m.N(this.f69380o.array(), i14);
                        e0Var.f(this.f69378m, i14, 1);
                        this.T += i14;
                    }
                }
            } else {
                byte[] bArr = cVar.f69401i;
                if (bArr != null) {
                    this.f69375j.N(bArr, bArr.length);
                }
            }
            if (cVar.o(z10)) {
                this.O |= ASTNode.DEOP;
                this.f69379n.L(0);
                int iF = (this.f69375j.f() + i11) - this.S;
                this.f69372g.L(4);
                this.f69372g.d()[0] = (byte) ((iF >> 24) & 255);
                this.f69372g.d()[1] = (byte) ((iF >> 16) & 255);
                this.f69372g.d()[2] = (byte) ((iF >> 8) & 255);
                this.f69372g.d()[3] = (byte) (iF & 255);
                e0Var.f(this.f69372g, 4, 2);
                this.T += 4;
            }
            this.V = true;
        }
        int iF2 = i11 + this.f69375j.f();
        if (!"V_MPEG4/ISO/AVC".equals(cVar.f69394b) && !"V_MPEGH/ISO/HEVC".equals(cVar.f69394b)) {
            if (cVar.T != null) {
                com.google.android.exoplayer2.util.a.g(this.f69375j.f() == 0);
                cVar.T.d(mVar);
            }
            while (true) {
                int i18 = this.S;
                if (i18 >= iF2) {
                    break;
                }
                int iJ = J(mVar, e0Var, iF2 - i18);
                this.S += iJ;
                this.T += iJ;
            }
        } else {
            byte[] bArrD = this.f69371f.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i19 = cVar.Y;
            int i20 = 4 - i19;
            while (this.S < iF2) {
                int i21 = this.U;
                if (i21 == 0) {
                    K(mVar, bArrD, i20, i19);
                    this.S += i19;
                    this.f69371f.P(0);
                    this.U = this.f69371f.H();
                    this.f69370e.P(0);
                    e0Var.c(this.f69370e, 4);
                    this.T += 4;
                } else {
                    int iJ2 = J(mVar, e0Var, i21);
                    this.S += iJ2;
                    this.T += iJ2;
                    this.U -= iJ2;
                }
            }
        }
        if ("A_VORBIS".equals(cVar.f69394b)) {
            this.f69373h.P(0);
            e0Var.c(this.f69373h, 4);
            this.T += 4;
        }
        return p();
    }

    private void I(m mVar, byte[] bArr, int i11) {
        int length = bArr.length + i11;
        if (this.f69376k.b() < length) {
            this.f69376k.M(Arrays.copyOf(bArr, length + i11));
        } else {
            System.arraycopy(bArr, 0, this.f69376k.d(), 0, bArr.length);
        }
        mVar.readFully(this.f69376k.d(), bArr.length, i11);
        this.f69376k.P(0);
        this.f69376k.O(length);
    }

    private int J(m mVar, e0 e0Var, int i11) {
        int iA = this.f69375j.a();
        if (iA <= 0) {
            return e0Var.b(mVar, i11, false);
        }
        int iMin = Math.min(i11, iA);
        e0Var.c(this.f69375j, iMin);
        return iMin;
    }

    private void K(m mVar, byte[] bArr, int i11, int i12) {
        int iMin = Math.min(i12, this.f69375j.a());
        mVar.readFully(bArr, i11 + iMin, i12 - iMin);
        if (iMin > 0) {
            this.f69375j.j(bArr, i11, iMin);
        }
    }

    private void h(int i11) throws ParserException {
        if (this.C == null || this.D == null) {
            throw ParserException.createForMalformedContainer("Element " + i11 + " must be in a Cues", null);
        }
    }

    private void i(int i11) throws ParserException {
        if (this.f69386u != null) {
            return;
        }
        throw ParserException.createForMalformedContainer("Element " + i11 + " must be in a TrackEntry", null);
    }

    private void j() {
        com.google.android.exoplayer2.util.a.i(this.f69367b0);
    }

    private b0 l(t tVar, t tVar2) {
        int i11;
        if (this.f69382q == -1 || this.f69385t == C.TIME_UNSET || tVar == null || tVar.c() == 0 || tVar2 == null || tVar2.c() != tVar.c()) {
            return new b0.b(this.f69385t);
        }
        int iC = tVar.c();
        int[] iArrCopyOf = new int[iC];
        long[] jArrCopyOf = new long[iC];
        long[] jArrCopyOf2 = new long[iC];
        long[] jArrCopyOf3 = new long[iC];
        int i12 = 0;
        for (int i13 = 0; i13 < iC; i13++) {
            jArrCopyOf3[i13] = tVar.b(i13);
            jArrCopyOf[i13] = this.f69382q + tVar2.b(i13);
        }
        while (true) {
            i11 = iC - 1;
            if (i12 >= i11) {
                break;
            }
            int i14 = i12 + 1;
            iArrCopyOf[i12] = (int) (jArrCopyOf[i14] - jArrCopyOf[i12]);
            jArrCopyOf2[i12] = jArrCopyOf3[i14] - jArrCopyOf3[i12];
            i12 = i14;
        }
        iArrCopyOf[i11] = (int) ((this.f69382q + this.f69381p) - jArrCopyOf[i11]);
        long j11 = this.f69385t - jArrCopyOf3[i11];
        jArrCopyOf2[i11] = j11;
        if (j11 <= 0) {
            s.i("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j11);
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i11);
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i11);
            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i11);
            jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i11);
        }
        return new g9.d(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
    }

    private void m(c cVar, long j11, int i11, int i12, int i13) {
        f0 f0Var = cVar.T;
        if (f0Var != null) {
            f0Var.c(cVar.X, j11, i11, i12, i13, cVar.f69402j);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.f69394b) || "S_TEXT/ASS".equals(cVar.f69394b) || "S_TEXT/WEBVTT".equals(cVar.f69394b)) {
                if (this.K > 1) {
                    s.i("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j12 = this.I;
                    if (j12 == C.TIME_UNSET) {
                        s.i("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        E(cVar.f69394b, j12, this.f69376k.d());
                        for (int iE = this.f69376k.e(); iE < this.f69376k.f(); iE++) {
                            if (this.f69376k.d()[iE] == 0) {
                                this.f69376k.O(iE);
                                break;
                            }
                        }
                        e0 e0Var = cVar.X;
                        d0 d0Var = this.f69376k;
                        e0Var.c(d0Var, d0Var.f());
                        i12 += this.f69376k.f();
                    }
                }
            }
            if ((268435456 & i11) != 0) {
                if (this.K > 1) {
                    this.f69379n.L(0);
                } else {
                    int iF = this.f69379n.f();
                    cVar.X.f(this.f69379n, iF, 2);
                    i12 += iF;
                }
            }
            cVar.X.d(j11, i11, i12, i13, cVar.f69402j);
        }
        this.F = true;
    }

    private static int[] o(int[] iArr, int i11) {
        if (iArr == null) {
            return new int[i11];
        }
        return iArr.length >= i11 ? iArr : new int[Math.max(iArr.length * 2, i11)];
    }

    private int p() {
        int i11 = this.T;
        C();
        return i11;
    }

    private static byte[] r(long j11, String str, long j12) {
        com.google.android.exoplayer2.util.a.a(j11 != C.TIME_UNSET);
        int i11 = (int) (j11 / 3600000000L);
        long j13 = j11 - (((long) i11) * 3600000000L);
        int i12 = (int) (j13 / 60000000);
        long j14 = j13 - (((long) i12) * 60000000);
        int i13 = (int) (j14 / 1000000);
        return p0.n0(String.format(Locale.US, str, Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf((int) ((j14 - (((long) i13) * 1000000)) / j12))));
    }

    private static boolean x(String str) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] z() {
        return new l[]{new e()};
    }

    protected void F(int i11, long j11, long j12) throws ParserException {
        j();
        if (i11 == 160) {
            this.Q = false;
            this.R = 0L;
            return;
        }
        if (i11 == 174) {
            this.f69386u = new c();
            return;
        }
        if (i11 == 187) {
            this.E = false;
            return;
        }
        if (i11 == 19899) {
            this.f69388w = -1;
            this.f69389x = -1L;
            return;
        }
        if (i11 == 20533) {
            s(i11).f69400h = true;
            return;
        }
        if (i11 == 21968) {
            s(i11).f69416x = true;
            return;
        }
        if (i11 == 408125543) {
            long j13 = this.f69382q;
            if (j13 != -1 && j13 != j11) {
                throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            }
            this.f69382q = j11;
            this.f69381p = j12;
            return;
        }
        if (i11 == 475249515) {
            this.C = new t();
            this.D = new t();
        } else if (i11 == 524531317 && !this.f69387v) {
            if (this.f69369d && this.f69391z != -1) {
                this.f69390y = true;
            } else {
                this.f69367b0.d(new b0.b(this.f69385t));
                this.f69387v = true;
            }
        }
    }

    protected void G(int i11, String str) throws ParserException {
        if (i11 == 134) {
            s(i11).f69394b = str;
            return;
        }
        if (i11 != 17026) {
            if (i11 == 21358) {
                s(i11).f69393a = str;
                return;
            } else {
                if (i11 != 2274716) {
                    return;
                }
                s(i11).W = str;
                return;
            }
        }
        if ("webm".equals(str) || "matroska".equals(str)) {
            return;
        }
        throw ParserException.createForMalformedContainer("DocType " + str + " not supported", null);
    }

    @Override // g9.l
    public final void b(n nVar) {
        this.f69367b0 = nVar;
    }

    @Override // g9.l
    public final int c(m mVar, a0 a0Var) {
        this.F = false;
        boolean zA = true;
        while (zA && !this.F) {
            zA = this.f69364a.a(mVar);
            if (zA && A(a0Var, mVar.getPosition())) {
                return 1;
            }
        }
        if (zA) {
            return 0;
        }
        for (int i11 = 0; i11 < this.f69368c.size(); i11++) {
            c cVar = (c) this.f69368c.valueAt(i11);
            cVar.f();
            cVar.j();
        }
        return -1;
    }

    @Override // g9.l
    public final boolean d(m mVar) {
        return new f().b(mVar);
    }

    /* JADX WARN: Code duplicated, block: B:97:0x0282  */
    protected void k(int i11, int i12, m mVar) throws ParserException {
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
                if (this.G != 2) {
                    return;
                }
                v((c) this.f69368c.get(this.M), this.P, mVar, i12);
                return;
            }
            if (i11 == 16877) {
                u(s(i11), mVar, i12);
                return;
            }
            if (i11 == 16981) {
                i(i11);
                byte[] bArr = new byte[i12];
                this.f69386u.f69401i = bArr;
                mVar.readFully(bArr, 0, i12);
                return;
            }
            if (i11 == 18402) {
                byte[] bArr2 = new byte[i12];
                mVar.readFully(bArr2, 0, i12);
                s(i11).f69402j = new e0.a(1, bArr2, 0, 0);
                return;
            }
            if (i11 == 21419) {
                Arrays.fill(this.f69374i.d(), (byte) 0);
                mVar.readFully(this.f69374i.d(), 4 - i12, i12);
                this.f69374i.P(0);
                this.f69388w = (int) this.f69374i.F();
                return;
            }
            if (i11 == 25506) {
                i(i11);
                byte[] bArr3 = new byte[i12];
                this.f69386u.f69403k = bArr3;
                mVar.readFully(bArr3, 0, i12);
                return;
            }
            if (i11 != 30322) {
                throw ParserException.createForMalformedContainer("Unexpected id: " + i11, null);
            }
            i(i11);
            byte[] bArr4 = new byte[i12];
            this.f69386u.f69414v = bArr4;
            mVar.readFully(bArr4, 0, i12);
            return;
        }
        if (this.G == 0) {
            this.M = (int) this.f69366b.d(mVar, false, true, 8);
            this.N = this.f69366b.b();
            this.I = C.TIME_UNSET;
            this.G = 1;
            this.f69372g.L(0);
        }
        c cVar4 = (c) this.f69368c.get(this.M);
        if (cVar4 == null) {
            mVar.skipFully(i12 - this.N);
            this.G = 0;
            return;
        }
        cVar4.f();
        if (this.G == 1) {
            B(mVar, 3);
            int i20 = (this.f69372g.d()[2] & 6) >> 1;
            byte b11 = 255;
            if (i20 == 0) {
                this.K = 1;
                int[] iArrO = o(this.L, 1);
                this.L = iArrO;
                iArrO[0] = (i12 - this.N) - 3;
            } else {
                int i21 = 4;
                B(mVar, 4);
                int i22 = (this.f69372g.d()[3] & 255) + 1;
                this.K = i22;
                int[] iArrO2 = o(this.L, i22);
                this.L = iArrO2;
                if (i20 == 2) {
                    int i23 = (i12 - this.N) - 4;
                    int i24 = this.K;
                    Arrays.fill(iArrO2, 0, i24, i23 / i24);
                } else {
                    if (i20 == 1) {
                        int i25 = 0;
                        int i26 = 0;
                        while (true) {
                            i14 = this.K;
                            if (i25 >= i14 - 1) {
                                break;
                            }
                            this.L[i25] = 0;
                            while (true) {
                                i15 = i21 + 1;
                                B(mVar, i15);
                                int i27 = this.f69372g.d()[i21] & 255;
                                int[] iArr = this.L;
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
                        this.L[i14 - 1] = ((i12 - this.N) - i21) - i26;
                    } else {
                        if (i20 != 3) {
                            throw ParserException.createForMalformedContainer("Unexpected lacing value: " + i20, null);
                        }
                        int i28 = 0;
                        int i29 = 0;
                        while (true) {
                            int i30 = this.K;
                            if (i28 >= i30 - 1) {
                                cVar2 = cVar4;
                                this.L[i30 - 1] = ((i12 - this.N) - i21) - i29;
                                break;
                            }
                            this.L[i28] = i18;
                            int i31 = i21 + 1;
                            B(mVar, i31);
                            if (this.f69372g.d()[i21] == 0) {
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
                                if ((this.f69372g.d()[i21] & i33) != 0) {
                                    i31 += i32;
                                    B(mVar, i31);
                                    cVar3 = cVar4;
                                    j11 = (~i33) & this.f69372g.d()[i21] & b11;
                                    int i34 = i21 + 1;
                                    while (i34 < i31) {
                                        j11 = (j11 << 8) | ((long) (this.f69372g.d()[i34] & b11));
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
                            int[] iArr2 = this.L;
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
                    this.H = this.B + D((this.f69372g.d()[0] << 8) | (this.f69372g.d()[1] & 255));
                    cVar = cVar2;
                    if (cVar.f69396d != 2 || (i11 == 163 && (this.f69372g.d()[2] & 128) == 128)) {
                        i17 = 1;
                    } else {
                        i17 = 0;
                    }
                    this.O = i17;
                    this.G = 2;
                    this.J = 0;
                    i13 = 163;
                }
            }
            cVar2 = cVar4;
            this.H = this.B + D((this.f69372g.d()[0] << 8) | (this.f69372g.d()[1] & 255));
            cVar = cVar2;
            if (cVar.f69396d != 2) {
                i17 = 1;
            } else {
                i17 = 1;
            }
            this.O = i17;
            this.G = 2;
            this.J = 0;
            i13 = 163;
        } else {
            cVar = cVar4;
            i13 = 163;
        }
        if (i11 == i13) {
            while (true) {
                int i36 = this.J;
                if (i36 >= this.K) {
                    this.G = 0;
                    return;
                }
                m(cVar, ((long) ((this.J * cVar.f69397e) / 1000)) + this.H, this.O, H(mVar, cVar, this.L[i36], false), 0);
                this.J++;
            }
        } else {
            while (true) {
                int i37 = this.J;
                if (i37 >= this.K) {
                    return;
                }
                int[] iArr3 = this.L;
                iArr3[i37] = H(mVar, cVar, iArr3[i37], true);
                this.J++;
            }
        }
    }

    protected void n(int i11) throws ParserException {
        j();
        if (i11 == 160) {
            if (this.G != 2) {
                return;
            }
            c cVar = (c) this.f69368c.get(this.M);
            cVar.f();
            if (this.R > 0 && "A_OPUS".equals(cVar.f69394b)) {
                this.f69379n.M(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.R).array());
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.K; i13++) {
                i12 += this.L[i13];
            }
            int i14 = 0;
            while (i14 < this.K) {
                long j11 = this.H + ((long) ((cVar.f69397e * i14) / 1000));
                int i15 = this.O;
                if (i14 == 0 && !this.Q) {
                    i15 |= 1;
                }
                int i16 = this.L[i14];
                int i17 = i12 - i16;
                m(cVar, j11, i15, i16, i17);
                i14++;
                i12 = i17;
            }
            this.G = 0;
            return;
        }
        if (i11 == 174) {
            c cVar2 = (c) com.google.android.exoplayer2.util.a.i(this.f69386u);
            String str = cVar2.f69394b;
            if (str == null) {
                throw ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
            }
            if (x(str)) {
                cVar2.i(this.f69367b0, cVar2.f69395c);
                this.f69368c.put(cVar2.f69395c, cVar2);
            }
            this.f69386u = null;
            return;
        }
        if (i11 == 19899) {
            int i18 = this.f69388w;
            if (i18 != -1) {
                long j12 = this.f69389x;
                if (j12 != -1) {
                    if (i18 == 475249515) {
                        this.f69391z = j12;
                        return;
                    }
                    return;
                }
            }
            throw ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
        }
        if (i11 == 25152) {
            i(i11);
            c cVar3 = this.f69386u;
            if (cVar3.f69400h) {
                if (cVar3.f69402j == null) {
                    throw ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
                }
                cVar3.f69404l = new DrmInitData(new DrmInitData.SchemeData(com.google.android.exoplayer2.l.f25186a, MimeTypes.VIDEO_WEBM, this.f69386u.f69402j.f63391b));
                return;
            }
            return;
        }
        if (i11 == 28032) {
            i(i11);
            c cVar4 = this.f69386u;
            if (cVar4.f69400h && cVar4.f69401i != null) {
                throw ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
            }
            return;
        }
        if (i11 == 357149030) {
            if (this.f69383r == C.TIME_UNSET) {
                this.f69383r = 1000000L;
            }
            long j13 = this.f69384s;
            if (j13 != C.TIME_UNSET) {
                this.f69385t = D(j13);
                return;
            }
            return;
        }
        if (i11 == 374648427) {
            if (this.f69368c.size() == 0) {
                throw ParserException.createForMalformedContainer("No valid tracks were found", null);
            }
            this.f69367b0.endTracks();
        } else {
            if (i11 != 475249515) {
                return;
            }
            if (!this.f69387v) {
                this.f69367b0.d(l(this.C, this.D));
                this.f69387v = true;
            }
            this.C = null;
            this.D = null;
        }
    }

    protected void q(int i11, double d11) {
        if (i11 == 181) {
            s(i11).Q = (int) d11;
        }
        if (i11 == 17545) {
            this.f69384s = (long) d11;
            return;
        }
        switch (i11) {
            case 21969:
                s(i11).D = (float) d11;
                break;
            case 21970:
                s(i11).E = (float) d11;
                break;
            case 21971:
                s(i11).F = (float) d11;
                break;
            case 21972:
                s(i11).G = (float) d11;
                break;
            case 21973:
                s(i11).H = (float) d11;
                break;
            case 21974:
                s(i11).I = (float) d11;
                break;
            case 21975:
                s(i11).J = (float) d11;
                break;
            case 21976:
                s(i11).K = (float) d11;
                break;
            case 21977:
                s(i11).L = (float) d11;
                break;
            case 21978:
                s(i11).M = (float) d11;
                break;
            default:
                switch (i11) {
                    case 30323:
                        s(i11).f69411s = (float) d11;
                        break;
                    case 30324:
                        s(i11).f69412t = (float) d11;
                        break;
                    case 30325:
                        s(i11).f69413u = (float) d11;
                        break;
                }
                break;
        }
    }

    @Override // g9.l
    public final void release() {
    }

    protected c s(int i11) throws ParserException {
        i(i11);
        return this.f69386u;
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        this.B = C.TIME_UNSET;
        this.G = 0;
        this.f69364a.reset();
        this.f69366b.e();
        C();
        for (int i11 = 0; i11 < this.f69368c.size(); i11++) {
            ((c) this.f69368c.valueAt(i11)).n();
        }
    }

    protected int t(int i11) {
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

    protected void u(c cVar, m mVar, int i11) {
        if (cVar.f69399g != 1685485123 && cVar.f69399g != 1685480259) {
            mVar.skipFully(i11);
            return;
        }
        byte[] bArr = new byte[i11];
        cVar.N = bArr;
        mVar.readFully(bArr, 0, i11);
    }

    protected void v(c cVar, int i11, m mVar, int i12) {
        if (i11 != 4 || !"V_VP9".equals(cVar.f69394b)) {
            mVar.skipFully(i12);
        } else {
            this.f69379n.L(i12);
            mVar.readFully(this.f69379n.d(), 0, i12);
        }
    }

    protected void w(int i11, long j11) throws ParserException {
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
                s(i11).f69396d = (int) j11;
                return;
            case PRIVACY_URL_ERROR_VALUE:
                s(i11).V = j11 == 1;
                return;
            case 155:
                this.I = D(j11);
                return;
            case 159:
                s(i11).O = (int) j11;
                return;
            case 176:
                s(i11).f69405m = (int) j11;
                return;
            case 179:
                h(i11);
                this.C.a(D(j11));
                return;
            case 186:
                s(i11).f69406n = (int) j11;
                return;
            case AD_RESPONSE_EMPTY_VALUE:
                s(i11).f69395c = (int) j11;
                return;
            case 231:
                this.B = D(j11);
                return;
            case 238:
                this.P = (int) j11;
                return;
            case 241:
                if (this.E) {
                    return;
                }
                h(i11);
                this.D.a(j11);
                this.E = true;
                return;
            case 251:
                this.Q = true;
                return;
            case 16871:
                s(i11).f69399g = (int) j11;
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
                this.f69389x = j11 + this.f69382q;
                return;
            case 21432:
                int i12 = (int) j11;
                i(i11);
                if (i12 == 0) {
                    this.f69386u.f69415w = 0;
                    return;
                }
                if (i12 == 1) {
                    this.f69386u.f69415w = 2;
                    return;
                } else if (i12 == 3) {
                    this.f69386u.f69415w = 1;
                    return;
                } else {
                    if (i12 != 15) {
                        return;
                    }
                    this.f69386u.f69415w = 3;
                    return;
                }
            case 21680:
                s(i11).f69407o = (int) j11;
                return;
            case 21682:
                s(i11).f69409q = (int) j11;
                return;
            case 21690:
                s(i11).f69408p = (int) j11;
                return;
            case 21930:
                s(i11).U = j11 == 1;
                return;
            case 21998:
                s(i11).f69398f = (int) j11;
                return;
            case 22186:
                s(i11).R = j11;
                return;
            case 22203:
                s(i11).S = j11;
                return;
            case 25188:
                s(i11).P = (int) j11;
                return;
            case 30114:
                this.R = j11;
                return;
            case 30321:
                i(i11);
                int i13 = (int) j11;
                if (i13 == 0) {
                    this.f69386u.f69410r = 0;
                    return;
                }
                if (i13 == 1) {
                    this.f69386u.f69410r = 1;
                    return;
                } else if (i13 == 2) {
                    this.f69386u.f69410r = 2;
                    return;
                } else {
                    if (i13 != 3) {
                        return;
                    }
                    this.f69386u.f69410r = 3;
                    return;
                }
            case 2352003:
                s(i11).f69397e = (int) j11;
                return;
            case 2807729:
                this.f69383r = j11;
                return;
            default:
                switch (i11) {
                    case 21945:
                        i(i11);
                        int i14 = (int) j11;
                        if (i14 == 1) {
                            this.f69386u.A = 2;
                            return;
                        } else {
                            if (i14 != 2) {
                                return;
                            }
                            this.f69386u.A = 1;
                            return;
                        }
                    case 21946:
                        i(i11);
                        int iC = com.google.android.exoplayer2.video.c.c((int) j11);
                        if (iC != -1) {
                            this.f69386u.f69418z = iC;
                            return;
                        }
                        return;
                    case 21947:
                        i(i11);
                        this.f69386u.f69416x = true;
                        int iB = com.google.android.exoplayer2.video.c.b((int) j11);
                        if (iB != -1) {
                            this.f69386u.f69417y = iB;
                            return;
                        }
                        return;
                    case 21948:
                        s(i11).B = (int) j11;
                        return;
                    case 21949:
                        s(i11).C = (int) j11;
                        return;
                    default:
                        return;
                }
        }
    }

    protected boolean y(int i11) {
        return i11 == 357149030 || i11 == 524531317 || i11 == 475249515 || i11 == 374648427;
    }
}
