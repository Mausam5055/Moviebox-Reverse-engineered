package androidx.media3.common.util;

import android.util.Pair;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f10392a = {0, 0, 0, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f10393b = {"", "A", "B", "C"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f10394c = Pattern.compile("^\\D?(\\d+)$");

    private static int a(int i11) {
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

    private static int b(int i11) {
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

    private static int c(int i11) {
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

    public static String d(int i11, int i12, int i13) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
    }

    public static List e(boolean z10) {
        return Collections.singletonList(z10 ? new byte[]{1} : new byte[]{0});
    }

    public static String f(int i11, boolean z10, int i12, int i13, int[] iArr, int i14) {
        StringBuilder sb2 = new StringBuilder(a1.G("hvc1.%s%d.%X.%c%d", f10393b[i11], Integer.valueOf(i12), Integer.valueOf(i13), Character.valueOf(z10 ? 'H' : 'L'), Integer.valueOf(i14)));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i15 = 0; i15 < length; i15++) {
            sb2.append(String.format(".%02X", Integer.valueOf(iArr[i15])));
        }
        return sb2.toString();
    }

    public static byte[] g(byte[] bArr, int i11, int i12) {
        byte[] bArr2 = f10392a;
        byte[] bArr3 = new byte[bArr2.length + i12];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i11, bArr3, bArr2.length, i12);
        return bArr3;
    }

    public static ImmutableList h(byte b11, byte b12, byte b13, byte b14) {
        return ImmutableList.of(new byte[]{1, 1, b11, 2, 1, b12, 3, 1, b13, 4, 1, b14});
    }

    private static Integer i(String str) {
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

    private static Integer j(String str) {
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
            case "10":
                return 1024;
            default:
                return null;
        }
    }

    private static Pair k(String str, String[] strArr) {
        int iT;
        if (strArr.length != 3) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if (MimeTypes.AUDIO_AAC.equals(androidx.media3.common.y.h(Integer.parseInt(strArr[1], 16))) && (iT = t(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair(Integer.valueOf(iT), 0);
            }
        } catch (NumberFormatException unused) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    private static Pair l(String str, String[] strArr, androidx.media3.common.i iVar) {
        int i11;
        if (strArr.length < 4) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i12 = 1;
        try {
            int i13 = Integer.parseInt(strArr[1]);
            int i14 = Integer.parseInt(strArr[2].substring(0, 2));
            int i15 = Integer.parseInt(strArr[3]);
            if (i13 != 0) {
                u.h("CodecSpecificDataUtil", "Unknown AV1 profile: " + i13);
                return null;
            }
            if (i15 != 8 && i15 != 10) {
                u.h("CodecSpecificDataUtil", "Unknown AV1 bit depth: " + i15);
                return null;
            }
            if (i15 != 8) {
                i12 = (iVar == null || !(iVar.f10074d != null || (i11 = iVar.f10073c) == 7 || i11 == 6)) ? 2 : 4096;
            }
            int iA = a(i14);
            if (iA != -1) {
                return new Pair(Integer.valueOf(i12), Integer.valueOf(iA));
            }
            u.h("CodecSpecificDataUtil", "Unknown AV1 level: " + i14);
            return null;
        } catch (NumberFormatException unused) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    private static Pair m(String str, String[] strArr) {
        int i11;
        int i12;
        if (strArr.length < 2) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i12 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i11 = Integer.parseInt(strArr[1].substring(4), 16);
            } else {
                if (strArr.length < 3) {
                    u.h("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: " + str);
                    return null;
                }
                int i13 = Integer.parseInt(strArr[1]);
                i11 = Integer.parseInt(strArr[2]);
                i12 = i13;
            }
            int iC = c(i12);
            if (iC == -1) {
                u.h("CodecSpecificDataUtil", "Unknown AVC profile: " + i12);
                return null;
            }
            int iB = b(i11);
            if (iB != -1) {
                return new Pair(Integer.valueOf(iC), Integer.valueOf(iB));
            }
            u.h("CodecSpecificDataUtil", "Unknown AVC level: " + i11);
            return null;
        } catch (NumberFormatException unused) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    public static Pair n(androidx.media3.common.r rVar) {
        byte b11 = 0;
        String str = rVar.f10157k;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if ("video/dolby-vision".equals(rVar.f10161o)) {
            return o(rVar.f10157k, strArrSplit);
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
            case 3475740:
                b11 = !str2.equals("s263") ? (byte) -1 : (byte) 6;
                break;
            case 3624515:
                b11 = !str2.equals("vp09") ? (byte) -1 : (byte) 7;
                break;
            default:
                b11 = -1;
                break;
        }
        switch (b11) {
            case 0:
                return l(rVar.f10157k, strArrSplit, rVar.C);
            case 1:
            case 2:
                return m(rVar.f10157k, strArrSplit);
            case 3:
            case 4:
                return q(rVar.f10157k, strArrSplit, rVar.C);
            case 5:
                return k(rVar.f10157k, strArrSplit);
            case 6:
                return p(rVar.f10157k, strArrSplit);
            case 7:
                return r(rVar.f10157k, strArrSplit);
            default:
                return null;
        }
    }

    private static Pair o(String str, String[] strArr) {
        if (strArr.length < 3) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = f10394c.matcher(strArr[1]);
        if (!matcher.matches()) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        Integer numJ = j(strGroup);
        if (numJ == null) {
            u.h("CodecSpecificDataUtil", "Unknown Dolby Vision profile string: " + strGroup);
            return null;
        }
        String str2 = strArr[2];
        Integer numI = i(str2);
        if (numI != null) {
            return new Pair(numJ, numI);
        }
        u.h("CodecSpecificDataUtil", "Unknown Dolby Vision level string: " + str2);
        return null;
    }

    private static Pair p(String str, String[] strArr) {
        Pair pair = new Pair(1, 1);
        if (strArr.length < 3) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed H263 codec string: " + str);
            return pair;
        }
        try {
            return new Pair(Integer.valueOf(Integer.parseInt(strArr[1])), Integer.valueOf(Integer.parseInt(strArr[2])));
        } catch (NumberFormatException unused) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed H263 codec string: " + str);
            return pair;
        }
    }

    public static Pair q(String str, String[] strArr, androidx.media3.common.i iVar) {
        if (strArr.length < 4) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i11 = 1;
        Matcher matcher = f10394c.matcher(strArr[1]);
        if (!matcher.matches()) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        if (!"1".equals(strGroup)) {
            i11 = 6;
            if ("2".equals(strGroup)) {
                i11 = (iVar == null || iVar.f10073c != 6) ? 2 : 4096;
            } else if (!PrepareException.ERROR_NO_URL.equals(strGroup)) {
                u.h("CodecSpecificDataUtil", "Unknown HEVC profile string: " + strGroup);
                return null;
            }
        }
        String str2 = strArr[3];
        Integer numS = s(str2);
        if (numS != null) {
            return new Pair(Integer.valueOf(i11), numS);
        }
        u.h("CodecSpecificDataUtil", "Unknown HEVC level string: " + str2);
        return null;
    }

    private static Pair r(String str, String[] strArr) {
        if (strArr.length < 3) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int i11 = Integer.parseInt(strArr[1]);
            int i12 = Integer.parseInt(strArr[2]);
            int iX = x(i11);
            if (iX == -1) {
                u.h("CodecSpecificDataUtil", "Unknown VP9 profile: " + i11);
                return null;
            }
            int iW = w(i12);
            if (iW != -1) {
                return new Pair(Integer.valueOf(iX), Integer.valueOf(iW));
            }
            u.h("CodecSpecificDataUtil", "Unknown VP9 level: " + i12);
            return null;
        } catch (NumberFormatException unused) {
            u.h("CodecSpecificDataUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    private static Integer s(String str) {
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

    private static int t(int i11) {
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

    public static Pair u(byte[] bArr) {
        j0 j0Var = new j0(bArr);
        j0Var.W(9);
        int iH = j0Var.H();
        j0Var.W(20);
        return Pair.create(Integer.valueOf(j0Var.L()), Integer.valueOf(iH));
    }

    public static boolean v(List list) {
        return list.size() == 1 && ((byte[]) list.get(0)).length == 1 && ((byte[]) list.get(0))[0] == 1;
    }

    private static int w(int i11) {
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

    private static int x(int i11) {
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
}
