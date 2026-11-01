package l2;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f68599a = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f68600b = {RecorderConstants.RECORD_SAMPLE_RATE_44100, 48000, 32000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f68601c = {32000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, 288000, RecorderConstants.RECORD_ENCODING_BITRATE_320000, 352000, 384000, 416000, 448000};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f68602d = {32000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 144000, 160000, 176000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f68603e = {32000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, RecorderConstants.RECORD_ENCODING_BITRATE_320000, 384000};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f68604f = {32000, 40000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, RecorderConstants.RECORD_ENCODING_BITRATE_320000};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f68605g = {8000, 16000, 24000, 32000, 40000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 144000, 160000};

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f68606a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f68607b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f68608c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f68609d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f68610e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f68611f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f68612g;

        public a() {
        }

        public a(a aVar) {
            this.f68606a = aVar.f68606a;
            this.f68607b = aVar.f68607b;
            this.f68608c = aVar.f68608c;
            this.f68609d = aVar.f68609d;
            this.f68610e = aVar.f68610e;
            this.f68611f = aVar.f68611f;
            this.f68612g = aVar.f68612g;
        }

        public boolean a(int i11) {
            int i12;
            int i13;
            int i14;
            int i15;
            if (!i0.l(i11) || (i12 = (i11 >>> 19) & 3) == 1 || (i13 = (i11 >>> 17) & 3) == 0 || (i14 = (i11 >>> 12) & 15) == 0 || i14 == 15 || (i15 = (i11 >>> 10) & 3) == 3) {
                return false;
            }
            this.f68606a = i12;
            this.f68607b = i0.f68599a[3 - i13];
            int i16 = i0.f68600b[i15];
            this.f68609d = i16;
            if (i12 == 2) {
                this.f68609d = i16 / 2;
            } else if (i12 == 0) {
                this.f68609d = i16 / 4;
            }
            int i17 = (i11 >>> 9) & 1;
            this.f68612g = i0.k(i12, i13);
            if (i13 == 3) {
                int i18 = i12 == 3 ? i0.f68601c[i14 - 1] : i0.f68602d[i14 - 1];
                this.f68611f = i18;
                this.f68608c = (((i18 * 12) / this.f68609d) + i17) * 4;
            } else {
                if (i12 == 3) {
                    int i19 = i13 == 2 ? i0.f68603e[i14 - 1] : i0.f68604f[i14 - 1];
                    this.f68611f = i19;
                    this.f68608c = ((i19 * 144) / this.f68609d) + i17;
                } else {
                    int i20 = i0.f68605g[i14 - 1];
                    this.f68611f = i20;
                    this.f68608c = (((i13 == 1 ? 72 : 144) * i20) / this.f68609d) + i17;
                }
            }
            this.f68610e = ((i11 >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }
    }

    public static int j(int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        if (!l(i11) || (i12 = (i11 >>> 19) & 3) == 1 || (i13 = (i11 >>> 17) & 3) == 0 || (i14 = (i11 >>> 12) & 15) == 0 || i14 == 15 || (i15 = (i11 >>> 10) & 3) == 3) {
            return -1;
        }
        int i17 = f68600b[i15];
        if (i12 == 2) {
            i17 /= 2;
        } else if (i12 == 0) {
            i17 /= 4;
        }
        int i18 = (i11 >>> 9) & 1;
        if (i13 == 3) {
            return ((((i12 == 3 ? f68601c[i14 - 1] : f68602d[i14 - 1]) * 12) / i17) + i18) * 4;
        }
        if (i12 == 3) {
            i16 = i13 == 2 ? f68603e[i14 - 1] : f68604f[i14 - 1];
        } else {
            i16 = f68605g[i14 - 1];
        }
        if (i12 == 3) {
            return ((i16 * 144) / i17) + i18;
        }
        return (((i13 == 1 ? 72 : 144) * i16) / i17) + i18;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(int i11, int i12) {
        if (i12 == 1) {
            return i11 == 3 ? 1152 : 576;
        }
        if (i12 == 2) {
            return 1152;
        }
        if (i12 == 3) {
            return 384;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(int i11) {
        return (i11 & (-2097152)) == -2097152;
    }

    public static int m(int i11) {
        int i12;
        int i13;
        if (!l(i11) || (i12 = (i11 >>> 19) & 3) == 1 || (i13 = (i11 >>> 17) & 3) == 0) {
            return -1;
        }
        int i14 = (i11 >>> 12) & 15;
        int i15 = (i11 >>> 10) & 3;
        if (i14 == 0 || i14 == 15 || i15 == 3) {
            return -1;
        }
        return k(i12, i13);
    }
}
