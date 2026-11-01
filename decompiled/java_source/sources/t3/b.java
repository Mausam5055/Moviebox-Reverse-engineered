package t3;

import android.net.Uri;
import android.util.Pair;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import i3.s;
import java.util.List;
import java.util.Map;
import l2.l0;
import l2.q;
import l2.r;
import l2.s0;
import l2.t;
import l2.w;
import l2.w0;
import l2.x;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final x f76015h = new x() { // from class: t3.a
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
            return b.h();
        }

        @Override // l2.x
        public /* synthetic */ x d(boolean z10) {
            return w.c(this, z10);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private t f76016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private s0 f76017b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InterfaceC0920b f76020e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f76018c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f76019d = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f76021f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f76022g = -1;

    private static final class a implements InterfaceC0920b {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final int[] f76023m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final int[] f76024n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 130, 143, 157, 173, 190, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 230, 253, 279, 307, 337, 371, TTAdConstant.DOWNLOAD_URL_CODE, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t f76025a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final s0 f76026b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final t3.c f76027c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f76028d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final byte[] f76029e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final j0 f76030f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f76031g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final androidx.media3.common.r f76032h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f76033i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f76034j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f76035k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private long f76036l;

        public a(t tVar, s0 s0Var, t3.c cVar) throws ParserException {
            this.f76025a = tVar;
            this.f76026b = s0Var;
            this.f76027c = cVar;
            int iMax = Math.max(1, cVar.f76047c / 10);
            this.f76031g = iMax;
            j0 j0Var = new j0(cVar.f76051g);
            j0Var.z();
            int iZ = j0Var.z();
            this.f76028d = iZ;
            int i11 = cVar.f76046b;
            int i12 = (((cVar.f76049e - (i11 * 4)) * 8) / (cVar.f76050f * i11)) + 1;
            if (iZ == i12) {
                int iK = a1.k(iMax, iZ);
                this.f76029e = new byte[cVar.f76049e * iK];
                this.f76030f = new j0(iK * h(iZ, i11));
                int i13 = ((cVar.f76047c * cVar.f76049e) * 8) / iZ;
                this.f76032h = new androidx.media3.common.r.b().u0(MimeTypes.AUDIO_RAW).Q(i13).p0(i13).k0(h(iMax, i11)).R(cVar.f76046b).v0(cVar.f76047c).o0(2).N();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected frames per block: " + i12 + "; got: " + iZ, null);
        }

        private void d(byte[] bArr, int i11, j0 j0Var) {
            for (int i12 = 0; i12 < i11; i12++) {
                for (int i13 = 0; i13 < this.f76027c.f76046b; i13++) {
                    e(bArr, i12, i13, j0Var.e());
                }
            }
            int iG = g(this.f76028d * i11);
            j0Var.W(0);
            j0Var.V(iG);
        }

        private void e(byte[] bArr, int i11, int i12, byte[] bArr2) {
            t3.c cVar = this.f76027c;
            int i13 = cVar.f76049e;
            int i14 = cVar.f76046b;
            int i15 = (i11 * i13) + (i12 * 4);
            int i16 = (i14 * 4) + i15;
            int i17 = (i13 / i14) - 4;
            int iP = (short) (((bArr[i15 + 1] & 255) << 8) | (bArr[i15] & 255));
            int iMin = Math.min(bArr[i15 + 2] & 255, 88);
            int i18 = f76024n[iMin];
            int i19 = ((i11 * this.f76028d * i14) + i12) * 2;
            bArr2[i19] = (byte) (iP & 255);
            bArr2[i19 + 1] = (byte) (iP >> 8);
            for (int i20 = 0; i20 < i17 * 2; i20++) {
                byte b11 = bArr[((i20 / 8) * i14 * 4) + i16 + ((i20 / 2) % 4)];
                int i21 = i20 % 2 == 0 ? b11 & 15 : (b11 & 255) >> 4;
                int i22 = ((((i21 & 7) * 2) + 1) * i18) >> 3;
                if ((i21 & 8) != 0) {
                    i22 = -i22;
                }
                iP = a1.p(iP + i22, -32768, 32767);
                i19 += i14 * 2;
                bArr2[i19] = (byte) (iP & 255);
                bArr2[i19 + 1] = (byte) (iP >> 8);
                int i23 = iMin + f76023m[i21];
                int[] iArr = f76024n;
                iMin = a1.p(i23, 0, iArr.length - 1);
                i18 = iArr[iMin];
            }
        }

        private int f(int i11) {
            return i11 / (this.f76027c.f76046b * 2);
        }

        private int g(int i11) {
            return h(i11, this.f76027c.f76046b);
        }

        private static int h(int i11, int i12) {
            return i11 * 2 * i12;
        }

        private void i(int i11) {
            long jE1 = this.f76034j + a1.e1(this.f76036l, 1000000L, this.f76027c.f76047c);
            int iG = g(i11);
            this.f76026b.d(jE1, 1, iG, this.f76035k - iG, null);
            this.f76036l += (long) i11;
            this.f76035k -= iG;
        }

        @Override // t3.b.InterfaceC0920b
        public void a(int i11, long j11) {
            e eVar = new e(this.f76027c, this.f76028d, i11, j11);
            this.f76025a.f(eVar);
            this.f76026b.c(this.f76032h);
            this.f76026b.f(eVar.getDurationUs());
        }

        @Override // t3.b.InterfaceC0920b
        public void b(long j11) {
            this.f76033i = 0;
            this.f76034j = j11;
            this.f76035k = 0;
            this.f76036l = 0L;
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
        @Override // t3.b.InterfaceC0920b
        public boolean c(l2.s r7, long r8) {
            /*
                r6 = this;
                int r0 = r6.f76031g
                int r1 = r6.f76035k
                int r1 = r6.f(r1)
                int r0 = r0 - r1
                int r1 = r6.f76028d
                int r0 = androidx.media3.common.util.a1.k(r0, r1)
                t3.c r1 = r6.f76027c
                int r1 = r1.f76049e
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
                int r3 = r6.f76033i
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.f76029e
                int r5 = r6.f76033i
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.f76033i
                int r4 = r4 + r3
                r6.f76033i = r4
                goto L1e
            L3e:
                int r7 = r6.f76033i
                t3.c r8 = r6.f76027c
                int r8 = r8.f76049e
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.f76029e
                androidx.media3.common.util.j0 r9 = r6.f76030f
                r6.d(r8, r7, r9)
                int r8 = r6.f76033i
                t3.c r9 = r6.f76027c
                int r9 = r9.f76049e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.f76033i = r8
                androidx.media3.common.util.j0 r7 = r6.f76030f
                int r7 = r7.g()
                l2.s0 r8 = r6.f76026b
                androidx.media3.common.util.j0 r9 = r6.f76030f
                r8.b(r9, r7)
                int r8 = r6.f76035k
                int r8 = r8 + r7
                r6.f76035k = r8
                int r7 = r6.f(r8)
                int r8 = r6.f76031g
                if (r7 < r8) goto L75
                r6.i(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.f76035k
                int r7 = r6.f(r7)
                if (r7 <= 0) goto L82
                r6.i(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: t3.b.a.c(l2.s, long):boolean");
        }
    }

    /* JADX INFO: renamed from: t3.b$b, reason: collision with other inner class name */
    private interface InterfaceC0920b {
        void a(int i11, long j11);

        void b(long j11);

        boolean c(l2.s sVar, long j11);
    }

    private static final class c implements InterfaceC0920b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t f76037a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final s0 f76038b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final t3.c f76039c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final androidx.media3.common.r f76040d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f76041e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f76042f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f76043g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f76044h;

        public c(t tVar, s0 s0Var, t3.c cVar, String str, int i11) throws ParserException {
            this.f76037a = tVar;
            this.f76038b = s0Var;
            this.f76039c = cVar;
            int i12 = (cVar.f76046b * cVar.f76050f) / 8;
            if (cVar.f76049e == i12) {
                int i13 = cVar.f76047c;
                int i14 = i13 * i12 * 8;
                int iMax = Math.max(i12, (i13 * i12) / 10);
                this.f76041e = iMax;
                this.f76040d = new androidx.media3.common.r.b().U("audio/wav").u0(str).Q(i14).p0(i14).k0(iMax).R(cVar.f76046b).v0(cVar.f76047c).o0(i11).N();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected block size: " + i12 + "; got: " + cVar.f76049e, null);
        }

        @Override // t3.b.InterfaceC0920b
        public void a(int i11, long j11) {
            e eVar = new e(this.f76039c, 1, i11, j11);
            this.f76037a.f(eVar);
            this.f76038b.c(this.f76040d);
            this.f76038b.f(eVar.getDurationUs());
        }

        @Override // t3.b.InterfaceC0920b
        public void b(long j11) {
            this.f76042f = j11;
            this.f76043g = 0;
            this.f76044h = 0L;
        }

        @Override // t3.b.InterfaceC0920b
        public boolean c(l2.s sVar, long j11) {
            int i11;
            int i12;
            long j12 = j11;
            while (j12 > 0 && (i11 = this.f76043g) < (i12 = this.f76041e)) {
                int iE = this.f76038b.e(sVar, (int) Math.min(i12 - i11, j12), true);
                if (iE == -1) {
                    j12 = 0;
                } else {
                    this.f76043g += iE;
                    j12 -= (long) iE;
                }
            }
            t3.c cVar = this.f76039c;
            int i13 = cVar.f76049e;
            int i14 = this.f76043g / i13;
            if (i14 > 0) {
                long jE1 = this.f76042f + a1.e1(this.f76044h, 1000000L, cVar.f76047c);
                int i15 = i14 * i13;
                int i16 = this.f76043g - i15;
                this.f76038b.d(jE1, 1, i15, i16, null);
                this.f76044h += (long) i14;
                this.f76043g = i16;
            }
            return j12 <= 0;
        }
    }

    private void g() {
        androidx.media3.common.util.a.i(this.f76017b);
        a1.i(this.f76016a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r[] h() {
        return new r[]{new b()};
    }

    private void i(l2.s sVar) throws ParserException {
        androidx.media3.common.util.a.g(sVar.getPosition() == 0);
        int i11 = this.f76021f;
        if (i11 != -1) {
            sVar.skipFully(i11);
            this.f76018c = 4;
        } else {
            if (!d.a(sVar)) {
                throw ParserException.createForMalformedContainer("Unsupported or unrecognized wav file type.", null);
            }
            sVar.skipFully((int) (sVar.getPeekPosition() - sVar.getPosition()));
            this.f76018c = 1;
        }
    }

    private void j(l2.s sVar) throws ParserException {
        t3.c cVarB = d.b(sVar);
        int i11 = cVarB.f76045a;
        if (i11 == 17) {
            this.f76020e = new a(this.f76016a, this.f76017b, cVarB);
        } else if (i11 == 6) {
            this.f76020e = new c(this.f76016a, this.f76017b, cVarB, MimeTypes.AUDIO_ALAW, -1);
        } else if (i11 == 7) {
            this.f76020e = new c(this.f76016a, this.f76017b, cVarB, MimeTypes.AUDIO_MLAW, -1);
        } else {
            int iA = w0.a(i11, cVarB.f76050f);
            if (iA == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Unsupported WAV format type: " + cVarB.f76045a);
            }
            this.f76020e = new c(this.f76016a, this.f76017b, cVarB, MimeTypes.AUDIO_RAW, iA);
        }
        this.f76018c = 3;
    }

    private void k(l2.s sVar) {
        this.f76019d = d.c(sVar);
        this.f76018c = 2;
    }

    private int l(l2.s sVar) {
        androidx.media3.common.util.a.g(this.f76022g != -1);
        return ((InterfaceC0920b) androidx.media3.common.util.a.e(this.f76020e)).c(sVar, this.f76022g - sVar.getPosition()) ? -1 : 0;
    }

    private void m(l2.s sVar) throws ParserException {
        Pair pairE = d.e(sVar);
        this.f76021f = ((Long) pairE.first).intValue();
        long jLongValue = ((Long) pairE.second).longValue();
        long j11 = this.f76019d;
        if (j11 != -1 && jLongValue == 4294967295L) {
            jLongValue = j11;
        }
        this.f76022g = ((long) this.f76021f) + jLongValue;
        long length = sVar.getLength();
        if (length != -1 && this.f76022g > length) {
            u.h("WavExtractor", "Data exceeds input length: " + this.f76022g + ", " + length);
            this.f76022g = length;
        }
        ((InterfaceC0920b) androidx.media3.common.util.a.e(this.f76020e)).a(this.f76021f, this.f76022g);
        this.f76018c = 4;
    }

    @Override // l2.r
    public void b(t tVar) {
        this.f76016a = tVar;
        this.f76017b = tVar.track(0, 1);
        tVar.endTracks();
    }

    @Override // l2.r
    public int c(l2.s sVar, l0 l0Var) throws ParserException {
        g();
        int i11 = this.f76018c;
        if (i11 == 0) {
            i(sVar);
            return 0;
        }
        if (i11 == 1) {
            k(sVar);
            return 0;
        }
        if (i11 == 2) {
            j(sVar);
            return 0;
        }
        if (i11 == 3) {
            m(sVar);
            return 0;
        }
        if (i11 == 4) {
            return l(sVar);
        }
        throw new IllegalStateException();
    }

    @Override // l2.r
    public boolean d(l2.s sVar) {
        return d.a(sVar);
    }

    @Override // l2.r
    public /* synthetic */ r e() {
        return q.b(this);
    }

    @Override // l2.r
    public /* synthetic */ List f() {
        return q.a(this);
    }

    @Override // l2.r
    public void release() {
    }

    @Override // l2.r
    public void seek(long j11, long j12) {
        this.f76018c = j11 == 0 ? 0 : 4;
        InterfaceC0920b interfaceC0920b = this.f76020e;
        if (interfaceC0920b != null) {
            interfaceC0920b.b(j12);
        }
    }
}
