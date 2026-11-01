package e9;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.UnsupportedDrmException;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p3;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource$HttpDataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidContentTypeException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.UdpDataSource;
import com.google.android.exoplayer2.v1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import y1.c3;
import y1.g2;
import y1.m2;
import y1.n3;
import y1.r2;
import y1.r3;

/* JADX INFO: loaded from: classes4.dex */
public final class s1 implements c, t1.a {
    private boolean A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f61762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t1 f61763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PlaybackSession f61764c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f61770i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private PlaybackMetrics.Builder f61771j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f61772k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private PlaybackException f61775n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private b f61776o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private b f61777p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private b f61778q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.google.android.exoplayer2.o1 f61779r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.google.android.exoplayer2.o1 f61780s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.google.android.exoplayer2.o1 f61781t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f61782u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f61783v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f61784w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f61785x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f61786y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f61787z;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k3.d f61766e = new k3.d();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k3.b f61767f = new k3.b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashMap f61769h = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap f61768g = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f61765d = SystemClock.elapsedRealtime();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f61773l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f61774m = 0;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f61788a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f61789b;

        public a(int i11, int i12) {
            this.f61788a = i11;
            this.f61789b = i12;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.google.android.exoplayer2.o1 f61790a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f61791b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f61792c;

        public b(com.google.android.exoplayer2.o1 o1Var, int i11, String str) {
            this.f61790a = o1Var;
            this.f61791b = i11;
            this.f61792c = str;
        }
    }

    private s1(Context context, PlaybackSession playbackSession) {
        this.f61762a = context.getApplicationContext();
        this.f61764c = playbackSession;
        r1 r1Var = new r1();
        this.f61763b = r1Var;
        r1Var.g(this);
    }

    private boolean A0(b bVar) {
        return bVar != null && bVar.f61792c.equals(this.f61763b.a());
    }

    public static s1 B0(Context context) {
        MediaMetricsManager mediaMetricsManagerA = r3.a(context.getSystemService("media_metrics"));
        if (mediaMetricsManagerA == null) {
            return null;
        }
        return new s1(context, mediaMetricsManagerA.createPlaybackSession());
    }

    private void C0() {
        PlaybackMetrics.Builder builder = this.f61771j;
        if (builder != null && this.A) {
            builder.setAudioUnderrunCount(this.f61787z);
            this.f61771j.setVideoFramesDropped(this.f61785x);
            this.f61771j.setVideoFramesPlayed(this.f61786y);
            Long l11 = (Long) this.f61768g.get(this.f61770i);
            this.f61771j.setNetworkTransferDurationMillis(l11 == null ? 0L : l11.longValue());
            Long l12 = (Long) this.f61769h.get(this.f61770i);
            this.f61771j.setNetworkBytesRead(l12 == null ? 0L : l12.longValue());
            this.f61771j.setStreamSource((l12 == null || l12.longValue() <= 0) ? 0 : 1);
            this.f61764c.reportPlaybackMetrics(this.f61771j.build());
        }
        this.f61771j = null;
        this.f61770i = null;
        this.f61787z = 0;
        this.f61785x = 0;
        this.f61786y = 0;
        this.f61779r = null;
        this.f61780s = null;
        this.f61781t = null;
        this.A = false;
    }

