package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.audio.b1;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.w3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MediaCodecRenderer extends androidx.media3.exoplayer.i {
    private static final byte[] E0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private final ArrayDeque A;
    private d A0;
    private final b1 B;
    private long B0;
    private androidx.media3.common.r C;
    private boolean C0;
    private androidx.media3.common.r D;
    private boolean D0;
    private DrmSession E;
    private DrmSession F;
    private w3.a G;
    private MediaCrypto H;
    private long I;
    private float J;
    private float K;
    private t L;
    private androidx.media3.common.r M;
    private MediaFormat N;
    private boolean O;
    private float P;
    private ArrayDeque Q;
    private DecoderInitializationException R;
    private w S;
    private int T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private long f12133a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private boolean f12134b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private long f12135c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private int f12136d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private int f12137e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private ByteBuffer f12138f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private boolean f12139g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private boolean f12140h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private boolean f12141i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private boolean f12142j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private boolean f12143k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private boolean f12144l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private int f12145m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private int f12146n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private int f12147o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private boolean f12148p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private boolean f12149q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final t.b f12150r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private boolean f12151r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final h0 f12152s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private long f12153s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f12154t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private long f12155t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final float f12156u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private boolean f12157u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final DecoderInputBuffer f12158v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private boolean f12159v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final DecoderInputBuffer f12160w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private boolean f12161w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final DecoderInputBuffer f12162x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private boolean f12163x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final j f12164y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private ExoPlaybackException f12165y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final MediaCodec.BufferInfo f12166z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    protected androidx.media3.exoplayer.j f12167z0;

    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;

        @Nullable
        public final w codecInfo;

        @Nullable
        public final String diagnosticInfo;

        @Nullable
        public final DecoderInitializationException fallbackDecoderInitializationException;

        @Nullable
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(androidx.media3.common.r rVar, @Nullable Throwable th2, boolean z10, int i11) {
            this("Decoder init failed: [" + i11 + "], " + rVar, th2, rVar.f10161o, z10, null, buildCustomDiagnosticInfo(i11), null);
        }

        public DecoderInitializationException(androidx.media3.common.r rVar, @Nullable Throwable th2, boolean z10, w wVar) {
            this("Decoder init failed: " + wVar.f12255a + ", " + rVar, th2, rVar.f10161o, z10, wVar, th2 instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th2).getDiagnosticInfo() : null, null);
        }

        private DecoderInitializationException(@Nullable String str, @Nullable Throwable th2, @Nullable String str2, boolean z10, @Nullable w wVar, @Nullable String str3, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th2);
            this.mimeType = str2;
            this.secureDecoderRequired = z10;
            this.codecInfo = wVar;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }

        private static String buildCustomDiagnosticInfo(int i11) {
            return "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_" + (i11 < 0 ? "neg_" : "") + Math.abs(i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }
    }

    private static final class b {
        public static void a(t.a aVar, f4 f4Var) {
            LogSessionId logSessionIdA = f4Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            aVar.f12249b.setString("log-session-id", logSessionIdA.getStringId());
        }
    }

    private final class c implements t.c {
        private c() {
        }

        @Override // androidx.media3.exoplayer.mediacodec.t.c
        public void a() {
            if (MediaCodecRenderer.this.G != null) {
                MediaCodecRenderer.this.G.b();
            }
        }

        @Override // androidx.media3.exoplayer.mediacodec.t.c
        public void b() {
            if (MediaCodecRenderer.this.G != null) {
                MediaCodecRenderer.this.G.b();
            }
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final d f12169e = new d(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f12170a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f12171b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f12172c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final androidx.media3.common.util.o0 f12173d = new androidx.media3.common.util.o0();

        public d(long j11, long j12, long j13) {
            this.f12170a = j11;
            this.f12171b = j12;
            this.f12172c = j13;
        }
    }

    public MediaCodecRenderer(int i11, t.b bVar, h0 h0Var, boolean z10, float f11) {
        super(i11);
        this.f12150r = bVar;
        this.f12152s = (h0) androidx.media3.common.util.a.e(h0Var);
        this.f12154t = z10;
        this.f12156u = f11;
        this.f12158v = DecoderInputBuffer.f();
        this.f12160w = new DecoderInputBuffer(0);
        this.f12162x = new DecoderInputBuffer(2);
        j jVar = new j();
        this.f12164y = jVar;
        this.f12166z = new MediaCodec.BufferInfo();
        this.J = 1.0f;
        this.K = 1.0f;
        this.I = C.TIME_UNSET;
        this.A = new ArrayDeque();
        this.A0 = d.f12169e;
        jVar.b(0);
        jVar.f10918c.order(ByteOrder.nativeOrder());
        this.B = new b1();
        this.P = -1.0f;
        this.T = 0;
        this.f12145m0 = 0;
        this.f12136d0 = -1;
        this.f12137e0 = -1;
        this.f12135c0 = C.TIME_UNSET;
        this.f12153s0 = C.TIME_UNSET;
        this.f12155t0 = C.TIME_UNSET;
        this.B0 = C.TIME_UNSET;
        this.f12133a0 = C.TIME_UNSET;
        this.f12146n0 = 0;
        this.f12147o0 = 0;
        this.f12167z0 = new androidx.media3.exoplayer.j();
    }

    private boolean A0() {
        return this.f12137e0 >= 0;
    }

    private boolean B0() {
        if (!this.f12164y.m()) {
            return true;
        }
        long jW = w();
        return H0(jW, this.f12164y.k()) == H0(jW, this.f12162x.f10920e);
    }

    private void C0(androidx.media3.common.r rVar) {
        a0();
        String str = rVar.f10161o;
        if (MimeTypes.AUDIO_AAC.equals(str) || MimeTypes.AUDIO_MPEG.equals(str) || MimeTypes.AUDIO_OPUS.equals(str)) {
            this.f12164y.n(32);
        } else {
            this.f12164y.n(1);
        }
        this.f12141i0 = true;
    }

    private void D0(w wVar, MediaCrypto mediaCrypto) {
        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C);
        String str = wVar.f12255a;
        int i11 = a1.f10350a;
        float fP0 = i11 < 23 ? -1.0f : p0(this.K, rVar, y());
        float f11 = fP0 > this.f12156u ? fP0 : -1.0f;
        long jElapsedRealtime = s().elapsedRealtime();
        t.a aVarU0 = u0(wVar, rVar, mediaCrypto, f11);
        if (i11 >= 31) {
            b.a(aVarU0, x());
        }
        try {
            androidx.media3.common.util.q0.a("createCodec:" + str);
            t tVarA = this.f12150r.a(aVarU0);
            this.L = tVarA;
            this.f12134b0 = tVarA.m(new c());
            androidx.media3.common.util.q0.b();
            long jElapsedRealtime2 = s().elapsedRealtime();
            if (!wVar.o(rVar)) {
                androidx.media3.common.util.u.h("MediaCodecRenderer", a1.G("Format exceeds selected codec's capabilities [%s, %s]", androidx.media3.common.r.i(rVar), str));
            }
            this.S = wVar;
            this.P = f11;
            this.M = rVar;
            this.T = U(str);
            this.U = Y(str);
            this.V = V(str);
            this.W = W(str);
            this.Z = X(wVar) || o0();
            if (((t) androidx.media3.common.util.a.e(this.L)).g()) {
                this.f12144l0 = true;
                this.f12145m0 = 1;
                this.X = this.T != 0;
            }
            if (getState() == 2) {
                this.f12135c0 = s().elapsedRealtime() + 1000;
            }
            this.f12167z0.f12031a++;
            N0(str, aVarU0, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
        } catch (Throwable th2) {
            androidx.media3.common.util.q0.b();
            throw th2;
        }
    }

    private boolean E0() throws ExoPlaybackException {
        androidx.media3.common.util.a.g(this.H == null);
        DrmSession drmSession = this.E;
        androidx.media3.decoder.b bVarC = drmSession.c();
        if (androidx.media3.exoplayer.drm.c0.f11568d && (bVarC instanceof androidx.media3.exoplayer.drm.c0)) {
            int state = drmSession.getState();
            if (state == 1) {
                DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) androidx.media3.common.util.a.e(drmSession.getError());
                throw q(drmSessionException, this.C, drmSessionException.errorCode);
            }
            if (state != 4) {
                return false;
            }
        }
        if (bVarC == null) {
            return drmSession.getError() != null;
        }
        if (bVarC instanceof androidx.media3.exoplayer.drm.c0) {
            androidx.media3.exoplayer.drm.c0 c0Var = (androidx.media3.exoplayer.drm.c0) bVarC;
            try {
                this.H = new MediaCrypto(c0Var.f11569a, c0Var.f11570b);
            } catch (MediaCryptoException e11) {
                throw q(e11, this.C, 6006);
            }
        }
        return true;
    }

    private boolean H0(long j11, long j12) {
        androidx.media3.common.r rVar;
        return j12 < j11 && !((rVar = this.D) != null && Objects.equals(rVar.f10161o, MimeTypes.AUDIO_OPUS) && l2.k0.g(j11, j12));
    }

    private static boolean I0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    private void K0(MediaCrypto mediaCrypto, boolean z10) throws DecoderInitializationException {
        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C);
        if (this.Q == null) {
            try {
                List listK0 = k0(z10);
                ArrayDeque arrayDeque = new ArrayDeque();
                this.Q = arrayDeque;
                if (this.f12154t) {
                    arrayDeque.addAll(listK0);
                } else if (!listK0.isEmpty()) {
                    this.Q.add((w) listK0.get(0));
                }
                this.R = null;
            } catch (MediaCodecUtil.DecoderQueryException e11) {
                throw new DecoderInitializationException(rVar, e11, z10, -49998);
            }
        }
        if (this.Q.isEmpty()) {
            throw new DecoderInitializationException(rVar, (Throwable) null, z10, -49999);
        }
        ArrayDeque arrayDeque2 = (ArrayDeque) androidx.media3.common.util.a.e(this.Q);
        while (this.L == null) {
            w wVar = (w) androidx.media3.common.util.a.e((w) arrayDeque2.peekFirst());
            if (!L0(rVar) || !o1(wVar)) {
                return;
            }
            try {
                D0(wVar, mediaCrypto);
            } catch (Exception e12) {
                androidx.media3.common.util.u.i("MediaCodecRenderer", "Failed to initialize decoder: " + wVar, e12);
                arrayDeque2.removeFirst();
                DecoderInitializationException decoderInitializationException = new DecoderInitializationException(rVar, e12, z10, wVar);
                M0(decoderInitializationException);
                if (this.R == null) {
                    this.R = decoderInitializationException;
                } else {
                    this.R = this.R.copyWithFallbackException(decoderInitializationException);
                }
                if (arrayDeque2.isEmpty()) {
                    throw this.R;
                }
            }
        }
        this.Q = null;
    }

    private void R() throws ExoPlaybackException {
        androidx.media3.common.util.a.g(!this.f12157u0);
        s2 s2VarU = u();
        this.f12162x.clear();
        do {
            this.f12162x.clear();
            int iN = N(s2VarU, this.f12162x, 0);
            if (iN == -5) {
                P0(s2VarU);
                return;
            }
            if (iN == -4) {
                if (!this.f12162x.isEndOfStream()) {
                    this.f12153s0 = Math.max(this.f12153s0, this.f12162x.f10920e);
                    if (hasReadStreamToEnd() || this.f12160w.isLastSample()) {
                        this.f12155t0 = this.f12153s0;
                    }
                    if (this.f12161w0) {
                        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C);
                        this.D = rVar;
                        if (Objects.equals(rVar.f10161o, MimeTypes.AUDIO_OPUS) && !this.D.f10164r.isEmpty()) {
                            this.D = this.D.b().Z(l2.k0.f((byte[]) this.D.f10164r.get(0))).N();
                        }
                        Q0(this.D, null);
                        this.f12161w0 = false;
                    }
                    this.f12162x.d();
                    androidx.media3.common.r rVar2 = this.D;
                    if (rVar2 != null && Objects.equals(rVar2.f10161o, MimeTypes.AUDIO_OPUS)) {
                        if (this.f12162x.hasSupplementalData()) {
                            DecoderInputBuffer decoderInputBuffer = this.f12162x;
                            decoderInputBuffer.f10916a = this.D;
                            z0(decoderInputBuffer);
                        }
                        if (l2.k0.g(w(), this.f12162x.f10920e)) {
                            this.B.a(this.f12162x, this.D.f10164r);
                        }
                    }
                    if (!B0()) {
                        break;
                    }
                } else {
                    this.f12157u0 = true;
                    this.f12155t0 = this.f12153s0;
                    return;
                }
            } else {
                if (iN != -3) {
                    throw new IllegalStateException();
                }
                if (hasReadStreamToEnd()) {
                    this.f12155t0 = this.f12153s0;
                    return;
                }
                return;
            }
        } while (this.f12164y.h(this.f12162x));
        this.f12142j0 = true;
    }

    private boolean S(long j11, long j12) throws ExoPlaybackException {
        boolean z10;
        androidx.media3.common.util.a.g(!this.f12159v0);
        if (this.f12164y.m()) {
            j jVar = this.f12164y;
            if (!X0(j11, j12, null, jVar.f10918c, this.f12137e0, 0, jVar.l(), this.f12164y.j(), H0(w(), this.f12164y.k()), this.f12164y.isEndOfStream(), (androidx.media3.common.r) androidx.media3.common.util.a.e(this.D))) {
                return false;
            }
            S0(this.f12164y.k());
            this.f12164y.clear();
            z10 = false;
        } else {
            z10 = false;
        }
        if (this.f12157u0) {
            this.f12159v0 = true;
            return z10;
        }
        if (this.f12142j0) {
            androidx.media3.common.util.a.g(this.f12164y.h(this.f12162x));
            this.f12142j0 = z10;
        }
        if (this.f12143k0) {
            if (this.f12164y.m()) {
                return true;
            }
            a0();
            this.f12143k0 = z10;
            J0();
            if (!this.f12141i0) {
                return z10;
            }
        }
        R();
        if (this.f12164y.m()) {
            this.f12164y.d();
        }
        if (this.f12164y.m() || this.f12157u0 || this.f12143k0) {
            return true;
        }
        return z10;
    }

    private int U(String str) {
        int i11 = a1.f10350a;
        if (i11 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = Build.MODEL;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i11 >= 24) {
            return 0;
        }
        if (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) {
            return 0;
        }
        String str3 = Build.DEVICE;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    private static boolean V(String str) {
        return a1.f10350a <= 23 && "OMX.google.vorbis.decoder".equals(str);
    }

    private static boolean W(String str) {
        return a1.f10350a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    private void W0() throws ExoPlaybackException {
        int i11 = this.f12147o0;
        if (i11 == 1) {
            h0();
            return;
        }
        if (i11 == 2) {
            h0();
            v1();
        } else if (i11 == 3) {
            a1();
        } else {
            this.f12159v0 = true;
            c1();
        }
    }

    private static boolean X(w wVar) {
        String str = wVar.f12255a;
        int i11 = a1.f10350a;
        return (i11 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i11 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str) || "OMX.bcm.vdec.avc.tunnel".equals(str) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str) || "OMX.bcm.vdec.hevc.tunnel".equals(str) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str))) || ("Amazon".equals(Build.MANUFACTURER) && "AFTS".equals(Build.MODEL) && wVar.f12261g);
    }

    private static boolean Y(String str) {
        return a1.f10350a == 29 && "c2.android.aac.decoder".equals(str);
    }

    private void Y0() {
        this.f12151r0 = true;
        MediaFormat mediaFormatC = ((t) androidx.media3.common.util.a.e(this.L)).c();
        if (this.T != 0 && mediaFormatC.getInteger("width") == 32 && mediaFormatC.getInteger("height") == 32) {
            this.Y = true;
        } else {
            this.N = mediaFormatC;
            this.O = true;
        }
    }

    private boolean Z0(int i11) throws ExoPlaybackException {
        s2 s2VarU = u();
        this.f12158v.clear();
        int iN = N(s2VarU, this.f12158v, i11 | 4);
        if (iN == -5) {
            P0(s2VarU);
            return true;
        }
        if (iN != -4 || !this.f12158v.isEndOfStream()) {
            return false;
        }
        this.f12157u0 = true;
        W0();
        return false;
    }

    private void a0() {
        this.f12143k0 = false;
        this.f12164y.clear();
        this.f12162x.clear();
        this.f12142j0 = false;
        this.f12141i0 = false;
        this.B.d();
    }

    private void a1() throws ExoPlaybackException {
        b1();
        J0();
    }

    private boolean b0() {
        if (this.f12148p0) {
            this.f12146n0 = 1;
            if (this.V) {
                this.f12147o0 = 3;
                return false;
            }
            this.f12147o0 = 1;
        }
        return true;
    }

    private void c0() throws ExoPlaybackException {
        if (!this.f12148p0) {
            a1();
        } else {
            this.f12146n0 = 1;
            this.f12147o0 = 3;
        }
    }

    private boolean d0() throws ExoPlaybackException {
        if (this.f12148p0) {
            this.f12146n0 = 1;
            if (this.V) {
                this.f12147o0 = 3;
                return false;
            }
            this.f12147o0 = 2;
        } else {
            v1();
        }
        return true;
    }

    private boolean e0(long j11, long j12) throws ExoPlaybackException {
        boolean z10;
        boolean zX0;
        int iJ;
        t tVar = (t) androidx.media3.common.util.a.e(this.L);
        if (!A0()) {
            if (this.W && this.f12149q0) {
                try {
                    iJ = tVar.j(this.f12166z);
                } catch (IllegalStateException unused) {
                    W0();
                    if (this.f12159v0) {
                        b1();
                    }
                    return false;
                }
            } else {
                iJ = tVar.j(this.f12166z);
            }
            if (iJ < 0) {
                if (iJ == -2) {
                    Y0();
                    return true;
                }
                if (this.Z && (this.f12157u0 || this.f12146n0 == 2)) {
                    W0();
                }
                long j13 = this.f12133a0;
                if (j13 != C.TIME_UNSET && j13 + 100 < s().currentTimeMillis()) {
                    W0();
                }
                return false;
            }
            if (this.Y) {
                this.Y = false;
                tVar.k(iJ, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.f12166z;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                W0();
                return false;
            }
            this.f12137e0 = iJ;
            ByteBuffer byteBufferL = tVar.l(iJ);
            this.f12138f0 = byteBufferL;
            if (byteBufferL != null) {
                byteBufferL.position(this.f12166z.offset);
                ByteBuffer byteBuffer = this.f12138f0;
                MediaCodec.BufferInfo bufferInfo2 = this.f12166z;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            this.f12139g0 = this.f12166z.presentationTimeUs < w();
            long j14 = this.f12155t0;
            this.f12140h0 = j14 != C.TIME_UNSET && j14 <= this.f12166z.presentationTimeUs;
            w1(this.f12166z.presentationTimeUs);
        }
        if (this.W && this.f12149q0) {
            try {
                ByteBuffer byteBuffer2 = this.f12138f0;
                int i11 = this.f12137e0;
                MediaCodec.BufferInfo bufferInfo3 = this.f12166z;
                z10 = false;
                try {
                    zX0 = X0(j11, j12, tVar, byteBuffer2, i11, bufferInfo3.flags, 1, bufferInfo3.presentationTimeUs, this.f12139g0, this.f12140h0, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.D));
                } catch (IllegalStateException unused2) {
                    W0();
                    if (this.f12159v0) {
                        b1();
                    }
                    return z10;
                }
            } catch (IllegalStateException unused3) {
                z10 = false;
            }
        } else {
            z10 = false;
            ByteBuffer byteBuffer3 = this.f12138f0;
            int i12 = this.f12137e0;
            MediaCodec.BufferInfo bufferInfo4 = this.f12166z;
            zX0 = X0(j11, j12, tVar, byteBuffer3, i12, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.f12139g0, this.f12140h0, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.D));
        }
        if (zX0) {
            S0(this.f12166z.presentationTimeUs);
            boolean z11 = (this.f12166z.flags & 4) != 0 ? true : z10;
            if (!z11 && this.f12149q0 && this.f12140h0) {
                this.f12133a0 = s().currentTimeMillis();
            }
            g1();
            if (!z11) {
                return true;
            }
            W0();
        }
        return z10;
    }

    private boolean f0(w wVar, androidx.media3.common.r rVar, DrmSession drmSession, DrmSession drmSession2) {
        androidx.media3.decoder.b bVarC;
        androidx.media3.decoder.b bVarC2;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 != null && drmSession != null && (bVarC = drmSession2.c()) != null && (bVarC2 = drmSession.c()) != null && bVarC.getClass().equals(bVarC2.getClass())) {
            if (!(bVarC instanceof androidx.media3.exoplayer.drm.c0)) {
                return false;
            }
            if (!drmSession2.a().equals(drmSession.a()) || a1.f10350a < 23) {
                return true;
            }
            UUID uuid = androidx.media3.common.h.f9985e;
            if (!uuid.equals(drmSession.a()) && !uuid.equals(drmSession2.a())) {
                if (wVar.f12261g) {
                    return false;
                }
                return drmSession2.getState() == 2 || ((drmSession2.getState() == 3 || drmSession2.getState() == 4) && drmSession2.d((String) androidx.media3.common.util.a.e(rVar.f10161o)));
            }
        }
        return true;
    }

    private void f1() {
        this.f12136d0 = -1;
        this.f12160w.f10918c = null;
    }

    private boolean g0() throws ExoPlaybackException {
        int i11;
        if (this.L == null || (i11 = this.f12146n0) == 2 || this.f12157u0) {
            return false;
        }
        if (i11 == 0 && p1()) {
            c0();
        }
        t tVar = (t) androidx.media3.common.util.a.e(this.L);
        if (this.f12136d0 < 0) {
            int i12 = tVar.i();
            this.f12136d0 = i12;
            if (i12 < 0) {
                return false;
            }
            this.f12160w.f10918c = tVar.d(i12);
            this.f12160w.clear();
        }
        if (this.f12146n0 == 1) {
            if (!this.Z) {
                this.f12149q0 = true;
                tVar.a(this.f12136d0, 0, 0, 0L, 4);
                f1();
            }
            this.f12146n0 = 2;
            return false;
        }
        if (this.X) {
            this.X = false;
            ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(this.f12160w.f10918c);
            byte[] bArr = E0;
            byteBuffer.put(bArr);
            tVar.a(this.f12136d0, 0, bArr.length, 0L, 0);
            f1();
            this.f12148p0 = true;
            return true;
        }
        if (this.f12145m0 == 1) {
            for (int i13 = 0; i13 < ((androidx.media3.common.r) androidx.media3.common.util.a.e(this.M)).f10164r.size(); i13++) {
                ((ByteBuffer) androidx.media3.common.util.a.e(this.f12160w.f10918c)).put((byte[]) this.M.f10164r.get(i13));
            }
            this.f12145m0 = 2;
        }
        int iPosition = ((ByteBuffer) androidx.media3.common.util.a.e(this.f12160w.f10918c)).position();
        s2 s2VarU = u();
        try {
            int iN = N(s2VarU, this.f12160w, 0);
            if (iN == -3) {
                if (hasReadStreamToEnd()) {
                    this.f12155t0 = this.f12153s0;
                }
                return false;
            }
            if (iN == -5) {
                if (this.f12145m0 == 2) {
                    this.f12160w.clear();
                    this.f12145m0 = 1;
                }
                P0(s2VarU);
                return true;
            }
            if (this.f12160w.isEndOfStream()) {
                this.f12155t0 = this.f12153s0;
                if (this.f12145m0 == 2) {
                    this.f12160w.clear();
                    this.f12145m0 = 1;
                }
                this.f12157u0 = true;
                if (!this.f12148p0) {
                    W0();
                    return false;
                }
                if (!this.Z) {
                    this.f12149q0 = true;
                    tVar.a(this.f12136d0, 0, 0, 0L, 4);
                    f1();
                }
                return false;
            }
            if (!this.f12148p0 && !this.f12160w.isKeyFrame()) {
                this.f12160w.clear();
                if (this.f12145m0 == 2) {
                    this.f12145m0 = 1;
                }
                return true;
            }
            if (n1(this.f12160w)) {
                return true;
            }
            boolean zE = this.f12160w.e();
            if (zE) {
                this.f12160w.f10917b.b(iPosition);
            }
            long j11 = this.f12160w.f10920e;
            if (this.f12161w0) {
                if (this.A.isEmpty()) {
                    this.A0.f12173d.a(j11, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C));
                } else {
                    ((d) this.A.peekLast()).f12173d.a(j11, (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C));
                }
                this.f12161w0 = false;
            }
            this.f12153s0 = Math.max(this.f12153s0, j11);
            if (hasReadStreamToEnd() || this.f12160w.isLastSample()) {
                this.f12155t0 = this.f12153s0;
            }
            this.f12160w.d();
            if (this.f12160w.hasSupplementalData()) {
                z0(this.f12160w);
            }
            U0(this.f12160w);
            int iM0 = m0(this.f12160w);
            if (zE) {
                ((t) androidx.media3.common.util.a.e(tVar)).f(this.f12136d0, 0, this.f12160w.f10917b, j11, iM0);
            } else {
                ((t) androidx.media3.common.util.a.e(tVar)).a(this.f12136d0, 0, ((ByteBuffer) androidx.media3.common.util.a.e(this.f12160w.f10918c)).limit(), j11, iM0);
            }
            f1();
            this.f12148p0 = true;
            this.f12145m0 = 0;
            this.f12167z0.f12033c++;
            return true;
        } catch (DecoderInputBuffer.InsufficientCapacityException e11) {
            M0(e11);
            Z0(0);
            h0();
            return true;
        }
    }

    private void g1() {
        this.f12137e0 = -1;
        this.f12138f0 = null;
    }

    private void h0() {
        try {
            ((t) androidx.media3.common.util.a.i(this.L)).flush();
        } finally {
            d1();
        }
    }

    private void h1(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.E, drmSession);
        this.E = drmSession;
    }

    private void i1(d dVar) {
        this.A0 = dVar;
        long j11 = dVar.f12172c;
        if (j11 != C.TIME_UNSET) {
            this.C0 = true;
            R0(j11);
        }
    }

    private List k0(boolean z10) {
        androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.C);
        List listR0 = r0(this.f12152s, rVar, z10);
        if (listR0.isEmpty() && z10) {
            listR0 = r0(this.f12152s, rVar, false);
            if (!listR0.isEmpty()) {
                androidx.media3.common.util.u.h("MediaCodecRenderer", "Drm session requires secure decoder for " + rVar.f10161o + ", but no secure decoder available. Trying to proceed with " + listR0 + ".");
            }
        }
        return listR0;
    }

    private void l1(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.k.a(this.F, drmSession);
        this.F = drmSession;
    }

    private boolean m1(long j11) {
        return this.I == C.TIME_UNSET || s().elapsedRealtime() - j11 < this.I;
    }

    protected static boolean t1(androidx.media3.common.r rVar) {
        int i11 = rVar.N;
        return i11 == 0 || i11 == 2;
    }

    private boolean u1(androidx.media3.common.r rVar) throws ExoPlaybackException {
        if (a1.f10350a >= 23 && this.L != null && this.f12147o0 != 3 && getState() != 0) {
            float fP0 = p0(this.K, (androidx.media3.common.r) androidx.media3.common.util.a.e(rVar), y());
            float f11 = this.P;
            if (f11 == fP0) {
                return true;
            }
            if (fP0 == -1.0f) {
                c0();
                return false;
            }
            if (f11 == -1.0f && fP0 <= this.f12156u) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fP0);
            ((t) androidx.media3.common.util.a.e(this.L)).b(bundle);
            this.P = fP0;
        }
        return true;
    }

    private void v1() throws ExoPlaybackException {
        androidx.media3.decoder.b bVarC = ((DrmSession) androidx.media3.common.util.a.e(this.F)).c();
        if (bVarC instanceof androidx.media3.exoplayer.drm.c0) {
            try {
                ((MediaCrypto) androidx.media3.common.util.a.e(this.H)).setMediaDrmSession(((androidx.media3.exoplayer.drm.c0) bVarC).f11570b);
            } catch (MediaCryptoException e11) {
                throw q(e11, this.C, 6006);
            }
        }
        h1(this.F);
        this.f12146n0 = 0;
        this.f12147o0 = 0;
    }

    @Override // androidx.media3.exoplayer.i
    protected void C() {
        this.C = null;
        i1(d.f12169e);
        this.A.clear();
        j0();
    }

    @Override // androidx.media3.exoplayer.i
    protected void D(boolean z10, boolean z11) {
        this.f12167z0 = new androidx.media3.exoplayer.j();
    }

    @Override // androidx.media3.exoplayer.i
    protected void F(long j11, boolean z10) throws ExoPlaybackException {
        this.f12157u0 = false;
        this.f12159v0 = false;
        this.f12163x0 = false;
        if (this.f12141i0) {
            this.f12164y.clear();
            this.f12162x.clear();
            this.f12142j0 = false;
            this.B.d();
        } else {
            i0();
        }
        if (this.A0.f12173d.l() > 0) {
            this.f12161w0 = true;
        }
        this.A0.f12173d.c();
        this.A.clear();
    }

    protected final boolean F0() {
        return this.f12141i0;
    }

    protected final boolean G0(androidx.media3.common.r rVar) {
        return this.F == null && r1(rVar);
    }

    @Override // androidx.media3.exoplayer.i
    protected void I() {
        try {
            a0();
            b1();
        } finally {
            l1(null);
        }
    }

    @Override // androidx.media3.exoplayer.i
    protected void J() {
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    protected final void J0() throws ExoPlaybackException {
        androidx.media3.common.r rVar;
        boolean z10;
        if (this.L != null || this.f12141i0 || (rVar = this.C) == null) {
            return;
        }
        if (G0(rVar)) {
            C0(rVar);
            return;
        }
        h1(this.F);
        if (this.E == null || E0()) {
            try {
                DrmSession drmSession = this.E;
                if (drmSession == null || !(drmSession.getState() == 3 || this.E.getState() == 4)) {
                    z10 = false;
                } else if (this.E.d((String) androidx.media3.common.util.a.i(rVar.f10161o))) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                K0(this.H, z10);
            } catch (DecoderInitializationException e11) {
                throw q(e11, rVar, 4001);
            }
        }
        MediaCrypto mediaCrypto = this.H;
        if (mediaCrypto == null || this.L != null) {
            return;
        }
        mediaCrypto.release();
        this.H = null;
    }

    @Override // androidx.media3.exoplayer.i
    protected void K() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        if (r5 >= r1) goto L15;
     */
    @Override // androidx.media3.exoplayer.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void L(androidx.media3.common.r[] rVarArr, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar) {
        if (this.A0.f12172c == C.TIME_UNSET) {
            i1(new d(C.TIME_UNSET, j11, j12));
            if (this.D0) {
                T0();
                return;
            }
            return;
        }
        if (this.A.isEmpty()) {
            long j13 = this.f12153s0;
            if (j13 != C.TIME_UNSET) {
                long j14 = this.B0;
                if (j14 != C.TIME_UNSET) {
                }
            }
            i1(new d(C.TIME_UNSET, j11, j12));
            if (this.A0.f12172c != C.TIME_UNSET) {
                T0();
                return;
            }
            return;
        }
        this.A.add(new d(this.f12153s0, j11, j12));
    }

    protected boolean L0(androidx.media3.common.r rVar) {
        return true;
    }

    protected abstract void M0(Exception exc);

    protected abstract void N0(String str, t.a aVar, long j11, long j12);

    protected abstract void O0(String str);

    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    protected androidx.media3.exoplayer.k P0(s2 s2Var) throws ExoPlaybackException {
        int i11;
        boolean z10 = true;
        this.f12161w0 = true;
        androidx.media3.common.r rVarN = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12570b);
        String str = rVarN.f10161o;
        if (str == null) {
            throw q(new IllegalArgumentException("Sample MIME type is null."), rVarN, 4005);
        }
        if (Objects.equals(str, "video/av01") && !rVarN.f10164r.isEmpty()) {
            rVarN = rVarN.b().g0(null).N();
        }
        androidx.media3.common.r rVar = rVarN;
        l1(s2Var.f12569a);
        this.C = rVar;
        if (this.f12141i0) {
            this.f12143k0 = true;
            return null;
        }
        t tVar = this.L;
        if (tVar == null) {
            this.Q = null;
            J0();
            return null;
        }
        w wVar = (w) androidx.media3.common.util.a.e(this.S);
        androidx.media3.common.r rVar2 = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.M);
        if (f0(wVar, rVar, this.E, this.F)) {
            c0();
            return new androidx.media3.exoplayer.k(wVar.f12255a, rVar2, rVar, 0, 128);
        }
        boolean z11 = this.F != this.E;
        androidx.media3.common.util.a.g(!z11 || a1.f10350a >= 23);
        androidx.media3.exoplayer.k kVarT = T(wVar, rVar2, rVar);
        int i12 = kVarT.f12053d;
        if (i12 != 0) {
            i11 = 16;
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        throw new IllegalStateException();
                    }
                    if (u1(rVar)) {
                        this.M = rVar;
                        if (z11 && !d0()) {
                            i11 = 2;
                        }
                    }
                } else if (u1(rVar)) {
                    this.f12144l0 = true;
                    this.f12145m0 = 1;
                    int i13 = this.T;
                    if (i13 != 2 && (i13 != 1 || rVar.f10168v != rVar2.f10168v || rVar.f10169w != rVar2.f10169w)) {
                        z10 = false;
                    }
                    this.X = z10;
                    this.M = rVar;
                    if (z11 && !d0()) {
                        i11 = 2;
                    }
                }
            } else if (u1(rVar)) {
                this.M = rVar;
                if (!z11 ? !b0() : !d0()) {
                    i11 = 2;
                }
            }
            return (kVarT.f12053d != 0 || (this.L == tVar && this.f12147o0 != 3)) ? kVarT : new androidx.media3.exoplayer.k(wVar.f12255a, rVar2, rVar, 0, i11);
        }
        c0();
        i11 = 0;
        if (kVarT.f12053d != 0) {
        }
    }

    protected abstract void Q0(androidx.media3.common.r rVar, MediaFormat mediaFormat);

    protected void R0(long j11) {
    }

    protected void S0(long j11) {
        this.B0 = j11;
        while (!this.A.isEmpty() && j11 >= ((d) this.A.peek()).f12170a) {
            i1((d) androidx.media3.common.util.a.e((d) this.A.poll()));
            T0();
        }
    }

    protected abstract androidx.media3.exoplayer.k T(w wVar, androidx.media3.common.r rVar, androidx.media3.common.r rVar2);

    protected void T0() {
    }

    protected void U0(DecoderInputBuffer decoderInputBuffer) {
    }

    protected void V0(w3.a aVar) {
    }

    protected abstract boolean X0(long j11, long j12, t tVar, ByteBuffer byteBuffer, int i11, int i12, int i13, long j13, boolean z10, boolean z11, androidx.media3.common.r rVar);

    protected MediaCodecDecoderException Z(Throwable th2, w wVar) {
        return new MediaCodecDecoderException(th2, wVar);
    }

    @Override // androidx.media3.exoplayer.y3
    public final int a(androidx.media3.common.r rVar) throws ExoPlaybackException {
        try {
            return s1(this.f12152s, rVar);
        } catch (MediaCodecUtil.DecoderQueryException e11) {
            throw q(e11, rVar, 4002);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void b1() {
        try {
            t tVar = this.L;
            if (tVar != null) {
                tVar.release();
                this.f12167z0.f12032b++;
                O0(((w) androidx.media3.common.util.a.e(this.S)).f12255a);
            }
            this.L = null;
            try {
                MediaCrypto mediaCrypto = this.H;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.H = null;
                h1(null);
                e1();
            }
        } catch (Throwable th2) {
            this.L = null;
            try {
                MediaCrypto mediaCrypto2 = this.H;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th2;
            } finally {
                this.H = null;
                h1(null);
                e1();
            }
        }
    }

    protected abstract void c1();

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.w3
    public void d(float f11, float f12) throws ExoPlaybackException {
        this.J = f11;
        this.K = f12;
        u1(this.M);
    }

    protected void d1() {
        f1();
        g1();
        this.f12135c0 = C.TIME_UNSET;
        this.f12149q0 = false;
        this.f12133a0 = C.TIME_UNSET;
        this.f12148p0 = false;
        this.X = false;
        this.Y = false;
        this.f12139g0 = false;
        this.f12140h0 = false;
        this.f12153s0 = C.TIME_UNSET;
        this.f12155t0 = C.TIME_UNSET;
        this.B0 = C.TIME_UNSET;
        this.f12146n0 = 0;
        this.f12147o0 = 0;
        this.f12145m0 = this.f12144l0 ? 1 : 0;
    }

    protected void e1() {
        d1();
        this.f12165y0 = null;
        this.Q = null;
        this.S = null;
        this.M = null;
        this.N = null;
        this.O = false;
        this.f12151r0 = false;
        this.P = -1.0f;
        this.T = 0;
        this.U = false;
        this.V = false;
        this.W = false;
        this.Z = false;
        this.f12134b0 = false;
        this.f12144l0 = false;
        this.f12145m0 = 0;
    }

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.t3.b
    public void handleMessage(int i11, Object obj) {
        if (i11 != 11) {
            super.handleMessage(i11, obj);
            return;
        }
        w3.a aVar = (w3.a) androidx.media3.common.util.a.e((w3.a) obj);
        this.G = aVar;
        V0(aVar);
    }

    protected final boolean i0() throws ExoPlaybackException {
        boolean zJ0 = j0();
        if (zJ0) {
            J0();
        }
        return zJ0;
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isEnded() {
        return this.f12159v0;
    }

    @Override // androidx.media3.exoplayer.w3
    public boolean isReady() {
        return this.C != null && (B() || A0() || (this.f12135c0 != C.TIME_UNSET && s().elapsedRealtime() < this.f12135c0));
    }

    protected boolean j0() {
        if (this.L == null) {
            return false;
        }
        int i11 = this.f12147o0;
        if (i11 == 3 || ((this.U && !this.f12151r0) || (this.V && this.f12149q0))) {
            b1();
            return true;
        }
        if (i11 == 2) {
            int i12 = a1.f10350a;
            androidx.media3.common.util.a.g(i12 >= 23);
            if (i12 >= 23) {
                try {
                    v1();
                } catch (ExoPlaybackException e11) {
                    androidx.media3.common.util.u.i("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e11);
                    b1();
                    return true;
                }
            }
        }
        h0();
        return false;
    }

    protected final void j1() {
        this.f12163x0 = true;
    }

    protected final void k1(ExoPlaybackException exoPlaybackException) {
        this.f12165y0 = exoPlaybackException;
    }

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.w3
    public final long l(long j11, long j12) {
        return s0(j11, j12, this.f12134b0);
    }

    protected final t l0() {
        return this.L;
    }

    protected int m0(DecoderInputBuffer decoderInputBuffer) {
        return 0;
    }

    protected final w n0() {
        return this.S;
    }

    protected boolean n1(DecoderInputBuffer decoderInputBuffer) {
        if (!q1(decoderInputBuffer)) {
            return false;
        }
        decoderInputBuffer.clear();
        this.f12167z0.f12034d++;
        return true;
    }

    protected boolean o0() {
        return false;
    }

    protected boolean o1(w wVar) {
        return true;
    }

    protected abstract float p0(float f11, androidx.media3.common.r rVar, androidx.media3.common.r[] rVarArr);

    protected boolean p1() {
        return false;
    }

    protected final MediaFormat q0() {
        return this.N;
    }

    protected boolean q1(DecoderInputBuffer decoderInputBuffer) {
        return false;
    }

    protected abstract List r0(h0 h0Var, androidx.media3.common.r rVar, boolean z10);

    protected boolean r1(androidx.media3.common.r rVar) {
        return false;
    }

    @Override // androidx.media3.exoplayer.w3
    public void render(long j11, long j12) throws ExoPlaybackException {
        boolean z10 = false;
        if (this.f12163x0) {
            this.f12163x0 = false;
            W0();
        }
        ExoPlaybackException exoPlaybackException = this.f12165y0;
        if (exoPlaybackException != null) {
            this.f12165y0 = null;
            throw exoPlaybackException;
        }
        try {
            if (this.f12159v0) {
                c1();
                return;
            }
            if (this.C != null || Z0(2)) {
                J0();
                if (this.f12141i0) {
                    androidx.media3.common.util.q0.a("bypassRender");
                    while (S(j11, j12)) {
                    }
                    androidx.media3.common.util.q0.b();
                } else if (this.L != null) {
                    long jElapsedRealtime = s().elapsedRealtime();
                    androidx.media3.common.util.q0.a("drainAndFeed");
                    while (e0(j11, j12) && m1(jElapsedRealtime)) {
                    }
                    while (g0() && m1(jElapsedRealtime)) {
                    }
                    androidx.media3.common.util.q0.b();
                } else {
                    this.f12167z0.f12034d += P(j11);
                    Z0(1);
                }
                this.f12167z0.c();
            }
        } catch (MediaCodec.CryptoException e11) {
            throw q(e11, this.C, a1.b0(e11.getErrorCode()));
        } catch (IllegalStateException e12) {
            if (!I0(e12)) {
                throw e12;
            }
            M0(e12);
            if ((e12 instanceof MediaCodec.CodecException) && ((MediaCodec.CodecException) e12).isRecoverable()) {
                z10 = true;
            }
            if (z10) {
                b1();
            }
            MediaCodecDecoderException mediaCodecDecoderExceptionZ = Z(e12, n0());
            throw r(mediaCodecDecoderExceptionZ, this.C, z10, mediaCodecDecoderExceptionZ.errorCode == 1101 ? PlaybackException.ERROR_CODE_DECODING_RESOURCES_RECLAIMED : 4003);
        }
    }

    protected long s0(long j11, long j12, boolean z10) {
        return super.l(j11, j12);
    }

    protected abstract int s1(h0 h0Var, androidx.media3.common.r rVar);

    @Override // androidx.media3.exoplayer.i, androidx.media3.exoplayer.y3
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    protected long t0() {
        return this.f12155t0;
    }

    protected abstract t.a u0(w wVar, androidx.media3.common.r rVar, MediaCrypto mediaCrypto, float f11);

    protected final long v0() {
        return this.A0.f12172c;
    }

    protected final long w0() {
        return this.A0.f12171b;
    }

    protected final void w1(long j11) {
        androidx.media3.common.r rVar = (androidx.media3.common.r) this.A0.f12173d.j(j11);
        if (rVar == null && this.C0 && this.N != null) {
            rVar = (androidx.media3.common.r) this.A0.f12173d.i();
        }
        if (rVar != null) {
            this.D = rVar;
        } else if (!this.O || this.D == null) {
            return;
        }
        Q0((androidx.media3.common.r) androidx.media3.common.util.a.e(this.D), this.N);
        this.O = false;
        this.C0 = false;
    }

    protected float x0() {
        return this.J;
    }

    protected final w3.a y0() {
        return this.G;
    }

    protected abstract void z0(DecoderInputBuffer decoderInputBuffer);
}
