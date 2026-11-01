package com.google.android.exoplayer2.audio;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f24614a = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f24615b = {RecorderConstants.RECORD_SAMPLE_RATE_44100, 48000, 32000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f24616c = {32000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, 288000, RecorderConstants.RECORD_ENCODING_BITRATE_320000, 352000, 384000, 416000, 448000};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f24617d = {32000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 144000, 160000, 176000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f24618e = {32000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, RecorderConstants.RECORD_ENCODING_BITRATE_320000, 384000};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f24619f = {32000, 40000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 160000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 224000, RecorderConstants.RECORD_ENCODING_BITRATE_256000, RecorderConstants.RECORD_ENCODING_BITRATE_320000};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f24620g = {8000, 16000, 24000, 32000, 40000, 48000, 56000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 80000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, 112000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, 144000, 160000};

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f24621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f24622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f24623c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f24624d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f24625e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f24626f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f24627g;

        public boolean a(int i11) {
            int i12;
            int i13;
            int i14;
            int i15;
            if (!b0.l(i11) || (i12 = (i11 >>> 19) & 3) == 1 || (i13 = (i11 >>> 17) & 3) == 0 || (i14 = (i11 >>> 12) & 15) == 0 || i14 == 15 || (i15 = (i11 >>> 10) & 3) == 3) {
                return false;
            }
            this.f24621a = i12;
            this.f24622b = b0.f24614a[3 - i13];
            int i16 = b0.f24615b[i15];
            this.f24624d = i16;
            if (i12 == 2) {
                this.f24624d = i16 / 2;
            } else if (i12 == 0) {
                this.f24624d = i16 / 4;
            }
            int i17 = (i11 >>> 9) & 1;
            this.f24627g = b0.k(i12, i13);
            if (i13 == 3) {
                int i18 = i12 == 3 ? b0.f24616c[i14 - 1] : b0.f24617d[i14 - 1];
                this.f24626f = i18;
                this.f24623c = (((i18 * 12) / this.f24624d) + i17) * 4;
            } else {
                if (i12 == 3) {
                    int i19 = i13 == 2 ? b0.f24618e[i14 - 1] : b0.f24619f[i14 - 1];
                    this.f24626f = i19;
                    this.f24623c = ((i19 * 144) / this.f24624d) + i17;
                } else {
                    int i20 = b0.f24620g[i14 - 1];
                    this.f24626f = i20;
                    this.f24623c = (((i13 == 1 ? 72 : 144) * i20) / this.f24624d) + i17;
                }
            }
            this.f24625e = ((i11 >> 6) & 3) == 3 ? 1 : 2;
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
        int i17 = f24615b[i15];
        if (i12 == 2) {
            i17 /= 2;
        } else if (i12 == 0) {
            i17 /= 4;
        }
        int i18 = (i11 >>> 9) & 1;
        if (i13 == 3) {
            return ((((i12 == 3 ? f24616c[i14 - 1] : f24617d[i14 - 1]) * 12) / i17) + i18) * 4;
        }
        if (i12 == 3) {
            i16 = i13 == 2 ? f24618e[i14 - 1] : f24619f[i14 - 1];
        } else {
            i16 = f24620g[i14 - 1];
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