    private static int D0(int i11) {
        switch (com.google.android.exoplayer2.util.p0.V(i11)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    private static DrmInitData E0(ImmutableList immutableList) {
        DrmInitData drmInitData;
        r4 it = immutableList.iterator();
        while (it.hasNext()) {
            p3.a aVar = (p3.a) it.next();
            for (int i11 = 0; i11 < aVar.f25603a; i11++) {
                if (aVar.e(i11) && (drmInitData = aVar.b(i11).f25499o) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    private static int F0(DrmInitData drmInitData) {
        for (int i11 = 0; i11 < drmInitData.schemeDataCount; i11++) {
            UUID uuid = drmInitData.get(i11).uuid;
            if (uuid.equals(com.google.android.exoplayer2.l.f25189d)) {
                return 3;
            }
            if (uuid.equals(com.google.android.exoplayer2.l.f25190e)) {
                return 2;
            }
            if (uuid.equals(com.google.android.exoplayer2.l.f25188c)) {
                return 6;
            }
        }
        return 1;
    }

    private static a G0(PlaybackException playbackException, Context context, boolean z10) {
        int i11;
        boolean z11;
        if (playbackException.errorCode == 1001) {
            return new a(20, 0);
        }
        if (playbackException instanceof ExoPlaybackException) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
            z11 = exoPlaybackException.type == 1;
            i11 = exoPlaybackException.rendererFormatSupport;
        } else {
            i11 = 0;
            z11 = false;
        }
        Throwable th2 = (Throwable) com.google.android.exoplayer2.util.a.e(playbackException.getCause());
        if (!(th2 instanceof IOException)) {
            if (z11 && (i11 == 0 || i11 == 1)) {
                return new a(35, 0);
            }
            if (z11 && i11 == 3) {
                return new a(15, 0);
            }
            if (z11 && i11 == 2) {
                return new a(23, 0);
            }
            if (th2 instanceof MediaCodecRenderer.DecoderInitializationException) {
                return new a(13, com.google.android.exoplayer2.util.p0.W(((MediaCodecRenderer.DecoderInitializationException) th2).diagnosticInfo));
            }
            if (th2 instanceof MediaCodecDecoderException) {
                return new a(14, com.google.android.exoplayer2.util.p0.W(((MediaCodecDecoderException) th2).diagnosticInfo));
            }
            if (th2 instanceof OutOfMemoryError) {
                return new a(14, 0);
            }
            if (th2 instanceof AudioSink.InitializationException) {
                return new a(17, ((AudioSink.InitializationException) th2).audioTrackState);
            }
            if (th2 instanceof AudioSink.WriteException) {
                return new a(18, ((AudioSink.WriteException) th2).errorCode);
            }
            if (com.google.android.exoplayer2.util.p0.f27626a < 16 || !(th2 instanceof MediaCodec.CryptoException)) {
                return new a(22, 0);
            }
            int errorCode = ((MediaCodec.CryptoException) th2).getErrorCode();
            return new a(D0(errorCode), errorCode);
        }
        if (th2 instanceof HttpDataSource$InvalidResponseCodeException) {
            return new a(5, ((HttpDataSource$InvalidResponseCodeException) th2).responseCode);
        }
        if ((th2 instanceof HttpDataSource$InvalidContentTypeException) || (th2 instanceof ParserException)) {
            return new a(z10 ? 10 : 11, 0);
        }
        boolean z12 = th2 instanceof HttpDataSource$HttpDataSourceException;
        if (z12 || (th2 instanceof UdpDataSource.UdpDataSourceException)) {
            if (com.google.android.exoplayer2.util.z.d(context).f() == 1) {
                return new a(3, 0);
            }
            Throwable cause = th2.getCause();
            if (cause instanceof UnknownHostException) {
                return new a(6, 0);
            }
            if (cause instanceof SocketTimeoutException) {
                return new a(7, 0);
            }
            return (z12 && ((HttpDataSource$HttpDataSourceException) th2).type == 1) ? new a(4, 0) : new a(8, 0);
        }
        if (playbackException.errorCode == 1002) {
            return new a(21, 0);
        }
        if (!(th2 instanceof DrmSession.DrmSessionException)) {
            if (!(th2 instanceof FileDataSource.FileDataSourceException) || !(th2.getCause() instanceof FileNotFoundException)) {
                return new a(9, 0);
            }
            Throwable cause2 = ((Throwable) com.google.android.exoplayer2.util.a.e(th2.getCause())).getCause();
            return (com.google.android.exoplayer2.util.p0.f27626a >= 21 && (cause2 instanceof ErrnoException) && ((ErrnoException) cause2).errno == OsConstants.EACCES) ? new a(32, 0) : new a(31, 0);
        }
        Throwable th3 = (Throwable) com.google.android.exoplayer2.util.a.e(th2.getCause());
        int i12 = com.google.android.exoplayer2.util.p0.f27626a;
        if (i12 >= 21 && (th3 instanceof MediaDrm.MediaDrmStateException)) {
            int iW = com.google.android.exoplayer2.util.p0.W(((MediaDrm.MediaDrmStateException) th3).getDiagnosticInfo());
            return new a(D0(iW), iW);
        }
        if (i12 >= 23 && (th3 instanceof MediaDrmResetException)) {
            return new a(27, 0);
        }
        if (i12 >= 18 && (th3 instanceof NotProvisionedException)) {
            return new a(24, 0);
        }
        if (i12 >= 18 && (th3 instanceof DeniedByServerException)) {
            return new a(29, 0);
        }
        if (th3 instanceof UnsupportedDrmException) {
            return new a(23, 0);
        }
        return th3 instanceof DefaultDrmSessionManager.MissingSchemeDataException ? new a(28, 0) : new a(30, 0);
    }

    private static Pair H0(String str) {
        String[] strArrS0 = com.google.android.exoplayer2.util.p0.S0(str, "-");
        return Pair.create(strArrS0[0], strArrS0.length >= 2 ? strArrS0[1] : null);
    }

    private static int J0(Context context) {
        switch (com.google.android.exoplayer2.util.z.d(context).f()) {
            case 0:
                return 0;
            case 1:
                return 9;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
            case 8:
            default:
                return 1;
            case 7:
                return 3;
            case 9:
                return 8;
            case 10:
                return 7;
        }
    }

    private static int K0(v1 v1Var) {
        v1.h hVar = v1Var.f27709b;
        if (hVar == null) {
            return 0;
        }
        int iQ0 = com.google.android.exoplayer2.util.p0.q0(hVar.f27772a, hVar.f27773b);
        if (iQ0 == 0) {
            return 3;
        }
        if (iQ0 != 1) {
            return iQ0 != 2 ? 1 : 4;
        }
        return 5;
    }

    private static int L0(int i11) {
        if (i11 == 1) {
            return 2;
        }
        if (i11 != 2) {
            return i11 != 3 ? 1 : 4;
        }
        return 3;
    }

    private void M0(c.b bVar) {
        for (int i11 = 0; i11 < bVar.d(); i11++) {
            int iB = bVar.b(i11);
            c.a aVarC = bVar.c(iB);
            if (iB == 0) {
                this.f61763b.d(aVarC);
            } else if (iB == 11) {
                this.f61763b.c(aVarC, this.f61772k);
            } else {
                this.f61763b.b(aVarC);
            }
        }
    }

    private void N0(long j11) {
        int iJ0 = J0(this.f61762a);
        if (iJ0 != this.f61774m) {
            this.f61774m = iJ0;
            this.f61764c.reportNetworkEvent(g2.a().setNetworkType(iJ0).setTimeSinceCreatedMillis(j11 - this.f61765d).build());
        }
    }

    private void O0(long j11) {
        PlaybackException playbackException = this.f61775n;
        if (playbackException == null) {
            return;
        }
        a aVarG0 = G0(playbackException, this.f61762a, this.f61783v == 4);
        this.f61764c.reportPlaybackErrorEvent(c3.a().setTimeSinceCreatedMillis(j11 - this.f61765d).setErrorCode(aVarG0.f61788a).setSubErrorCode(aVarG0.f61789b).setException(playbackException).build());
        this.A = true;
        this.f61775n = null;
    }

    private void P0(o2 o2Var, c.b bVar, long j11) {
        if (o2Var.getPlaybackState() != 2) {
            this.f61782u = false;
        }
        if (o2Var.c() == null) {
            this.f61784w = false;
        } else if (bVar.a(10)) {
            this.f61784w = true;
        }
        int iX0 = X0(o2Var);
        if (this.f61773l != iX0) {
            this.f61773l = iX0;
            this.A = true;
            this.f61764c.reportPlaybackStateEvent(n3.a().setState(this.f61773l).setTimeSinceCreatedMillis(j11 - this.f61765d).build());
        }
    }

    private void Q0(o2 o2Var, c.b bVar, long j11) {
        if (bVar.a(2)) {
            p3 currentTracks = o2Var.getCurrentTracks();
            boolean zC = currentTracks.c(2);
            boolean zC2 = currentTracks.c(1);
            boolean zC3 = currentTracks.c(3);
            if (zC || zC2 || zC3) {
                if (!zC) {
                    V0(j11, null, 0);
                }
                if (!zC2) {
                    R0(j11, null, 0);
                }
                if (!zC3) {
                    T0(j11, null, 0);
                }
            }
        }
        if (A0(this.f61776o)) {
            b bVar2 = this.f61776o;
            com.google.android.exoplayer2.o1 o1Var = bVar2.f61790a;
            if (o1Var.f25502r != -1) {
                V0(j11, o1Var, bVar2.f61791b);
                this.f61776o = null;
            }
        }
        if (A0(this.f61777p)) {
            b bVar3 = this.f61777p;
            R0(j11, bVar3.f61790a, bVar3.f61791b);
            this.f61777p = null;
        }
        if (A0(this.f61778q)) {
            b bVar4 = this.f61778q;
            T0(j11, bVar4.f61790a, bVar4.f61791b);
            this.f61778q = null;
        }
    }

    private void R0(long j11, com.google.android.exoplayer2.o1 o1Var, int i11) {
        if (com.google.android.exoplayer2.util.p0.c(this.f61780s, o1Var)) {
            return;
        }
        if (this.f61780s == null && i11 == 0) {
            i11 = 1;
        }
        this.f61780s = o1Var;
        W0(0, j11, o1Var, i11);
    }

    private void S0(o2 o2Var, c.b bVar) {
        DrmInitData drmInitDataE0;
        if (bVar.a(0)) {
            c.a aVarC = bVar.c(0);
            if (this.f61771j != null) {
                U0(aVarC.f61616b, aVarC.f61618d);
            }
        }
        if (bVar.a(2) && this.f61771j != null && (drmInitDataE0 = E0(o2Var.getCurrentTracks().b())) != null) {
            m2.a(com.google.android.exoplayer2.util.p0.j(this.f61771j)).setDrmType(F0(drmInitDataE0));
        }
        if (bVar.a(1011)) {
            this.f61787z++;
        }
    }

    private void T0(long j11, com.google.android.exoplayer2.o1 o1Var, int i11) {
        if (com.google.android.exoplayer2.util.p0.c(this.f61781t, o1Var)) {
            return;
        }
        if (this.f61781t == null && i11 == 0) {
            i11 = 1;
        }
        this.f61781t = o1Var;
        W0(2, j11, o1Var, i11);
    }

    private void U0(k3 k3Var, com.google.android.exoplayer2.source.o.b bVar) {
        int iF;
        PlaybackMetrics.Builder builder = this.f61771j;
        if (bVar == null || (iF = k3Var.f(bVar.f76114a)) == -1) {
            return;
        }
        k3Var.j(iF, this.f61767f);
        k3Var.r(this.f61767f.f25156c, this.f61766e);
        builder.setStreamType(K0(this.f61766e.f25171c));
        k3.d dVar = this.f61766e;
        if (dVar.f25182n != C.TIME_UNSET && !dVar.f25180l && !dVar.f25177i && !dVar.i()) {
            builder.setMediaDurationMillis(this.f61766e.g());
        }
        builder.setPlaybackType(this.f61766e.i() ? 2 : 1);
        this.A = true;
    }

    private void V0(long j11, com.google.android.exoplayer2.o1 o1Var, int i11) {
        if (com.google.android.exoplayer2.util.p0.c(this.f61779r, o1Var)) {
            return;
        }
        if (this.f61779r == null && i11 == 0) {
            i11 = 1;
        }
        this.f61779r = o1Var;
        W0(1, j11, o1Var, i11);
    }

    private void W0(int i11, long j11, com.google.android.exoplayer2.o1 o1Var, int i12) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = y1.v1.a(i11).setTimeSinceCreatedMillis(j11 - this.f61765d);
        if (o1Var != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(L0(i12));
            String str = o1Var.f25495k;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = o1Var.f25496l;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = o1Var.f25493i;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i13 = o1Var.f25492h;
            if (i13 != -1) {
                timeSinceCreatedMillis.setBitrate(i13);
            }
            int i14 = o1Var.f25501q;
            if (i14 != -1) {
                timeSinceCreatedMillis.setWidth(i14);
            }
            int i15 = o1Var.f25502r;
            if (i15 != -1) {
                timeSinceCreatedMillis.setHeight(i15);
            }
            int i16 = o1Var.f25509y;
            if (i16 != -1) {
                timeSinceCreatedMillis.setChannelCount(i16);
            }
            int i17 = o1Var.f25510z;
            if (i17 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i17);
            }
            String str4 = o1Var.f25487c;
            if (str4 != null) {
                Pair pairH0 = H0(str4);
                timeSinceCreatedMillis.setLanguage((String) pairH0.first);
                Object obj = pairH0.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f11 = o1Var.f25503s;
            if (f11 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f11);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.A = true;
        this.f61764c.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }

    private int X0(o2 o2Var) {
        int playbackState = o2Var.getPlaybackState();
        if (this.f61782u) {
            return 5;
        }
        if (this.f61784w) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i11 = this.f61773l;
            if (i11 == 0 || i11 == 2) {
                return 2;
            }
            if (o2Var.getPlayWhenReady()) {
                return o2Var.j() != 0 ? 10 : 6;
            }
            return 7;
        }
        if (playbackState == 3) {
            if (o2Var.getPlayWhenReady()) {
                return o2Var.j() != 0 ? 9 : 3;
            }
            return 4;
        }
        if (playbackState != 1 || this.f61773l == 0) {
            return this.f61773l;
        }
        return 12;
    }

    @Override // e9.c
    public /* synthetic */ void A(c.a aVar, Object obj, long j11) {
        e9.b.T(this, aVar, obj, j11);
    }

    @Override // e9.c
    public /* synthetic */ void B(c.a aVar, com.google.android.exoplayer2.o1 o1Var, com.google.android.exoplayer2.decoder.g gVar) {
        e9.b.h(this, aVar, o1Var, gVar);
    }

    @Override // e9.c
    public /* synthetic */ void C(c.a aVar, String str, long j11) {
        e9.b.b(this, aVar, str, j11);
    }

    @Override // e9.c
    public /* synthetic */ void D(c.a aVar, int i11, com.google.android.exoplayer2.o1 o1Var) {
        e9.b.r(this, aVar, i11, o1Var);
    }

    @Override // e9.c
    public /* synthetic */ void E(c.a aVar) {
        e9.b.x(this, aVar);
    }

    @Override // e9.c
    public /* synthetic */ void F(c.a aVar, int i11, long j11, long j12) {
        e9.b.k(this, aVar, i11, j11, j12);
    }

    @Override // e9.c
    public /* synthetic */ void G(c.a aVar, long j11, int i11) {
        e9.b.j0(this, aVar, j11, i11);
    }

    @Override // e9.c
    public /* synthetic */ void H(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        e9.b.i0(this, aVar, eVar);
    }

    @Override // e9.c
    public void I(o2 o2Var, c.b bVar) {
        if (bVar.d() == 0) {
            return;
        }
        M0(bVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        S0(o2Var, bVar);
        O0(jElapsedRealtime);
        Q0(o2Var, bVar, jElapsedRealtime);
        N0(jElapsedRealtime);
        P0(o2Var, bVar, jElapsedRealtime);
        if (bVar.a(1028)) {
            this.f61763b.e(bVar.c(1028));
        }
    }

    public LogSessionId I0() {
        return this.f61764c.getSessionId();
    }

    @Override // e9.c
    public /* synthetic */ void J(c.a aVar) {
        e9.b.v(this, aVar);
    }

    @Override // e9.c
    public /* synthetic */ void K(c.a aVar, int i11) {
        e9.b.U(this, aVar, i11);
    }

    @Override // e9.c
    public /* synthetic */ void L(c.a aVar) {
        e9.b.W(this, aVar);
    }

    @Override // e9.c
    public void M(c.a aVar, PlaybackException playbackException) {
        this.f61775n = playbackException;
    }

    @Override // e9.c
    public /* synthetic */ void N(c.a aVar, int i11, com.google.android.exoplayer2.decoder.e eVar) {
        e9.b.p(this, aVar, i11, eVar);
    }

    @Override // e9.c
    public /* synthetic */ void O(c.a aVar, boolean z10) {
        e9.b.D(this, aVar, z10);
    }

    @Override // e9.c
    public /* synthetic */ void P(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        e9.b.e(this, aVar, eVar);
    }

    @Override // e9.t1.a
    public void Q(c.a aVar, String str, boolean z10) {
        com.google.android.exoplayer2.source.o.b bVar = aVar.f61618d;
        if ((bVar == null || !bVar.b()) && str.equals(this.f61770i)) {
            C0();
        }
        this.f61768g.remove(str);
        this.f61769h.remove(str);
    }

    @Override // e9.c
    public /* synthetic */ void R(c.a aVar, int i11) {
        e9.b.S(this, aVar, i11);
    }

    @Override // e9.t1.a
    public void S(c.a aVar, String str) {
        com.google.android.exoplayer2.source.o.b bVar = aVar.f61618d;
        if (bVar == null || !bVar.b()) {
            C0();
            this.f61770i = str;
            this.f61771j = r2.a().setPlayerName("ExoPlayerLib").setPlayerVersion("2.18.1");
            U0(aVar.f61616b, aVar.f61618d);
        }
    }

    @Override // e9.c
    public /* synthetic */ void T(c.a aVar, float f11) {
        e9.b.n0(this, aVar, f11);
    }

    @Override // e9.c
    public void U(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        this.f61785x += eVar.f24881g;
        this.f61786y += eVar.f24879e;
    }

    @Override // e9.c
    public /* synthetic */ void V(c.a aVar, p3 p3Var) {
        e9.b.c0(this, aVar, p3Var);
    }

    @Override // e9.c
    public /* synthetic */ void W(c.a aVar, int i11, long j11) {
        e9.b.B(this, aVar, i11, j11);
    }

    @Override // e9.c
    public /* synthetic */ void X(c.a aVar) {
        e9.b.V(this, aVar);
    }

    @Override // e9.c
    public /* synthetic */ void Y(c.a aVar, String str, long j11) {
        e9.b.f0(this, aVar, str, j11);
    }

    @Override // e9.c
    public /* synthetic */ void Z(c.a aVar, int i11, String str, long j11) {
        e9.b.q(this, aVar, i11, str, j11);
    }

    @Override // e9.c
    public /* synthetic */ void a(c.a aVar, String str) {
        e9.b.h0(this, aVar, str);
    }

    @Override // e9.c
    public void a0(c.a aVar, int i11, long j11, long j12) {
        com.google.android.exoplayer2.source.o.b bVar = aVar.f61618d;
        if (bVar != null) {
            String strF = this.f61763b.f(aVar.f61616b, (com.google.android.exoplayer2.source.o.b) com.google.android.exoplayer2.util.a.e(bVar));
            Long l11 = (Long) this.f61769h.get(strF);
            Long l12 = (Long) this.f61768g.get(strF);
            this.f61769h.put(strF, Long.valueOf((l11 == null ? 0L : l11.longValue()) + j11));
            this.f61768g.put(strF, Long.valueOf((l12 != null ? l12.longValue() : 0L) + ((long) i11)));
        }
    }

    @Override // e9.c
    public /* synthetic */ void b(c.a aVar, boolean z10) {
        e9.b.H(this, aVar, z10);
    }

    @Override // e9.c
    public /* synthetic */ void b0(c.a aVar, boolean z10) {
        e9.b.Y(this, aVar, z10);
    }

    @Override // e9.c
    public /* synthetic */ void c(c.a aVar, int i11) {
        e9.b.O(this, aVar, i11);
    }

    @Override // e9.c
    public /* synthetic */ void c0(c.a aVar, boolean z10) {
        e9.b.C(this, aVar, z10);
    }

    @Override // e9.c
    public /* synthetic */ void d(c.a aVar, t9.h hVar, t9.i iVar) {
        e9.b.G(this, aVar, hVar, iVar);
    }

    @Override // e9.c
    public /* synthetic */ void d0(c.a aVar, int i11, boolean z10) {
        e9.b.t(this, aVar, i11, z10);
    }

    @Override // e9.c
    public /* synthetic */ void e(c.a aVar, com.google.android.exoplayer2.o1 o1Var, com.google.android.exoplayer2.decoder.g gVar) {
        e9.b.l0(this, aVar, o1Var, gVar);
    }

    @Override // e9.c
    public /* synthetic */ void e0(c.a aVar, String str, long j11, long j12) {
        e9.b.c(this, aVar, str, j11, j12);
    }

    @Override // e9.c
    public /* synthetic */ void f(c.a aVar) {
        e9.b.w(this, aVar);
    }

    @Override // e9.c
    public /* synthetic */ void f0(c.a aVar) {
        e9.b.u(this, aVar);
    }

    @Override // e9.c
    public /* synthetic */ void g(c.a aVar, boolean z10, int i11) {
        e9.b.L(this, aVar, z10, i11);
    }

    @Override // e9.c
    public /* synthetic */ void g0(c.a aVar, int i11, com.google.android.exoplayer2.decoder.e eVar) {
        e9.b.o(this, aVar, i11, eVar);
    }

    @Override // e9.c
    public /* synthetic */ void h(c.a aVar, a2 a2Var) {
        e9.b.J(this, aVar, a2Var);
    }

    @Override // e9.c
    public /* synthetic */ void h0(c.a aVar) {
        e9.b.Q(this, aVar);
    }

    @Override // e9.c
    public /* synthetic */ void i(c.a aVar, Metadata metadata) {
        e9.b.K(this, aVar, metadata);
    }

    @Override // e9.c
    public /* synthetic */ void i0(c.a aVar, int i11) {
        e9.b.a0(this, aVar, i11);
    }

    @Override // e9.c
    public /* synthetic */ void j(c.a aVar, Exception exc) {
        e9.b.z(this, aVar, exc);
    }

    @Override // e9.c
    public /* synthetic */ void j0(c.a aVar, String str, long j11, long j12) {
        e9.b.g0(this, aVar, str, j11, j12);
    }

    @Override // e9.c
    public void k(c.a aVar, o2.e eVar, o2.e eVar2, int i11) {
        if (i11 == 1) {
            this.f61782u = true;
        }
        this.f61772k = i11;
    }

    @Override // e9.c
    public /* synthetic */ void k0(c.a aVar, List list) {
        e9.b.n(this, aVar, list);
    }

    @Override // e9.c
    public /* synthetic */ void l(c.a aVar, com.google.android.exoplayer2.r rVar) {
        e9.b.s(this, aVar, rVar);
    }

    @Override // e9.c
    public /* synthetic */ void l0(c.a aVar, boolean z10) {
        e9.b.X(this, aVar, z10);
    }

    @Override // e9.c
    public /* synthetic */ void m(c.a aVar, int i11) {
        e9.b.y(this, aVar, i11);
    }

    @Override // e9.c
    public /* synthetic */ void m0(c.a aVar, long j11) {
        e9.b.i(this, aVar, j11);
    }

    @Override // e9.c
    public /* synthetic */ void n(c.a aVar, String str) {
        e9.b.d(this, aVar, str);
    }

    @Override // e9.c
    public /* synthetic */ void n0(c.a aVar, t9.i iVar) {
        e9.b.d0(this, aVar, iVar);
    }

    @Override // e9.c
    public /* synthetic */ void o(c.a aVar, v1 v1Var, int i11) {
        e9.b.I(this, aVar, v1Var, i11);
    }

    @Override // e9.c
    public /* synthetic */ void o0(c.a aVar, com.google.android.exoplayer2.o1 o1Var) {
        e9.b.k0(this, aVar, o1Var);
    }

    @Override // e9.c
    public /* synthetic */ void p(c.a aVar, t9.h hVar, t9.i iVar) {
        e9.b.F(this, aVar, hVar, iVar);
    }

    @Override // e9.c
    public /* synthetic */ void p0(c.a aVar, TrackSelectionParameters trackSelectionParameters) {
        e9.b.b0(this, aVar, trackSelectionParameters);
    }

    @Override // e9.t1.a
    public void q(c.a aVar, String str, String str2) {
    }

    @Override // e9.c
    public /* synthetic */ void q0(c.a aVar, n2 n2Var) {
        e9.b.M(this, aVar, n2Var);
    }

    @Override // e9.c
    public /* synthetic */ void r(c.a aVar, ba.f fVar) {
        e9.b.m(this, aVar, fVar);
    }

    @Override // e9.c
    public /* synthetic */ void r0(c.a aVar, Exception exc) {
        e9.b.e0(this, aVar, exc);
    }

    @Override // e9.c
    public /* synthetic */ void s(c.a aVar, o2.b bVar) {
        e9.b.l(this, aVar, bVar);
    }

    @Override // e9.c
    public /* synthetic */ void s0(c.a aVar, int i11) {
        e9.b.N(this, aVar, i11);
    }

    @Override // e9.c
    public /* synthetic */ void t(c.a aVar, com.google.android.exoplayer2.decoder.e eVar) {
        e9.b.f(this, aVar, eVar);
    }

    @Override // e9.c
    public /* synthetic */ void t0(c.a aVar) {
        e9.b.A(this, aVar);
    }

    @Override // e9.c
    public void u(c.a aVar, t9.h hVar, t9.i iVar, IOException iOException, boolean z10) {
        this.f61783v = iVar.f76107a;
    }

    @Override // e9.c
    public /* synthetic */ void u0(c.a aVar, int i11, int i12, int i13, float f11) {
        e9.b.m0(this, aVar, i11, i12, i13, f11);
    }

    @Override // e9.c
    public /* synthetic */ void v(c.a aVar, Exception exc) {
        e9.b.a(this, aVar, exc);
    }

    @Override // e9.c
    public void v0(c.a aVar, com.google.android.exoplayer2.video.y yVar) {
        b bVar = this.f61776o;
        if (bVar != null) {
            com.google.android.exoplayer2.o1 o1Var = bVar.f61790a;
            if (o1Var.f25502r == -1) {
                this.f61776o = new b(o1Var.b().j0(yVar.f28009a).Q(yVar.f28010b).E(), bVar.f61791b, bVar.f61792c);
            }
        }
    }

    @Override // e9.c
    public /* synthetic */ void w(c.a aVar, com.google.android.exoplayer2.o1 o1Var) {
        e9.b.g(this, aVar, o1Var);
    }

    @Override // e9.c
    public /* synthetic */ void w0(c.a aVar, Exception exc) {
        e9.b.j(this, aVar, exc);
    }

    @Override // e9.t1.a
    public void x(c.a aVar, String str) {
    }

    @Override // e9.c
    public /* synthetic */ void x0(c.a aVar, int i11, int i12) {
        e9.b.Z(this, aVar, i11, i12);
    }

    @Override // e9.c
    public /* synthetic */ void y(c.a aVar, boolean z10, int i11) {
        e9.b.R(this, aVar, z10, i11);
    }

    @Override // e9.c
    public /* synthetic */ void y0(c.a aVar, t9.h hVar, t9.i iVar) {
        e9.b.E(this, aVar, hVar, iVar);
    }

    @Override // e9.c
    public void z(c.a aVar, t9.i iVar) {
        if (aVar.f61618d == null) {
            return;
        }
        b bVar = new b((com.google.android.exoplayer2.o1) com.google.android.exoplayer2.util.a.e(iVar.f76109c), iVar.f76110d, this.f61763b.f(aVar.f61616b, (com.google.android.exoplayer2.source.o.b) com.google.android.exoplayer2.util.a.e(aVar.f61618d)));
        int i11 = iVar.f76108b;
        if (i11 != 0) {
            if (i11 == 1) {
                this.f61777p = bVar;
                return;
            } else if (i11 != 2) {
                if (i11 != 3) {
                    return;
                }
                this.f61778q = bVar;
                return;
            }
        }
        this.f61776o = bVar;
    }

    @Override // e9.c
    public /* synthetic */ void z0(c.a aVar, PlaybackException playbackException) {
        e9.b.P(this, aVar, playbackException);
    }
}
