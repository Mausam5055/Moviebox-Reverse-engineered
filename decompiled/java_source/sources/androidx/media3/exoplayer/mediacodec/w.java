package androidx.media3.exoplayer.mediacodec;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f12255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f12256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f12257c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f12258d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f12259e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f12260f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f12261g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f12262h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f12263i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f12264j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f12265k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f12266l;

    w(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        this.f12255a = (String) androidx.media3.common.util.a.e(str);
        this.f12256b = str2;
        this.f12257c = str3;
        this.f12258d = codecCapabilities;
        this.f12262h = z10;
        this.f12263i = z11;
        this.f12264j = z12;
        this.f12259e = z13;
        this.f12260f = z14;
        this.f12261g = z15;
        this.f12265k = z16;
        this.f12266l = androidx.media3.common.y.t(str2);
    }

    private static boolean A(String str) {
        if (a1.f10350a <= 22) {
            String str2 = Build.MODEL;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    private static boolean B(String str, int i11) {
        if (MimeTypes.VIDEO_H265.equals(str) && 2 == i11) {
            String str2 = Build.DEVICE;
            if ("sailfish".equals(str2) || "marlin".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean C(String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(Build.DEVICE)) ? false : true;
    }

    public static w D(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        return new w(str, str2, str3, codecCapabilities, z10, z11, z12, (z13 || codecCapabilities == null || !h(codecCapabilities) || A(str)) ? false : true, codecCapabilities != null && t(codecCapabilities), z14 || (codecCapabilities != null && s(codecCapabilities)), m(codecCapabilities));
    }

    private static int a(String str, String str2, int i11) {
        int i12;
        if (i11 > 1 || ((a1.f10350a >= 26 && i11 > 0) || MimeTypes.AUDIO_MPEG.equals(str2) || MimeTypes.AUDIO_AMR_NB.equals(str2) || MimeTypes.AUDIO_AMR_WB.equals(str2) || MimeTypes.AUDIO_AAC.equals(str2) || MimeTypes.AUDIO_VORBIS.equals(str2) || MimeTypes.AUDIO_OPUS.equals(str2) || MimeTypes.AUDIO_RAW.equals(str2) || MimeTypes.AUDIO_FLAC.equals(str2) || MimeTypes.AUDIO_ALAW.equals(str2) || MimeTypes.AUDIO_MLAW.equals(str2) || MimeTypes.AUDIO_MSGSM.equals(str2))) {
            return i11;
        }
        if (MimeTypes.AUDIO_AC3.equals(str2)) {
            i12 = 6;
        } else {
            i12 = MimeTypes.AUDIO_E_AC3.equals(str2) ? 16 : 30;
        }
        androidx.media3.common.util.u.h(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + i11 + " to " + i12 + "]");
        return i12;
    }

    private static Point b(MediaCodecInfo.VideoCapabilities videoCapabilities, int i11, int i12) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(a1.k(i11, widthAlignment) * widthAlignment, a1.k(i12, heightAlignment) * heightAlignment);
    }

    private static boolean d(MediaCodecInfo.VideoCapabilities videoCapabilities, int i11, int i12, double d11) {
        Point pointB = b(videoCapabilities, i11, i12);
        int i13 = pointB.x;
        int i14 = pointB.y;
        return (d11 == -1.0d || d11 < 1.0d) ? videoCapabilities.isSizeSupported(i13, i14) : videoCapabilities.areSizeAndRateSupported(i13, i14, Math.floor(d11));
    }

    private static MediaCodecInfo.CodecProfileLevel[] f(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        int i11;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int iIntValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
        if (iIntValue >= 180000000) {
            i11 = 1024;
        } else if (iIntValue >= 120000000) {
            i11 = 512;
        } else if (iIntValue >= 60000000) {
            i11 = 256;
        } else if (iIntValue >= 30000000) {
            i11 = 128;
        } else if (iIntValue >= 18000000) {
            i11 = 64;
        } else if (iIntValue >= 12000000) {
            i11 = 32;
        } else if (iIntValue >= 7200000) {
            i11 = 16;
        } else if (iIntValue >= 3600000) {
            i11 = 8;
        } else if (iIntValue >= 1800000) {
            i11 = 4;
        } else {
            i11 = iIntValue >= 800000 ? 2 : 1;
        }
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i11;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    private static boolean h(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007d  */
    private boolean k(androidx.media3.common.r rVar, boolean z10) {
        int i11 = 2;
        Pair pairI = MediaCodecUtil.i(rVar);
        String str = rVar.f10161o;
        if (str != null && str.equals("video/mv-hevc")) {
            String strU = androidx.media3.common.y.u(this.f12257c);
            if (strU.equals("video/mv-hevc")) {
                return true;
            }
            if (strU.equals(MimeTypes.VIDEO_H265)) {
                pairI = MediaCodecUtil.q(rVar);
            }
        }
        if (pairI == null) {
            return true;
        }
        int iIntValue = ((Integer) pairI.first).intValue();
        int iIntValue2 = ((Integer) pairI.second).intValue();
        if ("video/dolby-vision".equals(rVar.f10161o)) {
            String str2 = this.f12256b;
            str2.hashCode();
            switch (str2) {
                case "video/avc":
                    i11 = 8;
                case "video/av01":
                case "video/hevc":
                    iIntValue2 = 0;
                    break;
                default:
                    i11 = iIntValue;
                    break;
            }
        } else {
            i11 = iIntValue;
        }
        if (!this.f12266l && i11 != 42) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrG = g();
        if (a1.f10350a <= 23 && MimeTypes.VIDEO_VP9.equals(this.f12256b) && codecProfileLevelArrG.length == 0) {
            codecProfileLevelArrG = f(this.f12258d);
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArrG) {
            if (codecProfileLevel.profile == i11 && ((codecProfileLevel.level >= iIntValue2 || !z10) && !B(this.f12256b, i11))) {
                return true;
            }
        }
        w("codec.profileLevel, " + rVar.f10157k + ", " + this.f12257c);
        return false;
    }

    private boolean l(androidx.media3.common.r rVar) {
        return (Objects.equals(rVar.f10161o, MimeTypes.AUDIO_FLAC) && rVar.G == 22 && a1.f10350a < 34 && this.f12255a.equals("c2.android.flac.decoder")) ? false : true;
    }

    private static boolean m(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return a1.f10350a >= 35 && codecCapabilities != null && codecCapabilities.isFeatureSupported("detached-surface") && !z();
    }

    private boolean q(androidx.media3.common.r rVar) {
        return this.f12256b.equals(rVar.f10161o) || this.f12256b.equals(MediaCodecUtil.f(rVar));
    }

    private static boolean s(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static boolean t(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void v(String str) {
        androidx.media3.common.util.u.b(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + str + "] [" + this.f12255a + ", " + this.f12256b + "] [" + a1.f10354e + "]");
    }

    private void w(String str) {
        androidx.media3.common.util.u.b(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.f12255a + ", " + this.f12256b + "] [" + a1.f10354e + "]");
    }

    private static boolean x(String str) {
        return MimeTypes.AUDIO_OPUS.equals(str);
    }

    private static boolean y(String str) {
        return Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private static boolean z() {
        String str = Build.MANUFACTURER;
        return str.equals("Xiaomi") || str.equals("OPPO");
    }

    public Point c(int i11, int i12) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f12258d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return b(videoCapabilities, i11, i12);
    }

    public androidx.media3.exoplayer.k e(androidx.media3.common.r rVar, androidx.media3.common.r rVar2) {
        int i11 = !Objects.equals(rVar.f10161o, rVar2.f10161o) ? 8 : 0;
        if (this.f12266l) {
            if (rVar.f10171y != rVar2.f10171y) {
                i11 |= 1024;
            }
            if (!this.f12259e && (rVar.f10168v != rVar2.f10168v || rVar.f10169w != rVar2.f10169w)) {
                i11 |= 512;
            }
            if ((!androidx.media3.common.i.h(rVar.C) || !androidx.media3.common.i.h(rVar2.C)) && !Objects.equals(rVar.C, rVar2.C)) {
                i11 |= 2048;
            }
            if (y(this.f12255a) && !rVar.f(rVar2)) {
                i11 |= 2;
            }
            if (i11 == 0) {
                return new androidx.media3.exoplayer.k(this.f12255a, rVar, rVar2, rVar.f(rVar2) ? 3 : 2, 0);
            }
        } else {
            if (rVar.E != rVar2.E) {
                i11 |= 4096;
            }
            if (rVar.F != rVar2.F) {
                i11 |= 8192;
            }
            if (rVar.G != rVar2.G) {
                i11 |= 16384;
            }
            if (i11 == 0 && MimeTypes.AUDIO_AAC.equals(this.f12256b)) {
                Pair pairI = MediaCodecUtil.i(rVar);
                Pair pairI2 = MediaCodecUtil.i(rVar2);
                if (pairI != null && pairI2 != null) {
                    int iIntValue = ((Integer) pairI.first).intValue();
                    int iIntValue2 = ((Integer) pairI2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new androidx.media3.exoplayer.k(this.f12255a, rVar, rVar2, 3, 0);
                    }
                }
            }
            if (!rVar.f(rVar2)) {
                i11 |= 32;
            }
            if (x(this.f12256b)) {
                i11 |= 2;
            }
            if (i11 == 0) {
                return new androidx.media3.exoplayer.k(this.f12255a, rVar, rVar2, 1, 0);
            }
        }
        return new androidx.media3.exoplayer.k(this.f12255a, rVar, rVar2, 0, i11);
    }

    public MediaCodecInfo.CodecProfileLevel[] g() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f12258d;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    public boolean i(int i11) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f12258d;
        if (codecCapabilities == null) {
            w("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("channelCount.aCaps");
            return false;
        }
        if (a(this.f12255a, this.f12256b, audioCapabilities.getMaxInputChannelCount()) >= i11) {
            return true;
        }
        w("channelCount.support, " + i11);
        return false;
    }

    public boolean j(int i11) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f12258d;
        if (codecCapabilities == null) {
            w("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("sampleRate.aCaps");
            return false;
        }
        if (audioCapabilities.isSampleRateSupported(i11)) {
            return true;
        }
        w("sampleRate.support, " + i11);
        return false;
    }

    public boolean n(androidx.media3.common.r rVar) {
        return q(rVar) && k(rVar, false) && l(rVar);
    }

    public boolean o(androidx.media3.common.r rVar) {
        int i11;
        if (!q(rVar) || !k(rVar, true) || !l(rVar)) {
            return false;
        }
        if (this.f12266l) {
            int i12 = rVar.f10168v;
            if (i12 <= 0 || (i11 = rVar.f10169w) <= 0) {
                return true;
            }
            return u(i12, i11, rVar.f10170x);
        }
        int i13 = rVar.F;
        if (i13 != -1 && !j(i13)) {
            return false;
        }
        int i14 = rVar.E;
        return i14 == -1 || i(i14);
    }

    public boolean p() {
        if (a1.f10350a >= 29 && MimeTypes.VIDEO_VP9.equals(this.f12256b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : g()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean r(androidx.media3.common.r rVar) {
        if (this.f12266l) {
            return this.f12259e;
        }
        Pair pairI = MediaCodecUtil.i(rVar);
        return pairI != null && ((Integer) pairI.first).intValue() == 42;
    }

    public String toString() {
        return this.f12255a;
    }

    public boolean u(int i11, int i12, double d11) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f12258d;
        if (codecCapabilities == null) {
            w("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            w("sizeAndRate.vCaps");
            return false;
        }
        if (a1.f10350a >= 29) {
            int iC = c0.c(videoCapabilities, i11, i12, d11);
            if (iC == 2) {
                return true;
            }
            if (iC == 1) {
                w("sizeAndRate.cover, " + i11 + "x" + i12 + "@" + d11);
                return false;
            }
        }
        if (!d(videoCapabilities, i11, i12, d11)) {
            if (i11 >= i12 || !C(this.f12255a) || !d(videoCapabilities, i12, i11, d11)) {
                w("sizeAndRate.support, " + i11 + "x" + i12 + "@" + d11);
                return false;
            }
            v("sizeAndRate.rotated, " + i11 + "x" + i12 + "@" + d11);
        }
        return true;
    }
}
