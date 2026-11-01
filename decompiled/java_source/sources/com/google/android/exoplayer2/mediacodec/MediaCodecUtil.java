package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.w;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MediaCodecUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f25329a = Pattern.compile("^\\D?(\\d+)$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashMap f25330b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f25331c = -1;

    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th2) {
            super("Failed to query underlying media codecs", th2);
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f25332a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f25333b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f25334c;

        public b(String str, boolean z10, boolean z11) {
            this.f25332a = str;
            this.f25333b = z10;
            this.f25334c = z11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            return TextUtils.equals(this.f25332a, bVar.f25332a) && this.f25333b == bVar.f25333b && this.f25334c == bVar.f25334c;
        }

        public int hashCode() {
            return ((((this.f25332a.hashCode() + 31) * 31) + (this.f25333b ? 1231 : 1237)) * 31) + (this.f25334c ? 1231 : 1237);
        }
    }

    private interface c {
        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i11);

        boolean secureDecodersExplicit();
    }

    private static final class d implements c {
        private d() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && MimeTypes.VIDEO_H264.equals(str2);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo getCodecInfoAt(int i11) {
            return MediaCodecList.getCodecInfoAt(i11);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean secureDecodersExplicit() {
            return false;
        }
    }

    private static final class e implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f25335a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private MediaCodecInfo[] f25336b;

        public e(boolean z10, boolean z11) {
            this.f25335a = (z10 || z11) ? 1 : 0;
        }

        private void c() {
            if (this.f25336b == null) {
                this.f25336b = new MediaCodecList(this.f25335a).getCodecInfos();
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public int getCodecCount() {
            c();
            return this.f25336b.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo getCodecInfoAt(int i11) {
            c();
            return this.f25336b[i11];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean secureDecodersExplicit() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface f {
        int a(Object obj);
    }

    private static boolean A(MediaCodecInfo mediaCodecInfo) {
        return p0.f27626a >= 29 && B(mediaCodecInfo);
    }

    private static boolean B(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    private static boolean C(MediaCodecInfo mediaCodecInfo, String str, boolean z10, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z10 && str.endsWith(".secure"))) {
            return false;
        }
        int i11 = p0.f27626a;
        if (i11 < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i11 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = p0.f27627b;
            if ("a70".equals(str3) || ("Xiaomi".equals(p0.f27628c) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i11 == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = p0.f27627b;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i11 == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = p0.f27627b;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i11 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(p0.f27628c))) {
            String str6 = p0.f27627b;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i11 <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(p0.f27628c)) {
            String str7 = p0.f27627b;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i11 <= 19 && p0.f27627b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        return (i11 <= 23 && MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    private static boolean D(MediaCodecInfo mediaCodecInfo, String str) {
        return p0.f27626a >= 29 ? E(mediaCodecInfo) : !F(mediaCodecInfo, str);
    }

    private static boolean E(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    private static boolean F(MediaCodecInfo mediaCodecInfo, String str) {
        if (p0.f27626a >= 29) {
            return G(mediaCodecInfo);
        }
        if (w.p(str)) {
            return true;
        }
        String strE = com.google.common.base.a.e(mediaCodecInfo.getName());
        if (strE.startsWith("arc.")) {
            return false;
        }
        if (strE.startsWith("omx.google.") || strE.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strE.startsWith("omx.sec.") && strE.contains(".sw.")) || strE.equals("omx.qcom.video.decoder.hevcswvdec") || strE.startsWith("c2.android.") || strE.startsWith("c2.google.")) {
            return true;
        }
        return (strE.startsWith("omx.") || strE.startsWith("c2.")) ? false : true;
    }

    private static boolean G(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    private static boolean H(MediaCodecInfo mediaCodecInfo) {
        if (p0.f27626a >= 29) {
            return I(mediaCodecInfo);
        }
        String strE = com.google.common.base.a.e(mediaCodecInfo.getName());
        return (strE.startsWith("omx.google.") || strE.startsWith("c2.android.") || strE.startsWith("c2.google.")) ? false : true;
    }

    private static boolean I(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int J(m mVar) {
        String str = mVar.f25398a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (p0.f27626a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int K(m mVar) {
        return mVar.f25398a.startsWith("OMX.google") ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int L(o1 o1Var, m mVar) {
        try {
            return mVar.m(o1Var) ? 1 : 0;
        } catch (DecoderQueryException unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int M(f fVar, Object obj, Object obj2) {
        return fVar.a(obj2) - fVar.a(obj);
    }

    public static int N() {
        if (f25331c == -1) {
            int iMax = 0;
            m mVarR = r(MimeTypes.VIDEO_H264, false, false);
            if (mVarR != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrG = mVarR.g();
                int length = codecProfileLevelArrG.length;
                int iMax2 = 0;
                while (iMax < length) {
                    iMax2 = Math.max(h(codecProfileLevelArrG[iMax].level), iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, p0.f27626a >= 21 ? 345600 : 172800);
            }
            f25331c = iMax;
        }
        return f25331c;
    }

    private static int O(int i11) {
        int i12 = 17;
        if (i11 != 17) {
            i12 = 20;
            if (i11 != 20) {
                i12 = 23;
                if (i11 != 23) {
                    i12 = 29;
                    if (i11 != 29) {
                        i12 = 39;
                        if (i11 != 39) {
                            i12 = 42;
                            if (i11 != 42) {
                                switch (i11) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i12;
    }

    private static void P(List list, final f fVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.exoplayer2.mediacodec.s
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaCodecUtil.M(fVar, obj, obj2);
            }
        });
    }

    private static int Q(int i11) {
        if (i11 == 10) {
            return 1;
        }
        if (i11 == 11) {
            return 2;
        }
        if (i11 == 20) {
            return 4;
        }
        if (i11 == 21) {
            return 8;
        }
        if (i11 == 30) {
            return 16;
        }
        if (i11 == 31) {
            return 32;
        }
        if (i11 == 40) {
            return 64;
        }
        if (i11 == 41) {
            return 128;
        }
        if (i11 == 50) {
            return 256;
        }
        if (i11 == 51) {
            return 512;
        }
        switch (i11) {
            case 60:
                return 2048;
            case 61:
                return 4096;
            case 62:
                return 8192;
            default:
                return -1;
        }
    }

    private static int R(int i11) {
        if (i11 == 0) {
            return 1;
        }
        if (i11 == 1) {
            return 2;
        }
        if (i11 != 2) {
            return i11 != 3 ? -1 : 8;
        }
        return 4;
    }

    private static void e(String str, List list) {
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (p0.f27626a < 26 && p0.f27627b.equals("R9") && list.size() == 1 && ((m) list.get(0)).f25398a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(m.C("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
            }
            P(list, new f() { // from class: com.google.android.exoplayer2.mediacodec.p
                @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f
                public final int a(Object obj) {
                    return MediaCodecUtil.J((m) obj);
                }
            });
        }
        int i11 = p0.f27626a;
        if (i11 < 21 && list.size() > 1) {
            String str2 = ((m) list.get(0)).f25398a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                P(list, new f() { // from class: com.google.android.exoplayer2.mediacodec.q
                    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f
                    public final int a(Object obj) {
                        return MediaCodecUtil.K((m) obj);
                    }
                });
            }
        }
        if (i11 >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(((m) list.get(0)).f25398a)) {
            return;
        }
        list.add((m) list.remove(0));
    }

    private static int f(int i11) {
        switch (i11) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int g(int i11) {
        switch (i11) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i11) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i11) {
                            case 30:
                                return 256;
                            case TEMPLATE_HTML_SIZE_VALUE:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i11) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i11) {
                                            case 50:
                                                return 16384;
                                            case AD_REWARD_USER_VALUE:
                                                return 32768;
                                            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int h(int i11) {
        if (i11 == 1 || i11 == 2) {
            return 25344;
        }
        switch (i11) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    private static int i(int i11) {
        if (i11 == 66) {
            return 1;
        }
        if (i11 == 77) {
            return 2;
        }
        if (i11 == 88) {
            return 4;
        }
        if (i11 == 100) {
            return 8;
        }
        if (i11 == 110) {
            return 16;
        }
        if (i11 != 122) {
            return i11 != 244 ? -1 : 64;
        }
        return 32;
    }

    private static Integer j(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "01":
                return 1;
            case "02":
                return 2;
            case "03":
                return 4;
            case "04":
                return 8;
            case "05":
                return 16;
            case "06":
                return 32;
            case "07":
                return 64;
            case "08":
                return 128;
            case "09":
                return 256;
            case "10":
                return 512;
            case "11":
                return 1024;
            case "12":
                return 2048;
            case "13":
                return 4096;
            default:
                return null;
        }
    }

    private static Integer k(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "00":
                return 1;
            case "01":
                return 2;
            case "02":
                return 4;
            case "03":
                return 8;
            case "04":
                return 16;
            case "05":
                return 32;
            case "06":
                return 64;
            case "07":
                return 128;
            case "08":
                return 256;
            case "09":
                return 512;
            default:
                return null;
        }
    }

    private static Pair l(String str, String[] strArr) {
        int iO;
        if (strArr.length != 3) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if (MimeTypes.AUDIO_AAC.equals(w.h(Integer.parseInt(strArr[1], 16))) && (iO = O(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair(Integer.valueOf(iO), 0);
            }
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    public static String m(o1 o1Var) {
        Pair pairQ;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(o1Var.f25496l)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if (!"video/dolby-vision".equals(o1Var.f25496l) || (pairQ = q(o1Var)) == null) {
            return null;
        }
        int iIntValue = ((Integer) pairQ.first).intValue();
        if (iIntValue == 16 || iIntValue == 256) {
            return MimeTypes.VIDEO_H265;
        }
        if (iIntValue == 512) {
            return MimeTypes.VIDEO_H264;
        }
        return null;
    }

    private static Pair n(String str, String[] strArr, com.google.android.exoplayer2.video.c cVar) {
        int i11;
        if (strArr.length < 4) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i12 = 1;
        try {
            int i13 = Integer.parseInt(strArr[1]);
            int i14 = Integer.parseInt(strArr[2].substring(0, 2));
            int i15 = Integer.parseInt(strArr[3]);
            if (i13 != 0) {
                com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown AV1 profile: " + i13);
                return null;
            }
            if (i15 != 8 && i15 != 10) {
                com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown AV1 bit depth: " + i15);
                return null;
            }
            if (i15 != 8) {
                i12 = (cVar == null || !(cVar.f27829d != null || (i11 = cVar.f27828c) == 7 || i11 == 6)) ? 2 : 4096;
            }
            int iF = f(i14);
            if (iF != -1) {
                return new Pair(Integer.valueOf(i12), Integer.valueOf(iF));
            }
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown AV1 level: " + i14);
            return null;
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    private static Pair o(String str, String[] strArr) {
        int i11;
        int i12;
        if (strArr.length < 2) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i12 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i11 = Integer.parseInt(strArr[1].substring(4), 16);
            } else {
                if (strArr.length < 3) {
                    com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                    return null;
                }
                int i13 = Integer.parseInt(strArr[1]);
                i11 = Integer.parseInt(strArr[2]);
                i12 = i13;
            }
            int i14 = i(i12);
            if (i14 == -1) {
                com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown AVC profile: " + i12);
                return null;
            }
            int iG = g(i11);
            if (iG != -1) {
                return new Pair(Integer.valueOf(i14), Integer.valueOf(iG));
            }
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown AVC level: " + i11);
            return null;
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    private static String p(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals(MimeTypes.AUDIO_ALAC) && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals(MimeTypes.AUDIO_FLAC) && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals(MimeTypes.AUDIO_AC3) && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    public static Pair q(o1 o1Var) {
        byte b11 = 0;
        String str = o1Var.f25493i;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if ("video/dolby-vision".equals(o1Var.f25496l)) {
            return w(o1Var.f25493i, strArrSplit);
        }
        String str2 = strArrSplit[0];
        str2.hashCode();
        switch (str2.hashCode()) {
            case 3004662:
                if (!str2.equals("av01")) {
                    b11 = -1;
                }
                break;
            case 3006243:
                b11 = !str2.equals("avc1") ? (byte) -1 : (byte) 1;
                break;
            case 3006244:
                b11 = !str2.equals("avc2") ? (byte) -1 : (byte) 2;
                break;
            case 3199032:
                b11 = !str2.equals("hev1") ? (byte) -1 : (byte) 3;
                break;
            case 3214780:
                b11 = !str2.equals("hvc1") ? (byte) -1 : (byte) 4;
                break;
            case 3356560:
                b11 = !str2.equals("mp4a") ? (byte) -1 : (byte) 5;
                break;
            case 3624515:
                b11 = !str2.equals("vp09") ? (byte) -1 : (byte) 6;
                break;
            default:
                b11 = -1;
                break;
        }
        switch (b11) {
            case 0:
                return n(o1Var.f25493i, strArrSplit, o1Var.f25508x);
            case 1:
            case 2:
                return o(o1Var.f25493i, strArrSplit);
            case 3:
            case 4:
                return x(o1Var.f25493i, strArrSplit);
            case 5:
                return l(o1Var.f25493i, strArrSplit);
            case 6:
                return y(o1Var.f25493i, strArrSplit);
            default:
                return null;
        }
    }

    public static m r(String str, boolean z10, boolean z11) {
        List listS = s(str, z10, z11);
        if (listS.isEmpty()) {
            return null;
        }
        return (m) listS.get(0);
    }

    public static synchronized List s(String str, boolean z10, boolean z11) {
        try {
            b bVar = new b(str, z10, z11);
            HashMap map = f25330b;
            List list = (List) map.get(bVar);
            if (list != null) {
                return list;
            }
            int i11 = p0.f27626a;
            ArrayList arrayListT = t(bVar, i11 >= 21 ? new e(z10, z11) : new d());
            if (z10 && arrayListT.isEmpty() && 21 <= i11 && i11 <= 23) {
                arrayListT = t(bVar, new d());
                if (!arrayListT.isEmpty()) {
                    com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((m) arrayListT.get(0)).f25398a);
                }
            }
            e(str, arrayListT);
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) arrayListT);
            map.put(bVar, immutableListCopyOf);
            return immutableListCopyOf;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0105 A[Catch: Exception -> 0x012e, TRY_ENTER, TryCatch #1 {Exception -> 0x012e, blocks: (B:3:0x0008, B:5:0x001b, B:61:0x0124, B:8:0x002d, B:11:0x0038, B:55:0x00fd, B:58:0x0105, B:60:0x010b, B:64:0x0130, B:65:0x0153), top: B:71:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    /* JADX WARN: Code duplicated, block: B:83:0x0130 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private static ArrayList t(b bVar, c cVar) throws DecoderQueryException {
        String strP;
        String str;
        int i11;
        boolean z10;
        int i12;
        b bVar2 = bVar;
        try {
            ArrayList arrayList = new ArrayList();
            String str2 = bVar2.f25332a;
            int codecCount = cVar.getCodecCount();
            boolean zSecureDecodersExplicit = cVar.secureDecodersExplicit();
            int i13 = 0;
            while (i13 < codecCount) {
                MediaCodecInfo codecInfoAt = cVar.getCodecInfoAt(i13);
                if (A(codecInfoAt)) {
                    i11 = i13;
                    z10 = zSecureDecodersExplicit;
                    i12 = codecCount;
                } else {
                    String name = codecInfoAt.getName();
                    if (C(codecInfoAt, name, zSecureDecodersExplicit, str2) && (strP = p(codecInfoAt, name, str2)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(strP);
                            boolean zA = cVar.a("tunneled-playback", strP, capabilitiesForType);
                            boolean zB = cVar.b("tunneled-playback", strP, capabilitiesForType);
                            boolean z11 = bVar2.f25334c;
                            if ((z11 || !zB) && (!z11 || zA)) {
                                boolean zA2 = cVar.a("secure-playback", strP, capabilitiesForType);
                                boolean zB2 = cVar.b("secure-playback", strP, capabilitiesForType);
                                boolean z12 = bVar2.f25333b;
                                if ((z12 || !zB2) && (!z12 || zA2)) {
                                    boolean zD = D(codecInfoAt, str2);
                                    boolean zF = F(codecInfoAt, str2);
                                    boolean zH = H(codecInfoAt);
                                    if (zSecureDecodersExplicit && bVar2.f25333b == zA2) {
                                        i11 = i13;
                                        z10 = zSecureDecodersExplicit;
                                        i12 = codecCount;
                                        arrayList.add(m.C(name, str2, strP, capabilitiesForType, zD, zF, zH, false, false));
                                    } else {
                                        if (!zSecureDecodersExplicit) {
                                            try {
                                                if (!bVar2.f25333b) {
                                                    i11 = i13;
                                                    z10 = zSecureDecodersExplicit;
                                                    i12 = codecCount;
                                                    try {
                                                        arrayList.add(m.C(name, str2, strP, capabilitiesForType, zD, zF, zH, false, false));
                                                    } catch (Exception e11) {
                                                        e = e11;
                                                        str = name;
                                                        if (p0.f27626a <= 23) {
                                                        }
                                                        com.google.android.exoplayer2.util.s.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strP + ")");
                                                        throw e;
                                                    }
                                                }
                                            } catch (Exception e12) {
                                                e = e12;
                                                i11 = i13;
                                                z10 = zSecureDecodersExplicit;
                                                i12 = codecCount;
                                                str = name;
                                                if (p0.f27626a <= 23 || arrayList.isEmpty()) {
                                                    com.google.android.exoplayer2.util.s.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strP + ")");
                                                    throw e;
                                                }
                                                com.google.android.exoplayer2.util.s.c("MediaCodecUtil", "Skipping codec " + str + " (failed to query capabilities)");
                                                i13 = i11 + 1;
                                                bVar2 = bVar;
                                                codecCount = i12;
                                                zSecureDecodersExplicit = z10;
                                            }
                                        }
                                        strP = strP;
                                        i11 = i13;
                                        z10 = zSecureDecodersExplicit;
                                        i12 = codecCount;
                                        if (!z10 && zA2) {
                                            StringBuilder sb2 = new StringBuilder();
                                            try {
                                                sb2.append(name);
                                                sb2.append(".secure");
                                                str = name;
                                                try {
                                                    arrayList.add(m.C(sb2.toString(), str2, strP, capabilitiesForType, zD, zF, zH, false, true));
                                                    return arrayList;
                                                } catch (Exception e13) {
                                                    e = e13;
                                                    if (p0.f27626a <= 23) {
                                                    }
                                                    com.google.android.exoplayer2.util.s.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strP + ")");
                                                    throw e;
                                                }
                                            } catch (Exception e14) {
                                                e = e14;
                                                str = name;
                                            }
                                        }
                                    }
                                } else {
                                    i11 = i13;
                                    z10 = zSecureDecodersExplicit;
                                    i12 = codecCount;
                                }
                            } else {
                                i11 = i13;
                                z10 = zSecureDecodersExplicit;
                                i12 = codecCount;
                            }
                        } catch (Exception e15) {
                            e = e15;
                            strP = strP;
                            str = name;
                            i11 = i13;
                            z10 = zSecureDecodersExplicit;
                            i12 = codecCount;
                        }
                    } else {
                        i11 = i13;
                        z10 = zSecureDecodersExplicit;
                        i12 = codecCount;
                    }
                }
                i13 = i11 + 1;
                bVar2 = bVar;
                codecCount = i12;
                zSecureDecodersExplicit = z10;
            }
            return arrayList;
        } catch (Exception e16) {
            throw new DecoderQueryException(e16);
        }
    }

    public static List u(List list, final o1 o1Var) {
        ArrayList arrayList = new ArrayList(list);
        P(arrayList, new f() { // from class: com.google.android.exoplayer2.mediacodec.r
            @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f
            public final int a(Object obj) {
                return MediaCodecUtil.L(o1Var, (m) obj);
            }
        });
        return arrayList;
    }

    public static m v() {
        return r(MimeTypes.AUDIO_RAW, false, false);
    }

    private static Pair w(String str, String[] strArr) {
        if (strArr.length < 3) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = f25329a.matcher(strArr[1]);
        if (!matcher.matches()) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        Integer numK = k(strGroup);
        if (numK == null) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown Dolby Vision profile string: " + strGroup);
            return null;
        }
        String str2 = strArr[2];
        Integer numJ = j(str2);
        if (numJ != null) {
            return new Pair(numK, numJ);
        }
        com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown Dolby Vision level string: " + str2);
        return null;
    }

    private static Pair x(String str, String[] strArr) {
        if (strArr.length < 4) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i11 = 1;
        Matcher matcher = f25329a.matcher(strArr[1]);
        if (!matcher.matches()) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        if (!"1".equals(strGroup)) {
            if (!"2".equals(strGroup)) {
                com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown HEVC profile string: " + strGroup);
                return null;
            }
            i11 = 2;
        }
        String str2 = strArr[3];
        Integer numZ = z(str2);
        if (numZ != null) {
            return new Pair(Integer.valueOf(i11), numZ);
        }
        com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown HEVC level string: " + str2);
        return null;
    }

    private static Pair y(String str, String[] strArr) {
        if (strArr.length < 3) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int i11 = Integer.parseInt(strArr[1]);
            int i12 = Integer.parseInt(strArr[2]);
            int iR = R(i11);
            if (iR == -1) {
                com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown VP9 profile: " + i11);
                return null;
            }
            int iQ = Q(i12);
            if (iQ != -1) {
                return new Pair(Integer.valueOf(iR), Integer.valueOf(iQ));
            }
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Unknown VP9 level: " + i12);
            return null;
        } catch (NumberFormatException unused) {
            com.google.android.exoplayer2.util.s.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    private static Integer z(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "H30":
                return 2;
            case "H60":
                return 8;
            case "H63":
                return 32;
            case "H90":
                return 128;
            case "H93":
                return 512;
            case "L30":
                return 1;
            case "L60":
                return 4;
            case "L63":
                return 16;
            case "L90":
                return 64;
            case "L93":
                return 256;
            case "H120":
                return 2048;
            case "H123":
                return 8192;
            case "H150":
                return 32768;
            case "H153":
                return 131072;
            case "H156":
                return 524288;
            case "H180":
                return 2097152;
            case "H183":
                return 8388608;
            case "H186":
                return Integer.valueOf(ASTNode.PCTX_STORED);
            case "L120":
                return 1024;
            case "L123":
                return 4096;
            case "L150":
                return 16384;
            case "L153":
                return 65536;
            case "L156":
                return 262144;
            case "L180":
                return 1048576;
            case "L183":
                return 4194304;
            case "L186":
                return 16777216;
            default:
                return null;
        }
    }
}
