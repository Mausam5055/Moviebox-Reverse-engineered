package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.d0;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.k0;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import e9.u1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MediaCodecRenderer extends com.google.android.exoplayer2.h {
    private static final byte[] F0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private final long[] A;
    private ExoPlaybackException A0;
    private o1 B;
    protected com.google.android.exoplayer2.decoder.e B0;
    private o1 C;
    private long C0;
    private DrmSession D;
    private long D0;
    private DrmSession E;
    private int E0;
    private MediaCrypto F;
    private boolean G;
    private long H;
    private float I;
    private float J;
    private l K;
    private o1 L;
    private MediaFormat M;
    private boolean N;
    private float O;
    private ArrayDeque P;
    private DecoderInitializationException Q;
    private m R;
    private int S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f25290a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private boolean f25291b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private boolean f25292c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private i f25293d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private long f25294e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private int f25295f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private int f25296g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private ByteBuffer f25297h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private boolean f25298i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private boolean f25299j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private boolean f25300k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private boolean f25301l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private boolean f25302m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final l.b f25303n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private boolean f25304n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final o f25305o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private int f25306o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f25307p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private int f25308p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final float f25309q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private int f25310q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final DecoderInputBuffer f25311r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private boolean f25312r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final DecoderInputBuffer f25313s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private boolean f25314s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final DecoderInputBuffer f25315t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private boolean f25316t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final h f25317u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private long f25318u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final k0 f25319v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private long f25320v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final ArrayList f25321w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private boolean f25322w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final MediaCodec.BufferInfo f25323x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private boolean f25324x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final long[] f25325y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private boolean f25326y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final long[] f25327z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private boolean f25328z0;

    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;

        @Nullable
        public final m codecInfo;

        @Nullable
        public final String diagnosticInfo;

        @Nullable
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(o1 o1Var, @Nullable Throwable th2, boolean z10, int i11) {
            this("Decoder init failed: [" + i11 + "], " + o1Var, th2, o1Var.f25496l, z10, null, buildCustomDiagnosticInfo(i11), null);
        }

        public DecoderInitializationException(o1 o1Var, @Nullable Throwable th2, boolean z10, m mVar) {
            this("Decoder init failed: " + mVar.f25398a + ", " + o1Var, th2, o1Var.f25496l, z10, mVar, p0.f27626a >= 21 ? getDiagnosticInfoV21(th2) : null, null);
        }

        private DecoderInitializationException(String str, @Nullable Throwable th2, String str2, boolean z10, @Nullable m mVar, @Nullable String str3, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th2);
            this.mimeType = str2;
            this.secureDecoderRequired = z10;
            this.codecInfo = mVar;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }

        private static String buildCustomDiagnosticInfo(int i11) {
            return "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_" + (i11 < 0 ? "neg_" : "") + Math.abs(i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        @Nullable
        private static String getDiagnosticInfoV21(@Nullable Throwable th2) {
            if (th2 instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th2).getDiagnosticInfo();
            }
            return null;
        }
    }

    private static final class a {
        public static void a(l.a aVar, u1 u1Var) {
            LogSessionId logSessionIdA = u1Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            aVar.f25393b.setString("log-session-id", logSessionIdA.getStringId());
        }
    }

    public MediaCodecRenderer(int i11, l.b bVar, o oVar, boolean z10, float f11) {
        super(i11);
        this.f25303n = bVar;
        this.f25305o = (o) com.google.android.exoplayer2.util.a.e(oVar);
        this.f25307p = z10;
        this.f25309q = f11;
        this.f25311r = DecoderInputBuffer.p();
        this.f25313s = new DecoderInputBuffer(0);
        this.f25315t = new DecoderInputBuffer(2);
        h hVar = new h();
        this.f25317u = hVar;
        this.f25319v = new k0();
        this.f25321w = new ArrayList();
        this.f25323x = new MediaCodec.BufferInfo();
        this.I = 1.0f;
        this.J = 1.0f;
        this.H = C.TIME_UNSET;
        this.f25325y = new long[10];
        this.f25327z = new long[10];
        this.A = new long[10];
        this.C0 = C.TIME_UNSET;
        this.D0 = C.TIME_UNSET;
        hVar.m(0);
        hVar.f24843c.order(ByteOrder.nativeOrder());
        this.O = -1.0f;
        this.S = 0;
        this.f25306o0 = 0;
        this.f25295f0 = -1;
        this.f25296g0 = -1;
        this.f25294e0 = C.TIME_UNSET;
        this.f25318u0 = C.TIME_UNSET;
        this.f25320v0 = C.TIME_UNSET;
        this.f25308p0 = 0;
        this.f25310q0 = 0;
    }

    private boolean A(long j11, long j12) throws ExoPlaybackException {
        boolean z10;
        com.google.android.exoplayer2.util.a.g(!this.f25324x0);
        if (this.f25317u.w()) {
            h hVar = this.f25317u;
            if (!A0(j11, j12, null, hVar.f24843c, this.f25296g0, 0, hVar.v(), this.f25317u.t(), this.f25317u.g(), this.f25317u.h(), this.C)) {
                return false;
            }
            w0(this.f25317u.u());
            this.f25317u.b();
            z10 = false;
        } else {
            z10 = false;
        }
        if (this.f25322w0) {
            this.f25324x0 = true;
            return z10;
        }
        if (this.f25301l0) {
            com.google.android.exoplayer2.util.a.g(this.f25317u.r(this.f25315t));
            this.f25301l0 = z10;
        }
        if (this.f25302m0) {
            if (this.f25317u.w()) {
                return true;
            }
            M();
            this.f25302m0 = z10;
            p0();
            if (!this.f25300k0) {
                return z10;
            }
        }
        z();
        if (this.f25317u.w()) {
            this.f25317u.n();
        }
        if (this.f25317u.w() || this.f25322w0 || this.f25302m0) {
            return true;
        }
        return z10;
    }

    private void B0() {
        this.f25316t0 = true;
        MediaFormat mediaFormatC = this.K.c();
        if (this.S != 0 && mediaFormatC.getInteger("width") == 32 && mediaFormatC.getInteger("height") == 32) {
            this.f25291b0 = true;
            return;
        }
        if (this.Z) {
            mediaFormatC.setInteger("channel-count", 1);
        }
        this.M = mediaFormatC;
        this.N = true;
    }

    private int C(String str) {
        int i11 = p0.f27626a;
        if (i11 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = p0.f27629d;
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
        String str3 = p0.f27627b;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    private boolean C0(int i11) throws ExoPlaybackException {
        p1 p1VarK = k();
        this.f25311r.b();
        int iW = w(p1VarK, this.f25311r, i11 | 4);
        if (iW == -5) {
            u0(p1VarK);
            return true;
        }
        if (iW != -4 || !this.f25311r.h()) {
            return false;
        }
        this.f25322w0 = true;
        z0();
        return false;
    }

    private static boolean D(String str, o1 o1Var) {
        return p0.f27626a < 21 && o1Var.f25498n.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private void D0() throws ExoPlaybackException {
        E0();
        p0();
    }

    private static boolean E(String str) {
        if (p0.f27626a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(p0.f27628c)) {
            String str2 = p0.f27627b;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    private static boolean F(String str) {
        int i11 = p0.f27626a;
        if (i11 > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i11 <= 19) {
                String str2 = p0.f27627b;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    private static boolean G(String str) {
        return p0.f27626a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    private static boolean H(m mVar) {
        String str = mVar.f25398a;
        int i11 = p0.f27626a;
        return (i11 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i11 <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i11 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(p0.f27628c) && "AFTS".equals(p0.f27629d) && mVar.f25404g));
    }

    private static boolean I(String str) {
        int i11 = p0.f27626a;
        return i11 < 18 || (i11 == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i11 == 19 && p0.f27629d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    private void I0() {
        this.f25295f0 = -1;
        this.f25313s.f24843c = null;
    }

    private static boolean J(String str, o1 o1Var) {
        return p0.f27626a <= 18 && o1Var.f25509y == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private void J0() {
        this.f25296g0 = -1;
        this.f25297h0 = null;
    }

    private static boolean K(String str) {
        return p0.f27626a == 29 && "c2.android.aac.decoder".equals(str);
    }

    private void K0(DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.a(this.D, drmSession);
        this.D = drmSession;
    }

    private void M() {
        this.f25302m0 = false;
        this.f25317u.b();
        this.f25315t.b();
        this.f25301l0 = false;
        this.f25300k0 = false;
    }

    private boolean N() {
        if (this.f25312r0) {
            this.f25308p0 = 1;
            if (this.U || this.W) {
                this.f25310q0 = 3;
                return false;
            }
            this.f25310q0 = 1;
        }
        return true;
    }

    private void N0(DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.a(this.E, drmSession);
        this.E = drmSession;
    }

    private void O() throws ExoPlaybackException {
        if (!this.f25312r0) {
            D0();
        } else {
            this.f25308p0 = 1;
            this.f25310q0 = 3;
        }
    }

    private boolean O0(long j11) {
        return this.H == C.TIME_UNSET || SystemClock.elapsedRealtime() - j11 < this.H;
    }

    private boolean P() throws ExoPlaybackException {
        if (this.f25312r0) {
            this.f25308p0 = 1;
            if (this.U || this.W) {
                this.f25310q0 = 3;
                return false;
            }
            this.f25310q0 = 2;
        } else {
            V0();
        }
        return true;
    }

    private boolean Q(long j11, long j12) throws ExoPlaybackException {
        boolean z10;
        boolean zA0;
        int iJ;
        if (!i0()) {
            if (this.X && this.f25314s0) {
                try {
                    iJ = this.K.j(this.f25323x);
                } catch (IllegalStateException unused) {
                    z0();
                    if (this.f25324x0) {
                        E0();
                    }
                    return false;
                }
            } else {
                iJ = this.K.j(this.f25323x);
            }
            if (iJ < 0) {
                if (iJ == -2) {
                    B0();
                    return true;
                }
                if (this.f25292c0 && (this.f25322w0 || this.f25308p0 == 2)) {
                    z0();
                }
                return false;
            }
            if (this.f25291b0) {
                this.f25291b0 = false;
                this.K.k(iJ, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.f25323x;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                z0();
                return false;
            }
            this.f25296g0 = iJ;
            ByteBuffer byteBufferL = this.K.l(iJ);
            this.f25297h0 = byteBufferL;
            if (byteBufferL != null) {
                byteBufferL.position(this.f25323x.offset);
                ByteBuffer byteBuffer = this.f25297h0;
                MediaCodec.BufferInfo bufferInfo2 = this.f25323x;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            if (this.Y) {
                MediaCodec.BufferInfo bufferInfo3 = this.f25323x;
                if (bufferInfo3.presentationTimeUs == 0 && (bufferInfo3.flags & 4) != 0) {
                    long j13 = this.f25318u0;
                    if (j13 != C.TIME_UNSET) {
                        bufferInfo3.presentationTimeUs = j13;
                    }
                }
            }
            this.f25298i0 = l0(this.f25323x.presentationTimeUs);
            long j14 = this.f25320v0;
            long j15 = this.f25323x.presentationTimeUs;
            this.f25299j0 = j14 == j15;
            W0(j15);
        }
        if (this.X && this.f25314s0) {
            try {
                l lVar = this.K;
                ByteBuffer byteBuffer2 = this.f25297h0;
                int i11 = this.f25296g0;
                MediaCodec.BufferInfo bufferInfo4 = this.f25323x;
                z10 = false;
                try {
                    zA0 = A0(j11, j12, lVar, byteBuffer2, i11, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.f25298i0, this.f25299j0, this.C);
                } catch (IllegalStateException unused2) {
                    z0();
                    if (this.f25324x0) {
                        E0();
                    }
                    return z10;
                }
            } catch (IllegalStateException unused3) {
                z10 = false;
            }
        } else {
            z10 = false;
            l lVar2 = this.K;
            ByteBuffer byteBuffer3 = this.f25297h0;
            int i12 = this.f25296g0;
            MediaCodec.BufferInfo bufferInfo5 = this.f25323x;
            zA0 = A0(j11, j12, lVar2, byteBuffer3, i12, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.f25298i0, this.f25299j0, this.C);
        }
        if (zA0) {
            w0(this.f25323x.presentationTimeUs);
            boolean z11 = (this.f25323x.flags & 4) != 0 ? true : z10;
            J0();
            if (!z11) {
                return true;
            }
            z0();
        }
        return z10;
    }

    private boolean R(m mVar, o1 o1Var, DrmSession drmSession, DrmSession drmSession2) {
        d0 d0VarD0;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 == null || drmSession == null || p0.f27626a < 23) {
            return true;
        }
        UUID uuid = com.google.android.exoplayer2.l.f25190e;
        if (uuid.equals(drmSession.a()) || uuid.equals(drmSession2.a()) || (d0VarD0 = d0(drmSession2)) == null) {
            return true;
        }
        return !mVar.f25404g && (d0VarD0.f24978c ? false : drmSession2.d(o1Var.f25496l));
    }

    private boolean S() throws ExoPlaybackException {
        int i11;
        if (this.K == null || (i11 = this.f25308p0) == 2 || this.f25322w0) {
            return false;
        }
        if (i11 == 0 && Q0()) {
            O();
        }
        if (this.f25295f0 < 0) {
            int i12 = this.K.i();
            this.f25295f0 = i12;
            if (i12 < 0) {
                return false;
            }
            this.f25313s.f24843c = this.K.d(i12);
            this.f25313s.b();
        }
        if (this.f25308p0 == 1) {
            if (!this.f25292c0) {
                this.f25314s0 = true;
                this.K.a(this.f25295f0, 0, 0, 0L, 4);
                I0();
            }
            this.f25308p0 = 2;
            return false;
        }
        if (this.f25290a0) {
            this.f25290a0 = false;
            ByteBuffer byteBuffer = this.f25313s.f24843c;
            byte[] bArr = F0;
            byteBuffer.put(bArr);
            this.K.a(this.f25295f0, 0, bArr.length, 0L, 0);
            I0();
            this.f25312r0 = true;
            return true;
        }
        if (this.f25306o0 == 1) {
            for (int i13 = 0; i13 < this.L.f25498n.size(); i13++) {
                this.f25313s.f24843c.put((byte[]) this.L.f25498n.get(i13));
            }
            this.f25306o0 = 2;
        }
        int iPosition = this.f25313s.f24843c.position();
        p1 p1VarK = k();
        try {
            int iW = w(p1VarK, this.f25313s, 0);
            if (hasReadStreamToEnd()) {
                this.f25320v0 = this.f25318u0;
            }
            if (iW == -3) {
                return false;
            }
            if (iW == -5) {
                if (this.f25306o0 == 2) {
                    this.f25313s.b();
                    this.f25306o0 = 1;
                }
                u0(p1VarK);
                return true;
            }
            if (this.f25313s.h()) {
                if (this.f25306o0 == 2) {
                    this.f25313s.b();
                    this.f25306o0 = 1;
                }
                this.f25322w0 = true;
                if (!this.f25312r0) {
                    z0();
                    return false;
                }
                try {
                    if (!this.f25292c0) {
                        this.f25314s0 = true;
                        this.K.a(this.f25295f0, 0, 0, 0L, 4);
                        I0();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e11) {
                    throw f(e11, this.B, p0.V(e11.getErrorCode()));
                }
            }
            if (!this.f25312r0 && !this.f25313s.j()) {
                this.f25313s.b();
                if (this.f25306o0 == 2) {
                    this.f25306o0 = 1;
                }
                return true;
            }
            boolean zO = this.f25313s.o();
            if (zO) {
                this.f25313s.f24842b.b(iPosition);
            }
            if (this.T && !zO) {
                x.b(this.f25313s.f24843c);
                if (this.f25313s.f24843c.position() == 0) {
                    return true;
                }
                this.T = false;
            }
            DecoderInputBuffer decoderInputBuffer = this.f25313s;
            long jD = decoderInputBuffer.f24845e;
            i iVar = this.f25293d0;
            if (iVar != null) {
                jD = iVar.d(this.B, decoderInputBuffer);
                this.f25318u0 = Math.max(this.f25318u0, this.f25293d0.b(this.B));
            }
            long j11 = jD;
            if (this.f25313s.g()) {
                this.f25321w.add(Long.valueOf(j11));
            }
            if (this.f25326y0) {
                this.f25319v.a(j11, this.B);
                this.f25326y0 = false;
            }
            this.f25318u0 = Math.max(this.f25318u0, j11);
            this.f25313s.n();
            if (this.f25313s.f()) {
                h0(this.f25313s);
            }
            y0(this.f25313s);
            try {
                if (zO) {
                    this.K.f(this.f25295f0, 0, this.f25313s.f24842b, j11, 0);
                } else {
                    this.K.a(this.f25295f0, 0, this.f25313s.f24843c.limit(), j11, 0);
                }
                I0();
                this.f25312r0 = true;
                this.f25306o0 = 0;
                this.B0.f24877c++;
                return true;
            } catch (MediaCodec.CryptoException e12) {
                throw f(e12, this.B, p0.V(e12.getErrorCode()));
            }
        } catch (DecoderInputBuffer.InsufficientCapacityException e13) {
            r0(e13);
            C0(0);
            T();
            return true;
        }
    }

    private void T() {
        try {
            this.K.flush();
        } finally {
            G0();
        }
    }

    protected static boolean T0(o1 o1Var) {
        int i11 = o1Var.E;
        return i11 == 0 || i11 == 2;
    }

    private boolean U0(o1 o1Var) throws ExoPlaybackException {
        if (p0.f27626a >= 23 && this.K != null && this.f25310q0 != 3 && getState() != 0) {
            float fA0 = a0(this.J, o1Var, n());
            float f11 = this.O;
            if (f11 == fA0) {
                return true;
            }
            if (fA0 == -1.0f) {
                O();
                return false;
            }
            if (f11 == -1.0f && fA0 <= this.f25309q) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fA0);
            this.K.b(bundle);
            this.O = fA0;
        }
        return true;
    }

    private void V0() throws ExoPlaybackException {
        try {
            this.F.setMediaDrmSession(d0(this.E).f24977b);
            K0(this.E);
            this.f25308p0 = 0;
            this.f25310q0 = 0;
        } catch (MediaCryptoException e11) {
            throw f(e11, this.B, 6006);
        }
    }

    private List W(boolean z10) {
        List listC0 = c0(this.f25305o, this.B, z10);
        if (listC0.isEmpty() && z10) {
            listC0 = c0(this.f25305o, this.B, false);
            if (!listC0.isEmpty()) {
                com.google.android.exoplayer2.util.s.i("MediaCodecRenderer", "Drm session requires secure decoder for " + this.B.f25496l + ", but no secure decoder available. Trying to proceed with " + listC0 + ".");
            }
        }
        return listC0;
    }

    private d0 d0(DrmSession drmSession) throws ExoPlaybackException {
        com.google.android.exoplayer2.decoder.b bVarC = drmSession.c();
        if (bVarC == null || (bVarC instanceof d0)) {
            return (d0) bVarC;
        }
        throw f(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + bVarC), this.B, 6001);
    }

    private boolean i0() {
        return this.f25296g0 >= 0;
    }

    private void j0(o1 o1Var) {
        M();
        String str = o1Var.f25496l;
        if (MimeTypes.AUDIO_AAC.equals(str) || MimeTypes.AUDIO_MPEG.equals(str) || MimeTypes.AUDIO_OPUS.equals(str)) {
            this.f25317u.x(32);
        } else {
            this.f25317u.x(1);
        }
        this.f25300k0 = true;
    }

    private void k0(m mVar, MediaCrypto mediaCrypto) {
        String str = mVar.f25398a;
        int i11 = p0.f27626a;
        float fA0 = i11 < 23 ? -1.0f : a0(this.J, this.B, n());
        float f11 = fA0 > this.f25309q ? fA0 : -1.0f;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        l.a aVarE0 = e0(mVar, this.B, mediaCrypto, f11);
        if (i11 >= 31) {
            a.a(aVarE0, m());
        }
        try {
            m0.a("createCodec:" + str);
            this.K = this.f25303n.a(aVarE0);
            m0.c();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            this.R = mVar;
            this.O = f11;
            this.L = this.B;
            this.S = C(str);
            this.T = D(str, this.L);
            this.U = I(str);
            this.V = K(str);
            this.W = F(str);
            this.X = G(str);
            this.Y = E(str);
            this.Z = J(str, this.L);
            this.f25292c0 = H(mVar) || Z();
            if (this.K.g()) {
                this.f25304n0 = true;
                this.f25306o0 = 1;
                this.f25290a0 = this.S != 0;
            }
            if ("c2.android.mp3.decoder".equals(mVar.f25398a)) {
                this.f25293d0 = new i();
            }
            if (getState() == 2) {
                this.f25294e0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.B0.f24875a++;
            s0(str, aVarE0, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
        } catch (Throwable th2) {
            m0.c();
            throw th2;
        }
    }

    private boolean l0(long j11) {
        int size = this.f25321w.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((Long) this.f25321w.get(i11)).longValue() == j11) {
                this.f25321w.remove(i11);
                return true;
            }
        }
        return false;
    }

    private static boolean m0(IllegalStateException illegalStateException) {
        if (p0.f27626a >= 21 && n0(illegalStateException)) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    private static boolean n0(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    private static boolean o0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009e  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x004a A[SYNTHETIC] */
    private void q0(MediaCrypto mediaCrypto, boolean z10) throws DecoderInitializationException {
        DecoderInitializationException decoderInitializationException;
        DecoderInitializationException decoderInitializationException2;
        if (this.P == null) {
            try {
                List listW = W(z10);
                ArrayDeque arrayDeque = new ArrayDeque();
                this.P = arrayDeque;
                if (this.f25307p) {
                    arrayDeque.addAll(listW);
                } else if (!listW.isEmpty()) {
                    this.P.add((m) listW.get(0));
                }
                this.Q = null;
            } catch (MediaCodecUtil.DecoderQueryException e11) {
                throw new DecoderInitializationException(this.B, e11, z10, -49998);
            }
        }
        if (this.P.isEmpty()) {
            throw new DecoderInitializationException(this.B, (Throwable) null, z10, -49999);
        }
        m mVar = (m) this.P.peekFirst();
        while (this.K == null) {
            m mVar2 = (m) this.P.peekFirst();
            if (!P0(mVar2)) {
                return;
            }
            try {
                k0(mVar2, mediaCrypto);
            } catch (Exception e12) {
                if (mVar2 != mVar) {
                    throw e12;
                }
                try {
                    com.google.android.exoplayer2.util.s.i("MediaCodecRenderer", "Preferred decoder instantiation failed. Sleeping for 50ms then retrying.");
                    Thread.sleep(50L);
                    k0(mVar2, mediaCrypto);
                } catch (Exception e13) {
                    com.google.android.exoplayer2.util.s.j("MediaCodecRenderer", "Failed to initialize decoder: " + mVar2, e13);
                    this.P.removeFirst();
                    decoderInitializationException = new DecoderInitializationException(this.B, e13, z10, mVar2);
                    r0(decoderInitializationException);
                    decoderInitializationException2 = this.Q;
                    if (decoderInitializationException2 == null) {
                        this.Q = decoderInitializationException;
                    } else {
                        this.Q = decoderInitializationException2.copyWithFallbackException(decoderInitializationException);
                    }
                    if (!this.P.isEmpty()) {
                        throw this.Q;
                    }
                }
                com.google.android.exoplayer2.util.s.j("MediaCodecRenderer", "Failed to initialize decoder: " + mVar2, e13);
                this.P.removeFirst();
                decoderInitializationException = new DecoderInitializationException(this.B, e13, z10, mVar2);
                r0(decoderInitializationException);
                decoderInitializationException2 = this.Q;
                if (decoderInitializationException2 == null) {
                    this.Q = decoderInitializationException;
                } else {
                    this.Q = decoderInitializationException2.copyWithFallbackException(decoderInitializationException);
                }
                if (!this.P.isEmpty()) {
                    throw this.Q;
                }
            }
        }
        this.P = null;
    }

    private void z() throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.g(!this.f25322w0);
        p1 p1VarK = k();
        this.f25315t.b();
        do {
            this.f25315t.b();
            int iW = w(p1VarK, this.f25315t, 0);
            if (iW == -5) {
                u0(p1VarK);
                return;
            }
            if (iW != -4) {
                if (iW != -3) {
                    throw new IllegalStateException();
                }
                return;
            } else {
                if (this.f25315t.h()) {
                    this.f25322w0 = true;
                    return;
                }
                if (this.f25326y0) {
                    o1 o1Var = (o1) com.google.android.exoplayer2.util.a.e(this.B);
                    this.C = o1Var;
                    v0(o1Var, null);
                    this.f25326y0 = false;
                }
                this.f25315t.n();
            }
        } while (this.f25317u.r(this.f25315t));
        this.f25301l0 = true;
    }

    private void z0() throws ExoPlaybackException {
        int i11 = this.f25310q0;
        if (i11 == 1) {
            T();
            return;
        }
        if (i11 == 2) {
            T();
            V0();
        } else if (i11 == 3) {
            D0();
        } else {
            this.f25324x0 = true;
            F0();
        }
    }

    protected abstract boolean A0(long j11, long j12, l lVar, ByteBuffer byteBuffer, int i11, int i12, int i13, long j13, boolean z10, boolean z11, o1 o1Var);

    protected abstract com.google.android.exoplayer2.decoder.g B(m mVar, o1 o1Var, o1 o1Var2);

    /* JADX WARN: Multi-variable type inference failed */
    protected void E0() {
        try {
            l lVar = this.K;
            if (lVar != null) {
                lVar.release();
                this.B0.f24876b++;
                t0(this.R.f25398a);
            }
            this.K = null;
            try {
                MediaCrypto mediaCrypto = this.F;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.F = null;
                K0(null);
                H0();
            }
        } catch (Throwable th2) {
            this.K = null;
            try {
                MediaCrypto mediaCrypto2 = this.F;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th2;
            } finally {
                this.F = null;
                K0(null);
                H0();
            }
        }
    }

    protected void F0() {
    }

    protected void G0() {
        I0();
        J0();
        this.f25294e0 = C.TIME_UNSET;
        this.f25314s0 = false;
        this.f25312r0 = false;
        this.f25290a0 = false;
        this.f25291b0 = false;
        this.f25298i0 = false;
        this.f25299j0 = false;
        this.f25321w.clear();
        this.f25318u0 = C.TIME_UNSET;
        this.f25320v0 = C.TIME_UNSET;
        i iVar = this.f25293d0;
        if (iVar != null) {
            iVar.c();
        }
        this.f25308p0 = 0;
        this.f25310q0 = 0;
        this.f25306o0 = this.f25304n0 ? 1 : 0;
    }

    protected void H0() {
        G0();
        this.A0 = null;
        this.f25293d0 = null;
        this.P = null;
        this.R = null;
        this.L = null;
        this.M = null;
        this.N = false;
        this.f25316t0 = false;
        this.O = -1.0f;
        this.S = 0;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = false;
        this.Z = false;
        this.f25292c0 = false;
        this.f25304n0 = false;
        this.f25306o0 = 0;
        this.G = false;
    }

    protected MediaCodecDecoderException L(Throwable th2, m mVar) {
        return new MediaCodecDecoderException(th2, mVar);
    }

    protected final void L0() {
        this.f25328z0 = true;
    }

    protected final void M0(ExoPlaybackException exoPlaybackException) {
        this.A0 = exoPlaybackException;
    }

    protected boolean P0(m mVar) {
        return true;
    }

    protected boolean Q0() {
        return false;
    }

    protected boolean R0(o1 o1Var) {
        return false;
    }

    protected abstract int S0(o oVar, o1 o1Var);

    protected final boolean U() throws ExoPlaybackException {
        boolean zV = V();
        if (zV) {
            p0();
        }
        return zV;
    }

    protected boolean V() {
        if (this.K == null) {
            return false;
        }
        int i11 = this.f25310q0;
        if (i11 == 3 || this.U || ((this.V && !this.f25316t0) || (this.W && this.f25314s0))) {
            E0();
            return true;
        }
        if (i11 == 2) {
            int i12 = p0.f27626a;
            com.google.android.exoplayer2.util.a.g(i12 >= 23);
            if (i12 >= 23) {
                try {
                    V0();
                } catch (ExoPlaybackException e11) {
                    com.google.android.exoplayer2.util.s.j("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e11);
                    E0();
                    return true;
                }
            }
        }
        T();
        return false;
    }

    protected final void W0(long j11) {
        o1 o1Var = (o1) this.f25319v.j(j11);
        if (o1Var == null && this.N) {
            o1Var = (o1) this.f25319v.i();
        }
        if (o1Var != null) {
            this.C = o1Var;
        } else if (!this.N || this.C == null) {
            return;
        }
        v0(this.C, this.M);
        this.N = false;
    }

    protected final l X() {
        return this.K;
    }

    protected final m Y() {
        return this.R;
    }

    protected boolean Z() {
        return false;
    }

    @Override // com.google.android.exoplayer2.z2
    public final int a(o1 o1Var) throws ExoPlaybackException {
        try {
            return S0(this.f25305o, o1Var);
        } catch (MediaCodecUtil.DecoderQueryException e11) {
            throw f(e11, o1Var, 4002);
        }
    }

    protected abstract float a0(float f11, o1 o1Var, o1[] o1VarArr);

    protected final MediaFormat b0() {
        return this.M;
    }

    protected abstract List c0(o oVar, o1 o1Var, boolean z10);

    @Override // com.google.android.exoplayer2.h, com.google.android.exoplayer2.x2
    public void d(float f11, float f12) throws ExoPlaybackException {
        this.I = f11;
        this.J = f12;
        U0(this.L);
    }

    protected abstract l.a e0(m mVar, o1 o1Var, MediaCrypto mediaCrypto, float f11);

    protected final long f0() {
        return this.D0;
    }

    protected float g0() {
        return this.I;
    }

    protected void h0(DecoderInputBuffer decoderInputBuffer) {
    }

    @Override // com.google.android.exoplayer2.x2
    public boolean isEnded() {
        return this.f25324x0;
    }

    @Override // com.google.android.exoplayer2.x2
    public boolean isReady() {
        return this.B != null && (o() || i0() || (this.f25294e0 != C.TIME_UNSET && SystemClock.elapsedRealtime() < this.f25294e0));
    }

    @Override // com.google.android.exoplayer2.h
    protected void p() {
        this.B = null;
        this.C0 = C.TIME_UNSET;
        this.D0 = C.TIME_UNSET;
        this.E0 = 0;
        V();
    }

    protected final void p0() throws ExoPlaybackException {
        o1 o1Var;
        if (this.K != null || this.f25300k0 || (o1Var = this.B) == null) {
            return;
        }
        if (this.E == null && R0(o1Var)) {
            j0(this.B);
            return;
        }
        K0(this.E);
        String str = this.B.f25496l;
        DrmSession drmSession = this.D;
        if (drmSession != null) {
            if (this.F == null) {
                d0 d0VarD0 = d0(drmSession);
                if (d0VarD0 != null) {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(d0VarD0.f24976a, d0VarD0.f24977b);
                        this.F = mediaCrypto;
                        this.G = !d0VarD0.f24978c && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e11) {
                        throw f(e11, this.B, 6006);
                    }
                } else if (this.D.getError() == null) {
                    return;
                }
            }
            if (d0.f24975d) {
                int state = this.D.getState();
                if (state == 1) {
                    DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(this.D.getError());
                    throw f(drmSessionException, this.B, drmSessionException.errorCode);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            q0(this.F, this.G);
        } catch (DecoderInitializationException e12) {
            throw f(e12, this.B, 4001);
        }
    }

    @Override // com.google.android.exoplayer2.h
    protected void q(boolean z10, boolean z11) {
        this.B0 = new com.google.android.exoplayer2.decoder.e();
    }

    @Override // com.google.android.exoplayer2.h
    protected void r(long j11, boolean z10) throws ExoPlaybackException {
        this.f25322w0 = false;
        this.f25324x0 = false;
        this.f25328z0 = false;
        if (this.f25300k0) {
            this.f25317u.b();
            this.f25315t.b();
            this.f25301l0 = false;
        } else {
            U();
        }
        if (this.f25319v.l() > 0) {
            this.f25326y0 = true;
        }
        this.f25319v.c();
        int i11 = this.E0;
        if (i11 != 0) {
            this.D0 = this.f25327z[i11 - 1];
            this.C0 = this.f25325y[i11 - 1];
            this.E0 = 0;
        }
    }

    protected abstract void r0(Exception exc);

    @Override // com.google.android.exoplayer2.x2
    public void render(long j11, long j12) throws ExoPlaybackException {
        boolean z10 = false;
        if (this.f25328z0) {
            this.f25328z0 = false;
            z0();
        }
        ExoPlaybackException exoPlaybackException = this.A0;
        if (exoPlaybackException != null) {
            this.A0 = null;
            throw exoPlaybackException;
        }
        try {
            if (this.f25324x0) {
                F0();
                return;
            }
            if (this.B != null || C0(2)) {
                p0();
                if (this.f25300k0) {
                    m0.a("bypassRender");
                    while (A(j11, j12)) {
                    }
                    m0.c();
                } else if (this.K != null) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    m0.a("drainAndFeed");
                    while (Q(j11, j12) && O0(jElapsedRealtime)) {
                    }
                    while (S() && O0(jElapsedRealtime)) {
                    }
                    m0.c();
                } else {
                    this.B0.f24878d += y(j11);
                    C0(1);
                }
                this.B0.c();
            }
        } catch (IllegalStateException e11) {
            if (!m0(e11)) {
                throw e11;
            }
            r0(e11);
            if (p0.f27626a >= 21 && o0(e11)) {
                z10 = true;
            }
            if (z10) {
                E0();
            }
            throw i(L(e11, Y()), this.B, z10, 4003);
        }
    }

    @Override // com.google.android.exoplayer2.h
    protected void s() {
        try {
            M();
            E0();
        } finally {
            N0(null);
        }
    }

    protected abstract void s0(String str, l.a aVar, long j11, long j12);

    @Override // com.google.android.exoplayer2.h, com.google.android.exoplayer2.z2
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    @Override // com.google.android.exoplayer2.h
    protected void t() {
    }

    protected abstract void t0(String str);

    @Override // com.google.android.exoplayer2.h
    protected void u() {
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0077  */
    /* JADX WARN: Code duplicated, block: B:39:0x0083  */
    protected com.google.android.exoplayer2.decoder.g u0(p1 p1Var) throws ExoPlaybackException {
        int i11;
        boolean z10 = true;
        this.f25326y0 = true;
        o1 o1Var = (o1) com.google.android.exoplayer2.util.a.e(p1Var.f25598b);
        if (o1Var.f25496l == null) {
            throw f(new IllegalArgumentException(), o1Var, 4005);
        }
        N0(p1Var.f25597a);
        this.B = o1Var;
        if (this.f25300k0) {
            this.f25302m0 = true;
            return null;
        }
        l lVar = this.K;
        if (lVar == null) {
            this.P = null;
            p0();
            return null;
        }
        m mVar = this.R;
        o1 o1Var2 = this.L;
        if (R(mVar, o1Var, this.D, this.E)) {
            O();
            return new com.google.android.exoplayer2.decoder.g(mVar.f25398a, o1Var2, o1Var, 0, 128);
        }
        boolean z11 = this.E != this.D;
        com.google.android.exoplayer2.util.a.g(!z11 || p0.f27626a >= 23);
        com.google.android.exoplayer2.decoder.g gVarB = B(mVar, o1Var2, o1Var);
        int i12 = gVarB.f24892d;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        throw new IllegalStateException();
                    }
                    if (U0(o1Var)) {
                        this.L = o1Var;
                        if (z11 && !P()) {
                            i11 = 2;
                        }
                    } else {
                        i11 = 16;
                    }
                } else if (U0(o1Var)) {
                    this.f25304n0 = true;
                    this.f25306o0 = 1;
                    int i13 = this.S;
                    if (i13 != 2 && (i13 != 1 || o1Var.f25501q != o1Var2.f25501q || o1Var.f25502r != o1Var2.f25502r)) {
                        z10 = false;
                    }
                    this.f25290a0 = z10;
                    this.L = o1Var;
                    if (z11 && !P()) {
                        i11 = 2;
                    }
                } else {
                    i11 = 16;
                }
            } else if (U0(o1Var)) {
                this.L = o1Var;
                if (!z11 ? !N() : !P()) {
                    i11 = 2;
                }
            } else {
                i11 = 16;
            }
            return (gVarB.f24892d != 0 || (this.K == lVar && this.f25310q0 != 3)) ? gVarB : new com.google.android.exoplayer2.decoder.g(mVar.f25398a, o1Var2, o1Var, 0, i11);
        }
        O();
        i11 = 0;
        if (gVarB.f24892d != 0) {
        }
    }

    @Override // com.google.android.exoplayer2.h
    protected void v(o1[] o1VarArr, long j11, long j12) {
        if (this.D0 == C.TIME_UNSET) {
            com.google.android.exoplayer2.util.a.g(this.C0 == C.TIME_UNSET);
            this.C0 = j11;
            this.D0 = j12;
            return;
        }
        int i11 = this.E0;
        if (i11 == this.f25327z.length) {
            com.google.android.exoplayer2.util.s.i("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.f25327z[this.E0 - 1]);
        } else {
            this.E0 = i11 + 1;
        }
        long[] jArr = this.f25325y;
        int i12 = this.E0;
        jArr[i12 - 1] = j11;
        this.f25327z[i12 - 1] = j12;
        this.A[i12 - 1] = this.f25318u0;
    }

    protected abstract void v0(o1 o1Var, MediaFormat mediaFormat);

    protected void w0(long j11) {
        while (true) {
            int i11 = this.E0;
            if (i11 == 0 || j11 < this.A[0]) {
                return;
            }
            long[] jArr = this.f25325y;
            this.C0 = jArr[0];
            this.D0 = this.f25327z[0];
            int i12 = i11 - 1;
            this.E0 = i12;
            System.arraycopy(jArr, 1, jArr, 0, i12);
            long[] jArr2 = this.f25327z;
            System.arraycopy(jArr2, 1, jArr2, 0, this.E0);
            long[] jArr3 = this.A;
            System.arraycopy(jArr3, 1, jArr3, 0, this.E0);
            x0();
        }
    }

    protected void x0() {
    }

    protected abstract void y0(DecoderInputBuffer decoderInputBuffer);
}
