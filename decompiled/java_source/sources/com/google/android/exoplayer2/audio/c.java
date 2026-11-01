package com.google.android.exoplayer2.audio;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.o1;
import com.google.logging.type.LogSeverity;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f24628a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, LogSeverity.EMERGENCY_VALUE, LogSeverity.EMERGENCY_VALUE, 480, 400, 400, 2048};

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f24629a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f24630b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f24631c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f24632d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f24633e;

        private b(int i11, int i12, int i13, int i14, int i15) {
            this.f24629a = i11;
            this.f24631c = i12;
            this.f24630b = i13;
            this.f24632d = i14;
            this.f24633e = i15;
        }
    }

    public static void a(int i11, com.google.android.exoplayer2.util.d0 d0Var) {
        d0Var.L(7);
        byte[] bArrD = d0Var.d();
        bArrD[0] = -84;
        bArrD[1] = 64;
        bArrD[2] = -1;
        bArrD[3] = -1;
        bArrD[4] = (byte) ((i11 >> 16) & 255);
        bArrD[5] = (byte) ((i11 >> 8) & 255);
        bArrD[6] = (byte) (i11 & 255);
    }

    public static o1 b(com.google.android.exoplayer2.util.d0 d0Var, String str, String str2, DrmInitData drmInitData) {
        d0Var.Q(1);
        return new o1.b().S(str).e0("audio/ac4").H(2).f0(((d0Var.D() & 32) >> 5) == 1 ? 48000 : RecorderConstants.RECORD_SAMPLE_RATE_44100).M(drmInitData).V(str2).E();
    }

    public static int c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return d(new com.google.android.exoplayer2.util.c0(bArr)).f24633e;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x008b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0090  */
    public static b d(com.google.android.exoplayer2.util.c0 c0Var) {
        int i11;
        int i12;
        int iH = c0Var.h(16);
        int iH2 = c0Var.h(16);
        if (iH2 == 65535) {
            iH2 = c0Var.h(24);
            i11 = 7;
        } else {
            i11 = 4;
        }
        int i13 = iH2 + i11;
        if (iH == 44097) {
            i13 += 2;
        }
        int i14 = i13;
        int iH3 = c0Var.h(2);
        if (iH3 == 3) {
            iH3 += f(c0Var, 2);
        }
        int i15 = iH3;
        int iH4 = c0Var.h(10);
        if (c0Var.g() && c0Var.h(3) > 0) {
            c0Var.r(2);
        }
        int i16 = c0Var.g() ? 48000 : 44100;
        int iH5 = c0Var.h(4);
        if (i16 == 44100 && iH5 == 13) {
            i12 = f24628a[iH5];
        } else if (i16 == 48000) {
            int[] iArr = f24628a;
            if (iH5 < iArr.length) {
                int i17 = iArr[iH5];
                int i18 = iH4 % 5;
                if (i18 == 1) {
                    if (iH5 != 3 || iH5 == 8) {
                        i17++;
                    }
                } else if (i18 != 2) {
                    if (i18 != 3) {
                        if (i18 == 4 && (iH5 == 3 || iH5 == 8 || iH5 == 11)) {
                            i17++;
                        }
                    } else if (iH5 != 3) {
                        i17++;
                    } else {
                        i17++;
                    }
                } else if (iH5 == 8 || iH5 == 11) {
                    i17++;
                }
                i12 = i17;
            } else {
                i12 = 0;
            }
        } else {
            i12 = 0;
        }
        return new b(i15, 2, i16, i14, i12);
    }

    public static int e(byte[] bArr, int i11) {
        int i12 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i13 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i13 == 65535) {
            i13 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i12 = 4;
        }
        if (i11 == 44097) {
            i12 += 2;
        }
        return i13 + i12;
    }

    private static int f(com.google.android.exoplayer2.util.c0 c0Var, int i11) {
        int i12 = 0;
        while (true) {
            int iH = i12 + c0Var.h(i11);
            if (!c0Var.g()) {
                return iH;
            }
            i12 = (iH + 1) << i11;
        }
    }
}
