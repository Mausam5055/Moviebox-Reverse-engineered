package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ArrayList f27660a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f27661b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27662a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f27663b;

        public a(int i11, int i12) {
            this.f27662a = i11;
            this.f27663b = i12;
        }

        public int a() {
            int i11 = this.f27663b;
            if (i11 == 2) {
                return 10;
            }
            if (i11 == 5) {
                return 11;
            }
            if (i11 == 29) {
                return 12;
            }
            if (i11 == 42) {
                return 16;
            }
            if (i11 != 22) {
                return i11 != 23 ? 0 : 15;
            }
            return 1073741824;
        }
    }

    public static boolean a(String str, String str2) {
        a aVarI;
        if (str == null) {
            return false;
        }
        switch (str) {
            case "audio/eac3-joc":
            case "audio/mpeg-L1":
            case "audio/mpeg-L2":
            case "audio/ac3":
            case "audio/raw":
            case "audio/eac3":
            case "audio/flac":
            case "audio/mpeg":
            case "audio/g711-alaw":
            case "audio/g711-mlaw":
                return true;
            case "audio/mp4a-latm":
                if (str2 == null || (aVarI = i(str2)) == null) {
                    return false;
                }
                int iA = aVarI.a();
                return (iA == 0 || iA == 16) ? false : true;
            default:
                return false;
        }
    }

    public static boolean b(String str, String str2) {
        return d(str, str2) != null;
    }

    public static String c(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : p0.U0(str)) {
            String strG = g(str2);
            if (strG != null && p(strG)) {
                return strG;
            }
        }
        return null;
    }

    public static String d(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        String[] strArrU0 = p0.U0(str);
        StringBuilder sb2 = new StringBuilder();
        for (String str3 : strArrU0) {
            if (str2.equals(g(str3))) {
                if (sb2.length() > 0) {
                    sb2.append(",");
                }
                sb2.append(str3);
            }
        }
        if (sb2.length() > 0) {
            return sb2.toString();
        }
        return null;
    }

    private static String e(String str) {
        ArrayList arrayList = f27660a;
        if (arrayList.size() <= 0) {
            return null;
        }
        android.support.v4.media.session.c.a(arrayList.get(0));
        throw null;
    }

    public static int f(String str, String str2) {
        a aVarI;
        str.hashCode();
        switch (str) {
            case "audio/eac3-joc":
                return 18;
            case "audio/vnd.dts":
                return 7;
            case "audio/mp4a-latm":
                if (str2 == null || (aVarI = i(str2)) == null) {
                    return 0;
                }
                return aVarI.a();
            case "audio/ac3":
                return 5;
            case "audio/ac4":
                return 17;
            case "audio/eac3":
                return 6;
            case "audio/mpeg":
                return 9;
            case "audio/vnd.dts.hd":
                return 8;
            case "audio/true-hd":
                return 14;
            default:
                return 0;
        }
    }

    public static String g(String str) {
        a aVarI;
        String strH = null;
        if (str == null) {
            return null;
        }
        String strE = com.google.common.base.a.e(str.trim());
        if (strE.startsWith("avc1") || strE.startsWith("avc3")) {
            return MimeTypes.VIDEO_H264;
        }
        if (strE.startsWith("hev1") || strE.startsWith("hvc1")) {
            return MimeTypes.VIDEO_H265;
        }
        if (strE.startsWith("dvav") || strE.startsWith("dva1") || strE.startsWith("dvhe") || strE.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (strE.startsWith("av01")) {
            return "video/av01";
        }
        if (strE.startsWith("vp9") || strE.startsWith("vp09")) {
            return MimeTypes.VIDEO_VP9;
        }
        if (strE.startsWith("vp8") || strE.startsWith("vp08")) {
            return MimeTypes.VIDEO_VP8;
        }
        if (strE.startsWith("mp4a")) {
            if (strE.startsWith("mp4a.") && (aVarI = i(strE)) != null) {
                strH = h(aVarI.f27662a);
            }
            return strH == null ? MimeTypes.AUDIO_AAC : strH;
        }
        if (strE.startsWith("mha1")) {
            return "audio/mha1";
        }
        if (strE.startsWith("mhm1")) {
            return "audio/mhm1";
        }
        if (strE.startsWith("ac-3") || strE.startsWith("dac3")) {
            return MimeTypes.AUDIO_AC3;
        }
        if (strE.startsWith("ec-3") || strE.startsWith("dec3")) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if (strE.startsWith("ec+3")) {
            return MimeTypes.AUDIO_E_AC3_JOC;
        }
        if (strE.startsWith("ac-4") || strE.startsWith("dac4")) {
            return "audio/ac4";
        }
        if (strE.startsWith("dtsc")) {
            return MimeTypes.AUDIO_DTS;
        }
        if (strE.startsWith("dtse")) {
            return MimeTypes.AUDIO_DTS_EXPRESS;
        }
        if (strE.startsWith("dtsh") || strE.startsWith("dtsl")) {
            return MimeTypes.AUDIO_DTS_HD;
        }
        if (strE.startsWith("dtsx")) {
            return "audio/vnd.dts.uhd;profile=p2";
        }
        if (strE.startsWith("opus")) {
            return MimeTypes.AUDIO_OPUS;
        }
        if (strE.startsWith("vorbis")) {
            return MimeTypes.AUDIO_VORBIS;
        }
        if (strE.startsWith("flac")) {
            return MimeTypes.AUDIO_FLAC;
        }
        if (strE.startsWith("stpp")) {
            return MimeTypes.APPLICATION_TTML;
        }
        if (strE.startsWith("wvtt")) {
            return MimeTypes.TEXT_VTT;
        }
        if (strE.contains("cea708")) {
            return MimeTypes.APPLICATION_CEA708;
        }
        return (strE.contains("eia608") || strE.contains("cea608")) ? MimeTypes.APPLICATION_CEA608 : e(strE);
    }

    public static String h(int i11) {
        if (i11 == 32) {
            return MimeTypes.VIDEO_MP4V;
        }
        if (i11 == 33) {
            return MimeTypes.VIDEO_H264;
        }
        if (i11 == 35) {
            return MimeTypes.VIDEO_H265;
        }
        if (i11 == 64) {
            return MimeTypes.AUDIO_AAC;
        }
        if (i11 == 163) {
            return MimeTypes.VIDEO_VC1;
        }
        if (i11 == 177) {
            return MimeTypes.VIDEO_VP9;
        }
        if (i11 == 165) {
            return MimeTypes.AUDIO_AC3;
        }
        if (i11 == 166) {
            return MimeTypes.AUDIO_E_AC3;
        }
        switch (i11) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
                return MimeTypes.VIDEO_MPEG2;
            case 102:
            case 103:
            case 104:
                return MimeTypes.AUDIO_AAC;
            case 105:
            case 107:
                return MimeTypes.AUDIO_MPEG;
            case 106:
                return MimeTypes.VIDEO_MPEG;
            default:
                switch (i11) {
                    case 169:
                    case 172:
                        return MimeTypes.AUDIO_DTS;
                    case 170:
                    case 171:
                        return MimeTypes.AUDIO_DTS_HD;
                    case 173:
                        return MimeTypes.AUDIO_OPUS;
                    case 174:
                        return "audio/ac4";
                    default:
                        return null;
                }
        }
    }

    static a i(String str) {
        Matcher matcher = f27661b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
        String strGroup = matcher.group(2);
        try {
            return new a(Integer.parseInt(str2, 16), strGroup != null ? Integer.parseInt(strGroup) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static String j(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : p0.U0(str)) {
            String strG = g(str2);
            if (strG != null && s(strG)) {
                return strG;
            }
        }
        return null;
    }

    private static String k(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    public static int l(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (p(str)) {
            return 1;
        }
        if (t(str)) {
            return 2;
        }
        if (s(str)) {
            return 3;
        }
        if (q(str)) {
            return 4;
        }
        if (MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str)) {
            return 5;
        }
        if (MimeTypes.APPLICATION_CAMERA_MOTION.equals(str)) {
            return 6;
        }
        return m(str);
    }

    private static int m(String str) {
        ArrayList arrayList = f27660a;
        if (arrayList.size() <= 0) {
            return -1;
        }
        android.support.v4.media.session.c.a(arrayList.get(0));
        throw null;
    }

    public static int n(String str) {
        return l(g(str));
    }

    public static String o(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : p0.U0(str)) {
            String strG = g(str2);
            if (strG != null && t(strG)) {
                return strG;
            }
        }
        return null;
    }

    public static boolean p(String str) {
        return MimeTypes.BASE_TYPE_AUDIO.equals(k(str));
    }

    public static boolean q(String str) {
        return "image".equals(k(str));
    }

    public static boolean r(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM) || str.startsWith(MimeTypes.APPLICATION_WEBM) || str.startsWith("video/x-matroska") || str.startsWith("audio/x-matroska") || str.startsWith("application/x-matroska");
    }

    public static boolean s(String str) {
        return MimeTypes.BASE_TYPE_TEXT.equals(k(str)) || MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str) || MimeTypes.APPLICATION_MP4CEA608.equals(str) || MimeTypes.APPLICATION_SUBRIP.equals(str) || MimeTypes.APPLICATION_TTML.equals(str) || MimeTypes.APPLICATION_TX3G.equals(str) || MimeTypes.APPLICATION_MP4VTT.equals(str) || MimeTypes.APPLICATION_RAWCC.equals(str) || MimeTypes.APPLICATION_VOBSUB.equals(str) || MimeTypes.APPLICATION_PGS.equals(str) || MimeTypes.APPLICATION_DVBSUBS.equals(str);
    }

    public static boolean t(String str) {
        return "video".equals(k(str));
    }

    public static String u(String str) {
        str.hashCode();
        switch (str) {
            case "audio/x-flac":
                return MimeTypes.AUDIO_FLAC;
            case "audio/x-wav":
                return "audio/wav";
            case "audio/mp3":
                return MimeTypes.AUDIO_MPEG;
            default:
                return str;
        }
    }
}
