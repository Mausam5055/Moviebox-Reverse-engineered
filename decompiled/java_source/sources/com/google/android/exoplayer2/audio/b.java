package com.google.android.exoplayer2.audio;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.nio.ByteBuffer;
import okio.Utf8;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f24602a = {1, 2, 3, 6};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f24603b = {48000, RecorderConstants.RECORD_SAMPLE_RATE_44100, 32000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f24604c = {24000, RecorderConstants.RECORD_SAMPLE_RATE_22050, 16000};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f24605d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f24606e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 384, 448, 512, 576, 640};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f24607f = {69, 87, 104, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, 139, 174, Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, 243, 278, 348, TTAdConstant.DOWNLOAD_URL_AND_PACKAGE_NAME, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* JADX INFO: renamed from: com.google.android.exoplayer2.audio.b$b, reason: collision with other inner class name */
    public static final class C0364b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f24608a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f24609b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f24610c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f24611d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f24612e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f24613f;

        private C0364b(String str, int i11, int i12, int i13, int i14, int i15) {
            this.f24608a = str;
            this.f24609b = i11;
            this.f24611d = i12;
            this.f24610c = i13;
            this.f24612e = i14;
            this.f24613f = i15;
        }
    }

    public static int a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit() - 10;
        for (int i11 = iPosition; i11 <= iLimit; i11++) {
            if ((p0.I(byteBuffer, i11 + 4) & (-2)) == -126718022) {
                return i11 - iPosition;
            }
        }
        return -1;
    }

    private static int b(int i11, int i12) {
        int i13 = i12 / 2;
        if (i11 < 0) {
            return -1;
        }
        int[] iArr = f24603b;
        if (i11 >= iArr.length || i12 < 0) {
            return -1;
        }
        int[] iArr2 = f24607f;
        if (i13 >= iArr2.length) {
            return -1;
        }
        int i14 = iArr[i11];
        if (i14 == 44100) {
            return (iArr2[i13] + (i12 % 2)) * 2;
        }
        int i15 = f24606e[i13];
        return i14 == 32000 ? i15 * 6 : i15 * 4;
    }

    public static o1 c(com.google.android.exoplayer2.util.d0 d0Var, String str, String str2, DrmInitData drmInitData) {
        int i11 = f24603b[(d0Var.D() & PsExtractor.AUDIO_STREAM) >> 6];
        int iD = d0Var.D();
        int i12 = f24605d[(iD & 56) >> 3];
        if ((iD & 4) != 0) {
            i12++;
        }
        return new o1.b().S(str).e0(MimeTypes.AUDIO_AC3).H(i12).f0(i11).M(drmInitData).V(str2).E();
    }

    public static int d(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f24602a[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static C0364b e(com.google.android.exoplayer2.util.c0 c0Var) {
        int iB;
        int i11;
        int i12;
        int i13;
        int i14;
        String str;
        int iH;
        int i15;
        int i16;
        int i17;
        int i18;
        int iE = c0Var.e();
        c0Var.r(40);
        boolean z10 = c0Var.h(5) > 10;
        c0Var.p(iE);
        int i19 = -1;
        if (z10) {
            c0Var.r(16);
            int iH2 = c0Var.h(2);
            if (iH2 == 0) {
                i19 = 0;
            } else if (iH2 == 1) {
                i19 = 1;
            } else if (iH2 == 2) {
                i19 = 2;
            }
            c0Var.r(3);
            iB = (c0Var.h(11) + 1) * 2;
            int iH3 = c0Var.h(2);
            if (iH3 == 3) {
                i11 = f24604c[c0Var.h(2)];
                i15 = 6;
                iH = 3;
            } else {
                iH = c0Var.h(2);
                i15 = f24602a[iH];
                i11 = f24603b[iH3];
            }
            i13 = i15 * 256;
            int iH4 = c0Var.h(3);
            boolean zG = c0Var.g();
            i12 = f24605d[iH4] + (zG ? 1 : 0);
            c0Var.r(10);
            if (c0Var.g()) {
                c0Var.r(8);
            }
            if (iH4 == 0) {
                c0Var.r(5);
                if (c0Var.g()) {
                    c0Var.r(8);
                }
            }
            if (i19 == 1 && c0Var.g()) {
                c0Var.r(16);
            }
            if (c0Var.g()) {
                if (iH4 > 2) {
                    c0Var.r(2);
                }
                if ((iH4 & 1) == 0 || iH4 <= 2) {
                    i17 = 6;
                } else {
                    i17 = 6;
                    c0Var.r(6);
                }
                if ((iH4 & 4) != 0) {
                    c0Var.r(i17);
                }
                if (zG && c0Var.g()) {
                    c0Var.r(5);
                }
                if (i19 == 0) {
                    if (c0Var.g()) {
                        i18 = 6;
                        c0Var.r(6);
                    } else {
                        i18 = 6;
                    }
                    if (iH4 == 0 && c0Var.g()) {
                        c0Var.r(i18);
                    }
                    if (c0Var.g()) {
                        c0Var.r(i18);
                    }
                    int iH5 = c0Var.h(2);
                    if (iH5 == 1) {
                        c0Var.r(5);
                    } else if (iH5 == 2) {
                        c0Var.r(12);
                    } else if (iH5 == 3) {
                        int iH6 = c0Var.h(5);
                        if (c0Var.g()) {
                            c0Var.r(5);
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                c0Var.r(4);
                            }
                            if (c0Var.g()) {
                                if (c0Var.g()) {
                                    c0Var.r(4);
                                }
                                if (c0Var.g()) {
                                    c0Var.r(4);
                                }
                            }
                        }
                        if (c0Var.g()) {
                            c0Var.r(5);
                            if (c0Var.g()) {
                                c0Var.r(7);
                                if (c0Var.g()) {
                                    c0Var.r(8);
                                }
                            }
                        }
                        c0Var.r((iH6 + 2) * 8);
                        c0Var.c();
                    }
                    if (iH4 < 2) {
                        if (c0Var.g()) {
                            c0Var.r(14);
                        }
                        if (iH4 == 0 && c0Var.g()) {
                            c0Var.r(14);
                        }
                    }
                    if (c0Var.g()) {
                        if (iH == 0) {
                            c0Var.r(5);
                        } else {
                            for (int i20 = 0; i20 < i15; i20++) {
                                if (c0Var.g()) {
                                    c0Var.r(5);
                                }
                            }
                        }
                    }
                }
            }
            if (c0Var.g()) {
                c0Var.r(5);
                if (iH4 == 2) {
                    c0Var.r(4);
                }
                if (iH4 >= 6) {
                    c0Var.r(2);
                }
                if (c0Var.g()) {
                    c0Var.r(8);
                }
                if (iH4 == 0 && c0Var.g()) {
                    c0Var.r(8);
                }
                if (iH3 < 3) {
                    c0Var.q();
                }
            }
            if (i19 == 0 && iH != 3) {
                c0Var.q();
            }
            if (i19 == 2 && (iH == 3 || c0Var.g())) {
                i16 = 6;
                c0Var.r(6);
            } else {
                i16 = 6;
            }
            str = (c0Var.g() && c0Var.h(i16) == 1 && c0Var.h(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : MimeTypes.AUDIO_E_AC3;
            i14 = i19;
        } else {
            c0Var.r(32);
            int iH7 = c0Var.h(2);
            String str2 = iH7 == 3 ? null : MimeTypes.AUDIO_AC3;
            iB = b(iH7, c0Var.h(6));
            c0Var.r(8);
            int iH8 = c0Var.h(3);
            if ((iH8 & 1) != 0 && iH8 != 1) {
                c0Var.r(2);
            }
            if ((iH8 & 4) != 0) {
                c0Var.r(2);
            }
            if (iH8 == 2) {
                c0Var.r(2);
            }
            int[] iArr = f24603b;
            i11 = iH7 < iArr.length ? iArr[iH7] : -1;
            i12 = f24605d[iH8] + (c0Var.g() ? 1 : 0);
            i13 = 1536;
            i14 = -1;
            str = str2;
        }
        return new C0364b(str, i14, i12, i11, iB, i13);
    }

    public static int f(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b11 = bArr[4];
        return b((b11 & 192) >> 6, b11 & Utf8.REPLACEMENT_BYTE);
    }

    public static o1 g(com.google.android.exoplayer2.util.d0 d0Var, String str, String str2, DrmInitData drmInitData) {
        d0Var.Q(2);
        int i11 = f24603b[(d0Var.D() & PsExtractor.AUDIO_STREAM) >> 6];
        int iD = d0Var.D();
        int i12 = f24605d[(iD & 14) >> 1];
        if ((iD & 1) != 0) {
            i12++;
        }
        if (((d0Var.D() & 30) >> 1) > 0 && (2 & d0Var.D()) != 0) {
            i12 += 2;
        }
        return new o1.b().S(str).e0((d0Var.a() <= 0 || (d0Var.D() & 1) == 0) ? MimeTypes.AUDIO_E_AC3 : MimeTypes.AUDIO_E_AC3_JOC).H(i12).f0(i11).M(drmInitData).V(str2).E();
    }

    public static int h(ByteBuffer byteBuffer, int i11) {
        return 40 << ((byteBuffer.get((byteBuffer.position() + i11) + ((byteBuffer.get((byteBuffer.position() + i11) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7);
    }

    public static int i(byte[] bArr) {
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b11 = bArr[7];
            if ((b11 & 254) == 186) {
                return 40 << ((bArr[(b11 & 255) == 187 ? '\t' : '\b'] >> 4) & 7);
            }
        }
        return 0;
    }
}
