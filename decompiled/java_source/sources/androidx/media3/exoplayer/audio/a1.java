package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.media3.common.PlaybackException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.w3;
import androidx.media3.exoplayer.x2;
import androidx.media3.exoplayer.x3;
import com.google.common.collect.ImmutableList;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class a1 extends MediaCodecRenderer implements x2 {
    private final Context F0;
    private final x.a G0;
    private final AudioSink H0;
    private final androidx.media3.exoplayer.mediacodec.p I0;
    private int J0;
    private boolean K0;
    private boolean L0;
    private androidx.media3.common.r M0;
    private androidx.media3.common.r N0;
    private long O0;
    private boolean P0;
    private boolean Q0;
    private boolean R0;
    private int S0;
    private boolean T0;
    private long U0;
    private boolean V0;

    private static final class b {
        public static void a(AudioSink audioSink, Object obj) {
            audioSink.h((AudioDeviceInfo) obj);
        }
    }

    private final class c implements AudioSink.b {
        private c() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void a(Exception exc) {
            androidx.media3.common.util.u.d("MediaCodecAudioRenderer", "Audio sink error", exc);
            a1.this.G0.n(exc);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void b(long j11) {
            a1.this.G0.H(j11);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void c() {
            w3.a aVarY0 = a1.this.y0();
            if (aVarY0 != null) {
                aVarY0.a();
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void d() {
            w3.a aVarY0 = a1.this.y0();
            if (aVarY0 != null) {
                aVarY0.b();
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void e() {
            a1.this.R0 = true;
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void f() {
            a1.this.H();
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void j(AudioSink.a aVar) {
            a1.this.G0.o(aVar);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void k(AudioSink.a aVar) {
            a1.this.G0.p(aVar);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void onPositionDiscontinuity() {
            a1.this.K1();
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void onSkipSilenceEnabledChanged(boolean z10) {
            a1.this.G0.I(z10);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.b
        public void onUnderrun(int i11, long j11, long j12) {
            a1.this.G0.J(i11, j11, j12);
        }
    }

    public a1(Context context, androidx.media3.exoplayer.mediacodec.t.b bVar, androidx.media3.exoplayer.mediacodec.h0 h0Var, boolean z10, Handler handler, x xVar, AudioSink audioSink) {
        this(context, bVar, h0Var, z10, handler, xVar, audioSink, androidx.media3.common.util.a1.f10350a >= 35 ? new androidx.media3.exoplayer.mediacodec.p() : null);
    }

    public a1(Context context, androidx.media3.exoplayer.mediacodec.t.b bVar, androidx.media3.exoplayer.mediacodec.h0 h0Var, boolean z10, Handler handler, x xVar, AudioSink audioSink, androidx.media3.exoplayer.mediacodec.p pVar) {
        super(1, bVar, h0Var, z10, 44100.0f);
        this.F0 = context.getApplicationContext();
        this.H0 = audioSink;
        this.I0 = pVar;
        this.S0 = -1000;
        this.G0 = new x.a(handler, xVar);
        this.U0 = C.TIME_UNSET;
        audioSink.j(new c());
    }

    private static boolean C1(String str) {
        if (androidx.media3.common.util.a1.f10350a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(Build.MANUFACTURER)) {
            String str2 = Build.DEVICE;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                return true;
            }
        }
        return false;
    }

    private static boolean D1(String str) {
        return str.equals("OMX.google.opus.decoder") || str.equals("c2.android.opus.decoder") || str.equals("OMX.google.vorbis.decoder") || str.equals("c2.android.vorbis.decoder");
    }

    private static boolean E1() {
        if (androidx.media3.common.util.a1.f10350a == 23) {
            String str = Build.MODEL;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private int F1(androidx.media3.common.r rVar) {
        k kVarG = this.H0.g(rVar);
        if (!kVarG.f11198a) {
            return 0;
        }
        int i11 = kVarG.f11199b ? 1536 : 512;
        return kVarG.f11200c ? i11 | 2048 : i11;
    }

    private int G1(androidx.media3.exoplayer.mediacodec.w wVar, androidx.media3.common.r rVar) {
        int i11;
        if (!"OMX.google.raw.decoder".equals(wVar.f12255a) || (i11 = androidx.media3.common.util.a1.f10350a) >= 24 || (i11 == 23 && androidx.media3.common.util.a1.K0(this.F0))) {
            return rVar.f10162p;
        }
        return -1;
    }

    private static List I1(androidx.media3.exoplayer.mediacodec.h0 h0Var, androidx.media3.common.r rVar, boolean z10, AudioSink audioSink) {
        androidx.media3.exoplayer.mediacodec.w wVarP;
        if (rVar.f10161o == null) {
            return ImmutableList.of();
        }
        return (!audioSink.a(rVar) || (wVarP = MediaCodecUtil.p()) == null) ? MediaCodecUtil.m(h0Var, rVar, z10, false) : ImmutableList.of(wVarP);
    }

    private void L1(int i11) {
        androidx.media3.exoplayer.mediacodec.p pVar;
        this.H0.setAudioSessionId(i11);
        if (androidx.media3.common.util.a1.f10350a < 35 || (pVar = this.I0) == null) {
            return;
        }
        pVar.e(i11);
    }

    private void M1() {
        androidx.media3.exoplayer.mediacodec.t tVarL0 = l0();
        if (tVarL0 != null && androidx.media3.common.util.a1.f10350a >= 35) {
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.S0));
            tVarL0.b(bundle);
        }
    }

    private void N1() {
        long currentPositionUs = this.H0.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.P0) {
                currentPositionUs = Math.max(this.O0, currentPositionUs);
            }
            this.O0 = currentPositionUs;
            this.P0 = false;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void C() {
        this.Q0 = true;
        this.M0 = null;
        this.U0 = C.TIME_UNSET;
        this.V0 = false;
        try {
            this.H0.flush();
            try {
                super.C();
            } finally {
                this.G0.s(this.f12167z0);
            }
        } catch (Throwable th2) {
            try {
                super.C();
                throw th2;
            } finally {
                this.G0.s(this.f12167z0);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void D(boolean z10, boolean z11) {
        super.D(z10, z11);
        this.G0.t(this.f12167z0);
        if (t().f13400b) {
            this.H0.d();
        } else {
            this.H0.disableTunneling();
        }
        this.H0.p(x());
        this.H0.r(s());
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void F(long j11, boolean z10) throws ExoPlaybackException {
        super.F(j11, z10);
        this.H0.flush();
        this.O0 = j11;
        this.U0 = C.TIME_UNSET;
        this.V0 = false;
        this.R0 = false;
        this.P0 = true;
    }

    @Override // androidx.media3.exoplayer.i
    protected void G() {
        androidx.media3.exoplayer.mediacodec.p pVar;
        this.H0.release();
        if (androidx.media3.common.util.a1.f10350a < 35 || (pVar = this.I0) == null) {
            return;
        }
        pVar.c();
    }

    protected int H1(androidx.media3.exoplayer.mediacodec.w wVar, androidx.media3.common.r rVar, androidx.media3.common.r[] rVarArr) {
        int iG1 = G1(wVar, rVar);
        if (rVarArr.length == 1) {
            return iG1;
        }
        for (androidx.media3.common.r rVar2 : rVarArr) {
            if (wVar.e(rVar, rVar2).f12053d != 0) {
                iG1 = Math.max(iG1, G1(wVar, rVar2));
            }
        }
        return iG1;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void I() {
        this.R0 = false;
        this.U0 = C.TIME_UNSET;
        this.V0 = false;
        try {
            super.I();
        } finally {
            if (this.Q0) {
                this.Q0 = false;
                this.H0.reset();
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void J() {
        super.J();
        this.H0.play();
        this.T0 = true;
    }

    protected MediaFormat J1(androidx.media3.common.r rVar, String str, int i11, float f11) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", rVar.E);
        mediaFormat.setInteger("sample-rate", rVar.F);
        androidx.media3.common.util.x.e(mediaFormat, rVar.f10164r);
        androidx.media3.common.util.x.d(mediaFormat, "max-input-size", i11);
        int i12 = androidx.media3.common.util.a1.f10350a;
        if (i12 >= 23) {
            mediaFormat.setInteger(TrackingKey.PRIORITY, 0);
            if (f11 != -1.0f && !E1()) {
                mediaFormat.setFloat("operating-rate", f11);
            }
        }
        if (i12 <= 28 && "audio/ac4".equals(rVar.f10161o)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i12 >= 24 && this.H0.o(androidx.media3.common.util.a1.j0(4, rVar.E, rVar.F)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (i12 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (i12 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.S0));
        }
        return mediaFormat;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i
    protected void K() {
        N1();
        this.T0 = false;
        this.H0.pause();
        super.K();
    }

    protected void K1() {
        this.P0 = true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void M0(Exception exc) {
        androidx.media3.common.util.u.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.G0.m(exc);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void N0(String str, androidx.media3.exoplayer.mediacodec.t.a aVar, long j11, long j12) {
        this.G0.q(str, j11, j12);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void O0(String str) {
        this.G0.r(str);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected androidx.media3.exoplayer.k P0(s2 s2Var) throws ExoPlaybackException {
        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12570b);
        this.M0 = rVar;
        androidx.media3.exoplayer.k kVarP0 = super.P0(s2Var);
        this.G0.u(rVar, kVarP0);
        return kVarP0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void Q0(androidx.media3.common.r rVar, MediaFormat mediaFormat) throws ExoPlaybackException {
        int iI0;
        int i11;
        androidx.media3.common.r rVar2 = this.N0;
        int[] iArrA = null;
        if (rVar2 != null) {
            rVar = rVar2;
        } else if (l0() != null) {
            androidx.media3.common.util.a.e(mediaFormat);
            if (MimeTypes.AUDIO_RAW.equals(rVar.f10161o)) {
                iI0 = rVar.G;
            } else if (androidx.media3.common.util.a1.f10350a < 24 || !mediaFormat.containsKey("pcm-encoding")) {
                iI0 = mediaFormat.containsKey("v-bits-per-sample") ? androidx.media3.common.util.a1.i0(mediaFormat.getInteger("v-bits-per-sample")) : 2;
            } else {
                iI0 = mediaFormat.getInteger("pcm-encoding");
            }
            androidx.media3.common.r rVarN = new androidx.media3.common.r.b().u0(MimeTypes.AUDIO_RAW).o0(iI0).Z(rVar.H).a0(rVar.I).n0(rVar.f10158l).X(rVar.f10159m).f0(rVar.f10147a).h0(rVar.f10148b).i0(rVar.f10149c).j0(rVar.f10150d).w0(rVar.f10151e).s0(rVar.f10152f).R(mediaFormat.getInteger("channel-count")).v0(mediaFormat.getInteger("sample-rate")).N();
            if (this.K0 && rVarN.E == 6 && (i11 = rVar.E) < 6) {
                iArrA = new int[i11];
                for (int i12 = 0; i12 < rVar.E; i12++) {
                    iArrA[i12] = i12;
                }
            } else if (this.L0) {
                iArrA = l2.v0.a(rVarN.E);
            }
            rVar = rVarN;
        }
        try {
            if (androidx.media3.common.util.a1.f10350a >= 29) {
                if (!F0() || t().f13399a == 0) {
                    this.H0.k(0);
                } else {
                    this.H0.k(t().f13399a);
                }
            }
            this.H0.l(rVar, 0, iArrA);
        } catch (AudioSink.ConfigurationException e11) {
            throw q(e11, e11.format, 5001);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void R0(long j11) {
        this.H0.n(j11);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected androidx.media3.exoplayer.k T(androidx.media3.exoplayer.mediacodec.w wVar, androidx.media3.common.r rVar, androidx.media3.common.r rVar2) {
        androidx.media3.exoplayer.k kVarE = wVar.e(rVar, rVar2);
        int i11 = kVarE.f12054e;
        if (G0(rVar2)) {
            i11 |= 32768;
        }
        if (G1(wVar, rVar2) > this.J0) {
            i11 |= 64;
        }
        int i12 = i11;
        return new androidx.media3.exoplayer.k(wVar.f12255a, rVar, rVar2, i12 != 0 ? 0 : kVarE.f12053d, i12);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void T0() {
        super.T0();
        this.H0.handleDiscontinuity();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean X0(long j11, long j12, androidx.media3.exoplayer.mediacodec.t tVar, ByteBuffer byteBuffer, int i11, int i12, int i13, long j13, boolean z10, boolean z11, androidx.media3.common.r rVar) throws ExoPlaybackException {
        androidx.media3.common.util.a.e(byteBuffer);
        this.U0 = C.TIME_UNSET;
        if (this.N0 != null && (i12 & 2) != 0) {
            ((androidx.media3.exoplayer.mediacodec.t) androidx.media3.common.util.a.e(tVar)).k(i11, false);
            return true;
        }
        if (z10) {
            if (tVar != null) {
                tVar.k(i11, false);
            }
            this.f12167z0.f12036f += i13;
            this.H0.handleDiscontinuity();
            return true;
        }
        try {
            if (!this.H0.c(byteBuffer, j13, i13)) {
                this.U0 = j13;
                return false;
            }
            if (tVar != null) {
                tVar.k(i11, false);
            }
            this.f12167z0.f12035e += i13;
            return true;
        } catch (AudioSink.InitializationException e11) {
            throw r(e11, this.M0, e11.isRecoverable, (!F0() || t().f13399a == 0) ? 5001 : PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_INIT_FAILED);
        } catch (AudioSink.WriteException e12) {
            throw r(e12, rVar, e12.isRecoverable, (!F0() || t().f13399a == 0) ? 5002 : PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_WRITE_FAILED);
        }
    }

    @Override // androidx.media3.exoplayer.x2
    public void b(androidx.media3.common.z zVar) {
        this.H0.b(zVar);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void c1() throws ExoPlaybackException {
        try {
            this.H0.playToEndOfStream();
            if (t0() != C.TIME_UNSET) {
                this.U0 = t0();
            }
            this.V0 = true;
        } catch (AudioSink.WriteException e11) {
            throw r(e11, e11.format, e11.isRecoverable, F0() ? PlaybackException.ERROR_CODE_AUDIO_TRACK_OFFLOAD_WRITE_FAILED : 5002);
        }
    }

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.w3
    public x2 getMediaClock() {
        return this;
    }

    @Override // androidx.media3.exoplayer.w3, androidx.media3.exoplayer.y3
    public String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override // androidx.media3.exoplayer.x2
    public androidx.media3.common.z getPlaybackParameters() {
        return this.H0.getPlaybackParameters();
    }

    @Override // androidx.media3.exoplayer.x2
    public long getPositionUs() {
        if (getState() == 2) {
            N1();
        }
        return this.O0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.i, androidx.media3.exoplayer.t3.b
    public void handleMessage(int i11, Object obj) {
        if (i11 == 2) {
            this.H0.setVolume(((Float) androidx.media3.common.util.a.e(obj)).floatValue());
            return;
        }
        if (i11 == 3) {
            this.H0.f((androidx.media3.common.c) androidx.media3.common.util.a.e((androidx.media3.common.c) obj));
            return;
        }
        if (i11 == 6) {
            this.H0.q((androidx.media3.common.f) androidx.media3.common.util.a.e((androidx.media3.common.f) obj));
            return;
        }
        if (i11 == 12) {
            if (androidx.media3.common.util.a1.f10350a >= 23) {
                b.a(this.H0, obj);
            }
        } else if (i11 == 16) {
            this.S0 = ((Integer) androidx.media3.common.util.a.e(obj)).intValue();
            M1();
        } else if (i11 == 9) {
            this.H0.e(((Boolean) androidx.media3.common.util.a.e(obj)).booleanValue());
        } else if (i11 != 10) {
            super.handleMessage(i11, obj);
        } else {
            L1(((Integer) androidx.media3.common.util.a.e(obj)).intValue());
        }
    }

    @Override // androidx.media3.exoplayer.x2
    public boolean i() {
        boolean z10 = this.R0;
        this.R0 = false;
        return z10;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.w3
    public boolean isEnded() {
        return super.isEnded() && this.H0.isEnded();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.w3
    public boolean isReady() {
        return this.H0.hasPendingData() || super.isReady();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected float p0(float f11, androidx.media3.common.r rVar, androidx.media3.common.r[] rVarArr) {
        int iMax = -1;
        for (androidx.media3.common.r rVar2 : rVarArr) {
            int i11 = rVar2.F;
            if (i11 != -1) {
                iMax = Math.max(iMax, i11);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return f11 * iMax;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected List r0(androidx.media3.exoplayer.mediacodec.h0 h0Var, androidx.media3.common.r rVar, boolean z10) {
        return MediaCodecUtil.n(I1(h0Var, rVar, z10, this.H0), rVar);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean r1(androidx.media3.common.r rVar) {
        if (t().f13399a != 0) {
            int iF1 = F1(rVar);
            if ((iF1 & 512) != 0) {
                if (t().f13399a == 2 || (iF1 & 1024) != 0) {
                    return true;
                }
                if (rVar.H == 0 && rVar.I == 0) {
                    return true;
                }
            }
        }
        return this.H0.a(rVar);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected long s0(long j11, long j12, boolean z10) {
        if (this.U0 == C.TIME_UNSET) {
            return super.s0(j11, j12, z10);
        }
        long jI = this.H0.i();
        if (!this.V0 && jI == C.TIME_UNSET) {
            return super.s0(j11, j12, z10);
        }
        long jMin = this.U0 - j11;
        if (jI != C.TIME_UNSET) {
            jMin = Math.min(jI, jMin);
        }
        long jR0 = (long) ((jMin / (getPlaybackParameters() != null ? getPlaybackParameters().f10566a : 1.0f)) / 2.0f);
        if (this.T0) {
            jR0 -= androidx.media3.common.util.a1.R0(s().elapsedRealtime()) - j12;
        }
        return Math.max(10000L, jR0);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected int s1(androidx.media3.exoplayer.mediacodec.h0 h0Var, androidx.media3.common.r rVar) {
        int i11;
        boolean z10;
        if (!androidx.media3.common.y.o(rVar.f10161o)) {
            return x3.a(0);
        }
        boolean z11 = true;
        boolean z12 = rVar.N != 0;
        boolean zT1 = MediaCodecRenderer.t1(rVar);
        int i12 = 8;
        if (!zT1 || (z12 && MediaCodecUtil.p() == null)) {
            i11 = 0;
        } else {
            int iF1 = F1(rVar);
            if (this.H0.a(rVar)) {
                return x3.c(4, 8, 32, iF1);
            }
            i11 = iF1;
        }
        if ((!MimeTypes.AUDIO_RAW.equals(rVar.f10161o) || this.H0.a(rVar)) && this.H0.a(androidx.media3.common.util.a1.j0(2, rVar.E, rVar.F))) {
            List listI1 = I1(h0Var, rVar, false, this.H0);
            if (listI1.isEmpty()) {
                return x3.a(1);
            }
            if (!zT1) {
                return x3.a(2);
            }
            androidx.media3.exoplayer.mediacodec.w wVar = (androidx.media3.exoplayer.mediacodec.w) listI1.get(0);
            boolean zO = wVar.o(rVar);
            if (!zO) {
                int i13 = 1;
                while (true) {
                    if (i13 >= listI1.size()) {
                        z10 = true;
                        z11 = zO;
                        break;
                    }
                    androidx.media3.exoplayer.mediacodec.w wVar2 = (androidx.media3.exoplayer.mediacodec.w) listI1.get(i13);
                    if (wVar2.o(rVar)) {
                        z10 = false;
                        wVar = wVar2;
                        break;
                    }
                    i13++;
                }
            } else {
                z10 = true;
                z11 = zO;
                break;
            }
            int i14 = z11 ? 4 : 3;
            if (z11 && wVar.r(rVar)) {
                i12 = 16;
            }
            return x3.e(i14, i12, 32, wVar.f12262h ? 64 : 0, z10 ? 128 : 0, i11);
        }
        return x3.a(1);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected androidx.media3.exoplayer.mediacodec.t.a u0(androidx.media3.exoplayer.mediacodec.w wVar, androidx.media3.common.r rVar, MediaCrypto mediaCrypto, float f11) {
        this.J0 = H1(wVar, rVar, y());
        this.K0 = C1(wVar.f12255a);
        this.L0 = D1(wVar.f12255a);
        MediaFormat mediaFormatJ1 = J1(rVar, wVar.f12257c, this.J0, f11);
        this.N0 = (!MimeTypes.AUDIO_RAW.equals(wVar.f12256b) || MimeTypes.AUDIO_RAW.equals(rVar.f10161o)) ? null : rVar;
        return androidx.media3.exoplayer.mediacodec.t.a.a(wVar, mediaFormatJ1, rVar, mediaCrypto, this.I0);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void z0(DecoderInputBuffer decoderInputBuffer) {
        androidx.media3.common.r rVar;
        if (androidx.media3.common.util.a1.f10350a < 29 || (rVar = decoderInputBuffer.f10916a) == null || !Objects.equals(rVar.f10161o, MimeTypes.AUDIO_OPUS) || !F0()) {
            return;
        }
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(decoderInputBuffer.f10921f);
        int i11 = ((androidx.media3.common.r) androidx.media3.common.util.a.e(decoderInputBuffer.f10916a)).H;
        if (byteBuffer.remaining() == 8) {
            this.H0.m(i11, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / C.NANOS_PER_SECOND));
        }
    }
}
