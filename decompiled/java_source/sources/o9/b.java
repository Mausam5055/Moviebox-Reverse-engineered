package o9;

import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.c0;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.w;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g9.x;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f70752a = p0.n0("OpusHead");

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f70753a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f70754b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f70755c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f70756d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f70757e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final d0 f70758f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final d0 f70759g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f70760h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f70761i;

        public a(d0 d0Var, d0 d0Var2, boolean z10) throws ParserException {
            this.f70759g = d0Var;
            this.f70758f = d0Var2;
            this.f70757e = z10;
            d0Var2.P(12);
            this.f70753a = d0Var2.H();
            d0Var.P(12);
            this.f70761i = d0Var.H();
            g9.o.a(d0Var.n() == 1, "first_chunk must be 1");
            this.f70754b = -1;
        }

        public boolean a() {
            int i11 = this.f70754b + 1;
            this.f70754b = i11;
            if (i11 == this.f70753a) {
                return false;
            }
            this.f70756d = this.f70757e ? this.f70758f.I() : this.f70758f.F();
            if (this.f70754b == this.f70760h) {
                this.f70755c = this.f70759g.H();
                this.f70759g.Q(4);
                int i12 = this.f70761i - 1;
                this.f70761i = i12;
                this.f70760h = i12 > 0 ? this.f70759g.H() - 1 : -1;
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: o9.b$b, reason: collision with other inner class name */
    private static final class C0859b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f70762a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final byte[] f70763b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f70764c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final long f70765d;

        public C0859b(String str, byte[] bArr, long j11, long j12) {
            this.f70762a = str;
            this.f70763b = bArr;
            this.f70764c = j11;
            this.f70765d = j12;
        }
    }

    private interface c {
        int a();

        int getSampleCount();

        int readNextSampleSize();
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final p[] f70766a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public o1 f70767b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f70768c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f70769d = 0;

        public d(int i11) {
            this.f70766a = new p[i11];
        }
    }

    static final class e implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f70770a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f70771b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d0 f70772c;

        public e(o9.a.b bVar, o1 o1Var) {
            d0 d0Var = bVar.f70751b;
            this.f70772c = d0Var;
            d0Var.P(12);
            int iH = d0Var.H();
            if (MimeTypes.AUDIO_RAW.equals(o1Var.f25496l)) {
                int iE0 = p0.e0(o1Var.A, o1Var.f25509y);
                if (iH == 0 || iH % iE0 != 0) {
                    s.i("AtomParsers", "Audio sample size mismatch. stsd sample size: " + iE0 + ", stsz sample size: " + iH);
                    iH = iE0;
                }
            }
            this.f70770a = iH == 0 ? -1 : iH;
            this.f70771b = d0Var.H();
        }

        @Override // o9.b.c
        public int a() {
            return this.f70770a;
        }

        @Override // o9.b.c
        public int getSampleCount() {
            return this.f70771b;
        }

        @Override // o9.b.c
        public int readNextSampleSize() {
            int i11 = this.f70770a;
            return i11 == -1 ? this.f70772c.H() : i11;
        }
    }

    static final class f implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d0 f70773a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f70774b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f70775c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f70776d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f70777e;

        public f(o9.a.b bVar) {
            d0 d0Var = bVar.f70751b;
            this.f70773a = d0Var;
            d0Var.P(12);
            this.f70775c = d0Var.H() & 255;
            this.f70774b = d0Var.H();
        }

        @Override // o9.b.c
        public int a() {
            return -1;
        }

        @Override // o9.b.c
        public int getSampleCount() {
            return this.f70774b;
        }

        @Override // o9.b.c
        public int readNextSampleSize() {
            int i11 = this.f70775c;
            if (i11 == 8) {
                return this.f70773a.D();
            }
            if (i11 == 16) {
                return this.f70773a.J();
            }
            int i12 = this.f70776d;
            this.f70776d = i12 + 1;
            if (i12 % 2 != 0) {
                return this.f70777e & 15;
            }
            int iD = this.f70773a.D();
            this.f70777e = iD;
            return (iD & 240) >> 4;
        }
    }

    private static final class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f70778a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f70779b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f70780c;

        public g(int i11, long j11, int i12) {
            this.f70778a = i11;
            this.f70779b = j11;
            this.f70780c = i12;
        }
    }

    public static List A(o9.a.C0858a c0858a, x xVar, long j11, DrmInitData drmInitData, boolean z10, boolean z11, com.google.common.base.f fVar) {
        o oVar;
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < c0858a.f70750d.size(); i11++) {
            o9.a.C0858a c0858a2 = (o9.a.C0858a) c0858a.f70750d.get(i11);
            if (c0858a2.f70747a == 1953653099 && (oVar = (o) fVar.apply(z(c0858a2, (o9.a.b) com.google.android.exoplayer2.util.a.e(c0858a.g(1836476516)), j11, drmInitData, z10, z11))) != null) {
                arrayList.add(v(oVar, (o9.a.C0858a) com.google.android.exoplayer2.util.a.e(((o9.a.C0858a) com.google.android.exoplayer2.util.a.e(((o9.a.C0858a) com.google.android.exoplayer2.util.a.e(c0858a2.f(1835297121))).f(1835626086))).f(1937007212)), xVar));
            }
        }
        return arrayList;
    }

    public static Pair B(o9.a.b bVar) {
        d0 d0Var = bVar.f70751b;
        d0Var.P(8);
        Metadata metadataC = null;
        Metadata metadataU = null;
        while (d0Var.a() >= 8) {
            int iE = d0Var.e();
            int iN = d0Var.n();
            int iN2 = d0Var.n();
            if (iN2 == 1835365473) {
                d0Var.P(iE);
                metadataC = C(d0Var, iE + iN);
            } else if (iN2 == 1936553057) {
                d0Var.P(iE);
                metadataU = u(d0Var, iE + iN);
            }
            d0Var.P(iE + iN);
        }
        return Pair.create(metadataC, metadataU);
    }

    private static Metadata C(d0 d0Var, int i11) {
        d0Var.Q(8);
        e(d0Var);
        while (d0Var.e() < i11) {
            int iE = d0Var.e();
            int iN = d0Var.n();
            if (d0Var.n() == 1768715124) {
                d0Var.P(iE);
                return l(d0Var, iE + iN);
            }
            d0Var.P(iE + iN);
        }
        return null;
    }

    private static void D(d0 d0Var, int i11, int i12, int i13, int i14, int i15, DrmInitData drmInitData, d dVar, int i16) throws ParserException {
        String str;
        DrmInitData drmInitData2;
        byte[] bArr;
        float f11;
        List list;
        String str2;
        int i17 = i12;
        int i18 = i13;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        d dVar2 = dVar;
        d0Var.P(i17 + 16);
        d0Var.Q(16);
        int iJ = d0Var.J();
        int iJ2 = d0Var.J();
        d0Var.Q(50);
        int iE = d0Var.e();
        int iIntValue = i11;
        if (iIntValue == 1701733238) {
            Pair pairS = s(d0Var, i17, i18);
            if (pairS != null) {
                iIntValue = ((Integer) pairS.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((p) pairS.second).f70888b);
                dVar2.f70766a[i16] = (p) pairS.second;
            }
            d0Var.P(iE);
        }
        String str3 = MimeTypes.VIDEO_H263;
        if (iIntValue == 1831958048) {
            str = MimeTypes.VIDEO_MPEG;
        } else {
            str = iIntValue == 1211250227 ? MimeTypes.VIDEO_H263 : null;
        }
        float fQ = 1.0f;
        byte[] bArrR = null;
        String str4 = null;
        List listOf = null;
        int i19 = -1;
        int iB = -1;
        int i20 = -1;
        int iC = -1;
        ByteBuffer byteBufferA = null;
        C0859b c0859bI = null;
        boolean z10 = false;
        while (true) {
            if (iE - i17 >= i18) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                break;
            }
            d0Var.P(iE);
            int iE2 = d0Var.e();
            String str5 = str3;
            int iN = d0Var.n();
            if (iN == 0) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                if (d0Var.e() - i17 == i18) {
                    break;
                }
            } else {
                drmInitData2 = drmInitDataCopyWithSchemeType;
            }
            g9.o.a(iN > 0, "childAtomSize must be positive");
            int iN2 = d0Var.n();
            if (iN2 == 1635148611) {
                g9.o.a(str == null, null);
                d0Var.P(iE2 + 8);
                com.google.android.exoplayer2.video.a aVarB = com.google.android.exoplayer2.video.a.b(d0Var);
                listOf = aVarB.f27819a;
                dVar2.f70768c = aVarB.f27820b;
                if (!z10) {
                    fQ = aVarB.f27823e;
                }
                str4 = aVarB.f27824f;
                str2 = MimeTypes.VIDEO_H264;
            } else if (iN2 == 1752589123) {
                g9.o.a(str == null, null);
                d0Var.P(iE2 + 8);
                com.google.android.exoplayer2.video.f fVarA = com.google.android.exoplayer2.video.f.a(d0Var);
                listOf = fVarA.f27848a;
                dVar2.f70768c = fVarA.f27849b;
                if (!z10) {
                    fQ = fVarA.f27852e;
                }
                str4 = fVarA.f27853f;
                str2 = MimeTypes.VIDEO_H265;
            } else {
                if (iN2 == 1685480259 || iN2 == 1685485123) {
                    iJ2 = iJ2;
                    iIntValue = iIntValue;
                    bArr = bArrR;
                    f11 = fQ;
                    list = listOf;
                    com.google.android.exoplayer2.video.d dVarA = com.google.android.exoplayer2.video.d.a(d0Var);
                    if (dVarA != null) {
                        str4 = dVarA.f27833c;
                        str = "video/dolby-vision";
                    }
                } else if (iN2 == 1987076931) {
                    g9.o.a(str == null, null);
                    str2 = iIntValue == 1987063864 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                } else {
                    if (iN2 == 1635135811) {
                        g9.o.a(str == null, null);
                        str2 = "video/av01";
                    } else if (iN2 == 1668050025) {
                        if (byteBufferA == null) {
                            byteBufferA = a();
                        }
                        ByteBuffer byteBuffer = byteBufferA;
                        byteBuffer.position(21);
                        byteBuffer.putShort(d0Var.z());
                        byteBuffer.putShort(d0Var.z());
                        byteBufferA = byteBuffer;
                    } else if (iN2 == 1835295606) {
                        if (byteBufferA == null) {
                            byteBufferA = a();
                        }
                        ByteBuffer byteBuffer2 = byteBufferA;
                        short sZ = d0Var.z();
                        short sZ2 = d0Var.z();
                        short sZ3 = d0Var.z();
                        short sZ4 = d0Var.z();
                        short sZ5 = d0Var.z();
                        List list2 = listOf;
                        short sZ6 = d0Var.z();
                        byte[] bArr2 = bArrR;
                        short sZ7 = d0Var.z();
                        float f12 = fQ;
                        short sZ8 = d0Var.z();
                        long jF = d0Var.F();
                        long jF2 = d0Var.F();
                        byteBuffer2.position(1);
                        byteBuffer2.putShort(sZ5);
                        byteBuffer2.putShort(sZ6);
                        byteBuffer2.putShort(sZ);
                        byteBuffer2.putShort(sZ2);
                        byteBuffer2.putShort(sZ3);
                        byteBuffer2.putShort(sZ4);
                        byteBuffer2.putShort(sZ7);
                        byteBuffer2.putShort(sZ8);
                        byteBuffer2.putShort((short) (jF / 10000));
                        byteBuffer2.putShort((short) (jF2 / 10000));
                        byteBufferA = byteBuffer2;
                        listOf = list2;
                        bArrR = bArr2;
                        fQ = f12;
                    } else {
                        iJ2 = iJ2;
                        iIntValue = iIntValue;
                        bArr = bArrR;
                        f11 = fQ;
                        list = listOf;
                        if (iN2 == 1681012275) {
                            g9.o.a(str == null, null);
                            str = str5;
                        } else if (iN2 == 1702061171) {
                            g9.o.a(str == null, null);
                            c0859bI = i(d0Var, iE2);
                            String str6 = c0859bI.f70762a;
                            byte[] bArr3 = c0859bI.f70763b;
                            listOf = bArr3 != null ? ImmutableList.of(bArr3) : list;
                            str = str6;
                            bArrR = bArr;
                            fQ = f11;
                        } else if (iN2 == 1885434736) {
                            fQ = q(d0Var, iE2);
                            listOf = list;
                            bArrR = bArr;
                            z10 = true;
                        } else {
                            if (iN2 == 1937126244) {
                                bArrR = r(d0Var, iE2, iN);
                                listOf = list;
                            } else if (iN2 == 1936995172) {
                                int iD = d0Var.D();
                                d0Var.Q(3);
                                if (iD == 0) {
                                    int iD2 = d0Var.D();
                                    if (iD2 == 0) {
                                        i19 = 0;
                                    } else if (iD2 == 1) {
                                        i19 = 1;
                                    } else if (iD2 == 2) {
                                        i19 = 2;
                                    } else if (iD2 == 3) {
                                        i19 = 3;
                                    }
                                }
                            } else if (iN2 == 1668246642) {
                                int iN3 = d0Var.n();
                                if (iN3 == 1852009592 || iN3 == 1852009571) {
                                    int iJ3 = d0Var.J();
                                    int iJ4 = d0Var.J();
                                    d0Var.Q(2);
                                    boolean z11 = iN == 19 && (d0Var.D() & 128) != 0;
                                    iB = com.google.android.exoplayer2.video.c.b(iJ3);
                                    i20 = z11 ? 1 : 2;
                                    iC = com.google.android.exoplayer2.video.c.c(iJ4);
                                } else {
                                    s.i("AtomParsers", "Unsupported color type: " + o9.a.a(iN3));
                                }
                            }
                            fQ = f11;
                        }
                    }
                    iE += iN;
                    i17 = i12;
                    i18 = i13;
                    dVar2 = dVar;
                    str3 = str5;
                    drmInitDataCopyWithSchemeType = drmInitData2;
                    iIntValue = iIntValue;
                    iJ2 = iJ2;
                }
                listOf = list;
                bArrR = bArr;
                fQ = f11;
                iE += iN;
                i17 = i12;
                i18 = i13;
                dVar2 = dVar;
                str3 = str5;
                drmInitDataCopyWithSchemeType = drmInitData2;
                iIntValue = iIntValue;
                iJ2 = iJ2;
            }
            str = str2;
            iE += iN;
            i17 = i12;
            i18 = i13;
            dVar2 = dVar;
            str3 = str5;
            drmInitDataCopyWithSchemeType = drmInitData2;
            iIntValue = iIntValue;
            iJ2 = iJ2;
        }
        int i21 = iJ2;
        byte[] bArr4 = bArrR;
        float f13 = fQ;
        List list3 = listOf;
        if (str == null) {
            return;
        }
        o1.b bVarM = new o1.b().R(i14).e0(str).I(str4).j0(iJ).Q(i21).a0(f13).d0(i15).b0(bArr4).h0(i19).T(list3).M(drmInitData2);
        int i22 = iB;
        int i23 = i20;
        int i24 = iC;
        if (i22 != -1 || i23 != -1 || i24 != -1 || byteBufferA != null) {
            bVarM.J(new com.google.android.exoplayer2.video.c(i22, i23, i24, byteBufferA != null ? byteBufferA.array() : null));
        }
        if (c0859bI != null) {
            bVarM.G(Ints.n(c0859bI.f70764c)).Z(Ints.n(c0859bI.f70765d));
        }
        dVar.f70767b = bVarM.E();
    }

    private static ByteBuffer a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static boolean b(long[] jArr, long j11, long j12, long j13) {
        int length = jArr.length - 1;
        return jArr[0] <= j12 && j12 < jArr[p0.q(4, 0, length)] && jArr[p0.q(jArr.length - 4, 0, length)] < j13 && j13 <= j11;
    }

    private static int c(d0 d0Var, int i11, int i12, int i13) throws ParserException {
        int iE = d0Var.e();
        g9.o.a(iE >= i12, null);
        while (iE - i12 < i13) {
            d0Var.P(iE);
            int iN = d0Var.n();
            g9.o.a(iN > 0, "childAtomSize must be positive");
            if (d0Var.n() == i11) {
                return iE;
            }
            iE += iN;
        }
        return -1;
    }

    private static int d(int i11) {
        if (i11 == 1936684398) {
            return 1;
        }
        if (i11 == 1986618469) {
            return 2;
        }
        if (i11 == 1952807028 || i11 == 1935832172 || i11 == 1937072756 || i11 == 1668047728) {
            return 3;
        }
        return i11 == 1835365473 ? 5 : -1;
    }

    public static void e(d0 d0Var) {
        int iE = d0Var.e();
        d0Var.Q(4);
        if (d0Var.n() != 1751411826) {
            iE += 4;
        }
        d0Var.P(iE);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0166  */
    /* JADX WARN: Code duplicated, block: B:102:0x016f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0171  */
    /* JADX WARN: Code duplicated, block: B:106:0x0180  */
    /* JADX WARN: Code duplicated, block: B:110:0x019c  */
    /* JADX WARN: Code duplicated, block: B:115:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:147:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:149:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:151:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:153:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:155:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:171:0x0303 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x0303 A[SYNTHETIC] */
    private static void f(d0 d0Var, int i11, int i12, int i13, int i14, String str, boolean z10, DrmInitData drmInitData, d dVar, int i15) throws ParserException {
        int iJ;
        int iE;
        int iN;
        int iH;
        String str2;
        String str3;
        int i16;
        String str4;
        C0859b c0859bI;
        String str5;
        List listOf;
        int iN2;
        boolean z11;
        int iN3;
        char c11;
        int iC;
        byte[] bArr;
        int i17 = i12;
        int i18 = i13;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        d0Var.P(i17 + 16);
        if (z10) {
            iJ = d0Var.J();
            d0Var.Q(6);
        } else {
            d0Var.Q(8);
            iJ = 0;
        }
        if (iJ == 0 || iJ == 1) {
            int iJ2 = d0Var.J();
            d0Var.Q(6);
            iE = d0Var.E();
            d0Var.P(d0Var.e() - 4);
            iN = d0Var.n();
            if (iJ == 1) {
                d0Var.Q(16);
            }
            iH = iJ2;
        } else {
            if (iJ != 2) {
                return;
            }
            d0Var.Q(16);
            iE = (int) Math.round(d0Var.l());
            iH = d0Var.H();
            d0Var.Q(20);
            iN = 0;
        }
        int iE2 = d0Var.e();
        int iIntValue = i11;
        if (iIntValue == 1701733217) {
            Pair pairS = s(d0Var, i17, i18);
            if (pairS != null) {
                iIntValue = ((Integer) pairS.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((p) pairS.second).f70888b);
                dVar.f70766a[i15] = (p) pairS.second;
            }
            d0Var.P(iE2);
        }
        if (iIntValue == 1633889587) {
            str2 = MimeTypes.AUDIO_AC3;
        } else if (iIntValue == 1700998451) {
            str2 = MimeTypes.AUDIO_E_AC3;
        } else if (iIntValue == 1633889588) {
            str2 = "audio/ac4";
        } else if (iIntValue == 1685353315) {
            str2 = MimeTypes.AUDIO_DTS;
        } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
            str2 = MimeTypes.AUDIO_DTS_HD;
        } else if (iIntValue == 1685353317) {
            str2 = MimeTypes.AUDIO_DTS_EXPRESS;
        } else if (iIntValue == 1685353336) {
            str2 = "audio/vnd.dts.uhd;profile=p2";
        } else if (iIntValue == 1935764850) {
            str2 = MimeTypes.AUDIO_AMR_NB;
        } else {
            if (iIntValue != 1935767394) {
                str3 = MimeTypes.AUDIO_RAW;
                if (iIntValue == 1819304813 || iIntValue == 1936684916) {
                    i16 = 2;
                } else if (iIntValue == 1953984371) {
                    i16 = ASTNode.DEOP;
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    str2 = MimeTypes.AUDIO_MPEG;
                } else if (iIntValue == 1835557169) {
                    str2 = "audio/mha1";
                } else if (iIntValue == 1835560241) {
                    str2 = "audio/mhm1";
                } else if (iIntValue == 1634492771) {
                    str2 = MimeTypes.AUDIO_ALAC;
                } else if (iIntValue == 1634492791) {
                    str2 = MimeTypes.AUDIO_ALAW;
                } else if (iIntValue == 1970037111) {
                    str2 = MimeTypes.AUDIO_MLAW;
                } else if (iIntValue == 1332770163) {
                    str2 = MimeTypes.AUDIO_OPUS;
                } else if (iIntValue == 1716281667) {
                    str2 = MimeTypes.AUDIO_FLAC;
                } else if (iIntValue == 1835823201) {
                    str2 = MimeTypes.AUDIO_TRUEHD;
                } else {
                    i16 = -1;
                    str3 = null;
                }
                str4 = str3;
                c0859bI = null;
                str5 = null;
                listOf = null;
                while (iE2 - i17 < i18) {
                    d0Var.P(iE2);
                    iN2 = d0Var.n();
                    if (iN2 > 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    g9.o.a(z11, "childAtomSize must be positive");
                    iN3 = d0Var.n();
                    if (iN3 == 1835557187) {
                        int i19 = iN2 - 13;
                        byte[] bArr2 = new byte[i19];
                        d0Var.P(iE2 + 13);
                        d0Var.j(bArr2, 0, i19);
                        listOf = ImmutableList.of(bArr2);
                    } else {
                        if (iN3 != 1702061171 || (z10 && iN3 == 2002876005)) {
                            c11 = 24931;
                            if (iN3 == 1702061171) {
                                iC = iE2;
                            } else {
                                iC = c(d0Var, 1702061171, iE2, iN2);
                            }
                            if (iC != -1) {
                                c0859bI = i(d0Var, iC);
                                str4 = c0859bI.f70762a;
                                bArr = c0859bI.f70763b;
                                if (bArr != null) {
                                    if (MimeTypes.AUDIO_AAC.equals(str4)) {
                                        com.google.android.exoplayer2.audio.a.b bVarF = com.google.android.exoplayer2.audio.a.f(bArr);
                                        iE = bVarF.f24598a;
                                        iH = bVarF.f24599b;
                                        str5 = bVarF.f24600c;
                                    }
                                    listOf = ImmutableList.of(bArr);
                                }
                            }
                        } else {
                            if (iN3 == 1684103987) {
                                d0Var.P(iE2 + 8);
                                dVar.f70767b = com.google.android.exoplayer2.audio.b.c(d0Var, Integer.toString(i14), str, drmInitDataCopyWithSchemeType);
                            } else if (iN3 == 1684366131) {
                                d0Var.P(iE2 + 8);
                                dVar.f70767b = com.google.android.exoplayer2.audio.b.g(d0Var, Integer.toString(i14), str, drmInitDataCopyWithSchemeType);
                            } else if (iN3 == 1684103988) {
                                d0Var.P(iE2 + 8);
                                dVar.f70767b = com.google.android.exoplayer2.audio.c.b(d0Var, Integer.toString(i14), str, drmInitDataCopyWithSchemeType);
                            } else if (iN3 == 1684892784) {
                                if (iN <= 0) {
                                    throw ParserException.createForMalformedContainer("Invalid sample rate for Dolby TrueHD MLP stream: " + iN, null);
                                }
                                iE = iN;
                                iH = 2;
                                c11 = 24931;
                            } else if (iN3 == 1684305011) {
                                dVar.f70767b = new o1.b().R(i14).e0(str4).H(iH).f0(iE).M(drmInitDataCopyWithSchemeType).V(str).E();
                            } else if (iN3 == 1682927731) {
                                int i20 = iN2 - 8;
                                byte[] bArr3 = f70752a;
                                byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + i20);
                                d0Var.P(iE2 + 8);
                                d0Var.j(bArrCopyOf, bArr3.length, i20);
                                listOf = c0.a(bArrCopyOf);
                            } else if (iN3 == 1684425825) {
                                byte[] bArr4 = new byte[iN2 - 8];
                                bArr4[0] = 102;
                                bArr4[1] = 76;
                                bArr4[2] = 97;
                                bArr4[3] = 67;
                                d0Var.P(iE2 + 12);
                                d0Var.j(bArr4, 4, iN2 - 12);
                                listOf = ImmutableList.of(bArr4);
                                c11 = 24931;
                            } else if (iN3 == 1634492771) {
                                int i21 = iN2 - 12;
                                byte[] bArr5 = new byte[i21];
                                d0Var.P(iE2 + 12);
                                d0Var.j(bArr5, 0, i21);
                                Pair pairG = com.google.android.exoplayer2.util.f.g(bArr5);
                                int iIntValue2 = ((Integer) pairG.first).intValue();
                                int iIntValue3 = ((Integer) pairG.second).intValue();
                                listOf = ImmutableList.of(bArr5);
                                c11 = 24931;
                                iH = iIntValue3;
                                iE = iIntValue2;
                            } else {
                                c11 = 24931;
                            }
                            c11 = 24931;
                        }
                        iE2 += iN2;
                        i17 = i12;
                        i18 = i13;
                    }
                    c11 = 24931;
                    iE2 += iN2;
                    i17 = i12;
                    i18 = i13;
                }
                if (dVar.f70767b == null || str4 == null) {
                }
                o1.b bVarV = new o1.b().R(i14).e0(str4).I(str5).H(iH).f0(iE).Y(i16).T(listOf).M(drmInitDataCopyWithSchemeType).V(str);
                if (c0859bI != null) {
                    bVarV.G(Ints.n(c0859bI.f70764c)).Z(Ints.n(c0859bI.f70765d));
                }
                dVar.f70767b = bVarV.E();
                return;
            }
            str2 = MimeTypes.AUDIO_AMR_WB;
        }
        str3 = str2;
        i16 = -1;
        str4 = str3;
        c0859bI = null;
        str5 = null;
        listOf = null;
        while (iE2 - i17 < i18) {
            d0Var.P(iE2);
            iN2 = d0Var.n();
            if (iN2 > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            g9.o.a(z11, "childAtomSize must be positive");
            iN3 = d0Var.n();
            if (iN3 == 1835557187) {
                int i110 = iN2 - 13;
                byte[] bArr6 = new byte[i110];
                d0Var.P(iE2 + 13);
                d0Var.j(bArr6, 0, i110);
                listOf = ImmutableList.of(bArr6);
            } else {
                if (iN3 != 1702061171) {
                    c11 = 24931;
                    if (iN3 == 1702061171) {
                        iC = iE2;
                    } else {
                        iC = c(d0Var, 1702061171, iE2, iN2);
                    }
                    if (iC != -1) {
                        c0859bI = i(d0Var, iC);
                        str4 = c0859bI.f70762a;
                        bArr = c0859bI.f70763b;
                        if (bArr != null) {
                            if (MimeTypes.AUDIO_AAC.equals(str4)) {
                                com.google.android.exoplayer2.audio.a.b bVarF2 = com.google.android.exoplayer2.audio.a.f(bArr);
                                iE = bVarF2.f24598a;
                                iH = bVarF2.f24599b;
                                str5 = bVarF2.f24600c;
                            }
                            listOf = ImmutableList.of(bArr);
                        }
                    }
                } else {
                    c11 = 24931;
                    if (iN3 == 1702061171) {
                        iC = iE2;
                    } else {
                        iC = c(d0Var, 1702061171, iE2, iN2);
                    }
                    if (iC != -1) {
                        c0859bI = i(d0Var, iC);
                        str4 = c0859bI.f70762a;
                        bArr = c0859bI.f70763b;
                        if (bArr != null) {
                            if (MimeTypes.AUDIO_AAC.equals(str4)) {
                                com.google.android.exoplayer2.audio.a.b bVarF3 = com.google.android.exoplayer2.audio.a.f(bArr);
                                iE = bVarF3.f24598a;
                                iH = bVarF3.f24599b;
                                str5 = bVarF3.f24600c;
                            }
                            listOf = ImmutableList.of(bArr);
                        }
                    }
                }
                iE2 += iN2;
                i17 = i12;
                i18 = i13;
            }
            c11 = 24931;
            iE2 += iN2;
            i17 = i12;
            i18 = i13;
        }
        if (dVar.f70767b == null) {
        }
    }

    static Pair g(d0 d0Var, int i11, int i12) throws ParserException {
        int i13 = i11 + 8;
        int i14 = -1;
        int i15 = 0;
        String strA = null;
        Integer numValueOf = null;
        while (i13 - i11 < i12) {
            d0Var.P(i13);
            int iN = d0Var.n();
            int iN2 = d0Var.n();
            if (iN2 == 1718775137) {
                numValueOf = Integer.valueOf(d0Var.n());
            } else if (iN2 == 1935894637) {
                d0Var.Q(4);
                strA = d0Var.A(4);
            } else if (iN2 == 1935894633) {
                i14 = i13;
                i15 = iN;
            }
            i13 += iN;
        }
        if (!C.CENC_TYPE_cenc.equals(strA) && !C.CENC_TYPE_cbc1.equals(strA) && !C.CENC_TYPE_cens.equals(strA) && !C.CENC_TYPE_cbcs.equals(strA)) {
            return null;
        }
        g9.o.a(numValueOf != null, "frma atom is mandatory");
        g9.o.a(i14 != -1, "schi atom is mandatory");
        p pVarT = t(d0Var, i14, i15, strA);
        g9.o.a(pVarT != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (p) p0.j(pVarT));
    }

    private static Pair h(o9.a.C0858a c0858a) {
        o9.a.b bVarG = c0858a.g(1701606260);
        if (bVarG == null) {
            return null;
        }
        d0 d0Var = bVarG.f70751b;
        d0Var.P(8);
        int iC = o9.a.c(d0Var.n());
        int iH = d0Var.H();
        long[] jArr = new long[iH];
        long[] jArr2 = new long[iH];
        for (int i11 = 0; i11 < iH; i11++) {
            jArr[i11] = iC == 1 ? d0Var.I() : d0Var.F();
            jArr2[i11] = iC == 1 ? d0Var.w() : d0Var.n();
            if (d0Var.z() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            d0Var.Q(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static C0859b i(d0 d0Var, int i11) {
        d0Var.P(i11 + 12);
        d0Var.Q(1);
        j(d0Var);
        d0Var.Q(2);
        int iD = d0Var.D();
        if ((iD & 128) != 0) {
            d0Var.Q(2);
        }
        if ((iD & 64) != 0) {
            d0Var.Q(d0Var.D());
        }
        if ((iD & 32) != 0) {
            d0Var.Q(2);
        }
        d0Var.Q(1);
        j(d0Var);
        String strH = w.h(d0Var.D());
        if (MimeTypes.AUDIO_MPEG.equals(strH) || MimeTypes.AUDIO_DTS.equals(strH) || MimeTypes.AUDIO_DTS_HD.equals(strH)) {
            return new C0859b(strH, null, -1L, -1L);
        }
        d0Var.Q(4);
        long jF = d0Var.F();
        long jF2 = d0Var.F();
        d0Var.Q(1);
        int iJ = j(d0Var);
        byte[] bArr = new byte[iJ];
        d0Var.j(bArr, 0, iJ);
        return new C0859b(strH, bArr, jF2 > 0 ? jF2 : -1L, jF > 0 ? jF : -1L);
    }

    private static int j(d0 d0Var) {
        int iD = d0Var.D();
        int i11 = iD & 127;
        while ((iD & 128) == 128) {
            iD = d0Var.D();
            i11 = (i11 << 7) | (iD & 127);
        }
        return i11;
    }

    private static int k(d0 d0Var) {
        d0Var.P(16);
        return d0Var.n();
    }

    private static Metadata l(d0 d0Var, int i11) {
        d0Var.Q(8);
        ArrayList arrayList = new ArrayList();
        while (d0Var.e() < i11) {
            Metadata.Entry entryC = h.c(d0Var);
            if (entryC != null) {
                arrayList.add(entryC);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair m(d0 d0Var) {
        d0Var.P(8);
        int iC = o9.a.c(d0Var.n());
        d0Var.Q(iC == 0 ? 8 : 16);
        long jF = d0Var.F();
        d0Var.Q(iC == 0 ? 4 : 8);
        int iJ = d0Var.J();
        return Pair.create(Long.valueOf(jF), "" + ((char) (((iJ >> 10) & 31) + 96)) + ((char) (((iJ >> 5) & 31) + 96)) + ((char) ((iJ & 31) + 96)));
    }

    public static Metadata n(o9.a.C0858a c0858a) {
        o9.a.b bVarG = c0858a.g(1751411826);
        o9.a.b bVarG2 = c0858a.g(1801812339);
        o9.a.b bVarG3 = c0858a.g(1768715124);
        if (bVarG == null || bVarG2 == null || bVarG3 == null || k(bVarG.f70751b) != 1835299937) {
            return null;
        }
        d0 d0Var = bVarG2.f70751b;
        d0Var.P(12);
        int iN = d0Var.n();
        String[] strArr = new String[iN];
        for (int i11 = 0; i11 < iN; i11++) {
            int iN2 = d0Var.n();
            d0Var.Q(4);
            strArr[i11] = d0Var.A(iN2 - 8);
        }
        d0 d0Var2 = bVarG3.f70751b;
        d0Var2.P(8);
        ArrayList arrayList = new ArrayList();
        while (d0Var2.a() > 8) {
            int iE = d0Var2.e();
            int iN3 = d0Var2.n();
            int iN4 = d0Var2.n() - 1;
            if (iN4 < 0 || iN4 >= iN) {
                s.i("AtomParsers", "Skipped metadata with unknown key index: " + iN4);
            } else {
                MdtaMetadataEntry mdtaMetadataEntryF = h.f(d0Var2, iE + iN3, strArr[iN4]);
                if (mdtaMetadataEntryF != null) {
                    arrayList.add(mdtaMetadataEntryF);
                }
            }
            d0Var2.P(iE + iN3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static void o(d0 d0Var, int i11, int i12, int i13, d dVar) {
        d0Var.P(i12 + 16);
        if (i11 == 1835365492) {
            d0Var.x();
            String strX = d0Var.x();
            if (strX != null) {
                dVar.f70767b = new o1.b().R(i13).e0(strX).E();
            }
        }
    }

    private static long p(d0 d0Var) {
        d0Var.P(8);
        d0Var.Q(o9.a.c(d0Var.n()) != 0 ? 16 : 8);
        return d0Var.F();
    }

    private static float q(d0 d0Var, int i11) {
        d0Var.P(i11 + 8);
        return d0Var.H() / d0Var.H();
    }

    private static byte[] r(d0 d0Var, int i11, int i12) {
        int i13 = i11 + 8;
        while (i13 - i11 < i12) {
            d0Var.P(i13);
            int iN = d0Var.n();
            if (d0Var.n() == 1886547818) {
                return Arrays.copyOfRange(d0Var.d(), i13, iN + i13);
            }
            i13 += iN;
        }
        return null;
    }

    private static Pair s(d0 d0Var, int i11, int i12) throws ParserException {
        Pair pairG;
        int iE = d0Var.e();
        while (iE - i11 < i12) {
            d0Var.P(iE);
            int iN = d0Var.n();
            g9.o.a(iN > 0, "childAtomSize must be positive");
            if (d0Var.n() == 1936289382 && (pairG = g(d0Var, iE, iN)) != null) {
                return pairG;
            }
            iE += iN;
        }
        return null;
    }

    private static p t(d0 d0Var, int i11, int i12, String str) {
        int i13;
        int i14;
        int i15 = i11 + 8;
        while (true) {
            byte[] bArr = null;
            if (i15 - i11 >= i12) {
                return null;
            }
            d0Var.P(i15);
            int iN = d0Var.n();
            if (d0Var.n() == 1952804451) {
                int iC = o9.a.c(d0Var.n());
                d0Var.Q(1);
                if (iC == 0) {
                    d0Var.Q(1);
                    i14 = 0;
                    i13 = 0;
                } else {
                    int iD = d0Var.D();
                    i13 = iD & 15;
                    i14 = (iD & 240) >> 4;
                }
                boolean z10 = d0Var.D() == 1;
                int iD2 = d0Var.D();
                byte[] bArr2 = new byte[16];
                d0Var.j(bArr2, 0, 16);
                if (z10 && iD2 == 0) {
                    int iD3 = d0Var.D();
                    bArr = new byte[iD3];
                    d0Var.j(bArr, 0, iD3);
                }
                return new p(z10, str, iD2, bArr2, i14, i13, bArr);
            }
            i15 += iN;
        }
    }

    private static Metadata u(d0 d0Var, int i11) {
        d0Var.Q(12);
        while (d0Var.e() < i11) {
            int iE = d0Var.e();
            int iN = d0Var.n();
            if (d0Var.n() == 1935766900) {
                if (iN < 14) {
                    return null;
                }
                d0Var.Q(5);
                int iD = d0Var.D();
                if (iD != 12 && iD != 13) {
                    return null;
                }
                float f11 = iD == 12 ? 240.0f : 120.0f;
                d0Var.Q(1);
                return new Metadata(new SmtaMetadataEntry(f11, d0Var.D()));
            }
            d0Var.P(iE + iN);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:150:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:151:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:155:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:157:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:165:0x0414  */
    /* JADX WARN: Code duplicated, block: B:166:0x0416  */
    /* JADX WARN: Code duplicated, block: B:168:0x041a  */
    /* JADX WARN: Code duplicated, block: B:173:0x0436  */
    /* JADX WARN: Code duplicated, block: B:176:0x043b  */
    /* JADX WARN: Code duplicated, block: B:177:0x043e  */
    /* JADX WARN: Code duplicated, block: B:179:0x0441  */
    /* JADX WARN: Code duplicated, block: B:180:0x0444  */
    /* JADX WARN: Code duplicated, block: B:182:0x0447  */
    /* JADX WARN: Code duplicated, block: B:183:0x0449  */
    /* JADX WARN: Code duplicated, block: B:185:0x044d  */
    /* JADX WARN: Code duplicated, block: B:186:0x0450  */
    /* JADX WARN: Code duplicated, block: B:190:0x045f  */
    /* JADX WARN: Code duplicated, block: B:192:0x046d  */
    /* JADX WARN: Code duplicated, block: B:193:0x047d  */
    /* JADX WARN: Code duplicated, block: B:196:0x0485  */
    /* JADX WARN: Code duplicated, block: B:198:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:200:0x04be  */
    /* JADX WARN: Code duplicated, block: B:201:0x04c1  */
    /* JADX WARN: Code duplicated, block: B:211:0x042b A[EDGE_INSN: B:211:0x042b->B:170:0x042b BREAK  A[LOOP:2: B:153:0x03ca->B:169:0x0424], SYNTHETIC] */
    private static r v(o oVar, o9.a.C0858a c0858a, x xVar) throws ParserException {
        c fVar;
        boolean z10;
        int iH;
        int iH2;
        int iH3;
        int i11;
        int i12;
        int i13;
        boolean z11;
        int i14;
        o oVar2;
        int i15;
        long[] jArr;
        int[] iArr;
        int i16;
        long j11;
        long[] jArr2;
        int[] iArr2;
        int iN;
        int i17;
        int i18;
        int i19;
        long[] jArr3;
        boolean z12;
        int[] iArr3;
        int[] iArr4;
        long[] jArr4;
        int i20;
        boolean z13;
        int i21;
        int i22;
        long[] jArr5;
        long[] jArr6;
        int[] iArr5;
        int i23;
        boolean z14;
        long[] jArr7;
        int[] iArr6;
        int i24;
        int[] iArr7;
        long[] jArr8;
        int i25;
        int[] iArr8;
        long j12;
        int i26;
        long j13;
        int i27;
        int i28;
        int[] iArr9;
        int i29;
        int i30;
        int i31;
        long j14;
        boolean z15;
        int i32;
        int i33;
        int i34;
        boolean z16;
        o9.a.b bVarG = c0858a.g(1937011578);
        if (bVarG != null) {
            fVar = new e(bVarG, oVar.f70881f);
        } else {
            o9.a.b bVarG2 = c0858a.g(1937013298);
            if (bVarG2 == null) {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
            fVar = new f(bVarG2);
        }
        int sampleCount = fVar.getSampleCount();
        if (sampleCount == 0) {
            return new r(oVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        o9.a.b bVarG3 = c0858a.g(1937007471);
        if (bVarG3 == null) {
            bVarG3 = (o9.a.b) com.google.android.exoplayer2.util.a.e(c0858a.g(1668232756));
            z10 = true;
        } else {
            z10 = false;
        }
        d0 d0Var = bVarG3.f70751b;
        d0 d0Var2 = ((o9.a.b) com.google.android.exoplayer2.util.a.e(c0858a.g(1937011555))).f70751b;
        d0 d0Var3 = ((o9.a.b) com.google.android.exoplayer2.util.a.e(c0858a.g(1937011827))).f70751b;
        o9.a.b bVarG4 = c0858a.g(1937011571);
        d0 d0Var4 = bVarG4 != null ? bVarG4.f70751b : null;
        o9.a.b bVarG5 = c0858a.g(1668576371);
        d0 d0Var5 = bVarG5 != null ? bVarG5.f70751b : null;
        a aVar = new a(d0Var2, d0Var, z10);
        d0Var3.P(12);
        int iH4 = d0Var3.H() - 1;
        int iH5 = d0Var3.H();
        int iH6 = d0Var3.H();
        if (d0Var5 != null) {
            d0Var5.P(12);
            iH = d0Var5.H();
        } else {
            iH = 0;
        }
        if (d0Var4 != null) {
            d0Var4.P(12);
            iH3 = d0Var4.H();
            if (iH3 > 0) {
                iH2 = d0Var4.H() - 1;
            } else {
                iH2 = -1;
                d0Var4 = null;
            }
        } else {
            iH2 = -1;
            iH3 = 0;
        }
        int iA = fVar.a();
        String str = oVar.f70881f.f25496l;
        if (iA != -1 && (MimeTypes.AUDIO_RAW.equals(str) || MimeTypes.AUDIO_MLAW.equals(str) || MimeTypes.AUDIO_ALAW.equals(str)) && iH4 == 0 && iH == 0 && iH3 == 0) {
            int i35 = aVar.f70753a;
            long[] jArr9 = new long[i35];
            int[] iArr10 = new int[i35];
            while (aVar.a()) {
                int i36 = aVar.f70754b;
                jArr9[i36] = aVar.f70756d;
                iArr10[i36] = aVar.f70755c;
            }
            o9.d.b bVarA = o9.d.a(iA, jArr9, iArr10, iH6);
            long[] jArr10 = bVarA.f70785a;
            int[] iArr11 = bVarA.f70786b;
            int i37 = bVarA.f70787c;
            long[] jArr11 = bVarA.f70788d;
            int[] iArr12 = bVarA.f70789e;
            long j15 = bVarA.f70790f;
            oVar2 = oVar;
            i15 = sampleCount;
            jArr = jArr10;
            iArr = iArr11;
            i16 = i37;
            iArr2 = iArr12;
            j11 = j15;
            jArr2 = jArr11;
        } else {
            long[] jArrCopyOf = new long[sampleCount];
            int[] iArrCopyOf = new int[sampleCount];
            long[] jArrCopyOf2 = new long[sampleCount];
            int[] iArrCopyOf2 = new int[sampleCount];
            int iH7 = iH2;
            int i38 = 0;
            int i39 = 0;
            int i40 = 0;
            int iN2 = 0;
            int iH8 = 0;
            long j16 = 0;
            long j17 = 0;
            int i41 = iH;
            int i42 = iH6;
            int i43 = iH5;
            int i44 = iH4;
            int i45 = iH3;
            while (true) {
                i11 = i44;
                if (i38 >= sampleCount) {
                    i12 = i43;
                    i13 = i40;
                    break;
                }
                long j18 = j17;
                int i46 = i40;
                boolean zA = true;
                while (i46 == 0) {
                    zA = aVar.a();
                    if (!zA) {
                        break;
                    }
                    int i47 = i43;
                    long j19 = aVar.f70756d;
                    i46 = aVar.f70755c;
                    j18 = j19;
                    i43 = i47;
                    i42 = i42;
                    sampleCount = sampleCount;
                }
                int i48 = sampleCount;
                i12 = i43;
                int i49 = i42;
                if (!zA) {
                    s.i("AtomParsers", "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i38);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i38);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i38);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i38);
                    sampleCount = i38;
                    i13 = i46;
                    break;
                }
                if (d0Var5 != null) {
                    while (iH8 == 0 && i41 > 0) {
                        iH8 = d0Var5.H();
                        iN2 = d0Var5.n();
                        i41--;
                    }
                    iH8--;
                }
                int i50 = iN2;
                jArrCopyOf[i38] = j18;
                int nextSampleSize = fVar.readNextSampleSize();
                iArrCopyOf[i38] = nextSampleSize;
                if (nextSampleSize > i39) {
                    i39 = nextSampleSize;
                }
                jArrCopyOf2[i38] = j16 + ((long) i50);
                iArrCopyOf2[i38] = d0Var4 == null ? 1 : 0;
                if (i38 == iH7) {
                    iArrCopyOf2[i38] = 1;
                    i45--;
                    if (i45 > 0) {
                        iH7 = ((d0) com.google.android.exoplayer2.util.a.e(d0Var4)).H() - 1;
                    }
                }
                int i51 = iH7;
                j16 += (long) i49;
                int iH9 = i12 - 1;
                if (iH9 != 0 || i11 <= 0) {
                    iN = i49;
                    i17 = i11;
                } else {
                    iH9 = d0Var3.H();
                    iN = d0Var3.n();
                    i17 = i11 - 1;
                }
                int i52 = iH9;
                long j20 = j18 + ((long) iArrCopyOf[i38]);
                int i53 = i46 - 1;
                i38++;
                j17 = j20;
                iH7 = i51;
                i42 = iN;
                i40 = i53;
                sampleCount = i48;
                iN2 = i50;
                i44 = i17;
                i43 = i52;
            }
            long j21 = j16 + ((long) iN2);
            if (d0Var5 == null) {
                z11 = true;
                break;
            }
            while (true) {
                if (i41 <= 0) {
                    z11 = true;
                    break;
                }
                if (d0Var5.H() != 0) {
                    z11 = false;
                    break;
                }
                d0Var5.n();
                i41--;
            }
            if (i45 == 0 && i12 == 0 && i13 == 0 && i11 == 0) {
                i14 = iH8;
                if (i14 == 0 && z11) {
                    oVar2 = oVar;
                }
                i15 = sampleCount;
                jArr = jArrCopyOf;
                iArr = iArrCopyOf;
                i16 = i39;
                j11 = j21;
                jArr2 = jArrCopyOf2;
                iArr2 = iArrCopyOf2;
            } else {
                i14 = iH8;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Inconsistent stbl box for track ");
            oVar2 = oVar;
            sb2.append(oVar2.f70876a);
            sb2.append(": remainingSynchronizationSamples ");
            sb2.append(i45);
            sb2.append(", remainingSamplesAtTimestampDelta ");
            sb2.append(i12);
            sb2.append(", remainingSamplesInChunk ");
            sb2.append(i13);
            sb2.append(", remainingTimestampDeltaChanges ");
            sb2.append(i11);
            sb2.append(", remainingSamplesAtTimestampOffset ");
            sb2.append(i14);
            sb2.append(!z11 ? ", ctts invalid" : "");
            s.i("AtomParsers", sb2.toString());
            i15 = sampleCount;
            jArr = jArrCopyOf;
            iArr = iArrCopyOf;
            i16 = i39;
            j11 = j21;
            jArr2 = jArrCopyOf2;
            iArr2 = iArrCopyOf2;
        }
        long jN0 = p0.N0(j11, 1000000L, oVar2.f70878c);
        long[] jArr12 = oVar2.f70883h;
        if (jArr12 == null) {
            p0.P0(jArr2, 1000000L, oVar2.f70878c);
            return new r(oVar, jArr, iArr, i16, jArr2, iArr2, jN0);
        }
        if (jArr12.length == 1 && oVar2.f70877b == 1 && jArr2.length >= 2) {
            long j22 = ((long[]) com.google.android.exoplayer2.util.a.e(oVar2.f70884i))[0];
            long jN1 = j22 + p0.N0(oVar2.f70883h[0], oVar2.f70878c, oVar2.f70879d);
            i18 = i15;
            if (b(jArr2, j11, j22, jN1)) {
                long jN2 = p0.N0(j22 - jArr2[0], oVar2.f70881f.f25510z, oVar2.f70878c);
                i19 = i16;
                long jN3 = p0.N0(j11 - jN1, oVar2.f70881f.f25510z, oVar2.f70878c);
                if ((jN2 != 0 || jN3 != 0) && jN2 <= 2147483647L && jN3 <= 2147483647L) {
                    xVar.f63475a = (int) jN2;
                    xVar.f63476b = (int) jN3;
                    p0.P0(jArr2, 1000000L, oVar2.f70878c);
                    return new r(oVar, jArr, iArr, i19, jArr2, iArr2, p0.N0(oVar2.f70883h[0], 1000000L, oVar2.f70879d));
                }
            }
            jArr3 = oVar2.f70883h;
            if (jArr3.length != 1 && jArr3[0] == 0) {
                long j23 = ((long[]) com.google.android.exoplayer2.util.a.e(oVar2.f70884i))[0];
                for (int i54 = 0; i54 < jArr2.length; i54++) {
                    jArr2[i54] = p0.N0(jArr2[i54] - j23, 1000000L, oVar2.f70878c);
                }
                return new r(oVar, jArr, iArr, i19, jArr2, iArr2, p0.N0(j11 - j23, 1000000L, oVar2.f70878c));
            }
            if (oVar2.f70877b == 1) {
                z12 = true;
            } else {
                z12 = false;
            }
            iArr3 = new int[jArr3.length];
            iArr4 = new int[jArr3.length];
            jArr4 = (long[]) com.google.android.exoplayer2.util.a.e(oVar2.f70884i);
            i20 = 0;
            z13 = false;
            i21 = 0;
            i22 = 0;
            while (true) {
                jArr5 = oVar2.f70883h;
                if (i20 < jArr5.length) {
                    break;
                }
                long[] jArr13 = jArr;
                int[] iArr13 = iArr;
                j14 = jArr4[i20];
                if (j14 != -1) {
                    i33 = i22;
                    boolean z17 = z13;
                    int i55 = i21;
                    long jN4 = p0.N0(jArr5[i20], oVar2.f70878c, oVar2.f70879d);
                    iArr3[i20] = p0.i(jArr2, j14, true, true);
                    iArr4[i20] = p0.e(jArr2, j14 + jN4, z12, false);
                    while (true) {
                        i34 = iArr3[i20];
                        i32 = iArr4[i20];
                        if (i34 >= i32 || (iArr2[i34] & 1) != 0) {
                            break;
                        }
                        iArr3[i20] = i34 + 1;
                    }
                    i21 = i55 + (i32 - i34);
                    if (i33 != i34) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    z15 = z17 | z16;
                } else {
                    z15 = z13;
                    i32 = i22;
                }
                i20++;
                z13 = z15;
                i22 = i32;
                jArr = jArr13;
                iArr = iArr13;
            }
            jArr6 = jArr;
            iArr5 = iArr;
            boolean z18 = z13;
            i23 = 0;
            z14 = z18 | (i21 != i18);
            if (z14) {
                jArr7 = new long[i21];
            } else {
                jArr7 = jArr6;
            }
            if (z14) {
                iArr6 = new int[i21];
            } else {
                iArr6 = iArr5;
            }
            if (z14) {
                i24 = 0;
            } else {
                i24 = i19;
            }
            if (z14) {
                iArr7 = new int[i21];
            } else {
                iArr7 = iArr2;
            }
            jArr8 = new long[i21];
            i25 = i24;
            iArr8 = iArr5;
            j12 = 0;
            i26 = 0;
            while (i23 < oVar2.f70883h.length) {
                j13 = oVar2.f70884i[i23];
                i27 = iArr3[i23];
                int[] iArr14 = iArr3;
                i28 = iArr4[i23];
                int[] iArr15 = iArr4;
                if (z14) {
                    int i56 = i28 - i27;
                    System.arraycopy(jArr6, i27, jArr7, i26, i56);
                    iArr9 = iArr8;
                    System.arraycopy(iArr9, i27, iArr6, i26, i56);
                    System.arraycopy(iArr2, i27, iArr7, i26, i56);
                } else {
                    iArr9 = iArr8;
                }
                i29 = i25;
                while (i27 < i28) {
                    i30 = i29;
                    int i57 = i28;
                    long[] jArr14 = jArr2;
                    int[] iArr16 = iArr2;
                    int[] iArr17 = iArr7;
                    long j24 = j12;
                    jArr8[i26] = p0.N0(j12, 1000000L, oVar2.f70879d) + p0.N0(Math.max(0L, jArr2[i27] - j13), 1000000L, oVar2.f70878c);
                    if (z14) {
                        i31 = i30;
                        if (iArr6[i26] > i31) {
                            i29 = iArr9[i27];
                        }
                        i26++;
                        i27++;
                        i28 = i57;
                        j12 = j24;
                        jArr2 = jArr14;
                        iArr2 = iArr16;
                        iArr7 = iArr17;
                    } else {
                        i31 = i30;
                    }
                    i29 = i31;
                    i26++;
                    i27++;
                    i28 = i57;
                    j12 = j24;
                    jArr2 = jArr14;
                    iArr2 = iArr16;
                    iArr7 = iArr17;
                }
                long[] jArr15 = jArr2;
                long j25 = j12 + oVar2.f70883h[i23];
                i23++;
                i25 = i29;
                iArr8 = iArr9;
                j12 = j25;
                iArr3 = iArr14;
                jArr2 = jArr15;
                iArr2 = iArr2;
                iArr4 = iArr15;
                jArr6 = jArr6;
                iArr7 = iArr7;
            }
            return new r(oVar, jArr7, iArr6, i25, jArr8, iArr7, p0.N0(j12, 1000000L, oVar2.f70879d));
        }
        i18 = i15;
        i19 = i16;
        jArr3 = oVar2.f70883h;
        if (jArr3.length != 1) {
        }
        if (oVar2.f70877b == 1) {
            z12 = true;
        } else {
            z12 = false;
        }
        iArr3 = new int[jArr3.length];
        iArr4 = new int[jArr3.length];
        jArr4 = (long[]) com.google.android.exoplayer2.util.a.e(oVar2.f70884i);
        i20 = 0;
        z13 = false;
        i21 = 0;
        i22 = 0;
        while (true) {
            jArr5 = oVar2.f70883h;
            if (i20 < jArr5.length) {
                break;
                break;
            }
            long[] jArr16 = jArr;
            int[] iArr18 = iArr;
            j14 = jArr4[i20];
            if (j14 != -1) {
                i33 = i22;
                boolean z19 = z13;
                int i58 = i21;
                long jN5 = p0.N0(jArr5[i20], oVar2.f70878c, oVar2.f70879d);
                iArr3[i20] = p0.i(jArr2, j14, true, true);
                iArr4[i20] = p0.e(jArr2, j14 + jN5, z12, false);
                while (true) {
                    i34 = iArr3[i20];
                    i32 = iArr4[i20];
                    if (i34 >= i32) {
                        break;
                    }
                    break;
                    break;
                    iArr3[i20] = i34 + 1;
                }
                i21 = i58 + (i32 - i34);
                if (i33 != i34) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                z15 = z19 | z16;
            } else {
                z15 = z13;
                i32 = i22;
            }
            i20++;
            z13 = z15;
            i22 = i32;
            jArr = jArr16;
            iArr = iArr18;
        }
        jArr6 = jArr;
        iArr5 = iArr;
        boolean z110 = z13;
        i23 = 0;
        z14 = z110 | (i21 != i18);
        if (z14) {
            jArr7 = new long[i21];
        } else {
            jArr7 = jArr6;
        }
        if (z14) {
            iArr6 = new int[i21];
        } else {
            iArr6 = iArr5;
        }
        if (z14) {
            i24 = 0;
        } else {
            i24 = i19;
        }
        if (z14) {
            iArr7 = new int[i21];
        } else {
            iArr7 = iArr2;
        }
        jArr8 = new long[i21];
        i25 = i24;
        iArr8 = iArr5;
        j12 = 0;
        i26 = 0;
        while (i23 < oVar2.f70883h.length) {
            j13 = oVar2.f70884i[i23];
            i27 = iArr3[i23];
            int[] iArr19 = iArr3;
            i28 = iArr4[i23];
            int[] iArr110 = iArr4;
            if (z14) {
                int i59 = i28 - i27;
                System.arraycopy(jArr6, i27, jArr7, i26, i59);
                iArr9 = iArr8;
                System.arraycopy(iArr9, i27, iArr6, i26, i59);
                System.arraycopy(iArr2, i27, iArr7, i26, i59);
            } else {
                iArr9 = iArr8;
            }
            i29 = i25;
            while (i27 < i28) {
                i30 = i29;
                int i510 = i28;
                long[] jArr17 = jArr2;
                int[] iArr111 = iArr2;
                int[] iArr112 = iArr7;
                long j26 = j12;
                jArr8[i26] = p0.N0(j12, 1000000L, oVar2.f70879d) + p0.N0(Math.max(0L, jArr2[i27] - j13), 1000000L, oVar2.f70878c);
                if (z14) {
                    i31 = i30;
                    if (iArr6[i26] > i31) {
                        i29 = iArr9[i27];
                    }
                    i26++;
                    i27++;
                    i28 = i510;
                    j12 = j26;
                    jArr2 = jArr17;
                    iArr2 = iArr111;
                    iArr7 = iArr112;
                } else {
                    i31 = i30;
                }
                i29 = i31;
                i26++;
                i27++;
                i28 = i510;
                j12 = j26;
                jArr2 = jArr17;
                iArr2 = iArr111;
                iArr7 = iArr112;
            }
            long[] jArr18 = jArr2;
            long j27 = j12 + oVar2.f70883h[i23];
            i23++;
            i25 = i29;
            iArr8 = iArr9;
            j12 = j27;
            iArr3 = iArr19;
            jArr2 = jArr18;
            iArr2 = iArr2;
            iArr4 = iArr110;
            jArr6 = jArr6;
            iArr7 = iArr7;
        }
        return new r(oVar, jArr7, iArr6, i25, jArr8, iArr7, p0.N0(j12, 1000000L, oVar2.f70879d));
    }

    private static d w(d0 d0Var, int i11, int i12, String str, DrmInitData drmInitData, boolean z10) throws ParserException {
        int i13;
        d0Var.P(12);
        int iN = d0Var.n();
        d dVar = new d(iN);
        for (int i14 = 0; i14 < iN; i14++) {
            int iE = d0Var.e();
            int iN2 = d0Var.n();
            g9.o.a(iN2 > 0, "childAtomSize must be positive");
            int iN3 = d0Var.n();
            if (iN3 == 1635148593 || iN3 == 1635148595 || iN3 == 1701733238 || iN3 == 1831958048 || iN3 == 1836070006 || iN3 == 1752589105 || iN3 == 1751479857 || iN3 == 1932670515 || iN3 == 1211250227 || iN3 == 1987063864 || iN3 == 1987063865 || iN3 == 1635135537 || iN3 == 1685479798 || iN3 == 1685479729 || iN3 == 1685481573 || iN3 == 1685481521) {
                i13 = iE;
                D(d0Var, iN3, i13, iN2, i11, i12, drmInitData, dVar, i14);
            } else if (iN3 == 1836069985 || iN3 == 1701733217 || iN3 == 1633889587 || iN3 == 1700998451 || iN3 == 1633889588 || iN3 == 1835823201 || iN3 == 1685353315 || iN3 == 1685353317 || iN3 == 1685353320 || iN3 == 1685353324 || iN3 == 1685353336 || iN3 == 1935764850 || iN3 == 1935767394 || iN3 == 1819304813 || iN3 == 1936684916 || iN3 == 1953984371 || iN3 == 778924082 || iN3 == 778924083 || iN3 == 1835557169 || iN3 == 1835560241 || iN3 == 1634492771 || iN3 == 1634492791 || iN3 == 1970037111 || iN3 == 1332770163 || iN3 == 1716281667) {
                i13 = iE;
                f(d0Var, iN3, iE, iN2, i11, str, z10, drmInitData, dVar, i14);
            } else {
                if (iN3 == 1414810956 || iN3 == 1954034535 || iN3 == 2004251764 || iN3 == 1937010800 || iN3 == 1664495672) {
                    x(d0Var, iN3, iE, iN2, i11, str, dVar);
                } else if (iN3 == 1835365492) {
                    o(d0Var, iN3, iE, i11, dVar);
                } else if (iN3 == 1667329389) {
                    dVar.f70767b = new o1.b().R(i11).e0(MimeTypes.APPLICATION_CAMERA_MOTION).E();
                }
                i13 = iE;
            }
            d0Var.P(i13 + iN2);
        }
        return dVar;
    }

    private static void x(d0 d0Var, int i11, int i12, int i13, int i14, String str, d dVar) {
        d0Var.P(i12 + 16);
        String str2 = MimeTypes.APPLICATION_TTML;
        ImmutableList immutableListOf = null;
        long j11 = Long.MAX_VALUE;
        if (i11 != 1414810956) {
            if (i11 == 1954034535) {
                int i15 = i13 - 16;
                byte[] bArr = new byte[i15];
                d0Var.j(bArr, 0, i15);
                immutableListOf = ImmutableList.of(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i11 == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i11 == 1937010800) {
                j11 = 0;
            } else {
                if (i11 != 1664495672) {
                    throw new IllegalStateException();
                }
                dVar.f70769d = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        dVar.f70767b = new o1.b().R(i14).e0(str2).V(str).i0(j11).T(immutableListOf).E();
    }

    private static g y(d0 d0Var) {
        long j11;
        d0Var.P(8);
        int iC = o9.a.c(d0Var.n());
        d0Var.Q(iC == 0 ? 8 : 16);
        int iN = d0Var.n();
        d0Var.Q(4);
        int iE = d0Var.e();
        int i11 = iC == 0 ? 4 : 8;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            j11 = C.TIME_UNSET;
            if (i13 >= i11) {
                d0Var.Q(i11);
                break;
            }
            if (d0Var.d()[iE + i13] != -1) {
                long jF = iC == 0 ? d0Var.F() : d0Var.I();
                if (jF == 0) {
                    break;
                }
                j11 = jF;
                break;
            }
            i13++;
        }
        d0Var.Q(16);
        int iN2 = d0Var.n();
        int iN3 = d0Var.n();
        d0Var.Q(4);
        int iN4 = d0Var.n();
        int iN5 = d0Var.n();
        if (iN2 == 0 && iN3 == 65536 && iN4 == -65536 && iN5 == 0) {
            i12 = 90;
        } else if (iN2 == 0 && iN3 == -65536 && iN4 == 65536 && iN5 == 0) {
            i12 = 270;
        } else if (iN2 == -65536 && iN3 == 0 && iN4 == 0 && iN5 == -65536) {
            i12 = 180;
        }
        return new g(iN, j11, i12);
    }

    private static o z(o9.a.C0858a c0858a, o9.a.b bVar, long j11, DrmInitData drmInitData, boolean z10, boolean z11) throws ParserException {
        long[] jArr;
        long[] jArr2;
        o9.a.C0858a c0858aF;
        Pair pairH;
        o9.a.C0858a c0858a2 = (o9.a.C0858a) com.google.android.exoplayer2.util.a.e(c0858a.f(1835297121));
        int iD = d(k(((o9.a.b) com.google.android.exoplayer2.util.a.e(c0858a2.g(1751411826))).f70751b));
        if (iD == -1) {
            return null;
        }
        g gVarY = y(((o9.a.b) com.google.android.exoplayer2.util.a.e(c0858a.g(1953196132))).f70751b);
        long jN0 = C.TIME_UNSET;
        long j12 = j11 == C.TIME_UNSET ? gVarY.f70779b : j11;
        long jP = p(bVar.f70751b);
        if (j12 != C.TIME_UNSET) {
            jN0 = p0.N0(j12, 1000000L, jP);
        }
        long j13 = jN0;
        o9.a.C0858a c0858a3 = (o9.a.C0858a) com.google.android.exoplayer2.util.a.e(((o9.a.C0858a) com.google.android.exoplayer2.util.a.e(c0858a2.f(1835626086))).f(1937007212));
        Pair pairM = m(((o9.a.b) com.google.android.exoplayer2.util.a.e(c0858a2.g(1835296868))).f70751b);
        d dVarW = w(((o9.a.b) com.google.android.exoplayer2.util.a.e(c0858a3.g(1937011556))).f70751b, gVarY.f70778a, gVarY.f70780c, (String) pairM.second, drmInitData, z11);
        if (z10 || (c0858aF = c0858a.f(1701082227)) == null || (pairH = h(c0858aF)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) pairH.first;
            jArr2 = (long[]) pairH.second;
            jArr = jArr3;
        }
        if (dVarW.f70767b == null) {
            return null;
        }
        return new o(gVarY.f70778a, iD, ((Long) pairM.first).longValue(), jP, j13, dVarW.f70767b, dVarW.f70769d, dVarW.f70766a, dVarW.f70768c, jArr, jArr2);
    }
}
