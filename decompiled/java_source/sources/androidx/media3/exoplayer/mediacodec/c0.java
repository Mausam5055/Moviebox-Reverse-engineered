package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodecInfo;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
abstract class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Boolean f12192a;

    private static final class a {
        public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i11, int i12, double d11) {
            List supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
            if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty()) {
                return 0;
            }
            y.a();
            int iC = c(supportedPerformancePoints, x.a(i11, i12, (int) d11));
            if (iC == 1 && c0.f12192a == null) {
                Boolean unused = c0.f12192a = Boolean.valueOf(d());
                if (c0.f12192a.booleanValue()) {
                    return 0;
                }
            }
            return iC;
        }

        private static int b(boolean z10) {
            List supportedPerformancePoints;
            try {
                androidx.media3.common.r rVarN = new androidx.media3.common.r.b().u0(MimeTypes.VIDEO_H264).N();
                if (rVarN.f10161o != null) {
                    List listM = MediaCodecUtil.m(h0.f12211a, rVarN, z10, false);
                    for (int i11 = 0; i11 < listM.size(); i11++) {
                        if (((w) listM.get(i11)).f12258d != null && ((w) listM.get(i11)).f12258d.getVideoCapabilities() != null && (supportedPerformancePoints = ((w) listM.get(i11)).f12258d.getVideoCapabilities().getSupportedPerformancePoints()) != null && !supportedPerformancePoints.isEmpty()) {
                            y.a();
                            return c(supportedPerformancePoints, x.a(1280, 720, 60));
                        }
                    }
                }
            } catch (MediaCodecUtil.DecoderQueryException unused) {
            }
            return 0;
        }

        private static int c(List list, MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                if (a0.a(list.get(i11)).covers(performancePoint)) {
                    return 2;
                }
            }
            return 1;
        }

        private static boolean d() {
            if (a1.f10350a >= 35) {
                return false;
            }
            int iB = b(false);
            int iB2 = b(true);
            if (iB == 0) {
                return true;
            }
            if (iB2 == 0) {
                return iB != 2;
            }
            return (iB == 2 && iB2 == 2) ? false : true;
        }
    }

    public static int c(MediaCodecInfo.VideoCapabilities videoCapabilities, int i11, int i12, double d11) {
        if (a1.f10350a < 29) {
            return 0;
        }
        Boolean bool = f12192a;
        if (bool == null || !bool.booleanValue()) {
            return a.a(videoCapabilities, i11, i12, d11);
        }
        return 0;
    }
}
