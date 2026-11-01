package hf;

import androidx.core.view.InputDeviceCompat;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import com.tencent.tinker.android.dex.DexException;
import java.io.EOFException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {
    public static short A(int i11) {
        return (short) (i11 >> 16);
    }

    public static short B(long j11) {
        return (short) (j11 >> 16);
    }

    public static short C(long j11) {
        return (short) (j11 >> 32);
    }

    public static short D(long j11) {
        return (short) (j11 >> 48);
    }

    public static short a(int i11) {
        if (((-65536) & i11) == 0) {
            return (short) i11;
        }
        throw new IllegalArgumentException("bogus unsigned code unit");
    }

    private static int b(int i11) {
        return i11 & 255;
    }

    private static int c(int i11) {
        return (i11 >> 8) & 255;
    }

    public static short d(int i11, int i12) {
        if ((i11 & InputDeviceCompat.SOURCE_ANY) != 0) {
            throw new IllegalArgumentException("bogus lowByte");
        }
        if ((i12 & InputDeviceCompat.SOURCE_ANY) == 0) {
            return (short) (i11 | (i12 << 8));
        }
        throw new IllegalArgumentException("bogus highByte");
    }

    public static short e(int i11, int i12, int i13, int i14) {
        if ((i11 & (-16)) != 0) {
            throw new IllegalArgumentException("bogus nibble0");
        }
        if ((i12 & (-16)) != 0) {
            throw new IllegalArgumentException("bogus nibble1");
        }
        if ((i13 & (-16)) != 0) {
            throw new IllegalArgumentException("bogus nibble2");
        }
        if ((i14 & (-16)) == 0) {
            return (short) (i11 | (i12 << 4) | (i13 << 8) | (i14 << 12));
        }
        throw new IllegalArgumentException("bogus nibble3");
    }

    public static void f(h hVar, e eVar) throws EOFException {
        hVar.d();
        while (hVar.f()) {
            int iC = hVar.c();
            int iG = hVar.g();
            int iA = g.a(iG);
            int iK = k(iA);
            int i11 = 0;
            boolean z10 = true;
            switch (iK) {
                case 1:
                    eVar.l(iC, iA, 0, 1, 0, 0L);
                    continue;
                case 2:
                    eVar.l(iC, iA, 0, 1, iC + ((byte) c(iG)), 0L);
                    continue;
                case 3:
                    eVar.l(iC, iA, 0, 1, 0, c(iG));
                    continue;
                case 4:
                    eVar.f(iC, iA, 0, 1, 0, (x(iG) << 28) >> 28, w(iG));
                    continue;
                case 5:
                    eVar.f(iC, iA, 0, 1, 0, 0L, c(iG));
                    continue;
                case 6:
                    eVar.k(iC, iA, 0, 1, 0, 0L, w(iG), x(iG));
                    continue;
                case 7:
                    eVar.l(iC, iA, 0, 1, iC + ((short) hVar.g()), c(iG));
                    continue;
                case 8:
                    eVar.f(iC, iA, hVar.g(), l(iA), 0, 0L, c(iG));
                    continue;
                case 9:
                    eVar.f(iC, iA, 0, 1, 0, ((long) ((short) hVar.g())) << (iA == 21 ? (char) 16 : '0'), c(iG));
                    continue;
                case 10:
                    eVar.f(iC, iA, 0, 1, 0, (short) hVar.g(), c(iG));
                    continue;
                case 11:
                    eVar.f(iC, iA, 0, 1, iC + ((short) hVar.g()), 0L, c(iG));
                    continue;
                case 12:
                    int iC2 = c(iG);
                    int iG2 = hVar.g();
                    eVar.k(iC, iA, 0, 1, 0, (byte) c(iG2), iC2, b(iG2));
                    continue;
                case 13:
                    eVar.k(iC, iA, hVar.g(), l(iA), 0, 0L, w(iG), x(iG));
                    continue;
                case 14:
                    eVar.k(iC, iA, 0, 1, 0, (short) hVar.g(), w(iG), x(iG));
                    continue;
                case 15:
                    eVar.k(iC, iA, 0, 1, iC + ((short) hVar.g()), 0L, w(iG), x(iG));
                    continue;
                case 16:
                    eVar.k(iC, iA, 0, 1, 0, 0L, c(iG), hVar.g());
                    continue;
                case 17:
                    int iC3 = c(iG);
                    int iG3 = hVar.g();
                    eVar.j(iC, iA, 0, 1, 0, 0L, iC3, b(iG3), c(iG3));
                    continue;
                case 18:
                    eVar.l(iC, iA, 0, 1, iC + hVar.h(), c(iG));
                    continue;
                case 19:
                    eVar.f(iC, iA, hVar.h(), l(iA), 0, 0L, c(iG));
                    continue;
                case 20:
                    eVar.f(iC, iA, 0, 1, 0, hVar.h(), c(iG));
                    continue;
                case 21:
                    int iC4 = c(iG);
                    int iH = iC + hVar.h();
                    if (iA == 43 || iA == 44) {
                        hVar.e(iH + 1, iC);
                    }
                    eVar.f(iC, iA, 0, 1, iH, 0L, iC4);
                    continue;
                case 22:
                    eVar.k(iC, iA, 0, 1, 0, c(iG), hVar.g(), hVar.g());
                    break;
                case 23:
                    int iW = w(iG);
                    int iX = x(iG);
                    int iG4 = hVar.g();
                    int iG5 = hVar.g();
                    int iU = u(iG5);
                    int iV = v(iG5);
                    int iW2 = w(iG5);
                    int iX2 = x(iG5);
                    int iL = l(iA);
                    if (iX == 0) {
                        eVar.l(iC, iA, iG4, iL, 0, 0L);
                    } else if (iX == 1) {
                        eVar.f(iC, iA, iG4, iL, 0, 0L, iU);
                    } else if (iX == 2) {
                        eVar.k(iC, iA, iG4, iL, 0, 0L, iU, iV);
                    } else if (iX == 3) {
                        eVar.j(iC, iA, iG4, iL, 0, 0L, iU, iV, iW2);
                    } else if (iX != 4) {
                        if (iX != 5) {
                            throw new DexException("bogus registerCount: " + p008if.a.f(iX));
                        }
                        eVar.b(iC, iA, iG4, iL, 0, 0L, iU, iV, iW2, iX2, iW);
                    } else {
                        eVar.c(iC, iA, iG4, iL, 0, 0L, iU, iV, iW2, iX2);
                    }
                    break;
                case 24:
                    eVar.h(iC, iA, hVar.g(), l(iA), 0, 0L, hVar.g(), c(iG));
                    break;
                case 25:
                    eVar.f(iC, iA, 0, 1, 0, hVar.i(), c(iG));
                    break;
                case 26:
                    if (iA != 250) {
                        throw new UnsupportedOperationException(String.valueOf(iA));
                    }
                    int iW3 = w(iG);
                    int iX3 = x(iG);
                    int iG6 = hVar.g();
                    int iG7 = hVar.g();
                    int iU2 = u(iG7);
                    int iV2 = v(iG7);
                    int iW4 = w(iG7);
                    int iX4 = x(iG7);
                    int iG8 = hVar.g();
                    int iL2 = l(iA);
                    if (iX3 < 1 || iX3 > 5) {
                        throw new DexException("bogus registerCount: " + p008if.a.f(iX3));
                    }
                    eVar.d(iC, iA, iG6, iL2, iG8, Arrays.copyOfRange(new int[]{iU2, iV2, iW4, iX4, iW3}, 0, iX3));
                    break;
                    break;
                case 27:
                    if (iA != 251) {
                        throw new UnsupportedOperationException(String.valueOf(iA));
                    }
                    eVar.e(iC, iA, hVar.g(), l(iA), hVar.g(), c(iG), hVar.g());
                    break;
                    break;
                case 28:
                    int iB = hVar.b();
                    int iG9 = hVar.g();
                    int iH2 = hVar.h();
                    int[] iArr = new int[iG9];
                    while (i11 < iG9) {
                        iArr[i11] = hVar.h() + iB;
                        i11++;
                    }
                    eVar.g(iC, iG, iH2, iArr);
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    int iB2 = hVar.b();
                    int iG10 = hVar.g();
                    int[] iArr2 = new int[iG10];
                    int[] iArr3 = new int[iG10];
                    for (int i12 = 0; i12 < iG10; i12++) {
                        iArr2[i12] = hVar.h();
                    }
                    while (i11 < iG10) {
                        iArr3[i11] = hVar.h() + iB2;
                        i11++;
                    }
                    eVar.i(iC, iG, iArr2, iArr3);
                    break;
                case 30:
                    int iG11 = hVar.g();
                    int iH3 = hVar.h();
                    if (iG11 == 1) {
                        byte[] bArr = new byte[iH3];
                        int iG12 = 0;
                        while (i11 < iH3) {
                            if (z10) {
                                iG12 = hVar.g();
                            }
                            bArr[i11] = (byte) (iG12 & 255);
                            iG12 >>= 8;
                            i11++;
                            z10 = !z10;
                        }
                        eVar.a(iC, iG, bArr, iH3, 1);
                    } else if (iG11 == 2) {
                        short[] sArr = new short[iH3];
                        while (i11 < iH3) {
                            sArr[i11] = (short) hVar.g();
                            i11++;
                        }
                        eVar.a(iC, iG, sArr, iH3, 2);
                    } else if (iG11 != 4) {
                        if (iG11 != 8) {
                            throw new DexException("bogus element_width: " + p008if.a.b(iG11));
                        }
                        long[] jArr = new long[iH3];
                        while (i11 < iH3) {
                            jArr[i11] = hVar.i();
                            i11++;
                        }
                        eVar.a(iC, iG, jArr, iH3, 8);
                    } else {
                        int[] iArr4 = new int[iH3];
                        while (i11 < iH3) {
                            iArr4[i11] = hVar.h();
                            i11++;
                        }
                        eVar.a(iC, iG, iArr4, iH3, 4);
                    }
                    break;
                default:
                    throw new DexException("Unknown instruction format: " + iK);
            }
        }
    }

    public static void g(i iVar, f fVar) {
        int i11 = fVar.f64437e;
        int iK = k(i11);
        int i12 = 0;
        switch (iK) {
            case 1:
            case 3:
                iVar.h((short) i11);
                return;
            case 2:
                iVar.h(d(i11, r(fVar.f64439g, iVar.c())));
                return;
            case 4:
                iVar.h(d(i11, t(fVar.f64442j, o(fVar.f64440h))));
                return;
            case 5:
                iVar.h(d(i11, fVar.f64442j));
                return;
            case 6:
                iVar.h(d(i11, t(fVar.f64442j, fVar.f64443k)));
                return;
            case 7:
                iVar.i((short) i11, s(fVar.f64439g, iVar.c()));
                return;
            case 8:
                iVar.i(d(i11, fVar.f64442j), (short) fVar.f64438f);
                return;
            case 9:
                iVar.i(d(i11, fVar.f64442j), (short) (fVar.f64440h >> (i11 == 21 ? (char) 16 : '0')));
                return;
            case 10:
                iVar.i(d(i11, fVar.f64442j), p(fVar.f64440h));
                return;
            case 11:
                iVar.i(d(i11, fVar.f64442j), s(fVar.f64439g, iVar.c()));
                return;
            case 12:
                iVar.i(d(i11, fVar.f64442j), d(fVar.f64443k, m(fVar.f64440h)));
                return;
            case 13:
                iVar.i(d(i11, t(fVar.f64442j, fVar.f64443k)), (short) fVar.f64438f);
                return;
            case 14:
                iVar.i(d(i11, t(fVar.f64442j, fVar.f64443k)), p(fVar.f64440h));
                return;
            case 15:
                iVar.i(d(i11, t(fVar.f64442j, fVar.f64443k)), s(fVar.f64439g, iVar.c()));
                return;
            case 16:
                iVar.i(d(i11, fVar.f64442j), i(fVar.f64443k));
                return;
            case 17:
                iVar.i(d(i11, fVar.f64442j), d(fVar.f64443k, fVar.f64444l));
                return;
            case 18:
                int iQ = q(fVar.f64439g, iVar.c());
                iVar.j((short) i11, y(iQ), A(iQ));
                return;
            case 19:
                int i13 = fVar.f64438f;
                iVar.j(d(i11, fVar.f64442j), y(i13), A(i13));
                return;
            case 20:
                int iN = n(fVar.f64440h);
                iVar.j(d(i11, fVar.f64442j), y(iN), A(iN));
                return;
            case 21:
                if (i11 == 43 || i11 == 44) {
                    iVar.e(fVar.f64439g, iVar.c());
                }
                int iQ2 = q(fVar.f64439g, iVar.c());
                iVar.j(d(i11, fVar.f64442j), y(iQ2), A(iQ2));
                return;
            case 22:
                iVar.j((short) i11, h(fVar.f64442j), i(fVar.f64443k));
                return;
            case 23:
                iVar.j(d(i11, t(fVar.f64446n, fVar.f64441i)), (short) fVar.f64438f, e(fVar.f64442j, fVar.f64443k, fVar.f64444l, fVar.f64445m));
                return;
            case 24:
                iVar.j(d(i11, fVar.f64441i), (short) fVar.f64438f, h(fVar.f64442j));
                return;
            case 25:
                long j11 = fVar.f64440h;
                iVar.l(d(i11, fVar.f64442j), z(j11), B(j11), C(j11), D(j11));
                return;
            case 26:
                iVar.k(d(i11, t(fVar.f64448p, fVar.f64441i)), (short) fVar.f64438f, e(fVar.f64444l, fVar.f64445m, fVar.f64446n, fVar.f64447o), (short) fVar.f64449q);
                return;
            case 27:
                iVar.k(d(i11, fVar.f64441i), (short) fVar.f64438f, j(fVar.f64444l), (short) fVar.f64449q);
                return;
            case 28:
                int[] iArr = fVar.f64451s;
                int iB = iVar.b();
                iVar.h((short) i11);
                iVar.h(a(iArr.length));
                iVar.q(fVar.f64452t);
                int length = iArr.length;
                while (i12 < length) {
                    iVar.q(iArr[i12] - iB);
                    i12++;
                }
                return;
            case NOTIFICATION_REDIRECT_VALUE:
                int[] iArr2 = fVar.f64450r;
                int[] iArr3 = fVar.f64451s;
                int iB2 = iVar.b();
                iVar.h((short) i11);
                iVar.h(a(iArr3.length));
                for (int i14 : iArr2) {
                    iVar.q(i14);
                }
                int length2 = iArr3.length;
                while (i12 < length2) {
                    iVar.q(iArr3[i12] - iB2);
                    i12++;
                }
                return;
            case 30:
                short s11 = (short) fVar.f64453u;
                iVar.h((short) i11);
                iVar.h(s11);
                iVar.q(fVar.f64455w);
                Object obj = fVar.f64454v;
                if (s11 == 1) {
                    iVar.m((byte[]) obj);
                    return;
                }
                if (s11 == 2) {
                    iVar.p((short[]) obj);
                    return;
                }
                if (s11 == 4) {
                    iVar.n((int[]) obj);
                    return;
                } else {
                    if (s11 == 8) {
                        iVar.o((long[]) obj);
                        return;
                    }
                    throw new DexException("bogus element_width: " + p008if.a.b(s11));
                }
            default:
                throw new DexException("Unknown instruction format: " + iK);
        }
    }

    public static short h(int i11) {
        if (((-65536) & i11) == 0) {
            return (short) i11;
        }
        throw new DexException("Register A out of range: " + p008if.a.e(i11));
    }

    public static short i(int i11) {
        if (((-65536) & i11) == 0) {
            return (short) i11;
        }
        throw new DexException("Register B out of range: " + p008if.a.e(i11));
    }

    public static short j(int i11) {
        if (((-65536) & i11) == 0) {
            return (short) i11;
        }
        throw new DexException("Register C out of range: " + p008if.a.e(i11));
    }

    public static int k(int i11) {
        if (i11 == 512) {
            return 29;
        }
        if (i11 == 768) {
            return 30;
        }
        switch (i11) {
            case -1:
                return 1;
            case 0:
            case 14:
                return 3;
            case 1:
            case 4:
            case 7:
            case 33:
                return 6;
            case 2:
            case 5:
            case 8:
                return 16;
            case 3:
            case 6:
            case 9:
                return 22;
            case 10:
            case 11:
            case 12:
            case 13:
            case 15:
            case 16:
            case 17:
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
            case 39:
                return 5;
            case 18:
                return 4;
            case 19:
            case 22:
                return 10;
            case 20:
            case 23:
                return 20;
            case 21:
            case 25:
                return 9;
            case 24:
                return 25;
            case 26:
            case 28:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 34:
                return 8;
            case 27:
                return 19;
            case 32:
            case 35:
                return 13;
            case 36:
                return 23;
            case 37:
                return 24;
            case 38:
            case 43:
            case 44:
                return 21;
            case 40:
                return 2;
            case 41:
                return 7;
            case 42:
                return 18;
            case 45:
            case 46:
            case 47:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                return 17;
            case 50:
            case AD_REWARD_USER_VALUE:
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                return 15;
            case AD_VISIBILITY_VALUE:
            case 57:
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
            case 59:
            case 60:
            case 61:
                return 11;
            default:
                switch (i11) {
                    case 68:
                    case 69:
                    case 70:
                    case 71:
                    case 72:
                    case 73:
                    case 74:
                    case 75:
                    case 76:
                    case 77:
                    case 78:
                    case 79:
                    case 80:
                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW /* 81 */:
                        return 17;
                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW /* 82 */:
                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                    case 84:
                    case 85:
                    case 86:
                    case 87:
                    case 88:
                    case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
                    case TmcConstants.NOTIFY_ADDHOME_API_SHOW /* 90 */:
                    case 91:
                    case 92:
                    case 93:
                    case MBSupportMuteAdType.REWARD_VIDEO /* 94 */:
                    case 95:
                        return 13;
                    case 96:
                    case 97:
                    case 98:
                    case 99:
                    case 100:
                    case 101:
                    case 102:
                    case 103:
                    case 104:
                    case 105:
                    case 106:
                    case 107:
                    case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                    case 109:
                        return 8;
                    case 110:
                    case 111:
                    case 112:
                    case 113:
                    case ASSET_WRITE_ERROR_VALUE:
                        return 23;
                    default:
                        switch (i11) {
                            case GZIP_ENCODE_ERROR_VALUE:
                            case ASSET_FAILED_STATUS_CODE_VALUE:
                            case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                            case JSON_ENCODE_ERROR_VALUE:
                            case 120:
                                return 24;
                            default:
                                switch (i11) {
                                    case INVALID_RI_ENDPOINT_VALUE:
                                    case INVALID_LOG_ERROR_ENDPOINT_VALUE:
                                    case INVALID_METRICS_ENDPOINT_VALUE:
                                    case 126:
                                    case 127:
                                    case 128:
                                    case 129:
                                    case 130:
                                    case MRAID_JS_WRITE_FAILED_VALUE:
                                    case OMSDK_DOWNLOAD_JS_ERROR_VALUE:
                                    case OMSDK_JS_WRITE_FAILED_VALUE:
                                    case 134:
                                    case 135:
                                    case PRIVACY_URL_ERROR_VALUE:
                                    case TPAT_RETRY_FAILED_VALUE:
                                    case 138:
                                    case 139:
                                    case 140:
                                    case 141:
                                    case 142:
                                    case 143:
                                    case 176:
                                    case 177:
                                    case 178:
                                    case 179:
                                    case 180:
                                    case 181:
                                    case 182:
                                    case 183:
                                    case 184:
                                    case 185:
                                    case 186:
                                    case 187:
                                    case 188:
                                    case PsExtractor.PRIVATE_STREAM_1 /* 189 */:
                                    case 190:
                                    case 191:
                                    case PsExtractor.AUDIO_STREAM /* 192 */:
                                    case 193:
                                    case 194:
                                    case 195:
                                    case 196:
                                    case 197:
                                    case 198:
                                    case 199:
                                    case 200:
                                    case 201:
                                    case AD_CONSUMED_VALUE:
                                    case AD_IS_LOADING_VALUE:
                                    case AD_ALREADY_LOADED_VALUE:
                                    case AD_IS_PLAYING_VALUE:
                                    case AD_ALREADY_FAILED_VALUE:
                                    case PLACEMENT_AD_TYPE_MISMATCH_VALUE:
                                        return 6;
                                    case 144:
                                    case 145:
                                    case 146:
                                    case 147:
                                    case 148:
                                    case 149:
                                    case 150:
                                    case 151:
                                    case 152:
                                    case 153:
                                    case 154:
                                    case 155:
                                    case 156:
                                    case 157:
                                    case 158:
                                    case 159:
                                    case 160:
                                    case 161:
                                    case 162:
                                    case 163:
                                    case 164:
                                    case 165:
                                    case 166:
                                    case 167:
                                    case 168:
                                    case 169:
                                    case 170:
                                    case 171:
                                    case 172:
                                    case 173:
                                    case 174:
                                    case 175:
                                        return 17;
                                    case INVALID_BID_PAYLOAD_VALUE:
                                    case INVALID_JSON_BID_PAYLOAD_VALUE:
                                    case AD_NOT_LOADED_VALUE:
                                    case 211:
                                    case PLACEMENT_SLEEP_VALUE:
                                    case INVALID_ADUNIT_BID_PAYLOAD_VALUE:
                                    case INVALID_GZIP_BID_PAYLOAD_VALUE:
                                    case AD_RESPONSE_EMPTY_VALUE:
                                        return 14;
                                    case AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE:
                                    case AD_RESPONSE_TIMED_OUT_VALUE:
                                    case MRAID_JS_DOES_NOT_EXIST_VALUE:
                                    case MRAID_JS_COPY_FAILED_VALUE:
                                    case AD_RESPONSE_RETRY_AFTER_VALUE:
                                    case AD_LOAD_FAIL_RETRY_AFTER_VALUE:
                                    case INVALID_WATERFALL_PLACEMENT_ID_VALUE:
                                    case STALE_CACHED_RESPONSE_VALUE:
                                    case 224:
                                    case 225:
                                    case 226:
                                        return 12;
                                    default:
                                        switch (i11) {
                                            case 250:
                                                return 26;
                                            case 251:
                                                return 27;
                                            case 252:
                                                return 23;
                                            case 253:
                                                return 24;
                                            case 254:
                                            case 255:
                                                return 8;
                                            case 256:
                                                return 28;
                                            default:
                                                return 0;
                                        }
                                }
                        }
                }
        }
    }

    public static int l(int i11) {
        if (i11 == 512 || i11 == 768) {
            return 1;
        }
        switch (i11) {
            case -1:
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
            case 33:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
            case 50:
            case AD_REWARD_USER_VALUE:
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case AD_VISIBILITY_VALUE:
            case 57:
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
            case 59:
            case 60:
            case 61:
                return 1;
            case 26:
            case 27:
                return 3;
            case 28:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 32:
            case 34:
            case 35:
            case 36:
            case 37:
                return 2;
            default:
                switch (i11) {
                    case 68:
                    case 69:
                    case 70:
                    case 71:
                    case 72:
                    case 73:
                    case 74:
                    case 75:
                    case 76:
                    case 77:
                    case 78:
                    case 79:
                    case 80:
                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW /* 81 */:
                        return 1;
                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW /* 82 */:
                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                    case 84:
                    case 85:
                    case 86:
                    case 87:
                    case 88:
                    case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
                    case TmcConstants.NOTIFY_ADDHOME_API_SHOW /* 90 */:
                    case 91:
                    case 92:
                    case 93:
                    case MBSupportMuteAdType.REWARD_VIDEO /* 94 */:
                    case 95:
                    case 96:
                    case 97:
                    case 98:
                    case 99:
                    case 100:
                    case 101:
                    case 102:
                    case 103:
                    case 104:
                    case 105:
                    case 106:
                    case 107:
                    case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                    case 109:
                        return 5;
                    case 110:
                    case 111:
                    case 112:
                    case 113:
                    case ASSET_WRITE_ERROR_VALUE:
                        return 4;
                    default:
                        switch (i11) {
                            case GZIP_ENCODE_ERROR_VALUE:
                            case ASSET_FAILED_STATUS_CODE_VALUE:
                            case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                            case JSON_ENCODE_ERROR_VALUE:
                            case 120:
                                return 4;
                            default:
                                switch (i11) {
                                    case INVALID_RI_ENDPOINT_VALUE:
                                    case INVALID_LOG_ERROR_ENDPOINT_VALUE:
                                    case INVALID_METRICS_ENDPOINT_VALUE:
                                    case 126:
                                    case 127:
                                    case 128:
                                    case 129:
                                    case 130:
                                    case MRAID_JS_WRITE_FAILED_VALUE:
                                    case OMSDK_DOWNLOAD_JS_ERROR_VALUE:
                                    case OMSDK_JS_WRITE_FAILED_VALUE:
                                    case 134:
                                    case 135:
                                    case PRIVACY_URL_ERROR_VALUE:
                                    case TPAT_RETRY_FAILED_VALUE:
                                    case 138:
                                    case 139:
                                    case 140:
                                    case 141:
                                    case 142:
                                    case 143:
                                    case 144:
                                    case 145:
                                    case 146:
                                    case 147:
                                    case 148:
                                    case 149:
                                    case 150:
                                    case 151:
                                    case 152:
                                    case 153:
                                    case 154:
                                    case 155:
                                    case 156:
                                    case 157:
                                    case 158:
                                    case 159:
                                    case 160:
                                    case 161:
                                    case 162:
                                    case 163:
                                    case 164:
                                    case 165:
                                    case 166:
                                    case 167:
                                    case 168:
                                    case 169:
                                    case 170:
                                    case 171:
                                    case 172:
                                    case 173:
                                    case 174:
                                    case 175:
                                    case 176:
                                    case 177:
                                    case 178:
                                    case 179:
                                    case 180:
                                    case 181:
                                    case 182:
                                    case 183:
                                    case 184:
                                    case 185:
                                    case 186:
                                    case 187:
                                    case 188:
                                    case PsExtractor.PRIVATE_STREAM_1 /* 189 */:
                                    case 190:
                                    case 191:
                                    case PsExtractor.AUDIO_STREAM /* 192 */:
                                    case 193:
                                    case 194:
                                    case 195:
                                    case 196:
                                    case 197:
                                    case 198:
                                    case 199:
                                    case 200:
                                    case 201:
                                    case AD_CONSUMED_VALUE:
                                    case AD_IS_LOADING_VALUE:
                                    case AD_ALREADY_LOADED_VALUE:
                                    case AD_IS_PLAYING_VALUE:
                                    case AD_ALREADY_FAILED_VALUE:
                                    case PLACEMENT_AD_TYPE_MISMATCH_VALUE:
                                    case INVALID_BID_PAYLOAD_VALUE:
                                    case INVALID_JSON_BID_PAYLOAD_VALUE:
                                    case AD_NOT_LOADED_VALUE:
                                    case 211:
                                    case PLACEMENT_SLEEP_VALUE:
                                    case INVALID_ADUNIT_BID_PAYLOAD_VALUE:
                                    case INVALID_GZIP_BID_PAYLOAD_VALUE:
                                    case AD_RESPONSE_EMPTY_VALUE:
                                    case AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE:
                                    case AD_RESPONSE_TIMED_OUT_VALUE:
                                    case MRAID_JS_DOES_NOT_EXIST_VALUE:
                                    case MRAID_JS_COPY_FAILED_VALUE:
                                    case AD_RESPONSE_RETRY_AFTER_VALUE:
                                    case AD_LOAD_FAIL_RETRY_AFTER_VALUE:
                                    case INVALID_WATERFALL_PLACEMENT_ID_VALUE:
                                    case STALE_CACHED_RESPONSE_VALUE:
                                    case 224:
                                    case 225:
                                    case 226:
                                        return 1;
                                    default:
                                        switch (i11) {
                                            case 250:
                                            case 251:
                                                return 6;
                                            case 252:
                                            case 253:
                                                return 7;
                                            case 254:
                                                return 8;
                                            case 255:
                                                return 9;
                                            case 256:
                                                return 1;
                                            default:
                                                return 0;
                                        }
                                }
                        }
                }
        }
    }

    public static int m(long j11) {
        int i11 = (int) j11;
        if (j11 == ((byte) i11)) {
            return i11 & 255;
        }
        throw new DexException("Literal out of range: " + p008if.a.e(j11));
    }

    public static int n(long j11) {
        int i11 = (int) j11;
        if (j11 == i11) {
            return i11;
        }
        throw new DexException("Literal out of range: " + p008if.a.e(j11));
    }

    public static int o(long j11) {
        if (j11 >= -8 && j11 <= 7) {
            return ((int) j11) & 15;
        }
        throw new DexException("Literal out of range: " + p008if.a.e(j11));
    }

    public static short p(long j11) {
        short s11 = (short) j11;
        if (j11 == s11) {
            return s11;
        }
        throw new DexException("Literal out of range: " + p008if.a.e(j11));
    }

    public static int q(int i11, int i12) {
        return i11 - i12;
    }

    public static int r(int i11, int i12) {
        int iQ = q(i11, i12);
        if (iQ == ((byte) iQ)) {
            return iQ & 255;
        }
        throw new DexException("Target out of range: " + p008if.a.a(iQ) + ", perhaps you need to enable force jumbo mode.");
    }

    public static short s(int i11, int i12) {
        int iQ = q(i11, i12);
        short s11 = (short) iQ;
        if (iQ == s11) {
            return s11;
        }
        throw new DexException("Target out of range: " + p008if.a.a(iQ) + ", perhaps you need to enable force jumbo mode.");
    }

    public static int t(int i11, int i12) {
        if ((i11 & (-16)) != 0) {
            throw new IllegalArgumentException("bogus lowNibble");
        }
        if ((i12 & (-16)) == 0) {
            return i11 | (i12 << 4);
        }
        throw new IllegalArgumentException("bogus highNibble");
    }

    private static int u(int i11) {
        return i11 & 15;
    }

    private static int v(int i11) {
        return (i11 >> 4) & 15;
    }

    private static int w(int i11) {
        return (i11 >> 8) & 15;
    }

    private static int x(int i11) {
        return (i11 >> 12) & 15;
    }

    public static short y(int i11) {
        return (short) i11;
    }

    public static short z(long j11) {
        return (short) j11;
    }
}
