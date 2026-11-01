package l2;

import androidx.media3.common.ParserException;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f68481a = {RecorderConstants.RECORD_ENCODING_BITRATE_96000, 88200, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 48000, RecorderConstants.RECORD_SAMPLE_RATE_44100, 32000, 24000, RecorderConstants.RECORD_SAMPLE_RATE_22050, 16000, 12000, RecorderConstants.RECORD_SAMPLE_RATE_11025, 8000, 7350};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f68482b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f68483a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f68484b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f68485c;

        private b(int i11, int i12, String str) {
            this.f68483a = i11;
            this.f68484b = i12;
            this.f68485c = str;
        }
    }

    public static byte[] a(int i11, int i12, int i13) {
        return new byte[]{(byte) (((i11 << 3) & 248) | ((i12 >> 1) & 7)), (byte) (((i12 << 7) & 128) | ((i13 << 3) & 120))};
    }

    private static int b(androidx.media3.common.util.i0 i0Var) {
        int iH = i0Var.h(5);
        return iH == 31 ? i0Var.h(6) + 32 : iH;
    }

    private static int c(androidx.media3.common.util.i0 i0Var) throws ParserException {
        int iH = i0Var.h(4);
        if (iH == 15) {
            if (i0Var.b() >= 24) {
                return i0Var.h(24);
            }
            throw ParserException.createForMalformedContainer("AAC header insufficient data", null);
        }
        if (iH < 13) {
            return f68481a[iH];
        }
        throw ParserException.createForMalformedContainer("AAC header wrong Sampling Frequency Index", null);
    }

    public static b d(androidx.media3.common.util.i0 i0Var, boolean z10) throws ParserException {
        int iB = b(i0Var);
        int iC = c(i0Var);
        int iH = i0Var.h(4);
        String str = "mp4a.40." + iB;
        if (iB == 5 || iB == 29) {
            iC = c(i0Var);
            iB = b(i0Var);
            if (iB == 22) {
                iH = i0Var.h(4);
            }
        }
        if (z10) {
            if (iB != 1 && iB != 2 && iB != 3 && iB != 4 && iB != 6 && iB != 7 && iB != 17) {
                switch (iB) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported audio object type: " + iB);
                }
            }
            f(i0Var, iB, iH);
            switch (iB) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iH2 = i0Var.h(2);
                    if (iH2 == 2 || iH2 == 3) {
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported epConfig: " + iH2);
                    }
                    break;
            }
        }
        int i11 = f68482b[iH];
        if (i11 != -1) {
            return new b(iC, i11, str);
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static b e(byte[] bArr) {
        return d(new androidx.media3.common.util.i0(bArr), false);
    }

    private static void f(androidx.media3.common.util.i0 i0Var, int i11, int i12) {
        if (i0Var.g()) {
            androidx.media3.common.util.u.h("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (i0Var.g()) {
            i0Var.r(14);
        }
        boolean zG = i0Var.g();
        if (i12 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i11 == 6 || i11 == 20) {
            i0Var.r(3);
        }
        if (zG) {
            if (i11 == 22) {
                i0Var.r(16);
            }
            if (i11 == 17 || i11 == 19 || i11 == 20 || i11 == 23) {
                i0Var.r(3);
            }
            i0Var.r(1);
        }
    }
}
