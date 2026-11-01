package l2;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.logging.type.LogSeverity;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f68515a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, LogSeverity.EMERGENCY_VALUE, LogSeverity.EMERGENCY_VALUE, 480, 400, 400, 2048};

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f68516a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f68517b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f68518c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f68519d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f68520e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f68521f;

        private b() {
            this.f68516a = true;
            this.f68517b = -1;
            this.f68518c = -1;
            this.f68519d = true;
            this.f68520e = 2;
            this.f68521f = 0;
        }
    }

    /* JADX INFO: renamed from: l2.c$c, reason: collision with other inner class name */
    public static final class C0824c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f68522a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f68523b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f68524c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f68525d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f68526e;

        private C0824c(int i11, int i12, int i13, int i14, int i15) {
            this.f68522a = i11;
            this.f68524c = i12;
            this.f68523b = i13;
            this.f68525d = i14;
            this.f68526e = i15;
        }
    }

    public static void a(int i11, androidx.media3.common.util.j0 j0Var) {
        j0Var.S(7);
        byte[] bArrE = j0Var.e();
        bArrE[0] = -84;
        bArrE[1] = 64;
        bArrE[2] = -1;
        bArrE[3] = -1;
        bArrE[4] = (byte) ((i11 >> 16) & 255);
        bArrE[5] = (byte) ((i11 >> 8) & 255);
        bArrE[6] = (byte) (i11 & 255);
    }

    private static int b(int i11, boolean z10, int i12) {
        int iC = c(i11);
        if (i11 != 11 && i11 != 12 && i11 != 13 && i11 != 14) {
            return iC;
        }
        if (!z10) {
            iC -= 2;
        }
        if (i12 != 0) {
            return i12 != 1 ? iC : iC - 2;
        }
        return iC - 4;
    }

    private static int c(int i11) {
        switch (i11) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 5;
            case 4:
                return 6;
            case 5:
            case 7:
            case 9:
                return 7;
            case 6:
            case 8:
            case 10:
                return 8;
            case 11:
                return 11;
            case 12:
                return 12;
            case 13:
                return 13;
            case 14:
                return 14;
            case 15:
                return 24;
            default:
                return -1;
        }
    }

    public static androidx.media3.common.r d(androidx.media3.common.util.j0 j0Var, String str, String str2, DrmInitData drmInitData) throws ParserException {
        int iB;
        boolean zG;
        int iH;
        int iH2;
        int iH3;
        int iB2;
        boolean z10;
        boolean zG2;
        int i11;
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0();
        i0Var.m(j0Var);
        int iB3 = i0Var.b();
        int iH4 = i0Var.h(3);
        if (iH4 > 1) {
            throw ParserException.createForUnsupportedContainerFeature("Unsupported AC-4 DSI version: " + iH4);
        }
        int iH5 = i0Var.h(7);
        int i12 = i0Var.g() ? 48000 : RecorderConstants.RECORD_SAMPLE_RATE_44100;
        i0Var.r(4);
        int iH6 = i0Var.h(9);
        if (iH5 > 1) {
            if (iH4 == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Invalid AC-4 DSI version: " + iH4);
            }
            if (i0Var.g()) {
                i0Var.r(16);
                if (i0Var.g()) {
                    i0Var.r(128);
                }
            }
        }
        if (iH4 == 1) {
            if (!k(i0Var)) {
                throw ParserException.createForUnsupportedContainerFeature("Invalid AC-4 DSI bitrate.");
            }
            i0Var.c();
        }
        b bVar = new b();
        int i13 = 0;
        while (true) {
            if (i13 < iH6) {
                if (iH4 == 0) {
                    zG = i0Var.g();
                    iH = i0Var.h(5);
                    iH2 = i0Var.h(5);
                    iH3 = 0;
                    iB2 = 0;
                    z10 = false;
                } else {
                    int iH7 = i0Var.h(8);
                    iH3 = i0Var.h(8);
                    if (iH3 == 255) {
                        iH3 += i0Var.h(16);
                    }
                    if (iH7 > 2) {
                        i0Var.r(iH3 * 8);
                        i13++;
                    } else {
                        iB2 = (iB3 - i0Var.b()) / 8;
                        int iH8 = i0Var.h(5);
                        z10 = iH8 == 31;
                        iH2 = iH7;
                        iH = iH8;
                        zG = false;
                    }
                }
                if (zG || z10 || iH != 6) {
                    bVar.f68521f = i0Var.h(3);
                    if (i0Var.g()) {
                        i0Var.r(5);
                    }
                    i0Var.r(2);
                    if (iH4 == 1 && (iH2 == 1 || iH2 == 2)) {
                        i0Var.r(2);
                    }
                    i0Var.r(5);
                    i0Var.r(10);
                    if (iH4 == 1) {
                        if (iH2 > 0) {
                            bVar.f68516a = i0Var.g();
                        }
                        if (bVar.f68516a) {
                            if (iH2 == 1 || iH2 == 2) {
                                int iH9 = i0Var.h(5);
                                if (iH9 >= 0 && iH9 <= 15) {
                                    bVar.f68517b = iH9;
                                }
                                if (iH9 >= 11 && iH9 <= 14) {
                                    bVar.f68519d = i0Var.g();
                                    bVar.f68520e = i0Var.h(2);
                                }
                            }
                            i0Var.r(24);
                            i11 = 1;
                        } else {
                            i11 = 1;
                        }
                        if (iH2 == i11 || iH2 == 2) {
                            if (i0Var.g() && i0Var.g()) {
                                i0Var.r(2);
                            }
                            if (i0Var.g()) {
                                i0Var.q();
                                int i14 = 8;
                                int iH10 = i0Var.h(8);
                                int i15 = 0;
                                while (i15 < iH10) {
                                    i0Var.r(i14);
                                    i15++;
                                    i14 = 8;
                                }
                            }
                        }
                    }
                    if (!zG && !z10) {
                        i0Var.q();
                        if (iH == 0 || iH == 1 || iH == 2) {
                            if (iH2 == 0) {
                                for (int i16 = 0; i16 < 2; i16++) {
                                    h(i0Var, bVar);
                                }
                            } else {
                                for (int i17 = 0; i17 < 2; i17++) {
                                    i(i0Var, bVar);
                                }
                            }
                        } else if (iH == 3 || iH == 4) {
                            if (iH2 == 0) {
                                for (int i18 = 0; i18 < 3; i18++) {
                                    h(i0Var, bVar);
                                }
                            } else {
                                int i19 = 0;
                                for (int i20 = 3; i19 < i20; i20 = 3) {
                                    i(i0Var, bVar);
                                    i19++;
                                }
                            }
                        } else if (iH != 5) {
                            int iH11 = i0Var.h(7);
                            for (int i21 = 0; i21 < iH11; i21++) {
                                i0Var.r(8);
                            }
                        } else if (iH2 == 0) {
                            h(i0Var, bVar);
                        } else {
                            int iH12 = i0Var.h(3);
                            for (int i22 = 0; i22 < iH12 + 2; i22++) {
                                i(i0Var, bVar);
                            }
                        }
                    } else if (iH2 == 0) {
                        h(i0Var, bVar);
                    } else {
                        i(i0Var, bVar);
                    }
                    i0Var.q();
                    zG2 = i0Var.g();
                } else {
                    zG2 = true;
                }
                if (zG2) {
                    int iH13 = i0Var.h(7);
                    for (int i23 = 0; i23 < iH13; i23++) {
                        i0Var.r(15);
                    }
                }
                if (iH2 > 0) {
                    if (i0Var.g() && !k(i0Var)) {
                        throw ParserException.createForUnsupportedContainerFeature("Can't parse bitrate DSI.");
                    }
                    if (i0Var.g()) {
                        i0Var.c();
                        i0Var.s(i0Var.h(16));
                        int iH14 = i0Var.h(5);
                        for (int i24 = 0; i24 < iH14; i24++) {
                            i0Var.r(3);
                            i0Var.r(8);
                        }
                    }
                }
                i0Var.c();
                if (iH4 == 1) {
                    int iB4 = ((iB3 - i0Var.b()) / 8) - iB2;
                    if (iH3 < iB4) {
                        throw ParserException.createForUnsupportedContainerFeature("pres_bytes is smaller than presentation bytes read.");
                    }
                    i0Var.s(iH3 - iB4);
                }
                if (bVar.f68516a && bVar.f68517b == -1) {
                    throw ParserException.createForUnsupportedContainerFeature("Can't determine channel mode of presentation " + i13);
                }
            }
            if (bVar.f68516a) {
                iB = b(bVar.f68517b, bVar.f68519d, bVar.f68520e);
            } else {
                iB = bVar.f68518c + 1;
                if (bVar.f68521f == 4 && iB == 17) {
                    iB = 21;
                }
            }
            if (iB > 0) {
                return new androidx.media3.common.r.b().f0(str).u0("audio/ac4").R(iB).v0(i12).Y(drmInitData).j0(str2).N();
            }
            throw ParserException.createForUnsupportedContainerFeature("Can't determine channel count of presentation.");
        }
    }

    public static int e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return f(new androidx.media3.common.util.i0(bArr)).f68526e;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x008b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0090  */
    public static C0824c f(androidx.media3.common.util.i0 i0Var) {
        int i11;
        int i12;
        int iH = i0Var.h(16);
        int iH2 = i0Var.h(16);
        if (iH2 == 65535) {
            iH2 = i0Var.h(24);
            i11 = 7;
        } else {
            i11 = 4;
        }
        int i13 = iH2 + i11;
        if (iH == 44097) {
            i13 += 2;
        }
        int i14 = i13;
        int iH3 = i0Var.h(2);
        if (iH3 == 3) {
            iH3 += j(i0Var, 2);
        }
        int i15 = iH3;
        int iH4 = i0Var.h(10);
        if (i0Var.g() && i0Var.h(3) > 0) {
            i0Var.r(2);
        }
        int i16 = i0Var.g() ? 48000 : 44100;
        int iH5 = i0Var.h(4);
        if (i16 == 44100 && iH5 == 13) {
            i12 = f68515a[iH5];
        } else if (i16 == 48000) {
            int[] iArr = f68515a;
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
        return new C0824c(i15, 2, i16, i14, i12);
    }

    public static int g(byte[] bArr, int i11) {
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

    private static void h(androidx.media3.common.util.i0 i0Var, b bVar) throws ParserException {
        int iH = i0Var.h(5);
        i0Var.r(2);
        if (i0Var.g()) {
            i0Var.r(5);
        }
        if (iH >= 7 && iH <= 10) {
            i0Var.q();
        }
        if (i0Var.g()) {
            int iH2 = i0Var.h(3);
            if (bVar.f68517b == -1 && iH >= 0 && iH <= 15 && (iH2 == 0 || iH2 == 1)) {
                bVar.f68517b = iH;
            }
            if (i0Var.g()) {
                l(i0Var);
            }
        }
    }

    private static void i(androidx.media3.common.util.i0 i0Var, b bVar) throws ParserException {
        i0Var.r(2);
        boolean zG = i0Var.g();
        int iH = i0Var.h(8);
        for (int i11 = 0; i11 < iH; i11++) {
            i0Var.r(2);
            if (i0Var.g()) {
                i0Var.r(5);
            }
            if (zG) {
                i0Var.r(24);
            } else {
                if (i0Var.g()) {
                    if (!i0Var.g()) {
                        i0Var.r(4);
                    }
                    bVar.f68518c = i0Var.h(6) + 1;
                }
                i0Var.r(4);
            }
        }
        if (i0Var.g()) {
            i0Var.r(3);
            if (i0Var.g()) {
                l(i0Var);
            }
        }
    }

    private static int j(androidx.media3.common.util.i0 i0Var, int i11) {
        int i12 = 0;
        while (true) {
            int iH = i12 + i0Var.h(i11);
            if (!i0Var.g()) {
                return iH;
            }
            i12 = (iH + 1) << i11;
        }
    }

    private static boolean k(androidx.media3.common.util.i0 i0Var) {
        if (i0Var.b() < 66) {
            return false;
        }
        i0Var.r(66);
        return true;
    }

    private static void l(androidx.media3.common.util.i0 i0Var) throws ParserException {
        int iH = i0Var.h(6);
        if (iH < 2 || iH > 42) {
            throw ParserException.createForUnsupportedContainerFeature(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(iH)));
        }
        i0Var.r(iH * 8);
    }
}
