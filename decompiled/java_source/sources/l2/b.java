package l2;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.a1;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.nio.ByteBuffer;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f68488a = {1, 2, 3, 6};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f68489b = {48000, RecorderConstants.RECORD_SAMPLE_RATE_44100, 32000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f68490c = {24000, RecorderConstants.RECORD_SAMPLE_RATE_22050, 16000};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f68491d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f68492e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 384, 448, 512, 576, 640};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f68493f = {69, 87, 104, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, 139, 174, Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, 243, 278, 348, TTAdConstant.DOWNLOAD_URL_AND_PACKAGE_NAME, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* JADX INFO: renamed from: l2.b$b, reason: collision with other inner class name */
    public static final class C0823b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f68494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f68495b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f68496c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f68497d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f68498e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f68499f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f68500g;

        private C0823b(String str, int i11, int i12, int i13, int i14, int i15, int i16) {
            this.f68494a = str;
            this.f68495b = i11;
            this.f68497d = i12;
            this.f68496c = i13;
            this.f68498e = i14;
            this.f68499f = i15;
            this.f68500g = i16;
        }
    }

    private static int a(int i11, int i12, int i13) {
        return (i11 * i12) / (i13 * 32);
    }

    public static int b(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 10;
        for (int i11 = iPosition; i11 <= iLimit; i11++) {
            if ((a1.P(byteBuffer, i11 + 4) & (-2)) == -126718022) {
                return i11 - iPosition;
            }
        }
        return -1;
    }

    private static int c(int i11, int i12) {
        int i13 = i12 / 2;
        if (i11 < 0) {
            return -1;
        }
        int[] iArr = f68489b;
        if (i11 >= iArr.length || i12 < 0) {
            return -1;
        }
        int[] iArr2 = f68493f;
        if (i13 >= iArr2.length) {
            return -1;
        }
        int i14 = iArr[i11];
        if (i14 == 44100) {
            return (iArr2[i13] + (i12 % 2)) * 2;
        }
        int i15 = f68492e[i13];
        return i14 == 32000 ? i15 * 6 : i15 * 4;
    }

    public static androidx.media3.common.r d(androidx.media3.common.util.j0 j0Var, String str, String str2, DrmInitData drmInitData) {
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0();
        i0Var.m(j0Var);
        int i11 = f68489b[i0Var.h(2)];
        i0Var.r(8);
        int i12 = f68491d[i0Var.h(3)];
        if (i0Var.h(1) != 0) {
            i12++;
        }
        int i13 = f68492e[i0Var.h(5)] * 1000;
        i0Var.c();
        j0Var.W(i0Var.d());
        return new androidx.media3.common.r.b().f0(str).u0(MimeTypes.AUDIO_AC3).R(i12).v0(i11).Y(drmInitData).j0(str2).Q(i13).p0(i13).N();
    }

    public static int e(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f68488a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static C0823b f(androidx.media3.common.util.i0 i0Var) {
        int i11;
        int i12;
        String str;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int iE = i0Var.e();
        i0Var.r(40);
        boolean z10 = i0Var.h(5) > 10;
        i0Var.p(iE);
        int i23 = -1;
        if (z10) {
            i0Var.r(16);
            int iH = i0Var.h(2);
            if (iH == 0) {
                i23 = 0;
            } else if (iH == 1) {
                i23 = 1;
            } else if (iH == 2) {
                i23 = 2;
            }
            i0Var.r(3);
            int iH2 = (i0Var.h(11) + 1) * 2;
            int iH3 = i0Var.h(2);
            if (iH3 == 3) {
                i18 = f68490c[i0Var.h(2)];
                i17 = 3;
                i19 = 6;
            } else {
                int iH4 = i0Var.h(2);
                int i24 = f68488a[iH4];
                i17 = iH4;
                i18 = f68489b[iH3];
                i19 = i24;
            }
            int i25 = i19 * 256;
            int iA = a(iH2, i18, i19);
            int iH5 = i0Var.h(3);
            boolean zG = i0Var.g();
            i11 = f68491d[iH5] + (zG ? 1 : 0);
            i0Var.r(10);
            if (i0Var.g()) {
                i0Var.r(8);
            }
            if (iH5 == 0) {
                i0Var.r(5);
                if (i0Var.g()) {
                    i0Var.r(8);
                }
            }
            if (i23 == 1 && i0Var.g()) {
                i0Var.r(16);
            }
            if (i0Var.g()) {
                if (iH5 > 2) {
                    i0Var.r(2);
                }
                if ((iH5 & 1) == 0 || iH5 <= 2) {
                    i21 = 6;
                } else {
                    i21 = 6;
                    i0Var.r(6);
                }
                if ((iH5 & 4) != 0) {
                    i0Var.r(i21);
                }
                if (zG && i0Var.g()) {
                    i0Var.r(5);
                }
                if (i23 == 0) {
                    if (i0Var.g()) {
                        i22 = 6;
                        i0Var.r(6);
                    } else {
                        i22 = 6;
                    }
                    if (iH5 == 0 && i0Var.g()) {
                        i0Var.r(i22);
                    }
                    if (i0Var.g()) {
                        i0Var.r(i22);
                    }
                    int iH6 = i0Var.h(2);
                    if (iH6 == 1) {
                        i0Var.r(5);
                    } else if (iH6 == 2) {
                        i0Var.r(12);
                    } else if (iH6 == 3) {
                        int iH7 = i0Var.h(5);
                        if (i0Var.g()) {
                            i0Var.r(5);
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                i0Var.r(4);
                            }
                            if (i0Var.g()) {
                                if (i0Var.g()) {
                                    i0Var.r(4);
                                }
                                if (i0Var.g()) {
                                    i0Var.r(4);
                                }
                            }
                        }
                        if (i0Var.g()) {
                            i0Var.r(5);
                            if (i0Var.g()) {
                                i0Var.r(7);
                                if (i0Var.g()) {
                                    i0Var.r(8);
                                }
                            }
                        }
                        i0Var.r((iH7 + 2) * 8);
                        i0Var.c();
                    }
                    if (iH5 < 2) {
                        if (i0Var.g()) {
                            i0Var.r(14);
                        }
                        if (iH5 == 0 && i0Var.g()) {
                            i0Var.r(14);
                        }
                    }
                    if (i0Var.g()) {
                        if (i17 == 0) {
                            i0Var.r(5);
                        } else {
                            for (int i26 = 0; i26 < i19; i26++) {
                                if (i0Var.g()) {
                                    i0Var.r(5);
                                }
                            }
                        }
                    }
                }
            }
            if (i0Var.g()) {
                i0Var.r(5);
                if (iH5 == 2) {
                    i0Var.r(4);
                }
                if (iH5 >= 6) {
                    i0Var.r(2);
                }
                if (i0Var.g()) {
                    i0Var.r(8);
                }
                if (iH5 == 0 && i0Var.g()) {
                    i0Var.r(8);
                }
                if (iH3 < 3) {
                    i0Var.q();
                }
            }
            if (i23 == 0 && i17 != 3) {
                i0Var.q();
            }
            if (i23 == 2 && (i17 == 3 || i0Var.g())) {
                i20 = 6;
                i0Var.r(6);
            } else {
                i20 = 6;
            }
            str = (i0Var.g() && i0Var.h(i20) == 1 && i0Var.h(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : MimeTypes.AUDIO_E_AC3;
            i12 = i23;
            i13 = i25;
            i15 = iH2;
            i16 = i18;
            i14 = iA;
        } else {
            i0Var.r(32);
            int iH8 = i0Var.h(2);
            String str2 = iH8 == 3 ? null : MimeTypes.AUDIO_AC3;
            int iH9 = i0Var.h(6);
            int i27 = f68492e[iH9 / 2] * 1000;
            int iC = c(iH8, iH9);
            i0Var.r(8);
            int iH10 = i0Var.h(3);
            if ((iH10 & 1) != 0 && iH10 != 1) {
                i0Var.r(2);
            }
            if ((iH10 & 4) != 0) {
                i0Var.r(2);
            }
            if (iH10 == 2) {
                i0Var.r(2);
            }
            int[] iArr = f68489b;
            int i28 = iH8 < iArr.length ? iArr[iH8] : -1;
            i11 = f68491d[iH10] + (i0Var.g() ? 1 : 0);
            i12 = -1;
            str = str2;
            i13 = 1536;
            i14 = i27;
            i15 = iC;
            i16 = i28;
        }
        return new C0823b(str, i12, i11, i16, i15, i13, i14);
    }

    public static int g(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b11 = bArr[4];
        return c((b11 & 192) >> 6, b11 & Utf8.REPLACEMENT_BYTE);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0062  */
    public static androidx.media3.common.r h(androidx.media3.common.util.j0 j0Var, String str, String str2, DrmInitData drmInitData) {
        String str3;
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0();
        i0Var.m(j0Var);
        int iH = i0Var.h(13) * 1000;
        i0Var.r(3);
        int i11 = f68489b[i0Var.h(2)];
        i0Var.r(10);
        int i12 = f68491d[i0Var.h(3)];
        if (i0Var.h(1) != 0) {
            i12++;
        }
        i0Var.r(3);
        int iH2 = i0Var.h(4);
        i0Var.r(1);
        if (iH2 > 0) {
            i0Var.r(6);
            if (i0Var.h(1) != 0) {
                i12 += 2;
            }
            i0Var.r(1);
        }
        if (i0Var.b() > 7) {
            i0Var.r(7);
            if (i0Var.h(1) != 0) {
                str3 = MimeTypes.AUDIO_E_AC3_JOC;
            } else {
                str3 = MimeTypes.AUDIO_E_AC3;
            }
        } else {
            str3 = MimeTypes.AUDIO_E_AC3;
        }
        i0Var.c();
        j0Var.W(i0Var.d());
        return new androidx.media3.common.r.b().f0(str).u0(str3).R(i12).v0(i11).Y(drmInitData).j0(str2).p0(iH).N();
    }

    public static int i(ByteBuffer byteBuffer, int i11) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i11) + ((byteBuffer.get((byteBuffer.position() + i11) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    public static int j(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b11 = bArr[7];
            if ((b11 & 254) == 186) {
                return 40 << ((bArr[(b11 & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }
}
