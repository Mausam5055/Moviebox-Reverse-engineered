package l2;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f68662a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f68663b = {-1, 8000, 16000, 32000, -1, -1, RecorderConstants.RECORD_SAMPLE_RATE_11025, RecorderConstants.RECORD_SAMPLE_RATE_22050, RecorderConstants.RECORD_SAMPLE_RATE_44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f68664c = {64, 112, 128, PsExtractor.AUDIO_STREAM, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f68665d = {8000, 16000, 32000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, RecorderConstants.RECORD_SAMPLE_RATE_22050, RecorderConstants.RECORD_SAMPLE_RATE_44100, 88200, 176400, 352800, 12000, 24000, 48000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 384000};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f68666e = {5, 8, 10, 12};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f68667f = {6, 9, 12, 15};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f68668g = {2, 4, 6, 8};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f68669h = {9, 11, 13, 16};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f68670i = {5, 8, 10, 12};

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f68671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f68672b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f68673c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f68674d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f68675e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f68676f;

        private b(String str, int i11, int i12, int i13, long j11, int i14) {
            this.f68671a = str;
            this.f68673c = i11;
            this.f68672b = i12;
            this.f68674d = i13;
            this.f68675e = j11;
            this.f68676f = i14;
        }
    }

    private static void a(byte[] bArr, int i11) throws ParserException {
        int i12 = i11 - 2;
        if (((bArr[i11 - 1] & 255) | ((bArr[i12] << 8) & Settings.DEFAULT_INITIAL_WINDOW_SIZE)) != a1.v(bArr, 0, i12, Settings.DEFAULT_INITIAL_WINDOW_SIZE)) {
            throw ParserException.createForMalformedContainer("CRC check failed", null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0060  */
    /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
    public static int b(byte[] bArr) {
        int i11;
        byte b11;
        int i12;
        int i13;
        byte b12;
        boolean z10 = false;
        byte b13 = bArr[0];
        if (b13 != -2) {
            if (b13 == -1) {
                i13 = ((bArr[7] & 3) << 12) | ((bArr[6] & 255) << 4);
                b12 = bArr[9];
            } else if (b13 != 31) {
                i11 = ((bArr[5] & 3) << 12) | ((bArr[6] & 255) << 4);
                b11 = bArr[7];
            } else {
                i13 = ((bArr[6] & 3) << 12) | ((bArr[7] & 255) << 4);
                b12 = bArr[8];
            }
            i12 = (((b12 & 60) >> 2) | i13) + 1;
            z10 = true;
            if (z10) {
                return (i12 * 16) / 14;
            }
            return i12;
        }
        i11 = ((bArr[4] & 3) << 12) | ((bArr[7] & 255) << 4);
        b11 = bArr[6];
        i12 = (((b11 & 240) >> 4) | i11) + 1;
        if (z10) {
            return (i12 * 16) / 14;
        }
        return i12;
    }

    public static int c(int i11) {
        if (i11 == 2147385345 || i11 == -25230976 || i11 == 536864768 || i11 == -14745368) {
            return 1;
        }
        if (i11 == 1683496997 || i11 == 622876772) {
            return 2;
        }
        if (i11 == 1078008818 || i11 == -233094848) {
            return 3;
        }
        return (i11 == 1908687592 || i11 == -398277519) ? 4 : 0;
    }

    private static androidx.media3.common.util.i0 d(byte[] bArr) {
        byte b11 = bArr[0];
        if (b11 == 127 || b11 == 100 || b11 == 64 || b11 == 113) {
            return new androidx.media3.common.util.i0(bArr);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        if (e(bArrCopyOf)) {
            for (int i11 = 0; i11 < bArrCopyOf.length - 1; i11 += 2) {
                byte b12 = bArrCopyOf[i11];
                int i12 = i11 + 1;
                bArrCopyOf[i11] = bArrCopyOf[i12];
                bArrCopyOf[i12] = b12;
            }
        }
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0(bArrCopyOf);
        if (bArrCopyOf[0] == 31) {
            androidx.media3.common.util.i0 i0Var2 = new androidx.media3.common.util.i0(bArrCopyOf);
            while (i0Var2.b() >= 16) {
                i0Var2.r(2);
                i0Var.f(i0Var2.h(14), 14);
            }
        }
        i0Var.n(bArrCopyOf);
        return i0Var;
    }

    private static boolean e(byte[] bArr) {
        byte b11 = bArr[0];
        return b11 == -2 || b11 == -1 || b11 == 37 || b11 == -14 || b11 == -24;
    }

    public static int f(ByteBuffer byteBuffer) {
        int i11;
        byte b11;
        int i12;
        byte b12;
        if (byteBuffer.getInt(0) == -233094848 || byteBuffer.getInt(0) == -398277519) {
            return 1024;
        }
        if (byteBuffer.getInt(0) == 622876772) {
            return 4096;
        }
        int iPosition = byteBuffer.position();
        byte b13 = byteBuffer.get(iPosition);
        if (b13 != -2) {
            if (b13 == -1) {
                i11 = (byteBuffer.get(iPosition + 4) & 7) << 4;
                b12 = byteBuffer.get(iPosition + 7);
            } else if (b13 != 31) {
                i11 = (byteBuffer.get(iPosition + 4) & 1) << 6;
                b11 = byteBuffer.get(iPosition + 5);
            } else {
                i11 = (byteBuffer.get(iPosition + 5) & 7) << 4;
                b12 = byteBuffer.get(iPosition + 6);
            }
            i12 = b12 & 60;
            return (((i12 >> 2) | i11) + 1) * 32;
        }
        i11 = (byteBuffer.get(iPosition + 5) & 1) << 6;
        b11 = byteBuffer.get(iPosition + 4);
        i12 = b11 & 252;
        return (((i12 >> 2) | i11) + 1) * 32;
    }

    public static int g(byte[] bArr) {
        int i11;
        byte b11;
        int i12;
        byte b12;
        byte b13 = bArr[0];
        if (b13 != -2) {
            if (b13 == -1) {
                i11 = (bArr[4] & 7) << 4;
                b12 = bArr[7];
            } else if (b13 != 31) {
                i11 = (bArr[4] & 1) << 6;
                b11 = bArr[5];
            } else {
                i11 = (bArr[5] & 7) << 4;
                b12 = bArr[6];
            }
            i12 = b12 & 60;
            return (((i12 >> 2) | i11) + 1) * 32;
        }
        i11 = (bArr[5] & 1) << 6;
        b11 = bArr[4];
        i12 = b11 & 252;
        return (((i12 >> 2) | i11) + 1) * 32;
    }

    public static androidx.media3.common.r h(byte[] bArr, String str, String str2, int i11, String str3, DrmInitData drmInitData) {
        androidx.media3.common.util.i0 i0VarD = d(bArr);
        i0VarD.r(60);
        int i12 = f68662a[i0VarD.h(6)];
        int i13 = f68663b[i0VarD.h(4)];
        int iH = i0VarD.h(5);
        int[] iArr = f68664c;
        int i14 = iH >= iArr.length ? -1 : (iArr[iH] * 1000) / 2;
        i0VarD.r(10);
        return new androidx.media3.common.r.b().f0(str).U(str3).u0(MimeTypes.AUDIO_DTS).Q(i14).R(i12 + (i0VarD.h(2) > 0 ? 1 : 0)).v0(i13).Y(drmInitData).j0(str2).s0(i11).N();
    }

    public static b i(byte[] bArr) throws ParserException {
        int i11;
        int i12;
        int iH;
        int i13;
        int iH2;
        long jE1;
        int i14;
        androidx.media3.common.util.i0 i0VarD = d(bArr);
        i0VarD.r(40);
        int iH3 = i0VarD.h(2);
        if (i0VarD.g()) {
            i11 = 20;
            i12 = 12;
        } else {
            i11 = 16;
            i12 = 8;
        }
        i0VarD.r(i12);
        int iH4 = i0VarD.h(i11) + 1;
        boolean zG = i0VarD.g();
        int i15 = 0;
        if (zG) {
            iH = i0VarD.h(2);
            int iH5 = (i0VarD.h(3) + 1) * 512;
            if (i0VarD.g()) {
                i0VarD.r(36);
            }
            int iH6 = i0VarD.h(3) + 1;
            int iH7 = i0VarD.h(3) + 1;
            if (iH6 != 1 || iH7 != 1) {
                throw ParserException.createForUnsupportedContainerFeature("Multiple audio presentations or assets not supported");
            }
            int i16 = iH3 + 1;
            int iH8 = i0VarD.h(i16);
            for (int i17 = 0; i17 < i16; i17++) {
                if (((iH8 >> i17) & 1) == 1) {
                    i0VarD.r(8);
                }
            }
            if (i0VarD.g()) {
                i0VarD.r(2);
                int iH9 = (i0VarD.h(2) + 1) << 2;
                int iH10 = i0VarD.h(2) + 1;
                while (i15 < iH10) {
                    i0VarD.r(iH9);
                    i15++;
                }
            }
            i15 = iH5;
        } else {
            iH = -1;
        }
        i0VarD.r(i11);
        i0VarD.r(12);
        if (zG) {
            if (i0VarD.g()) {
                i0VarD.r(4);
            }
            if (i0VarD.g()) {
                i0VarD.r(24);
            }
            if (i0VarD.g()) {
                i0VarD.s(i0VarD.h(10) + 1);
            }
            i0VarD.r(5);
            int i18 = f68665d[i0VarD.h(4)];
            iH2 = i0VarD.h(8) + 1;
            i13 = i18;
        } else {
            i13 = -2147483647;
            iH2 = -1;
        }
        if (zG) {
            if (iH == 0) {
                i14 = 32000;
            } else if (iH == 1) {
                i14 = RecorderConstants.RECORD_SAMPLE_RATE_44100;
            } else {
                if (iH != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported reference clock code in DTS HD header: " + iH, null);
                }
                i14 = 48000;
            }
            jE1 = a1.e1(i15, 1000000L, i14);
        } else {
            jE1 = C.TIME_UNSET;
        }
        return new b(MimeTypes.AUDIO_DTS_EXPRESS, iH2, i13, iH4, jE1, 0);
    }

    public static int j(byte[] bArr) {
        androidx.media3.common.util.i0 i0VarD = d(bArr);
        i0VarD.r(42);
        return i0VarD.h(i0VarD.g() ? 12 : 8) + 1;
    }

    public static b k(byte[] bArr, AtomicInteger atomicInteger) throws ParserException {
        int iH;
        long jE1;
        int i11;
        int i12;
        androidx.media3.common.util.i0 i0VarD = d(bArr);
        int i13 = i0VarD.h(32) == 1078008818 ? 1 : 0;
        int iM = m(i0VarD, f68666e, true) + 1;
        if (i13 == 0) {
            iH = -2147483647;
            jE1 = C.TIME_UNSET;
        } else {
            if (!i0VarD.g()) {
                throw ParserException.createForUnsupportedContainerFeature("Only supports full channel mask-based audio presentation");
            }
            a(bArr, iM);
            int iH2 = i0VarD.h(2);
            if (iH2 == 0) {
                i11 = 512;
            } else if (iH2 == 1) {
                i11 = 480;
            } else {
                if (iH2 != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported base duration index in DTS UHD header: " + iH2, null);
                }
                i11 = 384;
            }
            int iH3 = i11 * (i0VarD.h(3) + 1);
            int iH4 = i0VarD.h(2);
            if (iH4 == 0) {
                i12 = 32000;
            } else if (iH4 == 1) {
                i12 = RecorderConstants.RECORD_SAMPLE_RATE_44100;
            } else {
                if (iH4 != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported clock rate index in DTS UHD header: " + iH4, null);
                }
                i12 = 48000;
            }
            if (i0VarD.g()) {
                i0VarD.r(36);
            }
            iH = (1 << i0VarD.h(2)) * i12;
            jE1 = a1.e1(iH3, 1000000L, i12);
        }
        int i14 = iH;
        long j11 = jE1;
        int iM2 = 0;
        for (int i15 = 0; i15 < i13; i15++) {
            iM2 += m(i0VarD, f68667f, true);
        }
        if (i13 != 0) {
            atomicInteger.set(m(i0VarD, f68668g, true));
        }
        return new b("audio/vnd.dts.uhd;profile=p2", 2, i14, iM + iM2 + (atomicInteger.get() != 0 ? m(i0VarD, f68669h, true) : 0), j11, 0);
    }

    public static int l(byte[] bArr) {
        androidx.media3.common.util.i0 i0VarD = d(bArr);
        i0VarD.r(32);
        return m(i0VarD, f68670i, true) + 1;
    }

    private static int m(androidx.media3.common.util.i0 i0Var, int[] iArr, boolean z10) {
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < 3 && i0Var.g(); i13++) {
            i12++;
        }
        if (z10) {
            int i14 = 0;
            while (i11 < i12) {
                i14 += 1 << iArr[i11];
                i11++;
            }
            i11 = i14;
        }
        return i11 + i0Var.h(iArr[i12]);
    }
}
