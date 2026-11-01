package y1;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.datasource.FileDataSource;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.UdpDataSource;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.UnsupportedDrmException;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class b4 implements c, c4.a {
    private int A;
    private boolean B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f78579a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c4 f78581c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PlaybackSession f78582d;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f78588j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PlaybackMetrics.Builder f78589k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f78590l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private PlaybackException f78593o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private b f78594p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private b f78595q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b f78596r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private androidx.media3.common.r f78597s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private androidx.media3.common.r f78598t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private androidx.media3.common.r f78599u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f78600v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f78601w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f78602x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f78603y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f78604z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f78580b = androidx.media3.common.util.c.a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.media3.common.e0.c f78584f = new androidx.media3.common.e0.c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.media3.common.e0.b f78585g = new androidx.media3.common.e0.b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final HashMap f78587i = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final HashMap f78586h = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f78583e = SystemClock.elapsedRealtime();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f78591m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f78592n = 0;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f78605a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f78606b;

        public a(int i11, int i12) {
            this.f78605a = i11;
            this.f78606b = i12;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.common.r f78607a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f78608b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f78609c;

        public b(androidx.media3.common.r rVar, int i11, String str) {
            this.f78607a = rVar;
            this.f78608b = i11;
            this.f78609c = str;
        }
    }

    private b4(Context context, PlaybackSession playbackSession) {
        this.f78579a = context.getApplicationContext();
        this.f78582d = playbackSession;
        u1 u1Var = new u1();
        this.f78581c = u1Var;
        u1Var.g(this);
    }

    private boolean D0(b bVar) {
        return bVar != null && bVar.f78609c.equals(this.f78581c.a());
    }

    public static b4 E0(Context context) {
        MediaMetricsManager mediaMetricsManagerA = r3.a(context.getSystemService("media_metrics"));
        if (mediaMetricsManagerA == null) {
            return null;
        }
        return new b4(context, mediaMetricsManagerA.createPlaybackSession());
    }

    private void F0() {
        PlaybackMetrics.Builder builder = this.f78589k;
        if (builder != null && this.B) {
            builder.setAudioUnderrunCount(this.A);
            this.f78589k.setVideoFramesDropped(this.f78603y);
            this.f78589k.setVideoFramesPlayed(this.f78604z);
            Long l11 = (Long) this.f78586h.get(this.f78588j);
            this.f78589k.setNetworkTransferDurationMillis(l11 == null ? 0L : l11.longValue());
            Long l12 = (Long) this.f78587i.get(this.f78588j);
            this.f78589k.setNetworkBytesRead(l12 == null ? 0L : l12.longValue());
            this.f78589k.setStreamSource((l12 == null || l12.longValue() <= 0) ? 0 : 1);
            final PlaybackMetrics playbackMetricsBuild = this.f78589k.build();
            this.f78580b.execute(new Runnable() { // from class: y1.z3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f78809a.P0(playbackMetricsBuild);
                }
            });
        }
        this.f78589k = null;
        this.f78588j = null;
        this.A = 0;
        this.f78603y = 0;
        this.f78604z = 0;
        this.f78597s = null;
        this.f78598t = null;
        this.f78599u = null;
        this.B = false;
    }

    private static int G0(int i11) {
        switch (androidx.media3.common.util.a1.b0(i11)) {
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

    private static DrmInitData H0(ImmutableList immutableList) {
        DrmInitData drmInitData;
        r4 it = immutableList.iterator();
        while (it.hasNext()) {
            androidx.media3.common.i0.a aVar = (androidx.media3.common.i0.a) it.next();
            for (int i11 = 0; i11 < aVar.f10091a; i11++) {
                if (aVar.h(i11) && (drmInitData = aVar.b(i11).f10165s) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    private static int I0(DrmInitData drmInitData) {
        for (int i11 = 0; i11 < drmInitData.schemeDataCount; i11++) {
            UUID uuid = drmInitData.get(i11).uuid;
            if (uuid.equals(androidx.media3.common.h.f9984d)) {
                return 3;
            }
            if (uuid.equals(androidx.media3.common.h.f9985e)) {
                return 2;
            }
            if (uuid.equals(androidx.media3.common.h.f9983c)) {
                return 6;
            }
        }
        return 1;
    }

    private static a J0(PlaybackException playbackException, Context context, boolean z10) {
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
        Throwable th2 = (Throwable) androidx.media3.common.util.a.e(playbackException.getCause());
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
                return new a(13, androidx.media3.common.util.a1.c0(((MediaCodecRenderer.DecoderInitializationException) th2).diagnosticInfo));
            }
            if (th2 instanceof MediaCodecDecoderException) {
                return new a(14, ((MediaCodecDecoderException) th2).errorCode);
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
            if (!(th2 instanceof MediaCodec.CryptoException)) {
                return new a(22, 0);
            }
            int errorCode = ((MediaCodec.CryptoException) th2).getErrorCode();
            return new a(G0(errorCode), errorCode);
        }
        if (th2 instanceof HttpDataSource.InvalidResponseCodeException) {
            return new a(5, ((HttpDataSource.InvalidResponseCodeException) th2).responseCode);
        }
        if ((th2 instanceof HttpDataSource.InvalidContentTypeException) || (th2 instanceof ParserException)) {
            return new a(z10 ? 10 : 11, 0);
        }
        boolean z12 = th2 instanceof HttpDataSource.HttpDataSourceException;
        if (z12 || (th2 instanceof UdpDataSource.UdpDataSourceException)) {
            if (androidx.media3.common.util.z.e(context).g() == 1) {
                return new a(3, 0);
            }
            Throwable cause = th2.getCause();
            if (cause instanceof UnknownHostException) {
                return new a(6, 0);
            }
            if (cause instanceof SocketTimeoutException) {
                return new a(7, 0);
            }
            return (z12 && ((HttpDataSource.HttpDataSourceException) th2).type == 1) ? new a(4, 0) : new a(8, 0);
        }
        if (playbackException.errorCode == 1002) {
            return new a(21, 0);
        }
        if (!(th2 instanceof DrmSession.DrmSessionException)) {
            if (!(th2 instanceof FileDataSource.FileDataSourceException) || !(th2.getCause() instanceof FileNotFoundException)) {
                return new a(9, 0);
            }
            Throwable cause2 = ((Throwable) androidx.media3.common.util.a.e(th2.getCause())).getCause();
            return ((cause2 instanceof ErrnoException) && ((ErrnoException) cause2).errno == OsConstants.EACCES) ? new a(32, 0) : new a(31, 0);
        }
        Throwable th3 = (Throwable) androidx.media3.common.util.a.e(th2.getCause());
        if (th3 instanceof MediaDrm.MediaDrmStateException) {
            int iC0 = androidx.media3.common.util.a1.c0(((MediaDrm.MediaDrmStateException) th3).getDiagnosticInfo());
            return new a(G0(iC0), iC0);
        }
        if (androidx.media3.common.util.a1.f10350a >= 23 && (th3 instanceof MediaDrmResetException)) {
            return new a(27, 0);
        }
        if (th3 instanceof NotProvisionedException) {
            return new a(24, 0);
        }
        if (th3 instanceof DeniedByServerException) {
            return new a(29, 0);
        }
        if (th3 instanceof UnsupportedDrmException) {
            return new a(23, 0);
        }
        return th3 instanceof DefaultDrmSessionManager.MissingSchemeDataException ? new a(28, 0) : new a(30, 0);
    }

    private static Pair K0(String str) {
        String[] strArrO1 = androidx.media3.common.util.a1.o1(str, "-");
        return Pair.create(strArrO1[0], strArrO1.length >= 2 ? strArrO1[1] : null);
    }

    private static int M0(Context context) {
        switch (androidx.media3.common.util.z.e(context).g()) {
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

    private static int N0(androidx.media3.common.t tVar) {
        androidx.media3.common.t.h hVar = tVar.f10211b;
        if (hVar == null) {
            return 0;
        }
        int iA0 = androidx.media3.common.util.a1.A0(hVar.f10303a, hVar.f10304b);
        if (iA0 == 0) {
            return 3;
        }
        if (iA0 != 1) {
            return iA0 != 2 ? 1 : 4;
        }
        return 5;
    }

    private static int O0(int i11) {
        if (i11 == 1) {
            return 2;
        }
        if (i11 != 2) {
            return i11 != 3 ? 1 : 4;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P0(PlaybackMetrics playbackMetrics) {
        this.f78582d.reportPlaybackMetrics(playbackMetrics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q0(NetworkEvent networkEvent) {
        this.f78582d.reportNetworkEvent(networkEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R0(PlaybackErrorEvent playbackErrorEvent) {
        this.f78582d.reportPlaybackErrorEvent(playbackErrorEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S0(PlaybackStateEvent playbackStateEvent) {
        this.f78582d.reportPlaybackStateEvent(playbackStateEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T0(TrackChangeEvent trackChangeEvent) {
        this.f78582d.reportTrackChangeEvent(trackChangeEvent);
    }

    private void U0(c.b bVar) {
        for (int i11 = 0; i11 < bVar.d(); i11++) {
            int iB = bVar.b(i11);
            c.a aVarC = bVar.c(iB);
            if (iB == 0) {
                this.f78581c.f(aVarC);
            } else if (iB == 11) {
                this.f78581c.d(aVarC, this.f78590l);
            } else {
                this.f78581c.c(aVarC);
            }
        }
    }

    private void V0(long j11) {
        int iM0 = M0(this.f78579a);
        if (iM0 != this.f78592n) {
            this.f78592n = iM0;
            final NetworkEvent networkEventBuild = g2.a().setNetworkType(iM0).setTimeSinceCreatedMillis(j11 - this.f78583e).build();
            this.f78580b.execute(new Runnable() { // from class: y1.x3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f78796a.Q0(networkEventBuild);
                }
            });
        }
    }

    private void W0(long j11) {
        PlaybackException playbackException = this.f78593o;
        if (playbackException == null) {
            return;
        }
        a aVarJ0 = J0(playbackException, this.f78579a, this.f78601w == 4);
        final PlaybackErrorEvent playbackErrorEventBuild = c3.a().setTimeSinceCreatedMillis(j11 - this.f78583e).setErrorCode(aVarJ0.f78605a).setSubErrorCode(aVarJ0.f78606b).setException(playbackException).build();
        this.f78580b.execute(new Runnable() { // from class: y1.y3
            @Override // java.lang.Runnable
            public final void run() {
                this.f78803a.R0(playbackErrorEventBuild);
            }
        });
        this.B = true;
        this.f78593o = null;
    }

    private void X0(androidx.media3.common.a0 a0Var, c.b bVar, long j11) {
        if (a0Var.getPlaybackState() != 2) {
            this.f78600v = false;
        }
        if (a0Var.c() == null) {
            this.f78602x = false;
        } else if (bVar.a(10)) {
            this.f78602x = true;
        }
        int iF1 = f1(a0Var);
        if (this.f78591m != iF1) {
            this.f78591m = iF1;
            this.B = true;
            final PlaybackStateEvent playbackStateEventBuild = n3.a().setState(this.f78591m).setTimeSinceCreatedMillis(j11 - this.f78583e).build();
            this.f78580b.execute(new Runnable() { // from class: y1.a4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f78571a.S0(playbackStateEventBuild);
                }
            });
        }
    }

    private void Y0(androidx.media3.common.a0 a0Var, c.b bVar, long j11) {
        if (bVar.a(2)) {
            androidx.media3.common.i0 currentTracks = a0Var.getCurrentTracks();
            boolean zC = currentTracks.c(2);
            boolean zC2 = currentTracks.c(1);
            boolean zC3 = currentTracks.c(3);
            if (zC || zC2 || zC3) {
                if (!zC) {
                    d1(j11, null, 0);
                }
                if (!zC2) {
                    Z0(j11, null, 0);
                }
                if (!zC3) {
                    b1(j11, null, 0);
                }
            }
        }
        if (D0(this.f78594p)) {
            b bVar2 = this.f78594p;
            androidx.media3.common.r rVar = bVar2.f78607a;
            if (rVar.f10169w != -1) {
                d1(j11, rVar, bVar2.f78608b);
                this.f78594p = null;
            }
        }
        if (D0(this.f78595q)) {
            b bVar3 = this.f78595q;
            Z0(j11, bVar3.f78607a, bVar3.f78608b);
            this.f78595q = null;
        }
        if (D0(this.f78596r)) {
            b bVar4 = this.f78596r;
            b1(j11, bVar4.f78607a, bVar4.f78608b);
            this.f78596r = null;
        }
    }

    private void Z0(long j11, androidx.media3.common.r rVar, int i11) {
        if (Objects.equals(this.f78598t, rVar)) {
            return;
        }
        if (this.f78598t == null && i11 == 0) {
            i11 = 1;
        }
        this.f78598t = rVar;
        e1(0, j11, rVar, i11);
    }

    private void a1(androidx.media3.common.a0 a0Var, c.b bVar) {
        DrmInitData drmInitDataH0;
        if (bVar.a(0)) {
            c.a aVarC = bVar.c(0);
            if (this.f78589k != null) {
                c1(aVarC.f78611b, aVarC.f78613d);
            }
        }
        if (bVar.a(2) && this.f78589k != null && (drmInitDataH0 = H0(a0Var.getCurrentTracks().a())) != null) {
            m2.a(androidx.media3.common.util.a1.i(this.f78589k)).setDrmType(I0(drmInitDataH0));
        }
        if (bVar.a(1011)) {
            this.A++;
        }
    }

    private void b1(long j11, androidx.media3.common.r rVar, int i11) {
        if (Objects.equals(this.f78599u, rVar)) {
            return;
        }
        if (this.f78599u == null && i11 == 0) {
            i11 = 1;
        }
        this.f78599u = rVar;
        e1(2, j11, rVar, i11);
    }

    private void c1(androidx.media3.common.e0 e0Var, androidx.media3.exoplayer.source.r.b bVar) {
        int iB;
        PlaybackMetrics.Builder builder = this.f78589k;
        if (bVar == null || (iB = e0Var.b(bVar.f12883a)) == -1) {
            return;
        }
        e0Var.f(iB, this.f78585g);
        e0Var.n(this.f78585g.f9936c, this.f78584f);
        builder.setStreamType(N0(this.f78584f.f9953c));
        androidx.media3.common.e0.c cVar = this.f78584f;
        if (cVar.f9963m != C.TIME_UNSET && !cVar.f9961k && !cVar.f9959i && !cVar.f()) {
            builder.setMediaDurationMillis(this.f78584f.d());
        }
        builder.setPlaybackType(this.f78584f.f() ? 2 : 1);
        this.B = true;
    }

    private void d1(long j11, androidx.media3.common.r rVar, int i11) {
        if (Objects.equals(this.f78597s, rVar)) {
            return;
        }
        if (this.f78597s == null && i11 == 0) {
            i11 = 1;
        }
        this.f78597s = rVar;
        e1(1, j11, rVar, i11);
    }

    private void e1(int i11, long j11, androidx.media3.common.r rVar, int i12) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = v1.a(i11).setTimeSinceCreatedMillis(j11 - this.f78583e);
        if (rVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(O0(i12));
            String str = rVar.f10160n;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = rVar.f10161o;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = rVar.f10157k;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i13 = rVar.f10156j;
            if (i13 != -1) {
                timeSinceCreatedMillis.setBitrate(i13);
            }
            int i14 = rVar.f10168v;
            if (i14 != -1) {
                timeSinceCreatedMillis.setWidth(i14);
            }
            int i15 = rVar.f10169w;
            if (i15 != -1) {
                timeSinceCreatedMillis.setHeight(i15);
            }
            int i16 = rVar.E;
            if (i16 != -1) {
                timeSinceCreatedMillis.setChannelCount(i16);
            }
            int i17 = rVar.F;
            if (i17 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i17);
            }
            String str4 = rVar.f10150d;
            if (str4 != null) {
                Pair pairK0 = K0(str4);
                timeSinceCreatedMillis.setLanguage((String) pairK0.first);
                Object obj = pairK0.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f11 = rVar.f10170x;
            if (f11 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f11);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.B = true;
        final TrackChangeEvent trackChangeEventBuild = timeSinceCreatedMillis.build();
        this.f78580b.execute(new Runnable() { // from class: y1.w3
            @Override // java.lang.Runnable
            public final void run() {
                this.f78789a.T0(trackChangeEventBuild);
            }
        });
    }

    private int f1(androidx.media3.common.a0 a0Var) {
        int playbackState = a0Var.getPlaybackState();
        if (this.f78600v) {
            return 5;
        }
        if (this.f78602x) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i11 = this.f78591m;
            if (i11 == 0 || i11 == 2 || i11 == 12) {
                return 2;
            }
            if (a0Var.getPlayWhenReady()) {
                return a0Var.j() != 0 ? 10 : 6;
            }
            return 7;
        }
        if (playbackState == 3) {
            if (a0Var.getPlayWhenReady()) {
                return a0Var.j() != 0 ? 9 : 3;
            }
            return 4;
        }
        if (playbackState != 1 || this.f78591m == 0) {
            return this.f78591m;
        }
        return 12;
    }

    @Override // y1.c
    public /* synthetic */ void A(c.a aVar) {
        y1.b.w(this, aVar);
    }

    @Override // y1.c
    public /* synthetic */ void B(c.a aVar) {
        y1.b.X(this, aVar);
    }

    @Override // y1.c4.a
    public void C(c.a aVar, String str) {
    }

    @Override // y1.c
    public /* synthetic */ void D(c.a aVar, PlaybackException playbackException) {
        y1.b.Q(this, aVar, playbackException);
    }

    @Override // y1.c
    public void E(c.a aVar, androidx.media3.exoplayer.j jVar) {
        this.f78603y += jVar.f12037g;
        this.f78604z += jVar.f12035e;
    }

    @Override // y1.c
    public void F(c.a aVar, androidx.media3.common.a0.e eVar, androidx.media3.common.a0.e eVar2, int i11) {
        if (i11 == 1) {
            this.f78600v = true;
        }
        this.f78590l = i11;
    }

    @Override // y1.c
    public /* synthetic */ void G(c.a aVar, Object obj, long j11) {
        y1.b.U(this, aVar, obj, j11);
    }

    @Override // y1.c4.a
    public void H(c.a aVar, String str, String str2) {
    }

    @Override // y1.c
    public /* synthetic */ void I(c.a aVar, g2.i iVar, g2.j jVar) {
        y1.b.G(this, aVar, iVar, jVar);
    }

    @Override // y1.c
    public void J(c.a aVar, int i11, long j11, long j12) {
        androidx.media3.exoplayer.source.r.b bVar = aVar.f78613d;
        if (bVar != null) {
            String strB = this.f78581c.b(aVar.f78611b, (androidx.media3.exoplayer.source.r.b) androidx.media3.common.util.a.e(bVar));
            Long l11 = (Long) this.f78587i.get(strB);
            Long l12 = (Long) this.f78586h.get(strB);
            this.f78587i.put(strB, Long.valueOf((l11 == null ? 0L : l11.longValue()) + j11));
            this.f78586h.put(strB, Long.valueOf((l12 != null ? l12.longValue() : 0L) + ((long) i11)));
        }
    }

    @Override // y1.c
    public /* synthetic */ void K(c.a aVar, androidx.media3.exoplayer.j jVar) {
        y1.b.f(this, aVar, jVar);
    }

    @Override // y1.c
    public /* synthetic */ void L(c.a aVar, int i11) {
        y1.b.i(this, aVar, i11);
    }

    public LogSessionId L0() {
        return this.f78582d.getSessionId();
    }

    @Override // y1.c
    public /* synthetic */ void M(c.a aVar, boolean z10) {
        y1.b.I(this, aVar, z10);
    }

    @Override // y1.c
    public /* synthetic */ void N(c.a aVar, int i11, long j11, long j12) {
        y1.b.m(this, aVar, i11, j11, j12);
    }

    @Override // y1.c
    public /* synthetic */ void O(c.a aVar, boolean z10, int i11) {
        y1.b.M(this, aVar, z10, i11);
    }

    @Override // y1.c
    public /* synthetic */ void P(c.a aVar, androidx.media3.common.z zVar) {
        y1.b.N(this, aVar, zVar);
    }

    @Override // y1.c
    public /* synthetic */ void Q(c.a aVar) {
        y1.b.z(this, aVar);
    }

    @Override // y1.c
    public /* synthetic */ void R(c.a aVar, String str, long j11, long j12) {
        y1.b.c(this, aVar, str, j11, j12);
    }

    @Override // y1.c
    public void S(c.a aVar, androidx.media3.common.m0 m0Var) {
        b bVar = this.f78594p;
        if (bVar != null) {
            androidx.media3.common.r rVar = bVar.f78607a;
            if (rVar.f10169w == -1) {
                this.f78594p = new b(rVar.b().B0(m0Var.f10115a).d0(m0Var.f10116b).N(), bVar.f78608b, bVar.f78609c);
            }
        }
    }

    @Override // y1.c
    public /* synthetic */ void T(c.a aVar, long j11, int i11) {
        y1.b.k0(this, aVar, j11, i11);
    }

    @Override // y1.c
    public /* synthetic */ void U(c.a aVar, int i11) {
        y1.b.x(this, aVar, i11);
    }

    @Override // y1.c
    public /* synthetic */ void V(c.a aVar, int i11) {
        y1.b.P(this, aVar, i11);
    }

    @Override // y1.c
    public /* synthetic */ void W(c.a aVar, String str, long j11) {
        y1.b.b(this, aVar, str, j11);
    }

    @Override // y1.c
    public /* synthetic */ void X(c.a aVar, Exception exc) {
        y1.b.y(this, aVar, exc);
    }

    @Override // y1.c
    public /* synthetic */ void Y(c.a aVar, AudioSink.a aVar2) {
        y1.b.k(this, aVar, aVar2);
    }

    @Override // y1.c
    public /* synthetic */ void Z(c.a aVar, String str) {
        y1.b.i0(this, aVar, str);
    }

    @Override // y1.c
    public /* synthetic */ void a(c.a aVar, androidx.media3.exoplayer.j jVar) {
        y1.b.e(this, aVar, jVar);
    }

    @Override // y1.c
    public /* synthetic */ void a0(c.a aVar, String str) {
        y1.b.d(this, aVar, str);
    }

    @Override // y1.c
    public /* synthetic */ void b(c.a aVar, float f11) {
        y1.b.n0(this, aVar, f11);
    }

    @Override // y1.c
    public /* synthetic */ void b0(c.a aVar, boolean z10, int i11) {
        y1.b.S(this, aVar, z10, i11);
    }

    @Override // y1.c
    public void c(c.a aVar, PlaybackException playbackException) {
        this.f78593o = playbackException;
    }

    @Override // y1.c
    public /* synthetic */ void c0(c.a aVar, androidx.media3.common.a0.b bVar) {
        y1.b.n(this, aVar, bVar);
    }

    @Override // y1.c
    public /* synthetic */ void d(c.a aVar, int i11) {
        y1.b.T(this, aVar, i11);
    }

    @Override // y1.c
    public void d0(androidx.media3.common.a0 a0Var, c.b bVar) {
        if (bVar.d() == 0) {
            return;
        }
        U0(bVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        a1(a0Var, bVar);
        W0(jElapsedRealtime);
        Y0(a0Var, bVar, jElapsedRealtime);
        V0(jElapsedRealtime);
        X0(a0Var, bVar, jElapsedRealtime);
        if (bVar.a(1028)) {
            this.f78581c.e(bVar.c(1028));
        }
    }

    @Override // y1.c4.a
    public void e(c.a aVar, String str) {
        androidx.media3.exoplayer.source.r.b bVar = aVar.f78613d;
        if (bVar == null || !bVar.b()) {
            F0();
            this.f78588j = str;
            this.f78589k = r2.a().setPlayerName("AndroidXMedia3").setPlayerVersion("1.7.1");
            c1(aVar.f78611b, aVar.f78613d);
        }
    }

    @Override // y1.c
    public /* synthetic */ void e0(c.a aVar, boolean z10) {
        y1.b.Y(this, aVar, z10);
    }

    @Override // y1.c
    public /* synthetic */ void f(c.a aVar, int i11, int i12, boolean z10) {
        y1.b.V(this, aVar, i11, i12, z10);
    }

    @Override // y1.c
    public /* synthetic */ void f0(c.a aVar, int i11, int i12, int i13, float f11) {
        y1.b.m0(this, aVar, i11, i12, i13, f11);
    }

    @Override // y1.c
    public /* synthetic */ void g(c.a aVar, boolean z10) {
        y1.b.C(this, aVar, z10);
    }

    @Override // y1.c
    public /* synthetic */ void g0(c.a aVar, androidx.media3.common.v vVar) {
        y1.b.K(this, aVar, vVar);
    }

    @Override // y1.c
    public /* synthetic */ void h(c.a aVar, int i11, long j11) {
        y1.b.A(this, aVar, i11, j11);
    }

    @Override // y1.c
    public /* synthetic */ void h0(c.a aVar, Exception exc) {
        y1.b.f0(this, aVar, exc);
    }

    @Override // y1.c
    public /* synthetic */ void i(c.a aVar, u1.b bVar) {
        y1.b.q(this, aVar, bVar);
    }

    @Override // y1.c
    public /* synthetic */ void i0(c.a aVar, androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar) {
        y1.b.g(this, aVar, rVar, kVar);
    }

    @Override // y1.c
    public void j(c.a aVar, g2.j jVar) {
        if (aVar.f78613d == null) {
            return;
        }
        b bVar = new b((androidx.media3.common.r) androidx.media3.common.util.a.e(jVar.f63217c), jVar.f63218d, this.f78581c.b(aVar.f78611b, (androidx.media3.exoplayer.source.r.b) androidx.media3.common.util.a.e(aVar.f78613d)));
        int i11 = jVar.f63216b;
        if (i11 != 0) {
            if (i11 == 1) {
                this.f78595q = bVar;
                return;
            } else if (i11 != 2) {
                if (i11 != 3) {
                    return;
                }
                this.f78596r = bVar;
                return;
            }
        }
        this.f78594p = bVar;
    }

    @Override // y1.c
    public /* synthetic */ void j0(c.a aVar, long j11) {
        y1.b.h(this, aVar, j11);
    }

    @Override // y1.c
    public /* synthetic */ void k(c.a aVar) {
        y1.b.v(this, aVar);
    }

    @Override // y1.c
    public /* synthetic */ void k0(c.a aVar, g2.i iVar, g2.j jVar, int i11) {
        y1.b.H(this, aVar, iVar, jVar, i11);
    }

    @Override // y1.c4.a
    public void l(c.a aVar, String str, boolean z10) {
        androidx.media3.exoplayer.source.r.b bVar = aVar.f78613d;
        if ((bVar == null || !bVar.b()) && str.equals(this.f78588j)) {
            F0();
        }
        this.f78586h.remove(str);
        this.f78587i.remove(str);
    }

    @Override // y1.c
    public /* synthetic */ void l0(c.a aVar, int i11) {
        y1.b.O(this, aVar, i11);
    }

    @Override // y1.c
    public /* synthetic */ void m(c.a aVar, androidx.media3.common.x xVar) {
        y1.b.L(this, aVar, xVar);
    }

    @Override // y1.c
    public /* synthetic */ void m0(c.a aVar, boolean z10) {
        y1.b.Z(this, aVar, z10);
    }

    @Override // y1.c
    public /* synthetic */ void n(c.a aVar, boolean z10) {
        y1.b.D(this, aVar, z10);
    }

    @Override // y1.c
    public /* synthetic */ void n0(c.a aVar, Exception exc) {
        y1.b.j(this, aVar, exc);
    }

    @Override // y1.c
    public /* synthetic */ void o(c.a aVar, Exception exc) {
        y1.b.a(this, aVar, exc);
    }

    @Override // y1.c
    public /* synthetic */ void o0(c.a aVar, androidx.media3.exoplayer.j jVar) {
        y1.b.j0(this, aVar, jVar);
    }

    @Override // y1.c
    public /* synthetic */ void p(c.a aVar) {
        y1.b.t(this, aVar);
    }

    @Override // y1.c
    public /* synthetic */ void p0(c.a aVar, int i11, int i12) {
        y1.b.a0(this, aVar, i11, i12);
    }

    @Override // y1.c
    public /* synthetic */ void q(c.a aVar, String str, long j11, long j12) {
        y1.b.h0(this, aVar, str, j11, j12);
    }

    @Override // y1.c
    public /* synthetic */ void q0(c.a aVar) {
        y1.b.R(this, aVar);
    }

    @Override // y1.c
    public /* synthetic */ void r(c.a aVar, g2.i iVar, g2.j jVar) {
        y1.b.E(this, aVar, iVar, jVar);
    }

    @Override // y1.c
    public /* synthetic */ void r0(c.a aVar, List list) {
        y1.b.p(this, aVar, list);
    }

    @Override // y1.c
    public /* synthetic */ void s(c.a aVar, AudioSink.a aVar2) {
        y1.b.l(this, aVar, aVar2);
    }

    @Override // y1.c
    public /* synthetic */ void s0(c.a aVar, int i11, boolean z10) {
        y1.b.s(this, aVar, i11, z10);
    }

    @Override // y1.c
    public /* synthetic */ void t(c.a aVar) {
        y1.b.u(this, aVar);
    }

    @Override // y1.c
    public /* synthetic */ void t0(c.a aVar, androidx.media3.common.t tVar, int i11) {
        y1.b.J(this, aVar, tVar, i11);
    }

    @Override // y1.c
    public /* synthetic */ void u(c.a aVar, androidx.media3.common.m mVar) {
        y1.b.r(this, aVar, mVar);
    }

    @Override // y1.c
    public /* synthetic */ void u0(c.a aVar, androidx.media3.common.h0 h0Var) {
        y1.b.c0(this, aVar, h0Var);
    }

    @Override // y1.c
    public void v(c.a aVar, g2.i iVar, g2.j jVar, IOException iOException, boolean z10) {
        this.f78601w = jVar.f63215a;
    }

    @Override // y1.c
    public /* synthetic */ void v0(c.a aVar, g2.j jVar) {
        y1.b.e0(this, aVar, jVar);
    }

    @Override // y1.c
    public /* synthetic */ void w(c.a aVar, String str, long j11) {
        y1.b.g0(this, aVar, str, j11);
    }

    @Override // y1.c
    public /* synthetic */ void w0(c.a aVar, int i11) {
        y1.b.b0(this, aVar, i11);
    }

    @Override // y1.c
    public /* synthetic */ void x(c.a aVar, androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar) {
        y1.b.l0(this, aVar, rVar, kVar);
    }

    @Override // y1.c
    public /* synthetic */ void x0(c.a aVar, g2.i iVar, g2.j jVar) {
        y1.b.F(this, aVar, iVar, jVar);
    }

    @Override // y1.c
    public /* synthetic */ void y(c.a aVar, androidx.media3.common.i0 i0Var) {
        y1.b.d0(this, aVar, i0Var);
    }

    @Override // y1.c
    public /* synthetic */ void z(c.a aVar, int i11) {
        y1.b.W(this, aVar, i11);
    }
}
