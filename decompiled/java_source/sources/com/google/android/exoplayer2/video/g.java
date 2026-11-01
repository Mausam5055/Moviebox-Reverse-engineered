package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.y2;
import com.google.android.gms.common.Scopes;
import com.google.common.collect.ImmutableList;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class g extends MediaCodecRenderer {
    private static final int[] G1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static boolean H1;
    private static boolean I1;
    private float A1;
    private y B1;
    private boolean C1;
    private int D1;
    b E1;
    private i F1;
    private final Context G0;
    private final k H0;
    private final w.a I0;
    private final long J0;
    private final int K0;
    private final boolean L0;
    private a M0;
    private boolean N0;
    private boolean O0;
    private Surface P0;
    private PlaceholderSurface Q0;
    private boolean R0;
    private int S0;
    private boolean T0;
    private boolean U0;
    private boolean V0;
    private long W0;
    private long X0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private long f27854p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private int f27855q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private int f27856r1;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    private int f27857s1;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    private long f27858t1;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    private long f27859u1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private long f27860v1;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    private int f27861w1;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    private int f27862x1;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    private int f27863y1;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    private int f27864z1;

    protected static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27865a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f27866b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f27867c;

        public a(int i11, int i12, int i13) {
            this.f27865a = i11;
            this.f27866b = i12;
            this.f27867c = i13;
        }
    }

    private final class b implements com.google.android.exoplayer2.mediacodec.l.c, Handler.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f27868a;

        public b(com.google.android.exoplayer2.mediacodec.l lVar) {
            Handler handlerX = p0.x(this);
            this.f27868a = handlerX;
            lVar.m(this, handlerX);
        }

        private void b(long j11) {
            g gVar = g.this;
            if (this != gVar.E1) {
                return;
            }
            if (j11 == Long.MAX_VALUE) {
                gVar.x1();
                return;
            }
            try {
                gVar.w1(j11);
            } catch (ExoPlaybackException e11) {
                g.this.M0(e11);
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.l.c
        public void a(com.google.android.exoplayer2.mediacodec.l lVar, long j11, long j12) {
            if (p0.f27626a >= 30) {
                b(j11);
            } else {
                this.f27868a.sendMessageAtFrontOfQueue(Message.obtain(this.f27868a, 0, (int) (j11 >> 32), (int) j11));
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(p0.a1(message.arg1, message.arg2));
            return true;
        }
    }

    public g(Context context, com.google.android.exoplayer2.mediacodec.l.b bVar, com.google.android.exoplayer2.mediacodec.o oVar, long j11, boolean z10, Handler handler, w wVar, int i11) {
        this(context, bVar, oVar, j11, z10, handler, wVar, i11, 30.0f);
    }

    public g(Context context, com.google.android.exoplayer2.mediacodec.l.b bVar, com.google.android.exoplayer2.mediacodec.o oVar, long j11, boolean z10, Handler handler, w wVar, int i11, float f11) {
        super(2, bVar, oVar, z10, f11);
        this.J0 = j11;
        this.K0 = i11;
        Context applicationContext = context.getApplicationContext();
        this.G0 = applicationContext;
        this.H0 = new k(applicationContext);
        this.I0 = new w.a(handler, wVar);
        this.L0 = d1();
        this.X0 = C.TIME_UNSET;
        this.f27862x1 = -1;
        this.f27863y1 = -1;
        this.A1 = -1.0f;
        this.S0 = 1;
        this.D1 = 0;
        a1();
    }

    private static void B1(com.google.android.exoplayer2.mediacodec.l lVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        lVar.b(bundle);
    }

    private void C1() {
        this.X0 = this.J0 > 0 ? SystemClock.elapsedRealtime() + this.J0 : C.TIME_UNSET;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.exoplayer2.video.k] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.exoplayer2.h, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.video.g] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.view.Surface] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.google.android.exoplayer2.video.PlaceholderSurface] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void D1(Object obj) throws ExoPlaybackException {
        ?? NewInstanceV17;
        Surface surface;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            NewInstanceV17 = 0;
        }
        if (NewInstanceV17 == 0) {
            PlaceholderSurface placeholderSurface = this.Q0;
            if (placeholderSurface != null) {
                NewInstanceV17 = surface;
                NewInstanceV17 = placeholderSurface;
            } else {
                com.google.android.exoplayer2.mediacodec.m mVarY = Y();
                if (mVarY != null && I1(mVarY)) {
                    NewInstanceV17 = surface;
                    NewInstanceV17 = PlaceholderSurface.newInstanceV17(this.G0, mVarY.f25404g);
                    this.Q0 = NewInstanceV17;
                }
            }
        }
        NewInstanceV17 = surface;
        NewInstanceV17 = surface;
        NewInstanceV17 = surface;
        if (this.P0 == NewInstanceV17) {
            if (NewInstanceV17 == 0 || NewInstanceV17 == this.Q0) {
                return;
            }
            u1();
            t1();
            return;
        }
        this.P0 = NewInstanceV17;
        this.H0.m(NewInstanceV17);
        this.R0 = false;
        int state = getState();
        com.google.android.exoplayer2.mediacodec.l lVarX = X();
        if (lVarX != null) {
            if (p0.f27626a < 23 || NewInstanceV17 == 0 || this.N0) {
                E0();
                p0();
            } else {
                E1(lVarX, NewInstanceV17);
            }
        }
        if (NewInstanceV17 == 0 || NewInstanceV17 == this.Q0) {
            a1();
            Z0();
            return;
        }
        u1();
        Z0();
        if (state == 2) {
            C1();
        }
    }

    private boolean I1(com.google.android.exoplayer2.mediacodec.m mVar) {
        return p0.f27626a >= 23 && !this.C1 && !b1(mVar.f25398a) && (!mVar.f25404g || PlaceholderSurface.isSecureSupported(this.G0));
    }

    private void Z0() {
        com.google.android.exoplayer2.mediacodec.l lVarX;
        this.T0 = false;
        if (p0.f27626a < 23 || !this.C1 || (lVarX = X()) == null) {
            return;
        }
        this.E1 = new b(lVarX);
    }

    private void a1() {
        this.B1 = null;
    }

    private static void c1(MediaFormat mediaFormat, int i11) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i11);
    }

    private static boolean d1() {
        return "NVIDIA".equals(p0.f27628c);
    }

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
    private static boolean f1() {
        /*
            Method dump skipped, instruction units count: 3062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.g.f1():boolean");
    }

    public static int g1(com.google.android.exoplayer2.mediacodec.m mVar, o1 o1Var) {
        int iL;
        int iIntValue;
        int i11 = 4;
        byte b11 = 1;
        int i12 = o1Var.f25501q;
        int i13 = o1Var.f25502r;
        if (i12 == -1 || i13 == -1) {
            return -1;
        }
        String str = o1Var.f25496l;
        if ("video/dolby-vision".equals(str)) {
            Pair pairQ = MediaCodecUtil.q(o1Var);
            str = (pairQ == null || !((iIntValue = ((Integer) pairQ.first).intValue()) == 512 || iIntValue == 1 || iIntValue == 2)) ? MimeTypes.VIDEO_H265 : MimeTypes.VIDEO_H264;
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1664118616:
                b11 = !str.equals(MimeTypes.VIDEO_H263) ? (byte) -1 : (byte) 0;
                break;
            case -1662735862:
                if (!str.equals("video/av01")) {
                    b11 = -1;
                }
                break;
            case -1662541442:
                b11 = !str.equals(MimeTypes.VIDEO_H265) ? (byte) -1 : (byte) 2;
                break;
            case 1187890754:
                b11 = !str.equals(MimeTypes.VIDEO_MP4V) ? (byte) -1 : (byte) 3;
                break;
            case 1331836730:
                b11 = !str.equals(MimeTypes.VIDEO_H264) ? (byte) -1 : (byte) 4;
                break;
            case 1599127256:
                b11 = !str.equals(MimeTypes.VIDEO_VP8) ? (byte) -1 : (byte) 5;
                break;
            case 1599127257:
                b11 = !str.equals(MimeTypes.VIDEO_VP9) ? (byte) -1 : (byte) 6;
                break;
            default:
                b11 = -1;
                break;
        }
        switch (b11) {
            case 0:
            case 1:
            case 3:
            case 5:
                iL = i12 * i13;
                i11 = 2;
                return (iL * 3) / (i11 * 2);
            case 2:
            case 6:
                iL = i12 * i13;
                return (iL * 3) / (i11 * 2);
            case 4:
                String str2 = p0.f27629d;
                if ("BRAVIA 4K 2015".equals(str2) || ("Amazon".equals(p0.f27628c) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && mVar.f25404g)))) {
                    return -1;
                }
                iL = p0.l(i12, 16) * p0.l(i13, 16) * 256;
                i11 = 2;
                return (iL * 3) / (i11 * 2);
            default:
                return -1;
        }
    }

    private static Point h1(com.google.android.exoplayer2.mediacodec.m mVar, o1 o1Var) {
        int i11 = o1Var.f25502r;
        int i12 = o1Var.f25501q;
        boolean z10 = i11 > i12;
        int i13 = z10 ? i11 : i12;
        if (z10) {
            i11 = i12;
        }
        float f11 = i11 / i13;
        for (int i14 : G1) {
            int i15 = (int) (i14 * f11);
            if (i14 <= i13 || i15 <= i11) {
                break;
            }
            if (p0.f27626a >= 21) {
                int i16 = z10 ? i15 : i14;
                if (!z10) {
                    i14 = i15;
                }
                Point pointB = mVar.b(i16, i14);
                if (mVar.u(pointB.x, pointB.y, o1Var.f25503s)) {
                    return pointB;
                }
            } else {
                try {
                    int iL = p0.l(i14, 16) * 16;
                    int iL2 = p0.l(i15, 16) * 16;
                    if (iL * iL2 <= MediaCodecUtil.N()) {
                        int i17 = z10 ? iL2 : iL;
                        if (!z10) {
                            iL = iL2;
                        }
                        return new Point(i17, iL);
                    }
                } catch (MediaCodecUtil.DecoderQueryException unused) {
                }
            }
        }
        return null;
    }

    private static List j1(com.google.android.exoplayer2.mediacodec.o oVar, o1 o1Var, boolean z10, boolean z11) {
        String str = o1Var.f25496l;
        if (str == null) {
            return ImmutableList.of();
        }
        List listA = oVar.a(str, z10, z11);
        String strM = MediaCodecUtil.m(o1Var);
        if (strM == null) {
            return ImmutableList.copyOf((Collection) listA);
        }
        return ImmutableList.builder().l(listA).l(oVar.a(strM, z10, z11)).e();
    }

    protected static int k1(com.google.android.exoplayer2.mediacodec.m mVar, o1 o1Var) {
        if (o1Var.f25497m == -1) {
            return g1(mVar, o1Var);
        }
        int size = o1Var.f25498n.size();
        int length = 0;
        for (int i11 = 0; i11 < size; i11++) {
            length += ((byte[]) o1Var.f25498n.get(i11)).length;
        }
        return o1Var.f25497m + length;
    }

    private static boolean m1(long j11) {
        return j11 < -30000;
    }

    private static boolean n1(long j11) {
        return j11 < -500000;
    }

    private void p1() {
        if (this.f27855q1 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.I0.n(this.f27855q1, jElapsedRealtime - this.f27854p1);
            this.f27855q1 = 0;
            this.f27854p1 = jElapsedRealtime;
        }
    }

    private void r1() {
        int i11 = this.f27861w1;
        if (i11 != 0) {
            this.I0.B(this.f27860v1, i11);
            this.f27860v1 = 0L;
            this.f27861w1 = 0;
        }
    }

    private void s1() {
        int i11 = this.f27862x1;
        if (i11 == -1 && this.f27863y1 == -1) {
            return;
        }
        y yVar = this.B1;
        if (yVar != null && yVar.f28009a == i11 && yVar.f28010b == this.f27863y1 && yVar.f28011c == this.f27864z1 && yVar.f28012d == this.A1) {
            return;
        }
        y yVar2 = new y(this.f27862x1, this.f27863y1, this.f27864z1, this.A1);
        this.B1 = yVar2;
        this.I0.D(yVar2);
    }

    private void t1() {
        if (this.R0) {
            this.I0.A(this.P0);
        }
    }

    private void u1() {
        y yVar = this.B1;
        if (yVar != null) {
            this.I0.D(yVar);
        }
    }

    private void v1(long j11, long j12, o1 o1Var) {
        i iVar = this.F1;
        if (iVar != null) {
            iVar.f(j11, j12, o1Var, b0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x1() {
        L0();
    }

    private void y1() {
        Surface surface = this.P0;
        PlaceholderSurface placeholderSurface = this.Q0;
        if (surface == placeholderSurface) {
            this.P0 = null;
        }
        placeholderSurface.release();
        this.Q0 = null;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean A0(long j11, long j12, com.google.android.exoplayer2.mediacodec.l lVar, ByteBuffer byteBuffer, int i11, int i12, int i13, long j13, boolean z10, boolean z11, o1 o1Var) {
        com.google.android.exoplayer2.util.a.e(lVar);
        if (this.W0 == C.TIME_UNSET) {
            this.W0 = j11;
        }
        if (j13 != this.f27858t1) {
            this.H0.h(j13);
            this.f27858t1 = j13;
        }
        long jF0 = f0();
        long j14 = j13 - jF0;
        if (z10 && !z11) {
            J1(lVar, i11, j14);
            return true;
        }
        double dG0 = g0();
        boolean z12 = getState() == 2;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j15 = (long) ((j13 - j11) / dG0);
        if (z12) {
            j15 -= jElapsedRealtime - j12;
        }
        if (this.P0 == this.Q0) {
            if (!m1(j15)) {
                return false;
            }
            J1(lVar, i11, j14);
            L1(j15);
            return true;
        }
        long j16 = jElapsedRealtime - this.f27859u1;
        boolean z13 = this.V0 ? !this.T0 : z12 || this.U0;
        if (this.X0 == C.TIME_UNSET && j11 >= jF0 && (z13 || (z12 && H1(j15, j16)))) {
            long jNanoTime = System.nanoTime();
            v1(j14, jNanoTime, o1Var);
            if (p0.f27626a >= 21) {
                A1(lVar, i11, j14, jNanoTime);
            } else {
                z1(lVar, i11, j14);
            }
            L1(j15);
            return true;
        }
        if (z12 && j11 != this.W0) {
            long jNanoTime2 = System.nanoTime();
            long jB = this.H0.b((j15 * 1000) + jNanoTime2);
            long j17 = (jB - jNanoTime2) / 1000;
            boolean z14 = this.X0 != C.TIME_UNSET;
            if (F1(j17, j12, z11) && o1(j11, z14)) {
                return false;
            }
            if (G1(j17, j12, z11)) {
                if (z14) {
                    J1(lVar, i11, j14);
                } else {
                    e1(lVar, i11, j14);
                }
                L1(j17);
                return true;
            }
            if (p0.f27626a >= 21) {
                if (j17 < 50000) {
                    v1(j14, jB, o1Var);
                    A1(lVar, i11, j14, jB);
                    L1(j17);
                    return true;
                }
            } else if (j17 < 30000) {
                if (j17 > 11000) {
                    try {
                        Thread.sleep((j17 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                v1(j14, jB, o1Var);
                z1(lVar, i11, j14);
                L1(j17);
                return true;
            }
        }
        return false;
    }

    protected void A1(com.google.android.exoplayer2.mediacodec.l lVar, int i11, long j11, long j12) {
        s1();
        m0.a("releaseOutputBuffer");
        lVar.h(i11, j12);
        m0.c();
        this.f27859u1 = SystemClock.elapsedRealtime() * 1000;
        this.B0.f24879e++;
        this.f27856r1 = 0;
        q1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected com.google.android.exoplayer2.decoder.g B(com.google.android.exoplayer2.mediacodec.m mVar, o1 o1Var, o1 o1Var2) {
        com.google.android.exoplayer2.decoder.g gVarE = mVar.e(o1Var, o1Var2);
        int i11 = gVarE.f24893e;
        int i12 = o1Var2.f25501q;
        a aVar = this.M0;
        if (i12 > aVar.f27865a || o1Var2.f25502r > aVar.f27866b) {
            i11 |= 256;
        }
        if (k1(mVar, o1Var2) > this.M0.f27867c) {
            i11 |= 64;
        }
        int i13 = i11;
        return new com.google.android.exoplayer2.decoder.g(mVar.f25398a, o1Var, o1Var2, i13 != 0 ? 0 : gVarE.f24892d, i13);
    }

    protected void E1(com.google.android.exoplayer2.mediacodec.l lVar, Surface surface) {
        lVar.e(surface);
    }

    protected boolean F1(long j11, long j12, boolean z10) {
        return n1(j11) && !z10;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void G0() {
        super.G0();
        this.f27857s1 = 0;
    }

    protected boolean G1(long j11, long j12, boolean z10) {
        return m1(j11) && !z10;
    }

    protected boolean H1(long j11, long j12) {
        return m1(j11) && j12 > 100000;
    }

    protected void J1(com.google.android.exoplayer2.mediacodec.l lVar, int i11, long j11) {
        m0.a("skipVideoBuffer");
        lVar.k(i11, false);
        m0.c();
        this.B0.f24880f++;
    }

    protected void K1(int i11, int i12) {
        com.google.android.exoplayer2.decoder.e eVar = this.B0;
        eVar.f24882h += i11;
        int i13 = i11 + i12;
        eVar.f24881g += i13;
        this.f27855q1 += i13;
        int i14 = this.f27856r1 + i13;
        this.f27856r1 = i14;
        eVar.f24883i = Math.max(i14, eVar.f24883i);
        int i15 = this.K0;
        if (i15 <= 0 || this.f27855q1 < i15) {
            return;
        }
        p1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected MediaCodecDecoderException L(Throwable th2, com.google.android.exoplayer2.mediacodec.m mVar) {
        return new MediaCodecVideoDecoderException(th2, mVar, this.P0);
    }

    protected void L1(long j11) {
        this.B0.a(j11);
        this.f27860v1 += j11;
        this.f27861w1++;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean P0(com.google.android.exoplayer2.mediacodec.m mVar) {
        return this.P0 != null || I1(mVar);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected int S0(com.google.android.exoplayer2.mediacodec.o oVar, o1 o1Var) {
        boolean z10;
        int i11 = 0;
        if (!com.google.android.exoplayer2.util.w.t(o1Var.f25496l)) {
            return y2.a(0);
        }
        boolean z11 = o1Var.f25499o != null;
        List listJ1 = j1(oVar, o1Var, z11, false);
        if (z11 && listJ1.isEmpty()) {
            listJ1 = j1(oVar, o1Var, false, false);
        }
        if (listJ1.isEmpty()) {
            return y2.a(1);
        }
        if (!MediaCodecRenderer.T0(o1Var)) {
            return y2.a(2);
        }
        com.google.android.exoplayer2.mediacodec.m mVar = (com.google.android.exoplayer2.mediacodec.m) listJ1.get(0);
        boolean zM = mVar.m(o1Var);
        if (!zM) {
            int i12 = 1;
            while (true) {
                if (i12 >= listJ1.size()) {
                    z10 = true;
                    break;
                }
                com.google.android.exoplayer2.mediacodec.m mVar2 = (com.google.android.exoplayer2.mediacodec.m) listJ1.get(i12);
                if (mVar2.m(o1Var)) {
                    z10 = false;
                    zM = true;
                    mVar = mVar2;
                    break;
                }
                i12++;
            }
        } else {
            z10 = true;
            break;
        }
        int i13 = zM ? 4 : 3;
        int i14 = mVar.p(o1Var) ? 16 : 8;
        int i15 = mVar.f25405h ? 64 : 0;
        int i16 = z10 ? 128 : 0;
        if (zM) {
            List listJ2 = j1(oVar, o1Var, z11, true);
            if (!listJ2.isEmpty()) {
                com.google.android.exoplayer2.mediacodec.m mVar3 = (com.google.android.exoplayer2.mediacodec.m) MediaCodecUtil.u(listJ2, o1Var).get(0);
                if (mVar3.m(o1Var) && mVar3.p(o1Var)) {
                    i11 = 32;
                }
            }
        }
        return y2.c(i13, i14, i11, i15, i16);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean Z() {
        return this.C1 && p0.f27626a < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected float a0(float f11, o1 o1Var, o1[] o1VarArr) {
        float fMax = -1.0f;
        for (o1 o1Var2 : o1VarArr) {
            float f12 = o1Var2.f25503s;
            if (f12 != -1.0f) {
                fMax = Math.max(fMax, f12);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f11;
    }

    protected boolean b1(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (g.class) {
            try {
                if (!H1) {
                    I1 = f1();
                    H1 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return I1;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected List c0(com.google.android.exoplayer2.mediacodec.o oVar, o1 o1Var, boolean z10) {
        return MediaCodecUtil.u(j1(oVar, o1Var, z10, this.C1), o1Var);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.h, com.google.android.exoplayer2.x2
    public void d(float f11, float f12) throws ExoPlaybackException {
        super.d(f11, f12);
        this.H0.i(f11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected com.google.android.exoplayer2.mediacodec.l.a e0(com.google.android.exoplayer2.mediacodec.m mVar, o1 o1Var, MediaCrypto mediaCrypto, float f11) {
        PlaceholderSurface placeholderSurface = this.Q0;
        if (placeholderSurface != null && placeholderSurface.secure != mVar.f25404g) {
            y1();
        }
        String str = mVar.f25400c;
        a aVarI1 = i1(mVar, o1Var, n());
        this.M0 = aVarI1;
        MediaFormat mediaFormatL1 = l1(o1Var, str, aVarI1, f11, this.L0, this.C1 ? this.D1 : 0);
        if (this.P0 == null) {
            if (!I1(mVar)) {
                throw new IllegalStateException();
            }
            if (this.Q0 == null) {
                this.Q0 = PlaceholderSurface.newInstanceV17(this.G0, mVar.f25404g);
            }
            this.P0 = this.Q0;
        }
        return com.google.android.exoplayer2.mediacodec.l.a.b(mVar, mediaFormatL1, o1Var, this.P0, mediaCrypto);
    }

    protected void e1(com.google.android.exoplayer2.mediacodec.l lVar, int i11, long j11) {
        m0.a("dropVideoBuffer");
        lVar.k(i11, false);
        m0.c();
        K1(0, 1);
    }

    @Override // com.google.android.exoplayer2.x2, com.google.android.exoplayer2.z2
    public String getName() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void h0(DecoderInputBuffer decoderInputBuffer) {
        if (this.O0) {
            ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(decoderInputBuffer.f24846f);
            if (byteBuffer.remaining() >= 7) {
                byte b11 = byteBuffer.get();
                short s11 = byteBuffer.getShort();
                short s12 = byteBuffer.getShort();
                byte b12 = byteBuffer.get();
                byte b13 = byteBuffer.get();
                byteBuffer.position(0);
                if (b11 == -75 && s11 == 60 && s12 == 1 && b12 == 4 && b13 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    B1(X(), bArr);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.h, com.google.android.exoplayer2.s2.b
    public void handleMessage(int i11, Object obj) throws ExoPlaybackException {
        if (i11 == 1) {
            D1(obj);
            return;
        }
        if (i11 == 7) {
            this.F1 = (i) obj;
            return;
        }
        if (i11 == 10) {
            int iIntValue = ((Integer) obj).intValue();
            if (this.D1 != iIntValue) {
                this.D1 = iIntValue;
                if (this.C1) {
                    E0();
                    return;
                }
                return;
            }
            return;
        }
        if (i11 != 4) {
            if (i11 != 5) {
                super.handleMessage(i11, obj);
                return;
            } else {
                this.H0.o(((Integer) obj).intValue());
                return;
            }
        }
        this.S0 = ((Integer) obj).intValue();
        com.google.android.exoplayer2.mediacodec.l lVarX = X();
        if (lVarX != null) {
            lVarX.setVideoScalingMode(this.S0);
        }
    }

    protected a i1(com.google.android.exoplayer2.mediacodec.m mVar, o1 o1Var, o1[] o1VarArr) {
        int iG1;
        int iMax = o1Var.f25501q;
        int iMax2 = o1Var.f25502r;
        int iK1 = k1(mVar, o1Var);
        if (o1VarArr.length == 1) {
            if (iK1 != -1 && (iG1 = g1(mVar, o1Var)) != -1) {
                iK1 = Math.min((int) (iK1 * 1.5f), iG1);
            }
            return new a(iMax, iMax2, iK1);
        }
        int length = o1VarArr.length;
        boolean z10 = false;
        for (int i11 = 0; i11 < length; i11++) {
            o1 o1VarE = o1VarArr[i11];
            if (o1Var.f25508x != null && o1VarE.f25508x == null) {
                o1VarE = o1VarE.b().J(o1Var.f25508x).E();
            }
            if (mVar.e(o1Var, o1VarE).f24892d != 0) {
                int i12 = o1VarE.f25501q;
                z10 |= i12 == -1 || o1VarE.f25502r == -1;
                iMax = Math.max(iMax, i12);
                iMax2 = Math.max(iMax2, o1VarE.f25502r);
                iK1 = Math.max(iK1, k1(mVar, o1VarE));
            }
        }
        if (z10) {
            com.google.android.exoplayer2.util.s.i("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
            Point pointH1 = h1(mVar, o1Var);
            if (pointH1 != null) {
                iMax = Math.max(iMax, pointH1.x);
                iMax2 = Math.max(iMax2, pointH1.y);
                iK1 = Math.max(iK1, g1(mVar, o1Var.b().j0(iMax).Q(iMax2).E()));
                com.google.android.exoplayer2.util.s.i("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
            }
        }
        return new a(iMax, iMax2, iK1);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.x2
    public boolean isReady() {
        PlaceholderSurface placeholderSurface;
        if (super.isReady() && (this.T0 || (((placeholderSurface = this.Q0) != null && this.P0 == placeholderSurface) || X() == null || this.C1))) {
            this.X0 = C.TIME_UNSET;
            return true;
        }
        if (this.X0 == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.X0) {
            return true;
        }
        this.X0 = C.TIME_UNSET;
        return false;
    }

    protected MediaFormat l1(o1 o1Var, String str, a aVar, float f11, boolean z10, int i11) {
        Pair pairQ;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", o1Var.f25501q);
        mediaFormat.setInteger("height", o1Var.f25502r);
        com.google.android.exoplayer2.util.v.e(mediaFormat, o1Var.f25498n);
        com.google.android.exoplayer2.util.v.c(mediaFormat, "frame-rate", o1Var.f25503s);
        com.google.android.exoplayer2.util.v.d(mediaFormat, "rotation-degrees", o1Var.f25504t);
        com.google.android.exoplayer2.util.v.b(mediaFormat, o1Var.f25508x);
        if ("video/dolby-vision".equals(o1Var.f25496l) && (pairQ = MediaCodecUtil.q(o1Var)) != null) {
            com.google.android.exoplayer2.util.v.d(mediaFormat, Scopes.PROFILE, ((Integer) pairQ.first).intValue());
        }
        mediaFormat.setInteger("max-width", aVar.f27865a);
        mediaFormat.setInteger("max-height", aVar.f27866b);
        com.google.android.exoplayer2.util.v.d(mediaFormat, "max-input-size", aVar.f27867c);
        if (p0.f27626a >= 23) {
            mediaFormat.setInteger(TrackingKey.PRIORITY, 0);
            if (f11 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f11);
            }
        }
        if (z10) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i11 != 0) {
            c1(mediaFormat, i11);
        }
        return mediaFormat;
    }

    protected boolean o1(long j11, boolean z10) throws ExoPlaybackException {
        int iY = y(j11);
        if (iY == 0) {
            return false;
        }
        if (z10) {
            com.google.android.exoplayer2.decoder.e eVar = this.B0;
            eVar.f24878d += iY;
            eVar.f24880f += this.f27857s1;
        } else {
            this.B0.f24884j++;
            K1(iY, this.f27857s1);
        }
        U();
        return true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.h
    protected void p() {
        a1();
        Z0();
        this.R0 = false;
        this.E1 = null;
        try {
            super.p();
        } finally {
            this.I0.m(this.B0);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.h
    protected void q(boolean z10, boolean z11) {
        super.q(z10, z11);
        boolean z12 = j().f24528a;
        com.google.android.exoplayer2.util.a.g((z12 && this.D1 == 0) ? false : true);
        if (this.C1 != z12) {
            this.C1 = z12;
            E0();
        }
        this.I0.o(this.B0);
        this.U0 = z11;
        this.V0 = false;
    }

    void q1() {
        this.V0 = true;
        if (this.T0) {
            return;
        }
        this.T0 = true;
        this.I0.A(this.P0);
        this.R0 = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.h
    protected void r(long j11, boolean z10) throws ExoPlaybackException {
        super.r(j11, z10);
        Z0();
        this.H0.j();
        this.f27858t1 = C.TIME_UNSET;
        this.W0 = C.TIME_UNSET;
        this.f27856r1 = 0;
        if (z10) {
            C1();
        } else {
            this.X0 = C.TIME_UNSET;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void r0(Exception exc) {
        com.google.android.exoplayer2.util.s.d("MediaCodecVideoRenderer", "Video codec error", exc);
        this.I0.C(exc);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.h
    protected void s() {
        try {
            super.s();
        } finally {
            if (this.Q0 != null) {
                y1();
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void s0(String str, com.google.android.exoplayer2.mediacodec.l.a aVar, long j11, long j12) {
        this.I0.k(str, j11, j12);
        this.N0 = b1(str);
        this.O0 = ((com.google.android.exoplayer2.mediacodec.m) com.google.android.exoplayer2.util.a.e(Y())).n();
        if (p0.f27626a < 23 || !this.C1) {
            return;
        }
        this.E1 = new b((com.google.android.exoplayer2.mediacodec.l) com.google.android.exoplayer2.util.a.e(X()));
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.h
    protected void t() {
        super.t();
        this.f27855q1 = 0;
        this.f27854p1 = SystemClock.elapsedRealtime();
        this.f27859u1 = SystemClock.elapsedRealtime() * 1000;
        this.f27860v1 = 0L;
        this.f27861w1 = 0;
        this.H0.k();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void t0(String str) {
        this.I0.l(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.h
    protected void u() {
        this.X0 = C.TIME_UNSET;
        p1();
        r1();
        this.H0.l();
        super.u();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected com.google.android.exoplayer2.decoder.g u0(p1 p1Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.g gVarU0 = super.u0(p1Var);
        this.I0.p(p1Var.f25598b, gVarU0);
        return gVarU0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void v0(o1 o1Var, MediaFormat mediaFormat) {
        com.google.android.exoplayer2.mediacodec.l lVarX = X();
        if (lVarX != null) {
            lVarX.setVideoScalingMode(this.S0);
        }
        if (this.C1) {
            this.f27862x1 = o1Var.f25501q;
            this.f27863y1 = o1Var.f25502r;
        } else {
            com.google.android.exoplayer2.util.a.e(mediaFormat);
            boolean z10 = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            this.f27862x1 = z10 ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            this.f27863y1 = z10 ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        }
        float f11 = o1Var.f25505u;
        this.A1 = f11;
        if (p0.f27626a >= 21) {
            int i11 = o1Var.f25504t;
            if (i11 == 90 || i11 == 270) {
                int i12 = this.f27862x1;
                this.f27862x1 = this.f27863y1;
                this.f27863y1 = i12;
                this.A1 = 1.0f / f11;
            }
        } else {
            this.f27864z1 = o1Var.f25504t;
        }
        this.H0.g(o1Var.f25503s);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void w0(long j11) {
        super.w0(j11);
        if (this.C1) {
            return;
        }
        this.f27857s1--;
    }

    protected void w1(long j11) {
        W0(j11);
        s1();
        this.B0.f24879e++;
        q1();
        w0(j11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void x0() {
        super.x0();
        Z0();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void y0(DecoderInputBuffer decoderInputBuffer) {
        boolean z10 = this.C1;
        if (!z10) {
            this.f27857s1++;
        }
        if (p0.f27626a >= 23 || !z10) {
            return;
        }
        w1(decoderInputBuffer.f24845e);
    }

    protected void z1(com.google.android.exoplayer2.mediacodec.l lVar, int i11, long j11) {
        s1();
        m0.a("releaseOutputBuffer");
        lVar.k(i11, true);
        m0.c();
        this.f27859u1 = SystemClock.elapsedRealtime() * 1000;
        this.B0.f24879e++;
        this.f27856r1 = 0;
        q1();
    }
}
