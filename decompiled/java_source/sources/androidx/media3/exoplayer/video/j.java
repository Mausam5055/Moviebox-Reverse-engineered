package androidx.media3.exoplayer.video;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Pair;
import android.view.Display;
import android.view.Surface;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.m0;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.l0;
import androidx.media3.common.util.q0;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.w3;
import androidx.media3.exoplayer.x3;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.MoreExecutors;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.PriorityQueue;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public class j extends MediaCodecRenderer implements u.b {
    private static final int[] L1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static boolean M1;
    private static boolean N1;
    private m0 A1;
    private int B1;
    private boolean C1;
    private int D1;
    f E1;
    private final Context F0;
    private t F1;
    private final boolean G0;
    private long G1;
    private final i0.a H0;
    private long H1;
    private final int I0;
    private boolean I1;
    private final boolean J0;
    private boolean J1;
    private final u K0;
    private int K1;
    private final u.a L0;
    private final androidx.media3.exoplayer.video.a M0;
    private final long N0;
    private final PriorityQueue O0;
    private e P0;
    private boolean Q0;
    private boolean R0;
    private VideoSink S0;
    private boolean T0;
    private List U0;
    private Surface V0;
    private PlaceholderSurface W0;
    private l0 X0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private boolean f13137p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private int f13138q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private int f13139r1;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    private long f13140s1;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    private int f13141t1;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    private int f13142u1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private int f13143v1;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    private long f13144w1;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    private int f13145x1;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    private long f13146y1;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    private m0 f13147z1;

    class a implements VideoSink.a {
        a() {
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.a
        public void a(VideoSink videoSink) {
            if (j.this.V0 != null) {
                j.this.f2();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.a
        public void b(VideoSink videoSink, m0 m0Var) {
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.a
        public void c(VideoSink videoSink) {
            if (j.this.V0 != null) {
                j.this.A2(0, 1);
            }
        }
    }

    class b implements VideoSink.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.media3.exoplayer.mediacodec.t f13149a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f13150b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ long f13151c;

        b(androidx.media3.exoplayer.mediacodec.t tVar, int i11, long j11) {
            this.f13149a = tVar;
            this.f13150b = i11;
            this.f13151c = j11;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.b
        public void a(long j11) {
            j.this.k2(this.f13149a, this.f13150b, this.f13151c, j11);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.b
        public void b() {
            j.this.x2(this.f13149a, this.f13150b, this.f13151c);
        }
    }

    private static final class c {
        public static boolean a(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            Display display = displayManager != null ? displayManager.getDisplay(0) : null;
            if (display == null || !display.isHdr()) {
                return false;
            }
            for (int i11 : display.getHdrCapabilities().getSupportedHdrTypes()) {
                if (i11 == 1) {
                    return true;
                }
            }
            return false;
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f13153a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f13154b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.exoplayer.mediacodec.t.b f13156d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f13157e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f13158f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Handler f13159g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private i0 f13160h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f13161i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private VideoSink f13163k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f13164l;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.media3.exoplayer.mediacodec.h0 f13155c = androidx.media3.exoplayer.mediacodec.h0.f12211a;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private float f13162j = 30.0f;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private long f13165m = C.TIME_UNSET;

        public d(Context context) {
            this.f13153a = context;
            this.f13156d = androidx.media3.exoplayer.mediacodec.u.a(context);
        }

        public j m() {
            androidx.media3.common.util.a.g(!this.f13154b);
            Handler handler = this.f13159g;
            androidx.media3.common.util.a.g((handler == null && this.f13160h == null) || !(handler == null || this.f13160h == null));
            this.f13154b = true;
            return new j(this);
        }

        public d n(long j11) {
            this.f13165m = j11;
            return this;
        }

        public d o(boolean z10) {
            this.f13164l = z10;
            return this;
        }

        public d p(long j11) {
            this.f13157e = j11;
            return this;
        }

        public d q(androidx.media3.exoplayer.mediacodec.t.b bVar) {
            this.f13156d = bVar;
            return this;
        }

        public d r(boolean z10) {
            this.f13158f = z10;
            return this;
        }

        public d s(Handler handler) {
            this.f13159g = handler;
            return this;
        }

        public d t(i0 i0Var) {
            this.f13160h = i0Var;
            return this;
        }

        public d u(int i11) {
            this.f13161i = i11;
            return this;
        }

        public d v(androidx.media3.exoplayer.mediacodec.h0 h0Var) {
            this.f13155c = h0Var;
            return this;
        }
    }

    protected static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13166a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13167b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f13168c;

        public e(int i11, int i12, int i13) {
            this.f13166a = i11;
            this.f13167b = i12;
            this.f13168c = i13;
        }
    }

    private final class f implements androidx.media3.exoplayer.mediacodec.t.d, Handler.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f13169a;

        public f(androidx.media3.exoplayer.mediacodec.t tVar) {
            Handler handlerB = a1.B(this);
            this.f13169a = handlerB;
            tVar.n(this, handlerB);
        }

        private void b(long j11) {
            j jVar = j.this;
            if (this != jVar.E1 || jVar.l0() == null) {
                return;
            }
            if (j11 == Long.MAX_VALUE) {
                j.this.h2();
                return;
            }
            try {
                j.this.g2(j11);
            } catch (ExoPlaybackException e11) {
                j.this.k1(e11);
            }
        }

        @Override // androidx.media3.exoplayer.mediacodec.t.d
        public void a(androidx.media3.exoplayer.mediacodec.t tVar, long j11, long j12) {
            if (a1.f10350a >= 30) {
                b(j11);
            } else {
                this.f13169a.sendMessageAtFrontOfQueue(Message.obtain(this.f13169a, 0, (int) (j11 >> 32), (int) j11));
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(a1.v1(message.arg1, message.arg2));
            return true;
        }
    }

    protected j(d dVar) {
        super(2, dVar.f13156d, dVar.f13155c, dVar.f13158f, dVar.f13162j);
        Context applicationContext = dVar.f13153a.getApplicationContext();
        this.F0 = applicationContext;
        this.I0 = dVar.f13161i;
        this.S0 = dVar.f13163k;
        this.H0 = new i0.a(dVar.f13159g, dVar.f13160h);
        this.G0 = this.S0 == null;
        this.K0 = new u(applicationContext, this, dVar.f13157e);
        this.L0 = new u.a();
        this.J0 = G1();
        this.X0 = l0.f10407c;
        this.f13138q1 = 1;
        this.f13139r1 = 0;
        this.f13147z1 = m0.f10111e;
        this.D1 = 0;
        this.A1 = null;
        this.B1 = -1000;
        long j11 = C.TIME_UNSET;
        this.G1 = C.TIME_UNSET;
        this.H1 = C.TIME_UNSET;
        this.M0 = dVar.f13164l ? new androidx.media3.exoplayer.video.a() : null;
        this.O0 = new PriorityQueue();
        this.N0 = dVar.f13165m != C.TIME_UNSET ? -dVar.f13165m : j11;
    }

    private void B2(long j11) {
        int i11 = 0;
        while (true) {
            Long l11 = (Long) this.O0.peek();
            if (l11 == null || l11.longValue() >= j11) {
                break;
            }
            i11++;
            this.O0.poll();
        }
        A2(i11, 0);
    }

    private void C2(androidx.media3.exoplayer.source.r.b bVar) {
        androidx.media3.common.e0 e0VarA = A();
        if (e0VarA.q()) {
            this.H1 = C.TIME_UNSET;
        } else {
            this.H1 = e0VarA.h(((androidx.media3.exoplayer.source.r.b) androidx.media3.common.util.a.e(bVar)).f12883a, new androidx.media3.common.e0.b()).k();
        }
    }

    private static boolean G1() {
        return "NVIDIA".equals(Build.MANUFACTURER);
    }

    private static boolean I1() {
        byte b11 = 26;
        int i11 = a1.f10350a;
        if (i11 <= 28) {
            String str = Build.DEVICE;
            str.hashCode();
            switch (str) {
                case "dangal":
                case "dangalFHD":
                case "dangalUHD":
                case "oneday":
                case "aquaman":
                case "magnolia":
                case "once":
                case "machuca":
                    return true;
            }
        }
        if (i11 <= 27 && "HWEML".equals(Build.DEVICE)) {
            return true;
        }
        String str2 = Build.MODEL;
        str2.hashCode();
        switch (str2) {
            case "AFTJMST12":
            case "AFTKMST12":
            case "AFTA":
            case "AFTN":
            case "AFTR":
            case "AFTEU011":
            case "AFTEU014":
            case "AFTSO001":
            case "AFTEUFF014":
                return true;
            default:
                if (i11 <= 26) {
                    String str3 = Build.DEVICE;
                    str3.hashCode();
                    switch (str3.hashCode()) {
                        case -2144781245:
                            b11 = !str3.equals("GIONEE_SWW1609") ? (byte) -1 : (byte) 0;
                            break;
                        case -2144781185:
                            b11 = !str3.equals("GIONEE_SWW1627") ? (byte) -1 : (byte) 1;
                            break;
                        case -2144781160:
                            b11 = !str3.equals("GIONEE_SWW1631") ? (byte) -1 : (byte) 2;
                            break;
                        case -2097309513:
                            b11 = !str3.equals("K50a40") ? (byte) -1 : (byte) 3;
                            break;
                        case -2022874474:
                            b11 = !str3.equals("CP8676_I02") ? (byte) -1 : (byte) 4;
                            break;
                        case -1978993182:
                            b11 = !str3.equals("NX541J") ? (byte) -1 : (byte) 5;
                            break;
                        case -1978990237:
                            b11 = !str3.equals("NX573J") ? (byte) -1 : (byte) 6;
                            break;
                        case -1936688988:
                            b11 = !str3.equals("PGN528") ? (byte) -1 : (byte) 7;
                            break;
                        case -1936688066:
                            b11 = !str3.equals("PGN610") ? (byte) -1 : (byte) 8;
                            break;
                        case -1936688065:
                            b11 = !str3.equals("PGN611") ? (byte) -1 : (byte) 9;
                            break;
                        case -1931988508:
                            b11 = !str3.equals("AquaPowerM") ? (byte) -1 : (byte) 10;
                            break;
                        case -1885099851:
                            b11 = !str3.equals("RAIJIN") ? (byte) -1 : (byte) 11;
                            break;
                        case -1696512866:
                            b11 = !str3.equals("XT1663") ? (byte) -1 : (byte) 12;
                            break;
                        case -1680025915:
                            b11 = !str3.equals("ComioS1") ? (byte) -1 : (byte) 13;
                            break;
                        case -1615810839:
                            b11 = !str3.equals("Phantom6") ? (byte) -1 : (byte) 14;
                            break;
                        case -1600724499:
                            b11 = !str3.equals("pacificrim") ? (byte) -1 : (byte) 15;
                            break;
                        case -1554255044:
                            b11 = !str3.equals("vernee_M5") ? (byte) -1 : (byte) 16;
                            break;
                        case -1481772737:
                            b11 = !str3.equals("panell_dl") ? (byte) -1 : (byte) 17;
                            break;
                        case -1481772730:
                            b11 = !str3.equals("panell_ds") ? (byte) -1 : (byte) 18;
                            break;
                        case -1481772729:
                            b11 = !str3.equals("panell_dt") ? (byte) -1 : (byte) 19;
                            break;
                        case -1320080169:
                            b11 = !str3.equals("GiONEE_GBL7319") ? (byte) -1 : (byte) 20;
                            break;
                        case -1217592143:
                            b11 = !str3.equals("BRAVIA_ATV2") ? (byte) -1 : (byte) 21;
                            break;
                        case -1180384755:
                            b11 = !str3.equals("iris60") ? (byte) -1 : (byte) 22;
                            break;
                        case -1139198265:
                            b11 = !str3.equals("Slate_Pro") ? (byte) -1 : (byte) 23;
                            break;
                        case -1052835013:
                            b11 = !str3.equals("namath") ? (byte) -1 : (byte) 24;
                            break;
                        case -993250464:
                            b11 = !str3.equals("A10-70F") ? (byte) -1 : (byte) 25;
                            break;
                        case -993250458:
                            if (!str3.equals("A10-70L")) {
                                b11 = -1;
                            }
                            break;
                        case -965403638:
                            b11 = !str3.equals("s905x018") ? (byte) -1 : (byte) 27;
                            break;
                        case -958336948:
                            b11 = !str3.equals("ELUGA_Ray_X") ? (byte) -1 : (byte) 28;
                            break;
                        case -879245230:
                            b11 = !str3.equals("tcl_eu") ? (byte) -1 : (byte) 29;
                            break;
                        case -842500323:
                            b11 = !str3.equals("nicklaus_f") ? (byte) -1 : (byte) 30;
                            break;
                        case -821392978:
                            b11 = !str3.equals("A7000-a") ? (byte) -1 : (byte) 31;
                            break;
                        case -797483286:
                            b11 = !str3.equals("SVP-DTV15") ? (byte) -1 : (byte) 32;
                            break;
                        case -794946968:
                            b11 = !str3.equals("watson") ? (byte) -1 : (byte) 33;
                            break;
                        case -788334647:
                            b11 = !str3.equals("whyred") ? (byte) -1 : (byte) 34;
                            break;
                        case -782144577:
                            b11 = !str3.equals("OnePlus5T") ? (byte) -1 : (byte) 35;
                            break;
                        case -575125681:
                            b11 = !str3.equals("GiONEE_CBL7513") ? (byte) -1 : (byte) 36;
                            break;
                        case -521118391:
                            b11 = !str3.equals("GIONEE_GBL7360") ? (byte) -1 : (byte) 37;
                            break;
                        case -430914369:
                            b11 = !str3.equals("Pixi4-7_3G") ? (byte) -1 : (byte) 38;
                            break;
                        case -290434366:
                            b11 = !str3.equals("taido_row") ? (byte) -1 : (byte) 39;
                            break;
                        case -282781963:
                            b11 = !str3.equals("BLACK-1X") ? (byte) -1 : (byte) 40;
                            break;
                        case -277133239:
                            b11 = !str3.equals("Z12_PRO") ? (byte) -1 : (byte) 41;
                            break;
                        case -173639913:
                            b11 = !str3.equals("ELUGA_A3_Pro") ? (byte) -1 : (byte) 42;
                            break;
                        case -56598463:
                            b11 = !str3.equals("woods_fn") ? (byte) -1 : (byte) 43;
                            break;
                        case 2126:
                            b11 = !str3.equals("C1") ? (byte) -1 : (byte) 44;
                            break;
                        case 2564:
                            b11 = !str3.equals("Q5") ? (byte) -1 : (byte) 45;
                            break;
                        case 2715:
                            b11 = !str3.equals("V1") ? (byte) -1 : (byte) 46;
                            break;
                        case 2719:
                            b11 = !str3.equals("V5") ? (byte) -1 : (byte) 47;
                            break;
                        case 3091:
                            b11 = !str3.equals("b5") ? (byte) -1 : (byte) 48;
                            break;
                        case 3483:
                            b11 = !str3.equals("mh") ? (byte) -1 : (byte) 49;
                            break;
                        case 73405:
                            b11 = !str3.equals("JGZ") ? (byte) -1 : (byte) 50;
                            break;
                        case 75537:
                            b11 = !str3.equals("M04") ? (byte) -1 : (byte) 51;
                            break;
                        case 75739:
                            b11 = !str3.equals("M5c") ? (byte) -1 : (byte) 52;
                            break;
                        case 76779:
                            b11 = !str3.equals("MX6") ? (byte) -1 : (byte) 53;
                            break;
                        case 78669:
                            b11 = !str3.equals("P85") ? (byte) -1 : (byte) 54;
                            break;
                        case 79305:
                            b11 = !str3.equals("PLE") ? (byte) -1 : (byte) 55;
                            break;
                        case 80618:
                            b11 = !str3.equals("QX1") ? (byte) -1 : (byte) 56;
                            break;
                        case 88274:
                            b11 = !str3.equals("Z80") ? (byte) -1 : (byte) 57;
                            break;
                        case 98846:
                            b11 = !str3.equals("cv1") ? (byte) -1 : (byte) 58;
                            break;
                        case 98848:
                            b11 = !str3.equals("cv3") ? (byte) -1 : (byte) 59;
                            break;
                        case 99329:
                            b11 = !str3.equals("deb") ? (byte) -1 : (byte) 60;
                            break;
                        case 101481:
                            b11 = !str3.equals("flo") ? (byte) -1 : (byte) 61;
                            break;
                        case 1513190:
                            b11 = !str3.equals("1601") ? (byte) -1 : (byte) 62;
                            break;
                        case 1514184:
                            b11 = !str3.equals("1713") ? (byte) -1 : Utf8.REPLACEMENT_BYTE;
                            break;
                        case 1514185:
                            b11 = !str3.equals("1714") ? (byte) -1 : (byte) 64;
                            break;
                        case 2133089:
                            b11 = !str3.equals("F01H") ? (byte) -1 : (byte) 65;
                            break;
                        case 2133091:
                            b11 = !str3.equals("F01J") ? (byte) -1 : (byte) 66;
                            break;
                        case 2133120:
                            b11 = !str3.equals("F02H") ? (byte) -1 : (byte) 67;
                            break;
                        case 2133151:
                            b11 = !str3.equals("F03H") ? (byte) -1 : (byte) 68;
                            break;
                        case 2133182:
                            b11 = !str3.equals("F04H") ? (byte) -1 : (byte) 69;
                            break;
                        case 2133184:
                            b11 = !str3.equals("F04J") ? (byte) -1 : (byte) 70;
                            break;
                        case 2436959:
                            b11 = !str3.equals("P681") ? (byte) -1 : (byte) 71;
                            break;
                        case 2463773:
                            b11 = !str3.equals("Q350") ? (byte) -1 : (byte) 72;
                            break;
                        case 2464648:
                            b11 = !str3.equals("Q427") ? (byte) -1 : (byte) 73;
                            break;
                        case 2689555:
                            b11 = !str3.equals("XE2X") ? (byte) -1 : (byte) 74;
                            break;
                        case 3154429:
                            b11 = !str3.equals("fugu") ? (byte) -1 : (byte) 75;
                            break;
                        case 3284551:
                            b11 = !str3.equals("kate") ? (byte) -1 : (byte) 76;
                            break;
                        case 3351335:
                            b11 = !str3.equals("mido") ? (byte) -1 : (byte) 77;
                            break;
                        case 3386211:
                            b11 = !str3.equals("p212") ? (byte) -1 : (byte) 78;
                            break;
                        case 41325051:
                            b11 = !str3.equals("MEIZU_M5") ? (byte) -1 : (byte) 79;
                            break;
                        case 51349633:
                            b11 = !str3.equals("601LV") ? (byte) -1 : (byte) 80;
                            break;
                        case 51350594:
                            b11 = !str3.equals("602LV") ? (byte) -1 : (byte) 81;
                            break;
                        case 55178625:
                            b11 = !str3.equals("Aura_Note_2") ? (byte) -1 : (byte) 82;
                            break;
                        case 61542055:
                            b11 = !str3.equals("A1601") ? (byte) -1 : (byte) 83;
                            break;
                        case 65355429:
                            b11 = !str3.equals("E5643") ? (byte) -1 : (byte) 84;
                            break;
                        case 66214468:
                            b11 = !str3.equals("F3111") ? (byte) -1 : (byte) 85;
                            break;
                        case 66214470:
                            b11 = !str3.equals("F3113") ? (byte) -1 : (byte) 86;
                            break;
                        case 66214473:
                            b11 = !str3.equals("F3116") ? (byte) -1 : (byte) 87;
                            break;
                        case 66215429:
                            b11 = !str3.equals("F3211") ? (byte) -1 : (byte) 88;
                            break;
                        case 66215431:
                            b11 = !str3.equals("F3213") ? (byte) -1 : (byte) 89;
                            break;
                        case 66215433:
                            b11 = !str3.equals("F3215") ? (byte) -1 : (byte) 90;
                            break;
                        case 66216390:
                            b11 = !str3.equals("F3311") ? (byte) -1 : (byte) 91;
                            break;
                        case 76402249:
                            b11 = !str3.equals("PRO7S") ? (byte) -1 : (byte) 92;
                            break;
                        case 76404105:
                            b11 = !str3.equals("Q4260") ? (byte) -1 : (byte) 93;
                            break;
                        case 76404911:
                            b11 = !str3.equals("Q4310") ? (byte) -1 : (byte) 94;
                            break;
                        case 80963634:
                            b11 = !str3.equals("V23GB") ? (byte) -1 : (byte) 95;
                            break;
                        case 82882791:
                            b11 = !str3.equals("X3_HK") ? (byte) -1 : (byte) 96;
                            break;
                        case 98715550:
                            b11 = !str3.equals("i9031") ? (byte) -1 : (byte) 97;
                            break;
                        case 101370885:
                            b11 = !str3.equals("l5460") ? (byte) -1 : (byte) 98;
                            break;
                        case 102844228:
                            b11 = !str3.equals("le_x6") ? (byte) -1 : (byte) 99;
                            break;
                        case 165221241:
                            b11 = !str3.equals("A2016a40") ? (byte) -1 : (byte) 100;
                            break;
                        case 182191441:
                            b11 = !str3.equals("CPY83_I00") ? (byte) -1 : (byte) 101;
                            break;
                        case 245388979:
                            b11 = !str3.equals("marino_f") ? (byte) -1 : (byte) 102;
                            break;
                        case 287431619:
                            b11 = !str3.equals("griffin") ? (byte) -1 : (byte) 103;
                            break;
                        case 307593612:
                            b11 = !str3.equals("A7010a48") ? (byte) -1 : (byte) 104;
                            break;
                        case 308517133:
                            b11 = !str3.equals("A7020a48") ? (byte) -1 : (byte) 105;
                            break;
                        case 316215098:
                            b11 = !str3.equals("TB3-730F") ? (byte) -1 : (byte) 106;
                            break;
                        case 316215116:
                            b11 = !str3.equals("TB3-730X") ? (byte) -1 : (byte) 107;
                            break;
                        case 316246811:
                            b11 = !str3.equals("TB3-850F") ? (byte) -1 : (byte) 108;
                            break;
                        case 316246818:
                            b11 = !str3.equals("TB3-850M") ? (byte) -1 : (byte) 109;
                            break;
                        case 407160593:
                            b11 = !str3.equals("Pixi5-10_4G") ? (byte) -1 : (byte) 110;
                            break;
                        case 507412548:
                            b11 = !str3.equals("QM16XE_U") ? (byte) -1 : (byte) 111;
                            break;
                        case 793982701:
                            b11 = !str3.equals("GIONEE_WBL5708") ? (byte) -1 : (byte) 112;
                            break;
                        case 794038622:
                            b11 = !str3.equals("GIONEE_WBL7365") ? (byte) -1 : (byte) 113;
                            break;
                        case 794040393:
                            b11 = !str3.equals("GIONEE_WBL7519") ? (byte) -1 : (byte) 114;
                            break;
                        case 835649806:
                            b11 = !str3.equals("manning") ? (byte) -1 : (byte) 115;
                            break;
                        case 917340916:
                            b11 = !str3.equals("A7000plus") ? (byte) -1 : (byte) 116;
                            break;
                        case 958008161:
                            b11 = !str3.equals("j2xlteins") ? (byte) -1 : (byte) 117;
                            break;
                        case 1060579533:
                            b11 = !str3.equals("panell_d") ? (byte) -1 : (byte) 118;
                            break;
                        case 1150207623:
                            b11 = !str3.equals("LS-5017") ? (byte) -1 : (byte) 119;
                            break;
                        case 1176899427:
                            b11 = !str3.equals("itel_S41") ? (byte) -1 : (byte) 120;
                            break;
                        case 1280332038:
                            b11 = !str3.equals("hwALE-H") ? (byte) -1 : (byte) 121;
                            break;
                        case 1306947716:
                            b11 = !str3.equals("EverStar_S") ? (byte) -1 : (byte) 122;
                            break;
                        case 1349174697:
                            b11 = !str3.equals("htc_e56ml_dtul") ? (byte) -1 : (byte) 123;
                            break;
                        case 1522194893:
                            b11 = !str3.equals("woods_f") ? (byte) -1 : (byte) 124;
                            break;
                        case 1691543273:
                            b11 = !str3.equals("CPH1609") ? (byte) -1 : (byte) 125;
                            break;
                        case 1691544261:
                            b11 = !str3.equals("CPH1715") ? (byte) -1 : (byte) 126;
                            break;
                        case 1709443163:
                            b11 = !str3.equals("iball8735_9806") ? (byte) -1 : (byte) 127;
                            break;
                        case 1865889110:
                            b11 = !str3.equals("santoni") ? (byte) -1 : (byte) 128;
                            break;
                        case 1906253259:
                            b11 = !str3.equals("PB2-670M") ? (byte) -1 : (byte) 129;
                            break;
                        case 1977196784:
                            b11 = !str3.equals("Infinix-X572") ? (byte) -1 : (byte) 130;
                            break;
                        case 2006372676:
                            b11 = !str3.equals("BRAVIA_ATV3_4K") ? (byte) -1 : (byte) 131;
                            break;
                        case 2019281702:
                            b11 = !str3.equals("DM-01K") ? (byte) -1 : (byte) 132;
                            break;
                        case 2029784656:
                            b11 = !str3.equals("HWBLN-H") ? (byte) -1 : (byte) 133;
                            break;
                        case 2030379515:
                            b11 = !str3.equals("HWCAM-H") ? (byte) -1 : (byte) 134;
                            break;
                        case 2033393791:
                            b11 = !str3.equals("ASUS_X00AD_2") ? (byte) -1 : (byte) 135;
                            break;
                        case 2047190025:
                            b11 = !str3.equals("ELUGA_Note") ? (byte) -1 : (byte) 136;
                            break;
                        case 2047252157:
                            b11 = !str3.equals("ELUGA_Prim") ? (byte) -1 : (byte) 137;
                            break;
                        case 2048319463:
                            b11 = !str3.equals("HWVNS-H") ? (byte) -1 : (byte) 138;
                            break;
                        case 2048855701:
                            b11 = !str3.equals("HWWAS-H") ? (byte) -1 : (byte) 139;
                            break;
                        default:
                            b11 = -1;
                            break;
                    }
                    switch (b11) {
                        default:
                            str2.hashCode();
                            if (!str2.equals("JSN-L21")) {
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case NOTIFICATION_REDIRECT_VALUE:
                        case 30:
                        case TEMPLATE_HTML_SIZE_VALUE:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                        case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                        case 50:
                        case AD_REWARD_USER_VALUE:
                        case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                        case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                        case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                        case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                        case AD_VISIBILITY_VALUE:
                        case 57:
                        case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                        case 59:
                        case 60:
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                        case 66:
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                        case 80:
                        case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW /* 81 */:
                        case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW /* 82 */:
                        case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                        case 84:
                        case 85:
                        case 86:
                        case 87:
                        case 88:
                        case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
                        case TmcConstants.NOTIFY_ADDHOME_API_SHOW /* 90 */:
                        case 91:
                        case 92:
                        case 93:
                        case MBSupportMuteAdType.REWARD_VIDEO /* 94 */:
                        case 95:
                        case 96:
                        case 97:
                        case 98:
                        case 99:
                        case 100:
                        case 101:
                        case 102:
                        case 103:
                        case 104:
                        case 105:
                        case 106:
                        case 107:
                        case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                        case 109:
                        case 110:
                        case 111:
                        case 112:
                        case 113:
                        case ASSET_WRITE_ERROR_VALUE:
                        case INVALID_INDEX_URL_VALUE:
                        case GZIP_ENCODE_ERROR_VALUE:
                        case ASSET_FAILED_STATUS_CODE_VALUE:
                        case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                        case JSON_ENCODE_ERROR_VALUE:
                        case 120:
                        case TPAT_ERROR_VALUE:
                        case INVALID_ADS_ENDPOINT_VALUE:
                        case INVALID_RI_ENDPOINT_VALUE:
                        case INVALID_LOG_ERROR_ENDPOINT_VALUE:
                        case INVALID_METRICS_ENDPOINT_VALUE:
                        case 126:
                        case 127:
                        case 128:
                        case 129:
                        case 130:
                        case MRAID_JS_WRITE_FAILED_VALUE:
                        case OMSDK_DOWNLOAD_JS_ERROR_VALUE:
                        case OMSDK_JS_WRITE_FAILED_VALUE:
                        case 134:
                        case 135:
                        case PRIVACY_URL_ERROR_VALUE:
                        case TPAT_RETRY_FAILED_VALUE:
                        case 138:
                        case 139:
                            return true;
                    }
                }
                return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0043  */
    public static int K1(androidx.media3.exoplayer.mediacodec.w wVar, androidx.media3.common.r rVar) {
        byte b11 = 1;
        int i11 = rVar.f10168v;
        int i12 = rVar.f10169w;
        if (i11 == -1 || i12 == -1) {
            return -1;
        }
        String str = (String) androidx.media3.common.util.a.e(rVar.f10161o);
        if ("video/dolby-vision".equals(str)) {
            Pair pairI = MediaCodecUtil.i(rVar);
            if (pairI == null) {
                str = MimeTypes.VIDEO_H265;
            } else {
                int iIntValue = ((Integer) pairI.first).intValue();
                if (iIntValue == 512 || iIntValue == 1 || iIntValue == 2) {
                    str = MimeTypes.VIDEO_H264;
                } else if (iIntValue == 1024) {
                    str = "video/av01";
                } else {
                    str = MimeTypes.VIDEO_H265;
                }
            }
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
                return P1(i11 * i12, 2);
            case 2:
                return Math.max(2097152, P1(i11 * i12, 2));
            case 4:
                String str2 = Build.MODEL;
                if ("BRAVIA 4K 2015".equals(str2) || ("Amazon".equals(Build.MANUFACTURER) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && wVar.f12261g)))) {
                    return -1;
                }
                return P1(a1.k(i11, 16) * a1.k(i12, 16) * 256, 2);
            case 6:
                return P1(i11 * i12, 4);
            default:
                return -1;
        }
    }

    private static Point L1(androidx.media3.exoplayer.mediacodec.w wVar, androidx.media3.common.r rVar) {
        int i11 = rVar.f10169w;
        int i12 = rVar.f10168v;
        boolean z10 = i11 > i12;
        int i13 = z10 ? i11 : i12;
        if (z10) {
            i11 = i12;
        }
        float f11 = i11 / i13;
        for (int i14 : L1) {
            int i15 = (int) (i14 * f11);
            if (i14 <= i13 || i15 <= i11) {
                break;
            }
            int i16 = z10 ? i15 : i14;
            if (!z10) {
                i14 = i15;
            }
            Point pointC = wVar.c(i16, i14);
            float f12 = rVar.f10170x;
            if (pointC != null && wVar.u(pointC.x, pointC.y, f12)) {
                return pointC;
            }
        }
        return null;
    }

    private static List N1(Context context, androidx.media3.exoplayer.mediacodec.h0 h0Var, androidx.media3.common.r rVar, boolean z10, boolean z11) {
        String str = rVar.f10161o;
        if (str == null) {
            return ImmutableList.of();
        }
        if (a1.f10350a >= 26 && "video/dolby-vision".equals(str) && !c.a(context)) {
            List listG = MediaCodecUtil.g(h0Var, rVar, z10, z11);
            if (!listG.isEmpty()) {
                return listG;
            }
        }
        return MediaCodecUtil.m(h0Var, rVar, z10, z11);
    }

    protected static int O1(androidx.media3.exoplayer.mediacodec.w wVar, androidx.media3.common.r rVar) {
        if (rVar.f10162p == -1) {
            return K1(wVar, rVar);
        }
        int size = rVar.f10164r.size();
        int length = 0;
        for (int i11 = 0; i11 < size; i11++) {
            length += ((byte[]) rVar.f10164r.get(i11)).length;
        }
        return rVar.f10162p + length;
    }

    private static int P1(int i11, int i12) {
        return (i11 * 3) / (i12 * 2);
    }

    private Surface R1(androidx.media3.exoplayer.mediacodec.w wVar) {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            return videoSink.m();
        }
        Surface surface = this.V0;
        if (surface != null) {
            return surface;
        }
        if (v2(wVar)) {
            return null;
        }
        androidx.media3.common.util.a.g(w2(wVar));
        PlaceholderSurface placeholderSurface = this.W0;
        if (placeholderSurface != null && placeholderSurface.secure != wVar.f12261g) {
            j2();
        }
        if (this.W0 == null) {
            this.W0 = PlaceholderSurface.newInstance(this.F0, wVar.f12261g);
        }
        return this.W0;
    }

    private boolean S1(androidx.media3.exoplayer.mediacodec.w wVar) {
        Surface surface;
        return this.S0 != null || ((surface = this.V0) != null && surface.isValid()) || v2(wVar) || w2(wVar);
    }

    private boolean T1(DecoderInputBuffer decoderInputBuffer) {
        return decoderInputBuffer.f10920e < w();
    }

    private boolean U1(DecoderInputBuffer decoderInputBuffer) {
        if (hasReadStreamToEnd() || decoderInputBuffer.isLastSample() || this.H1 == C.TIME_UNSET) {
            return true;
        }
        return this.H1 - (decoderInputBuffer.f10920e - v0()) <= 100000;
    }

    private void W1() {
        if (this.f13141t1 > 0) {
            long jElapsedRealtime = s().elapsedRealtime();
            this.H0.n(this.f13141t1, jElapsedRealtime - this.f13140s1);
            this.f13141t1 = 0;
            this.f13140s1 = jElapsedRealtime;
        }
    }

    private void X1() {
        if (!this.K0.i() || this.V0 == null) {
            return;
        }
        f2();
    }

    private void Y1() {
        int i11 = this.f13145x1;
        if (i11 != 0) {
            this.H0.B(this.f13144w1, i11);
            this.f13144w1 = 0L;
            this.f13145x1 = 0;
        }
    }

    private void Z1(m0 m0Var) {
        if (m0Var.equals(m0.f10111e) || m0Var.equals(this.A1)) {
            return;
        }
        this.A1 = m0Var;
        this.H0.D(m0Var);
    }

    private void a2() {
        Surface surface = this.V0;
        if (surface == null || !this.f13137p1) {
            return;
        }
        this.H0.A(surface);
    }

    private void b2() {
        m0 m0Var = this.A1;
        if (m0Var != null) {
            this.H0.D(m0Var);
        }
    }

    private void c2(MediaFormat mediaFormat) {
        if (this.S0 == null || a1.H0(this.F0)) {
            return;
        }
        mediaFormat.setInteger("allow-frame-drop", 0);
    }

    private void d2() {
        int i11;
        androidx.media3.exoplayer.mediacodec.t tVarL0;
        if (!this.C1 || (i11 = a1.f10350a) < 23 || (tVarL0 = l0()) == null) {
            return;
        }
        this.E1 = new f(tVarL0);
        if (i11 >= 33) {
            Bundle bundle = new Bundle();
            bundle.putInt("tunnel-peek", 1);
            tVarL0.b(bundle);
        }
    }

    private void e2(long j11, long j12, androidx.media3.common.r rVar) {
        t tVar = this.F1;
        if (tVar != null) {
            tVar.f(j11, j12, rVar, q0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f2() {
        this.H0.A(this.V0);
        this.f13137p1 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h2() {
        j1();
    }

    private void i2(androidx.media3.exoplayer.mediacodec.t tVar, int i11, long j11, androidx.media3.common.r rVar) {
        long jG = this.L0.g();
        long jF = this.L0.f();
        if (u2() && jG == this.f13146y1) {
            x2(tVar, i11, j11);
        } else {
            e2(j11, jG, rVar);
            l2(tVar, i11, j11, jG);
        }
        D2(jF);
        this.f13146y1 = jG;
    }

    private void j2() {
        PlaceholderSurface placeholderSurface = this.W0;
        if (placeholderSurface != null) {
            placeholderSurface.release();
            this.W0 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k2(androidx.media3.exoplayer.mediacodec.t tVar, int i11, long j11, long j12) {
        l2(tVar, i11, j11, j12);
    }

    private static void m2(androidx.media3.exoplayer.mediacodec.t tVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        tVar.b(bundle);
    }

    private void n2(Object obj) throws ExoPlaybackException {
        Surface surface = obj instanceof Surface ? (Surface) obj : null;
        if (this.V0 == surface) {
            if (surface != null) {
                b2();
                a2();
                return;
            }
            return;
        }
        this.V0 = surface;
        if (this.S0 == null) {
            this.K0.q(surface);
        }
        this.f13137p1 = false;
        int state = getState();
        androidx.media3.exoplayer.mediacodec.t tVarL0 = l0();
        if (tVarL0 != null && this.S0 == null) {
            androidx.media3.exoplayer.mediacodec.w wVar = (androidx.media3.exoplayer.mediacodec.w) androidx.media3.common.util.a.e(n0());
            boolean zS1 = S1(wVar);
            if (a1.f10350a < 23 || !zS1 || this.Q0) {
                b1();
                J0();
            } else {
                o2(tVarL0, R1(wVar));
            }
        }
        if (surface != null) {
            b2();
        } else {
            this.A1 = null;
            VideoSink videoSink = this.S0;
            if (videoSink != null) {
                videoSink.s();
            }
        }
        if (state == 2) {
            VideoSink videoSink2 = this.S0;
            if (videoSink2 != null) {
                videoSink2.u(true);
            } else {
                this.K0.e(true);
            }
        }
        d2();
    }

    private void o2(androidx.media3.exoplayer.mediacodec.t tVar, Surface surface) {
        int i11 = a1.f10350a;
        if (i11 >= 23 && surface != null) {
            p2(tVar, surface);
        } else {
            if (i11 < 35) {
                throw new IllegalStateException();
            }
            F1(tVar);
        }
    }

    private static int y2(Context context, androidx.media3.exoplayer.mediacodec.h0 h0Var, androidx.media3.common.r rVar) {
        boolean z10;
        int i11 = 0;
        if (!androidx.media3.common.y.t(rVar.f10161o)) {
            return x3.a(0);
        }
        boolean z11 = rVar.f10165s != null;
        List listN1 = N1(context, h0Var, rVar, z11, false);
        if (z11 && listN1.isEmpty()) {
            listN1 = N1(context, h0Var, rVar, false, false);
        }
        if (listN1.isEmpty()) {
            return x3.a(1);
        }
        if (!MediaCodecRenderer.t1(rVar)) {
            return x3.a(2);
        }
        androidx.media3.exoplayer.mediacodec.w wVar = (androidx.media3.exoplayer.mediacodec.w) listN1.get(0);
        boolean zO = wVar.o(rVar);
        if (!zO) {
            int i12 = 1;
            while (true) {
                if (i12 >= listN1.size()) {
                    z10 = true;
                    break;
                }
                androidx.media3.exoplayer.mediacodec.w wVar2 = (androidx.media3.exoplayer.mediacodec.w) listN1.get(i12);
                if (wVar2.o(rVar)) {
                    z10 = false;
                    zO = true;
                    wVar = wVar2;
                    break;
                }
                i12++;
            }
        } else {
            z10 = true;
            break;
        }
        int i13 = zO ? 4 : 3;
        int i14 = wVar.r(rVar) ? 16 : 8;
        int i15 = wVar.f12262h ? 64 : 0;
        int i16 = z10 ? 128 : 0;
        if (a1.f10350a >= 26 && "video/dolby-vision".equals(rVar.f10161o) && !c.a(context)) {
            i16 = 256;
        }
        if (zO) {
            List listN2 = N1(context, h0Var, rVar, z11, true);
            if (!listN2.isEmpty()) {
                androidx.media3.exoplayer.mediacodec.w wVar3 = (androidx.media3.exoplayer.mediacodec.w) MediaCodecUtil.n(listN2, rVar).get(0);
                if (wVar3.o(rVar) && wVar3.r(rVar)) {
                    i11 = 32;
                }
            }
        }
        return x3.d(i13, i14, i11, i15, i16);
    }

    private void z2() {
        androidx.media3.exoplayer.mediacodec.t tVarL0 = l0();
        if (tVarL0 != null && a1.f10350a >= 35) {
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.B1));
            tVarL0.b(bundle);
        }
    }

    protected void A2(int i11, int i12) {
        androidx.media3.exoplayer.j jVar = this.f12167z0;
        jVar.f12038h += i11;
        int i13 = i11 + i12;
        jVar.f12037g += i13;
        this.f13141t1 += i13;
        int i14 = this.f13142u1 + i13;
        this.f13142u1 = i14;
        jVar.f12039i = Math.max(i14, jVar.f12039i);
        int i15 = this.I0;
        if (i15 <= 0 || this.f13141t1 < i15) {
            return;
        }
        W1();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void C() {
        this.A1 = null;
        this.H1 = C.TIME_UNSET;
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.q();
        } else {
            this.K0.g();
        }
        d2();
        this.f13137p1 = false;
        this.E1 = null;
        try {
            super.C();
        } finally {
            this.H0.m(this.f12167z0);
            this.H0.D(m0.f10111e);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void D(boolean z10, boolean z11) {
        super.D(z10, z11);
        boolean z12 = t().f13400b;
        androidx.media3.common.util.a.g((z12 && this.D1 == 0) ? false : true);
        if (this.C1 != z12) {
            this.C1 = z12;
            b1();
        }
        this.H0.o(this.f12167z0);
        if (!this.T0) {
            if (this.U0 != null && this.S0 == null) {
                q qVarH = new q.b(this.F0, this.K0).i(s()).h();
                qVarH.O(1);
                this.S0 = qVarH.B(0);
            }
            this.T0 = true;
        }
        VideoSink videoSink = this.S0;
        if (videoSink == null) {
            this.K0.o(s());
            this.K0.h(z11);
            return;
        }
        videoSink.v(new a(), MoreExecutors.a());
        t tVar = this.F1;
        if (tVar != null) {
            this.S0.d(tVar);
        }
        if (this.V0 != null && !this.X0.equals(l0.f10407c)) {
            this.S0.p(this.V0, this.X0);
        }
        this.S0.r(this.f13139r1);
        this.S0.a(x0());
        List list = this.U0;
        if (list != null) {
            this.S0.i(list);
        }
        this.S0.l(z11);
        w3.a aVarY0 = y0();
        if (aVarY0 != null) {
            this.S0.h(aVarY0);
        }
    }

    protected void D1(VideoSink videoSink, int i11, androidx.media3.common.r rVar) {
        List listOf = this.U0;
        if (listOf == null) {
            listOf = ImmutableList.of();
        }
        videoSink.o(i11, rVar, listOf);
    }

    protected void D2(long j11) {
        this.f12167z0.a(j11);
        this.f13144w1 += j11;
        this.f13145x1++;
    }

    @Override // androidx.media3.exoplayer.i
    protected void E() {
        super.E();
    }

    protected boolean E1(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (j.class) {
            try {
                if (!M1) {
                    N1 = I1();
                    M1 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return N1;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void F(long j11, boolean z10) throws ExoPlaybackException {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            if (!z10) {
                videoSink.t(true);
            }
            this.S0.f(w0(), J1());
            this.I1 = true;
        }
        super.F(j11, z10);
        if (this.S0 == null) {
            this.K0.m();
        }
        if (z10) {
            VideoSink videoSink2 = this.S0;
            if (videoSink2 != null) {
                videoSink2.u(false);
            } else {
                this.K0.e(false);
            }
        }
        d2();
        this.f13142u1 = 0;
    }

    protected void F1(androidx.media3.exoplayer.mediacodec.t tVar) {
        tVar.o();
    }

    @Override // androidx.media3.exoplayer.i
    protected void G() {
        super.G();
        VideoSink videoSink = this.S0;
        if (videoSink == null || !this.G0) {
            return;
        }
        videoSink.release();
    }

    protected void H1(androidx.media3.exoplayer.mediacodec.t tVar, int i11, long j11) {
        q0.a("dropVideoBuffer");
        tVar.k(i11, false);
        q0.b();
        A2(0, 1);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void I() {
        try {
            super.I();
        } finally {
            this.T0 = false;
            this.G1 = C.TIME_UNSET;
            j2();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void J() {
        super.J();
        this.f13141t1 = 0;
        this.f13140s1 = s().elapsedRealtime();
        this.f13144w1 = 0L;
        this.f13145x1 = 0;
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.n();
        } else {
            this.K0.k();
        }
    }

    protected long J1() {
        return -this.G1;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void K() {
        W1();
        Y1();
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.g();
        } else {
            this.K0.l();
        }
        super.K();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void L(androidx.media3.common.r[] rVarArr, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar) {
        super.L(rVarArr, j11, j12, bVar);
        if (this.G1 == C.TIME_UNSET) {
            this.G1 = j11;
        }
        C2(bVar);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean L0(androidx.media3.common.r rVar) throws ExoPlaybackException {
        VideoSink videoSink = this.S0;
        if (videoSink == null || videoSink.isInitialized()) {
            return true;
        }
        try {
            return this.S0.k(rVar);
        } catch (VideoSink.VideoSinkException e11) {
            throw q(e11, rVar, PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSOR_INIT_FAILED);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void M0(Exception exc) {
        androidx.media3.common.util.u.d("MediaCodecVideoRenderer", "Video codec error", exc);
        this.H0.C(exc);
    }

    protected e M1(androidx.media3.exoplayer.mediacodec.w wVar, androidx.media3.common.r rVar, androidx.media3.common.r[] rVarArr) {
        int iK1;
        int iMax = rVar.f10168v;
        int iMax2 = rVar.f10169w;
        int iO1 = O1(wVar, rVar);
        if (rVarArr.length == 1) {
            if (iO1 != -1 && (iK1 = K1(wVar, rVar)) != -1) {
                iO1 = Math.min((int) (iO1 * 1.5f), iK1);
            }
            return new e(iMax, iMax2, iO1);
        }
        int length = rVarArr.length;
        boolean z10 = false;
        for (int i11 = 0; i11 < length; i11++) {
            androidx.media3.common.r rVarN = rVarArr[i11];
            if (rVar.C != null && rVarN.C == null) {
                rVarN = rVarN.b().T(rVar.C).N();
            }
            if (wVar.e(rVar, rVarN).f12053d != 0) {
                int i12 = rVarN.f10168v;
                z10 |= i12 == -1 || rVarN.f10169w == -1;
                iMax = Math.max(iMax, i12);
                iMax2 = Math.max(iMax2, rVarN.f10169w);
                iO1 = Math.max(iO1, O1(wVar, rVarN));
            }
        }
        if (z10) {
            androidx.media3.common.util.u.h("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
            Point pointL1 = L1(wVar, rVar);
            if (pointL1 != null) {
                iMax = Math.max(iMax, pointL1.x);
                iMax2 = Math.max(iMax2, pointL1.y);
                iO1 = Math.max(iO1, K1(wVar, rVar.b().B0(iMax).d0(iMax2).N()));
                androidx.media3.common.util.u.h("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
            }
        }
        return new e(iMax, iMax2, iO1);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void N0(String str, androidx.media3.exoplayer.mediacodec.t.a aVar, long j11, long j12) {
        this.H0.k(str, j11, j12);
        this.Q0 = E1(str);
        this.R0 = ((androidx.media3.exoplayer.mediacodec.w) androidx.media3.common.util.a.e(n0())).p();
        d2();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void O0(String str) {
        this.H0.l(str);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected androidx.media3.exoplayer.k P0(s2 s2Var) throws ExoPlaybackException {
        androidx.media3.exoplayer.k kVarP0 = super.P0(s2Var);
        this.H0.p((androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12570b), kVarP0);
        return kVarP0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void Q0(androidx.media3.common.r rVar, MediaFormat mediaFormat) {
        int integer;
        int i11;
        androidx.media3.exoplayer.mediacodec.t tVarL0 = l0();
        if (tVarL0 != null) {
            tVarL0.setVideoScalingMode(this.f13138q1);
        }
        if (this.C1) {
            i11 = rVar.f10168v;
            integer = rVar.f10169w;
        } else {
            androidx.media3.common.util.a.e(mediaFormat);
            boolean z10 = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            int integer2 = z10 ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            integer = z10 ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
            i11 = integer2;
        }
        float f11 = rVar.f10172z;
        int i12 = rVar.f10171y;
        if (i12 == 90 || i12 == 270) {
            f11 = 1.0f / f11;
            int i13 = integer;
            integer = i11;
            i11 = i13;
        }
        this.f13147z1 = new m0(i11, integer, f11);
        VideoSink videoSink = this.S0;
        if (videoSink == null || !this.I1) {
            this.K0.p(rVar.f10170x);
        } else {
            D1(videoSink, 1, rVar.b().B0(i11).d0(integer).q0(f11).N());
        }
        this.I1 = false;
    }

    protected MediaFormat Q1(androidx.media3.common.r rVar, String str, e eVar, float f11, boolean z10, int i11) {
        Pair pairI;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", rVar.f10168v);
        mediaFormat.setInteger("height", rVar.f10169w);
        androidx.media3.common.util.x.e(mediaFormat, rVar.f10164r);
        androidx.media3.common.util.x.c(mediaFormat, "frame-rate", rVar.f10170x);
        androidx.media3.common.util.x.d(mediaFormat, "rotation-degrees", rVar.f10171y);
        androidx.media3.common.util.x.b(mediaFormat, rVar.C);
        if ("video/dolby-vision".equals(rVar.f10161o) && (pairI = MediaCodecUtil.i(rVar)) != null) {
            androidx.media3.common.util.x.d(mediaFormat, Scopes.PROFILE, ((Integer) pairI.first).intValue());
        }
        mediaFormat.setInteger("max-width", eVar.f13166a);
        mediaFormat.setInteger("max-height", eVar.f13167b);
        androidx.media3.common.util.x.d(mediaFormat, "max-input-size", eVar.f13168c);
        int i12 = a1.f10350a;
        if (i12 >= 23) {
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
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i11);
        }
        if (i12 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.B1));
        }
        return mediaFormat;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void S0(long j11) {
        super.S0(j11);
        if (this.C1) {
            return;
        }
        this.f13143v1--;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected androidx.media3.exoplayer.k T(androidx.media3.exoplayer.mediacodec.w wVar, androidx.media3.common.r rVar, androidx.media3.common.r rVar2) {
        androidx.media3.exoplayer.k kVarE = wVar.e(rVar, rVar2);
        int i11 = kVarE.f12054e;
        e eVar = (e) androidx.media3.common.util.a.e(this.P0);
        if (rVar2.f10168v > eVar.f13166a || rVar2.f10169w > eVar.f13167b) {
            i11 |= 256;
        }
        if (O1(wVar, rVar2) > eVar.f13168c) {
            i11 |= 64;
        }
        int i12 = i11;
        return new androidx.media3.exoplayer.k(wVar.f12255a, rVar, rVar2, i12 != 0 ? 0 : kVarE.f12053d, i12);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void T0() {
        super.T0();
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.e();
            this.S0.f(w0(), J1());
        } else {
            this.K0.j();
        }
        this.I1 = true;
        d2();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void U0(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (this.M0 != null && ((androidx.media3.exoplayer.mediacodec.w) androidx.media3.common.util.a.e(n0())).f12256b.equals("video/av01") && (byteBuffer = decoderInputBuffer.f10918c) != null) {
            this.M0.b(byteBuffer);
        }
        this.K1 = 0;
        boolean z10 = this.C1;
        if (!z10) {
            this.f13143v1++;
        }
        if (a1.f10350a >= 23 || !z10) {
            return;
        }
        g2(decoderInputBuffer.f10920e);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void V0(w3.a aVar) {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.h(aVar);
        }
    }

    protected boolean V1(long j11, boolean z10) throws ExoPlaybackException {
        int iP = P(j11);
        if (iP == 0) {
            return false;
        }
        if (z10) {
            androidx.media3.exoplayer.j jVar = this.f12167z0;
            int i11 = jVar.f12034d + iP;
            jVar.f12034d = i11;
            jVar.f12036f += this.f13143v1;
            jVar.f12034d = i11 + this.O0.size();
        } else {
            this.f12167z0.f12040j++;
            A2(iP + this.O0.size(), this.f13143v1);
        }
        i0();
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.t(false);
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean X0(long j11, long j12, androidx.media3.exoplayer.mediacodec.t tVar, ByteBuffer byteBuffer, int i11, int i12, int i13, long j13, boolean z10, boolean z11, androidx.media3.common.r rVar) {
        androidx.media3.common.util.a.e(tVar);
        long jV0 = j13 - v0();
        B2(j13);
        if (this.S0 != null) {
            if (!z10 || z11) {
                return this.S0.b(J1() + j13, z11, new b(tVar, i11, jV0));
            }
            x2(tVar, i11, jV0);
            return true;
        }
        int iC = this.K0.c(j13, j11, j12, w0(), z10, z11, this.L0);
        if (iC == 0) {
            long jNanoTime = s().nanoTime();
            e2(jV0, jNanoTime, rVar);
            k2(tVar, i11, jV0, jNanoTime);
            D2(this.L0.f());
            return true;
        }
        if (iC == 1) {
            i2((androidx.media3.exoplayer.mediacodec.t) androidx.media3.common.util.a.i(tVar), i11, jV0, rVar);
            return true;
        }
        if (iC == 2) {
            H1(tVar, i11, jV0);
            D2(this.L0.f());
            return true;
        }
        if (iC == 3) {
            x2(tVar, i11, jV0);
            D2(this.L0.f());
            return true;
        }
        if (iC == 4 || iC == 5) {
            return false;
        }
        throw new IllegalStateException(String.valueOf(iC));
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected MediaCodecDecoderException Z(Throwable th2, androidx.media3.exoplayer.mediacodec.w wVar) {
        return new MediaCodecVideoDecoderException(th2, wVar, this.V0);
    }

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.w3
    public void c() {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.c();
        } else {
            this.K0.a();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void c1() {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.e();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i, androidx.media3.exoplayer.w3
    public void d(float f11, float f12) throws ExoPlaybackException {
        super.d(f11, f12);
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.a(f11);
        } else {
            this.K0.r(f11);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void d1() {
        super.d1();
        this.O0.clear();
        this.J1 = false;
        this.f13143v1 = 0;
        this.K1 = 0;
        androidx.media3.exoplayer.video.a aVar = this.M0;
        if (aVar != null) {
            aVar.c();
        }
    }

    protected void g2(long j11) {
        w1(j11);
        Z1(this.f13147z1);
        this.f12167z0.f12035e++;
        X1();
        S0(j11);
    }

    @Override // androidx.media3.exoplayer.w3, androidx.media3.exoplayer.y3
    public String getName() {
        return "MediaCodecVideoRenderer";
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i, androidx.media3.exoplayer.t3.b
    public void handleMessage(int i11, Object obj) throws ExoPlaybackException {
        if (i11 == 1) {
            n2(obj);
            return;
        }
        if (i11 == 7) {
            t tVar = (t) androidx.media3.common.util.a.e(obj);
            this.F1 = tVar;
            VideoSink videoSink = this.S0;
            if (videoSink != null) {
                videoSink.d(tVar);
                return;
            }
            return;
        }
        if (i11 == 10) {
            int iIntValue = ((Integer) androidx.media3.common.util.a.e(obj)).intValue();
            if (this.D1 != iIntValue) {
                this.D1 = iIntValue;
                if (this.C1) {
                    b1();
                    return;
                }
                return;
            }
            return;
        }
        if (i11 == 4) {
            this.f13138q1 = ((Integer) androidx.media3.common.util.a.e(obj)).intValue();
            androidx.media3.exoplayer.mediacodec.t tVarL0 = l0();
            if (tVarL0 != null) {
                tVarL0.setVideoScalingMode(this.f13138q1);
                return;
            }
            return;
        }
        if (i11 == 5) {
            int iIntValue2 = ((Integer) androidx.media3.common.util.a.e(obj)).intValue();
            this.f13139r1 = iIntValue2;
            VideoSink videoSink2 = this.S0;
            if (videoSink2 != null) {
                videoSink2.r(iIntValue2);
                return;
            } else {
                this.K0.n(iIntValue2);
                return;
            }
        }
        if (i11 == 13) {
            q2((List) androidx.media3.common.util.a.e(obj));
            return;
        }
        if (i11 == 14) {
            l0 l0Var = (l0) androidx.media3.common.util.a.e(obj);
            if (l0Var.b() == 0 || l0Var.a() == 0) {
                return;
            }
            this.X0 = l0Var;
            VideoSink videoSink3 = this.S0;
            if (videoSink3 != null) {
                videoSink3.p((Surface) androidx.media3.common.util.a.i(this.V0), l0Var);
                return;
            }
            return;
        }
        if (i11 == 16) {
            this.B1 = ((Integer) androidx.media3.common.util.a.e(obj)).intValue();
            z2();
        } else {
            if (i11 != 17) {
                super.handleMessage(i11, obj);
                return;
            }
            Surface surface = this.V0;
            n2(null);
            ((j) androidx.media3.common.util.a.e(obj)).handleMessage(1, surface);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.w3
    public boolean isEnded() {
        VideoSink videoSink;
        return super.isEnded() && ((videoSink = this.S0) == null || videoSink.isEnded());
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.w3
    public boolean isReady() {
        boolean zIsReady = super.isReady();
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            return videoSink.j(zIsReady);
        }
        if (zIsReady && (l0() == null || this.C1)) {
            return true;
        }
        return this.K0.d(zIsReady);
    }

    @Override // androidx.media3.exoplayer.video.u.b
    public boolean j(long j11, long j12) {
        return t2(j11, j12);
    }

    @Override // androidx.media3.exoplayer.video.u.b
    public boolean k(long j11, long j12, long j13, boolean z10, boolean z11) {
        if (this.N0 != C.TIME_UNSET) {
            this.J1 = j12 > w() + 200000 && j11 < this.N0;
        }
        return r2(j11, j13, z10) && V1(j12, z11);
    }

    protected void l2(androidx.media3.exoplayer.mediacodec.t tVar, int i11, long j11, long j12) {
        q0.a("releaseOutputBuffer");
        tVar.h(i11, j12);
        q0.b();
        this.f12167z0.f12035e++;
        this.f13142u1 = 0;
        if (this.S0 == null) {
            Z1(this.f13147z1);
            X1();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected int m0(DecoderInputBuffer decoderInputBuffer) {
        return (a1.f10350a >= 34 && this.C1 && T1(decoderInputBuffer)) ? 32 : 0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean n1(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (U1(decoderInputBuffer) || decoderInputBuffer.e()) {
            return false;
        }
        boolean zT1 = T1(decoderInputBuffer);
        if ((!zT1 && !this.J1) || decoderInputBuffer.hasSupplementalData()) {
            return false;
        }
        if (decoderInputBuffer.notDependedOn()) {
            decoderInputBuffer.clear();
            if (zT1) {
                this.f12167z0.f12034d++;
            } else if (this.J1) {
                this.O0.add(Long.valueOf(decoderInputBuffer.f10920e));
                this.K1++;
            }
            return true;
        }
        if (this.M0 != null && ((androidx.media3.exoplayer.mediacodec.w) androidx.media3.common.util.a.e(n0())).f12256b.equals("video/av01") && (byteBuffer = decoderInputBuffer.f10918c) != null) {
            boolean z10 = zT1 || this.K1 <= 0;
            ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            byteBufferAsReadOnlyBuffer.flip();
            int iD = this.M0.d(byteBufferAsReadOnlyBuffer, z10);
            boolean z11 = ((e) androidx.media3.common.util.a.e(this.P0)).f13168c + iD < byteBufferAsReadOnlyBuffer.capacity();
            if (iD != byteBufferAsReadOnlyBuffer.limit() && z11) {
                ((ByteBuffer) androidx.media3.common.util.a.e(decoderInputBuffer.f10918c)).position(iD);
                if (zT1) {
                    this.f12167z0.f12034d++;
                } else if (this.J1) {
                    this.O0.add(Long.valueOf(decoderInputBuffer.f10920e));
                    this.K1++;
                }
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.video.u.b
    public boolean o(long j11, long j12, boolean z10) {
        return s2(j11, j12, z10);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean o0() {
        return this.C1 && a1.f10350a < 23;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean o1(androidx.media3.exoplayer.mediacodec.w wVar) {
        return S1(wVar);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected float p0(float f11, androidx.media3.common.r rVar, androidx.media3.common.r[] rVarArr) {
        float fMax = -1.0f;
        for (androidx.media3.common.r rVar2 : rVarArr) {
            float f12 = rVar2.f10170x;
            if (f12 != -1.0f) {
                fMax = Math.max(fMax, f12);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f11;
    }

    protected void p2(androidx.media3.exoplayer.mediacodec.t tVar, Surface surface) {
        tVar.e(surface);
    }

    public void q2(List list) {
        this.U0 = list;
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            videoSink.i(list);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected List r0(androidx.media3.exoplayer.mediacodec.h0 h0Var, androidx.media3.common.r rVar, boolean z10) {
        return MediaCodecUtil.n(N1(this.F0, h0Var, rVar, z10, this.C1), rVar);
    }

    protected boolean r2(long j11, long j12, boolean z10) {
        return j11 < -500000 && !z10;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.w3
    public void render(long j11, long j12) throws ExoPlaybackException {
        VideoSink videoSink = this.S0;
        if (videoSink != null) {
            try {
                videoSink.render(j11, j12);
            } catch (VideoSink.VideoSinkException e11) {
                throw q(e11, e11.format, 7001);
            }
        }
        super.render(j11, j12);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected int s1(androidx.media3.exoplayer.mediacodec.h0 h0Var, androidx.media3.common.r rVar) {
        return y2(this.F0, h0Var, rVar);
    }

    protected boolean s2(long j11, long j12, boolean z10) {
        return j11 < -30000 && !z10;
    }

    protected boolean t2(long j11, long j12) {
        return j11 < -30000 && j12 > 100000;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected androidx.media3.exoplayer.mediacodec.t.a u0(androidx.media3.exoplayer.mediacodec.w wVar, androidx.media3.common.r rVar, MediaCrypto mediaCrypto, float f11) {
        String str = wVar.f12257c;
        e eVarM1 = M1(wVar, rVar, y());
        this.P0 = eVarM1;
        MediaFormat mediaFormatQ1 = Q1(rVar, str, eVarM1, f11, this.J0, this.C1 ? this.D1 : 0);
        Surface surfaceR1 = R1(wVar);
        c2(mediaFormatQ1);
        return androidx.media3.exoplayer.mediacodec.t.a.b(wVar, mediaFormatQ1, rVar, surfaceR1, mediaCrypto);
    }

    protected boolean u2() {
        return true;
    }

    protected boolean v2(androidx.media3.exoplayer.mediacodec.w wVar) {
        return a1.f10350a >= 35 && wVar.f12265k;
    }

    protected boolean w2(androidx.media3.exoplayer.mediacodec.w wVar) {
        return a1.f10350a >= 23 && !this.C1 && !E1(wVar.f12255a) && (!wVar.f12261g || PlaceholderSurface.isSecureSupported(this.F0));
    }

    protected void x2(androidx.media3.exoplayer.mediacodec.t tVar, int i11, long j11) {
        q0.a("skipVideoBuffer");
        tVar.k(i11, false);
        q0.b();
        this.f12167z0.f12036f++;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void z0(DecoderInputBuffer decoderInputBuffer) {
        if (this.R0) {
            ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(decoderInputBuffer.f10921f);
            if (byteBuffer.remaining() >= 7) {
                byte b11 = byteBuffer.get();
                short s11 = byteBuffer.getShort();
                short s12 = byteBuffer.getShort();
                byte b12 = byteBuffer.get();
                byte b13 = byteBuffer.get();
                byteBuffer.position(0);
                if (b11 == -75 && s11 == 60 && s12 == 1 && b12 == 4) {
                    if (b13 == 0 || b13 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        m2((androidx.media3.exoplayer.mediacodec.t) androidx.media3.common.util.a.e(l0()), bArr);
                    }
                }
            }
        }
    }
}
