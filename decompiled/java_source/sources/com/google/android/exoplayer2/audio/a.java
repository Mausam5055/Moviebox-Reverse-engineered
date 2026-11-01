package com.google.android.exoplayer2.audio;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.ParserException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f24596a = {RecorderConstants.RECORD_ENCODING_BITRATE_96000, 88200, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 48000, RecorderConstants.RECORD_SAMPLE_RATE_44100, 32000, 24000, RecorderConstants.RECORD_SAMPLE_RATE_22050, 16000, 12000, RecorderConstants.RECORD_SAMPLE_RATE_11025, 8000, 7350};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f24597b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f24598a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f24599b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f24600c;

        private b(int i11, int i12, String str) {
            this.f24598a = i11;
            this.f24599b = i12;
            this.f24600c = str;
        }
    }

    public static byte[] a(int i11, int i12) {
        int i13 = 0;
        int i14 = -1;
        int i15 = 0;
        while (true) {
            int[] iArr = f24596a;
            if (i15 >= iArr.length) {
                break;
            }
            if (i11 == iArr[i15]) {
                i14 = i15;
            }
            i15++;
        }
        int i16 = -1;
        while (true) {
            int[] iArr2 = f24597b;
            if (i13 >= iArr2.length) {
                break;
            }
            if (i12 == iArr2[i13]) {
                i16 = i13;
            }
            i13++;
        }
        if (i11 != -1 && i16 != -1) {
            return b(2, i14, i16);
        }
        throw new IllegalArgumentException("Invalid sample rate or number of channels: " + i11 + ", " + i12);
    }

    public static byte[] b(int i11, int i12, int i13) {
        return new byte[]{(byte) (((i11 << 3) & 248) | ((i12 >> 1) & 7)), (byte) (((i12 << 7) & 128) | ((i13 << 3) & 120))};
    }

    private static int c(com.google.android.exoplayer2.util.c0 c0Var) {
        int iH = c0Var.h(5);
        return iH == 31 ? c0Var.h(6) + 32 : iH;
    }

    private static int d(com.google.android.exoplayer2.util.c0 c0Var) throws ParserException {
        int iH = c0Var.h(4);
        if (iH == 15) {
            return c0Var.h(24);
        }
        if (iH < 13) {
            return f24596a[iH];
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static b e(com.google.android.exoplayer2.util.c0 c0Var, boolean z10) throws ParserException {
        int iC = c(c0Var);
        int iD = d(c0Var);
        int iH = c0Var.h(4);
        String str = "mp4a.40." + iC;
        if (iC == 5 || iC == 29) {
            iD = d(c0Var);
            iC = c(c0Var);
            if (iC == 22) {
                iH = c0Var.h(4);
            }
        }
        if (z10) {
            if (iC != 1 && iC != 2 && iC != 3 && iC != 4 && iC != 6 && iC != 7 && iC != 17) {
                switch (iC) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported audio object type: " + iC);
                }
            }
            g(c0Var, iC, iH);
            switch (iC) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iH2 = c0Var.h(2);
                    if (iH2 == 2 || iH2 == 3) {
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported epConfig: " + iH2);
                    }
                    break;
            }
        }
        int i11 = f24597b[iH];
        if (i11 != -1) {
            return new b(iD, i11, str);
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static b f(byte[] bArr) {
        return e(new com.google.android.exoplayer2.util.c0(bArr), false);
    }

    private static void g(com.google.android.exoplayer2.util.c0 c0Var, int i11, int i12) {
        if (c0Var.g()) {
            com.google.android.exoplayer2.util.s.i("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (c0Var.g()) {
            c0Var.r(14);
        }
        boolean zG = c0Var.g();
        if (i12 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i11 == 6 || i11 == 20) {
            c0Var.r(3);
        }
        if (zG) {
            if (i11 == 22) {
                c0Var.r(16);
            }
            if (i11 == 17 || i11 == 19 || i11 == 20 || i11 == 23) {
                c0Var.r(3);
            }
            c0Var.r(1);
        }
    }
}
