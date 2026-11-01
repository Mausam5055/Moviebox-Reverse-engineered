package com.google.android.exoplayer2.audio;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f24797a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f24798b = {-1, 8000, 16000, 32000, -1, -1, RecorderConstants.RECORD_SAMPLE_RATE_11025, RecorderConstants.RECORD_SAMPLE_RATE_22050, RecorderConstants.RECORD_SAMPLE_RATE_44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f24799c = {64, 112, 128, PsExtractor.AUDIO_STREAM, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* JADX WARN: Code duplicated, block: B:15:0x0060  */
    /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
    public static int a(byte[] bArr) {
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

    private static com.google.android.exoplayer2.util.c0 b(byte[] bArr) {
        if (bArr[0] == 127) {
            return new com.google.android.exoplayer2.util.c0(bArr);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        if (c(bArrCopyOf)) {
            for (int i11 = 0; i11 < bArrCopyOf.length - 1; i11 += 2) {
                byte b11 = bArrCopyOf[i11];
                int i12 = i11 + 1;
                bArrCopyOf[i11] = bArrCopyOf[i12];
                bArrCopyOf[i12] = b11;
            }
        }
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(bArrCopyOf);
        if (bArrCopyOf[0] == 31) {
            com.google.android.exoplayer2.util.c0 c0Var2 = new com.google.android.exoplayer2.util.c0(bArrCopyOf);
            while (c0Var2.b() >= 16) {
                c0Var2.r(2);
                c0Var.f(c0Var2.h(14), 14);
            }
        }
        c0Var.n(bArrCopyOf);
        return c0Var;
    }

    private static boolean c(byte[] bArr) {
        byte b11 = bArr[0];
        return b11 == -2 || b11 == -1;
    }

    public static boolean d(int i11) {
        return i11 == 2147385345 || i11 == -25230976 || i11 == 536864768 || i11 == -14745368;
    }

    public static int e(ByteBuffer byteBuffer) {
        int i11;
        byte b11;
        int i12;
        byte b12;
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

    public static int f(byte[] bArr) {
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

    public static o1 g(byte[] bArr, String str, String str2, DrmInitData drmInitData) {
        com.google.android.exoplayer2.util.c0 c0VarB = b(bArr);
        c0VarB.r(60);
        int i11 = f24797a[c0VarB.h(6)];
        int i12 = f24798b[c0VarB.h(4)];
        int iH = c0VarB.h(5);
        int[] iArr = f24799c;
        int i13 = iH >= iArr.length ? -1 : (iArr[iH] * 1000) / 2;
        c0VarB.r(10);
        return new o1.b().S(str).e0(MimeTypes.AUDIO_DTS).G(i13).H(i11 + (c0VarB.h(2) > 0 ? 1 : 0)).f0(i12).M(drmInitData).V(str2).E();
    }
}
