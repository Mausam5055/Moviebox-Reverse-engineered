package r9;

import android.net.Uri;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.i0;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import g9.a0;
import g9.e0;
import g9.l;
import g9.m;
import g9.n;
import g9.q;
import g9.r;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements l {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final r f74186h = new r() { // from class: r9.a
        @Override // g9.r
        public /* synthetic */ l[] c(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // g9.r
        public final l[] createExtractors() {
            return b.f();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n f74187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e0 f74188b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InterfaceC0903b f74191e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74189c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f74190d = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f74192f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f74193g = -1;

    private static final class a implements InterfaceC0903b {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final int[] f74194m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final int[] f74195n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 130, 143, 157, 173, 190, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 230, 253, 279, 307, 337, 371, TTAdConstant.DOWNLOAD_URL_CODE, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final n f74196a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e0 f74197b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final r9.c f74198c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f74199d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final byte[] f74200e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final d0 f74201f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f74202g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final o1 f74203h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f74204i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f74205j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f74206k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private long f74207l;

        public a(n nVar, e0 e0Var, r9.c cVar) throws ParserException {
            this.f74196a = nVar;
            this.f74197b = e0Var;
            this.f74198c = cVar;
            int iMax = Math.max(1, cVar.f74218c / 10);
            this.f74202g = iMax;
            d0 d0Var = new d0(cVar.f74222g);
            d0Var.v();
            int iV = d0Var.v();
            this.f74199d = iV;
            int i11 = cVar.f74217b;
            int i12 = (((cVar.f74220e - (i11 * 4)) * 8) / (cVar.f74221f * i11)) + 1;
            if (iV == i12) {
                int iL = p0.l(iMax, iV);
                this.f74200e = new byte[cVar.f74220e * iL];
                this.f74201f = new d0(iL * h(iV, i11));
                int i13 = ((cVar.f74218c * cVar.f74220e) * 8) / iV;
                this.f74203h = new o1.b().e0(MimeTypes.AUDIO_RAW).G(i13).Z(i13).W(h(iMax, i11)).H(cVar.f74217b).f0(cVar.f74218c).Y(2).E();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected frames per block: " + i12 + "; got: " + iV, null);
        }

        private void d(byte[] bArr, int i11, d0 d0Var) {
            for (int i12 = 0; i12 < i11; i12++) {
                for (int i13 = 0; i13 < this.f74198c.f74217b; i13++) {
                    e(bArr, i12, i13, d0Var.d());
                }
            }
            int iG = g(this.f74199d * i11);
            d0Var.P(0);
            d0Var.O(iG);
        }

        private void e(byte[] bArr, int i11, int i12, byte[] bArr2) {
            r9.c cVar = this.f74198c;
            int i13 = cVar.f74220e;
            int i14 = cVar.f74217b;
            int i15 = (i11 * i13) + (i12 * 4);
            int i16 = (i14 * 4) + i15;
            int i17 = (i13 / i14) - 4;
            int iQ = (short) (((bArr[i15 + 1] & 255) << 8) | (bArr[i15] & 255));
            int iMin = Math.min(bArr[i15 + 2] & 255, 88);
            int i18 = f74195n[iMin];
            int i19 = ((i11 * this.f74199d * i14) + i12) * 2;
            bArr2[i19] = (byte) (iQ & 255);
            bArr2[i19 + 1] = (byte) (iQ >> 8);
            for (int i20 = 0; i20 < i17 * 2; i20++) {
                byte b11 = bArr[((i20 / 8) * i14 * 4) + i16 + ((i20 / 2) % 4)];
                int i21 = i20 % 2 == 0 ? b11 & 15 : (b11 & 255) >> 4;
                int i22 = ((((i21 & 7) * 2) + 1) * i18) >> 3;
                if ((i21 & 8) != 0) {
                    i22 = -i22;
                }
                iQ = p0.q(iQ + i22, -32768, 32767);
                i19 += i14 * 2;
                bArr2[i19] = (byte) (iQ & 255);
                bArr2[i19 + 1] = (byte) (iQ >> 8);
                int i23 = iMin + f74194m[i21];
                int[] iArr = f74195n;
                iMin = p0.q(i23, 0, iArr.length - 1);
                i18 = iArr[iMin];
            }
        }

        private int f(int i11) {
            return i11 / (this.f74198c.f74217b * 2);
        }

        private int g(int i11) {
            return h(i11, this.f74198c.f74217b);
        }

        private static int h(int i11, int i12) {
            return i11 * 2 * i12;
        }

        private void i(int i11) {
            long jN0 = this.f74205j + p0.N0(this.f74207l, 1000000L, this.f74198c.f74218c);
            int iG = g(i11);
            this.f74197b.d(jN0, 1, iG, this.f74206k - iG, null);
            this.f74207l += (long) i11;
            this.f74206k -= iG;
        }

        @Override // r9.b.InterfaceC0903b
        public void a(int i11, long j11) {
            this.f74196a.d(new e(this.f74198c, this.f74199d, i11, j11));
            this.f74197b.e(this.f74203h);
        }

        @Override // r9.b.InterfaceC0903b
        public void b(long j11) {
            this.f74204i = 0;
            this.f74205j = j11;
            this.f74206k = 0;
            this.f74207l = 0L;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0038 A[LOOP:0: B:6:0x001e->B:12:0x0038, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:23:0x003e A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:25:0x001b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0020  */
        /* JADX WARN: Code duplicated, block: B:9:0x0024  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0035 -> B:4:0x001b). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // r9.b.InterfaceC0903b
        public boolean c(g9.m r7, long r8) {
            /*
                r6 = this;
                int r0 = r6.f74202g
                int r1 = r6.f74206k
                int r1 = r6.f(r1)
                int r0 = r0 - r1
                int r1 = r6.f74199d
                int r0 = com.google.android.exoplayer2.util.p0.l(r0, r1)
                r9.c r1 = r6.f74198c
                int r1 = r1.f74220e
                int r0 = r0 * r1
                r1 = 0
                int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                r2 = 1
                if (r1 != 0) goto L1d
            L1b:
                r1 = r2
                goto L1e
            L1d:
                r1 = 0
            L1e:
                if (r1 != 0) goto L3e
                int r3 = r6.f74204i
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.f74200e
                int r5 = r6.f74204i
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.f74204i
                int r4 = r4 + r3
                r6.f74204i = r4
                goto L1e
            L3e:
                int r7 = r6.f74204i
                r9.c r8 = r6.f74198c
                int r8 = r8.f74220e
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.f74200e
                com.google.android.exoplayer2.util.d0 r9 = r6.f74201f
                r6.d(r8, r7, r9)
                int r8 = r6.f74204i
                r9.c r9 = r6.f74198c
                int r9 = r9.f74220e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.f74204i = r8
                com.google.android.exoplayer2.util.d0 r7 = r6.f74201f
                int r7 = r7.f()
                g9.e0 r8 = r6.f74197b
                com.google.android.exoplayer2.util.d0 r9 = r6.f74201f
                r8.c(r9, r7)
                int r8 = r6.f74206k
                int r8 = r8 + r7
                r6.f74206k = r8
                int r7 = r6.f(r8)
                int r8 = r6.f74202g
                if (r7 < r8) goto L75
                r6.i(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.f74206k
                int r7 = r6.f(r7)
                if (r7 <= 0) goto L82
                r6.i(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: r9.b.a.c(g9.m, long):boolean");
        }
    }

    /* JADX INFO: renamed from: r9.b$b, reason: collision with other inner class name */
    private interface InterfaceC0903b {
        void a(int i11, long j11);

        void b(long j11);

        boolean c(m mVar, long j11);
    }

    private static final class c implements InterfaceC0903b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final n f74208a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e0 f74209b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final r9.c f74210c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final o1 f74211d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f74212e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f74213f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f74214g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f74215h;

        public c(n nVar, e0 e0Var, r9.c cVar, String str, int i11) throws ParserException {
            this.f74208a = nVar;
            this.f74209b = e0Var;
            this.f74210c = cVar;
            int i12 = (cVar.f74217b * cVar.f74221f) / 8;
            if (cVar.f74220e == i12) {
                int i13 = cVar.f74218c;
                int i14 = i13 * i12 * 8;
                int iMax = Math.max(i12, (i13 * i12) / 10);
                this.f74212e = iMax;
                this.f74211d = new o1.b().e0(str).G(i14).Z(i14).W(iMax).H(cVar.f74217b).f0(cVar.f74218c).Y(i11).E();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected block size: " + i12 + "; got: " + cVar.f74220e, null);
        }

        @Override // r9.b.InterfaceC0903b
        public void a(int i11, long j11) {
            this.f74208a.d(new e(this.f74210c, 1, i11, j11));
            this.f74209b.e(this.f74211d);
        }

        @Override // r9.b.InterfaceC0903b
        public void b(long j11) {
            this.f74213f = j11;
            this.f74214g = 0;
            this.f74215h = 0L;
        }

        @Override // r9.b.InterfaceC0903b
        public boolean c(m mVar, long j11) {
            int i11;
            int i12;
            long j12 = j11;
            while (j12 > 0 && (i11 = this.f74214g) < (i12 = this.f74212e)) {
                int iB = this.f74209b.b(mVar, (int) Math.min(i12 - i11, j12), true);
                if (iB == -1) {
                    j12 = 0;
                } else {
                    this.f74214g += iB;
                    j12 -= (long) iB;
                }
            }
            r9.c cVar = this.f74210c;
            int i13 = cVar.f74220e;
            int i14 = this.f74214g / i13;
            if (i14 > 0) {
                long jN0 = this.f74213f + p0.N0(this.f74215h, 1000000L, cVar.f74218c);
                int i15 = i14 * i13;
                int i16 = this.f74214g - i15;
                this.f74209b.d(jN0, 1, i15, i16, null);
                this.f74215h += (long) i14;
                this.f74214g = i16;
            }
            return j12 <= 0;
        }
    }

    private void e() {
        com.google.android.exoplayer2.util.a.i(this.f74188b);
        p0.j(this.f74187a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] f() {
        return new l[]{new b()};
    }

    private void g(m mVar) throws ParserException {
        com.google.android.exoplayer2.util.a.g(mVar.getPosition() == 0);
        int i11 = this.f74192f;
        if (i11 != -1) {
            mVar.skipFully(i11);
            this.f74189c = 4;
        } else {
            if (!d.a(mVar)) {
                throw ParserException.createForMalformedContainer("Unsupported or unrecognized wav file type.", null);
            }
            mVar.skipFully((int) (mVar.getPeekPosition() - mVar.getPosition()));
            this.f74189c = 1;
        }
    }

    private void h(m mVar) throws ParserException {
        r9.c cVarB = d.b(mVar);
        int i11 = cVarB.f74216a;
        if (i11 == 17) {
            this.f74191e = new a(this.f74187a, this.f74188b, cVarB);
        } else if (i11 == 6) {
            this.f74191e = new c(this.f74187a, this.f74188b, cVarB, MimeTypes.AUDIO_ALAW, -1);
        } else if (i11 == 7) {
            this.f74191e = new c(this.f74187a, this.f74188b, cVarB, MimeTypes.AUDIO_MLAW, -1);
        } else {
            int iA = i0.a(i11, cVarB.f74221f);
            if (iA == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Unsupported WAV format type: " + cVarB.f74216a);
            }
            this.f74191e = new c(this.f74187a, this.f74188b, cVarB, MimeTypes.AUDIO_RAW, iA);
        }
        this.f74189c = 3;
    }

    private void i(m mVar) {
        this.f74190d = d.c(mVar);
        this.f74189c = 2;
    }

    private int j(m mVar) {
        com.google.android.exoplayer2.util.a.g(this.f74193g != -1);
        return ((InterfaceC0903b) com.google.android.exoplayer2.util.a.e(this.f74191e)).c(mVar, this.f74193g - mVar.getPosition()) ? -1 : 0;
    }

    private void k(m mVar) throws ParserException {
        Pair pairE = d.e(mVar);
        this.f74192f = ((Long) pairE.first).intValue();
        long jLongValue = ((Long) pairE.second).longValue();
        long j11 = this.f74190d;
        if (j11 != -1 && jLongValue == 4294967295L) {
            jLongValue = j11;
        }
        this.f74193g = ((long) this.f74192f) + jLongValue;
        long length = mVar.getLength();
        if (length != -1 && this.f74193g > length) {
            s.i("WavExtractor", "Data exceeds input length: " + this.f74193g + ", " + length);
            this.f74193g = length;
        }
        ((InterfaceC0903b) com.google.android.exoplayer2.util.a.e(this.f74191e)).a(this.f74192f, this.f74193g);
        this.f74189c = 4;
    }

    @Override // g9.l
    public void b(n nVar) {
        this.f74187a = nVar;
        this.f74188b = nVar.track(0, 1);
        nVar.endTracks();
    }

    @Override // g9.l
    public int c(m mVar, a0 a0Var) throws ParserException {
        e();
        int i11 = this.f74189c;
        if (i11 == 0) {
            g(mVar);
            return 0;
        }
        if (i11 == 1) {
            i(mVar);
            return 0;
        }
        if (i11 == 2) {
            h(mVar);
            return 0;
        }
        if (i11 == 3) {
            k(mVar);
            return 0;
        }
        if (i11 == 4) {
            return j(mVar);
        }
        throw new IllegalStateException();
    }

    @Override // g9.l
    public boolean d(m mVar) {
        return d.a(mVar);
    }

    @Override // g9.l
    public void release() {
    }

    @Override // g9.l
    public void seek(long j11, long j12) {
        this.f74189c = j11 == 0 ? 0 : 4;
        InterfaceC0903b interfaceC0903b = this.f74191e;
        if (interfaceC0903b != null) {
            interfaceC0903b.b(j12);
        }
    }
}
