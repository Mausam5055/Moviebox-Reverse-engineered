package h10;

import androidx.core.view.ViewCompat;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.TsExtractor;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes7.dex */
class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    q f64141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f64142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f64143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f64144d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int[] f64145e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private short f64146f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private short f64147g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64148h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f64149i;

    n(q qVar) {
        this.f64141a = qVar;
    }

    private void b(int i11) {
        if (this.f64149i == null) {
            this.f64149i = new int[2];
        }
        int length = this.f64149i.length;
        int i12 = this.f64148h;
        if (i12 >= length) {
            int[] iArr = new int[Math.max(i12 + 1, length * 2)];
            System.arraycopy(this.f64149i, 0, iArr, 0, length);
            this.f64149i = iArr;
        }
        int[] iArr2 = this.f64149i;
        int i13 = this.f64148h;
        this.f64148h = i13 + 1;
        iArr2[i13] = i11;
    }

    static int e(x xVar, Object obj) {
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue() | 16777216;
        }
        return obj instanceof String ? f(xVar, y.k((String) obj).e(), 0) : xVar.K("", ((q) obj).f64165d) | 50331648;
    }

    private static int f(x xVar, String str, int i11) {
        char cCharAt = str.charAt(i11);
        int I = 16777218;
        if (cCharAt == 'F') {
            return 16777218;
        }
        if (cCharAt == 'L') {
            return xVar.I(str.substring(i11 + 1, str.length() - 1)) | ASTNode.PCTX_STORED;
        }
        if (cCharAt != 'S') {
            if (cCharAt == 'V') {
                return 0;
            }
            if (cCharAt != 'I') {
                if (cCharAt == 'J') {
                    return 16777220;
                }
                if (cCharAt != 'Z') {
                    if (cCharAt == '[') {
                        int i12 = i11 + 1;
                        while (str.charAt(i12) == '[') {
                            i12++;
                        }
                        char cCharAt2 = str.charAt(i12);
                        if (cCharAt2 != 'F') {
                            if (cCharAt2 == 'L') {
                                I = xVar.I(str.substring(i12 + 1, str.length() - 1)) | ASTNode.PCTX_STORED;
                            } else if (cCharAt2 == 'S') {
                                I = 16777228;
                            } else if (cCharAt2 == 'Z') {
                                I = 16777225;
                            } else if (cCharAt2 == 'I') {
                                I = 16777217;
                            } else if (cCharAt2 != 'J') {
                                switch (cCharAt2) {
                                    case 'B':
                                        I = 16777226;
                                        break;
                                    case 'C':
                                        I = 16777227;
                                        break;
                                    case 'D':
                                        I = 16777219;
                                        break;
                                    default:
                                        throw new IllegalArgumentException();
                                }
                            } else {
                                I = 16777220;
                            }
                        }
                        return ((i12 - i11) << 28) | I;
                    }
                    switch (cCharAt) {
                        case 'B':
                        case 'C':
                            break;
                        case 'D':
                            return 16777219;
                        default:
                            throw new IllegalArgumentException();
                    }
                }
            }
        }
        return 16777217;
    }

    static int g(x xVar, String str) {
        return xVar.I(str) | ASTNode.PCTX_STORED;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003b  */
    /* JADX WARN: Code duplicated, block: B:22:0x0045  */
    /* JADX WARN: Code duplicated, block: B:23:0x0051 A[LOOP:0: B:7:0x000d->B:23:0x0051, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x0037 A[SYNTHETIC] */
    private int h(x xVar, int i11) {
        int i12;
        int I;
        if (i11 == 16777222 || ((-16777216) & i11) == 50331648) {
            for (int i13 = 0; i13 < this.f64148h; i13++) {
                int i14 = this.f64149i[i13];
                int i15 = (-268435456) & i14;
                int i16 = 251658240 & i14;
                int i17 = i14 & 1048575;
                if (i16 == 67108864) {
                    i12 = this.f64142b[i17];
                } else {
                    if (i16 == 83886080) {
                        int[] iArr = this.f64143c;
                        i12 = iArr[iArr.length - i17];
                    }
                    if (i11 == i14) {
                        if (i11 == 16777222) {
                            I = xVar.I(xVar.O());
                        } else {
                            I = xVar.I(xVar.T(i11 & 1048575).f64234e);
                        }
                        return I | ASTNode.PCTX_STORED;
                    }
                }
                i14 = i12 + i15;
                if (i11 == i14) {
                    if (i11 == 16777222) {
                        I = xVar.I(xVar.O());
                    } else {
                        I = xVar.I(xVar.T(i11 & 1048575).f64234e);
                    }
                    return I | ASTNode.PCTX_STORED;
                }
            }
        }
        return i11;
    }

    private int j(int i11) {
        int[] iArr = this.f64144d;
        if (iArr == null || i11 >= iArr.length) {
            return i11 | 67108864;
        }
        int i12 = iArr[i11];
        if (i12 != 0) {
            return i12;
        }
        int i13 = i11 | 67108864;
        iArr[i11] = i13;
        return i13;
    }

    private static boolean k(x xVar, int i11, int[] iArr, int i12) {
        int iMin;
        int I;
        int i13 = iArr[i12];
        if (i13 == i11) {
            return false;
        }
        if ((268435455 & i11) == 16777221) {
            if (i13 == 16777221) {
                return false;
            }
            i11 = 16777221;
        }
        if (i13 == 0) {
            iArr[i12] = i11;
            return true;
        }
        int i14 = i13 & (-268435456);
        int iH = 16777216;
        if (i14 != 0 || (i13 & 251658240) == 33554432) {
            if (i11 == 16777221) {
                return false;
            }
            if ((i11 & ViewCompat.MEASURED_STATE_MASK) != ((-16777216) & i13)) {
                int i15 = i11 & (-268435456);
                if (i15 != 0 || (i11 & 251658240) == 33554432) {
                    if (i15 != 0 && (i11 & 251658240) != 33554432) {
                        i15 -= 268435456;
                    }
                    if (i14 != 0 && (i13 & 251658240) != 33554432) {
                        i14 -= 268435456;
                    }
                    iMin = Math.min(i15, i14) | ASTNode.PCTX_STORED;
                    I = xVar.I("java/lang/Object");
                    iH = iMin | I;
                }
            } else if ((i13 & 251658240) == 33554432) {
                iH = (i11 & (-268435456)) | ASTNode.PCTX_STORED | xVar.H(i11 & 1048575, 1048575 & i13);
            } else {
                iMin = ((i11 & (-268435456)) - 268435456) | ASTNode.PCTX_STORED;
                I = xVar.I("java/lang/Object");
                iH = iMin | I;
            }
        } else if (i13 == 16777221) {
            if ((i11 & (-268435456)) == 0 && (i11 & 251658240) != 33554432) {
                i11 = 16777216;
            }
            iH = i11;
        }
        if (iH == i13) {
            return false;
        }
        iArr[i12] = iH;
        return true;
    }

    private int m() {
        short s11 = this.f64147g;
        if (s11 <= 0) {
            short s12 = (short) (this.f64146f - 1);
            this.f64146f = s12;
            return (-s12) | 83886080;
        }
        int[] iArr = this.f64145e;
        short s13 = (short) (s11 - 1);
        this.f64147g = s13;
        return iArr[s13];
    }

    private void n(int i11) {
        short s11 = this.f64147g;
        if (s11 >= i11) {
            this.f64147g = (short) (s11 - i11);
        } else {
            this.f64146f = (short) (this.f64146f - (i11 - s11));
            this.f64147g = (short) 0;
        }
    }

    private void o(String str) {
        char cCharAt = str.charAt(0);
        if (cCharAt == '(') {
            n((y.c(str) >> 2) - 1);
        } else if (cCharAt == 'J' || cCharAt == 'D') {
            n(2);
        } else {
            n(1);
        }
    }

    private void p(int i11) {
        if (this.f64145e == null) {
            this.f64145e = new int[10];
        }
        int length = this.f64145e.length;
        short s11 = this.f64147g;
        if (s11 >= length) {
            int[] iArr = new int[Math.max(s11 + 1, length * 2)];
            System.arraycopy(this.f64145e, 0, iArr, 0, length);
            this.f64145e = iArr;
        }
        int[] iArr2 = this.f64145e;
        short s12 = this.f64147g;
        short s13 = (short) (s12 + 1);
        this.f64147g = s13;
        iArr2[s12] = i11;
        short s14 = (short) (this.f64146f + s13);
        q qVar = this.f64141a;
        if (s14 > qVar.f64169h) {
            qVar.f64169h = s14;
        }
    }

    private void q(x xVar, String str) {
        int iF = f(xVar, str, str.charAt(0) == '(' ? str.indexOf(41) + 1 : 0);
        if (iF != 0) {
            p(iF);
            if (iF == 16777220 || iF == 16777219) {
                p(16777216);
            }
        }
    }

    static void r(x xVar, int i11, d dVar) {
        int i12 = ((-268435456) & i11) >> 28;
        if (i12 == 0) {
            int i13 = i11 & 1048575;
            int i14 = i11 & 251658240;
            if (i14 == 16777216) {
                dVar.g(i13);
                return;
            } else if (i14 == 33554432) {
                dVar.g(7).k(xVar.e(xVar.T(i13).f64234e).f64230a);
                return;
            } else {
                if (i14 != 50331648) {
                    throw new AssertionError();
                }
                dVar.g(8).k((int) xVar.T(i13).f64235f);
                return;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int i15 = i12 - 1;
            if (i12 <= 0) {
                break;
            }
            sb2.append('[');
            i12 = i15;
        }
        if ((i11 & 251658240) == 33554432) {
            sb2.append('L');
            sb2.append(xVar.T(i11 & 1048575).f64234e);
            sb2.append(';');
        } else {
            int i16 = i11 & 1048575;
            if (i16 == 1) {
                sb2.append('I');
            } else if (i16 == 2) {
                sb2.append('F');
            } else if (i16 == 3) {
                sb2.append('D');
            } else if (i16 != 4) {
                switch (i16) {
                    case 9:
                        sb2.append('Z');
                        break;
                    case 10:
                        sb2.append('B');
                        break;
                    case 11:
                        sb2.append('C');
                        break;
                    case 12:
                        sb2.append('S');
                        break;
                    default:
                        throw new AssertionError();
                }
            } else {
                sb2.append('J');
            }
        }
        dVar.g(7).k(xVar.e(sb2.toString()).f64230a);
    }

    private void u(int i11, int i12) {
        if (this.f64144d == null) {
            this.f64144d = new int[10];
        }
        int length = this.f64144d.length;
        if (i11 >= length) {
            int[] iArr = new int[Math.max(i11 + 1, length * 2)];
            System.arraycopy(this.f64144d, 0, iArr, 0, length);
            this.f64144d = iArr;
        }
        this.f64144d[i11] = i12;
    }

    final void a(s sVar) {
        int[] iArr = this.f64142b;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int i15 = 2;
            if (i12 >= iArr.length) {
                break;
            }
            int i16 = iArr[i12];
            if (i16 != 16777220 && i16 != 16777219) {
                i15 = 1;
            }
            i12 += i15;
            if (i16 == 16777216) {
                i14++;
            } else {
                i13 += i14 + 1;
                i14 = 0;
            }
        }
        int[] iArr2 = this.f64143c;
        int i17 = 0;
        int i18 = 0;
        while (i17 < iArr2.length) {
            int i19 = iArr2[i17];
            i17 += (i19 == 16777220 || i19 == 16777219) ? 2 : 1;
            i18++;
        }
        int iV = sVar.V(this.f64141a.f64165d, i13, i18);
        int i20 = 0;
        while (true) {
            int i21 = i13 - 1;
            if (i13 <= 0) {
                break;
            }
            int i22 = iArr[i20];
            i20 += (i22 == 16777220 || i22 == 16777219) ? 2 : 1;
            sVar.T(iV, i22);
            i13 = i21;
            iV++;
        }
        while (true) {
            int i23 = i18 - 1;
            if (i18 <= 0) {
                sVar.U();
                return;
            }
            int i24 = iArr2[i11];
            i11 += (i24 == 16777220 || i24 == 16777219) ? 2 : 1;
            sVar.T(iV, i24);
            iV++;
            i18 = i23;
        }
    }

    final void c(n nVar) {
        this.f64142b = nVar.f64142b;
        this.f64143c = nVar.f64143c;
        this.f64146f = (short) 0;
        this.f64144d = nVar.f64144d;
        this.f64145e = nVar.f64145e;
        this.f64147g = nVar.f64147g;
        this.f64148h = nVar.f64148h;
        this.f64149i = nVar.f64149i;
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0344  */
    /* JADX WARN: Code duplicated, block: B:120:0x034b  */
    /* JADX WARN: Code duplicated, block: B:121:0x034f  */
    /* JADX WARN: Code duplicated, block: B:122:0x0356  */
    /* JADX WARN: Code duplicated, block: B:50:0x0147  */
    /* JADX WARN: Code duplicated, block: B:52:0x0152  */
    /* JADX WARN: Code duplicated, block: B:59:0x018e  */
    /* JADX WARN: Code duplicated, block: B:61:0x019c  */
    void d(int i11, int i12, w wVar, x xVar) {
        switch (i11) {
            case 0:
                return;
            case 1:
                p(16777221);
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 16:
            case 17:
                p(16777217);
                return;
            case 9:
            case 10:
                p(16777220);
                p(16777216);
                return;
            case 11:
            case 12:
            case 13:
                p(16777218);
                return;
            case 14:
            case 15:
                p(16777219);
                p(16777216);
                return;
            case 18:
                int i13 = wVar.f64231b;
                switch (i13) {
                    case 3:
                        p(16777217);
                        return;
                    case 4:
                        p(16777218);
                        return;
                    case 5:
                        p(16777220);
                        p(16777216);
                        return;
                    case 6:
                        p(16777219);
                        p(16777216);
                        return;
                    case 7:
                        p(xVar.I("java/lang/Class") | ASTNode.PCTX_STORED);
                        return;
                    case 8:
                        p(xVar.I("java/lang/String") | ASTNode.PCTX_STORED);
                        return;
                    default:
                        switch (i13) {
                            case 15:
                                p(xVar.I("java/lang/invoke/MethodHandle") | ASTNode.PCTX_STORED);
                                return;
                            case 16:
                                p(xVar.I("java/lang/invoke/MethodType") | ASTNode.PCTX_STORED);
                                return;
                            case 17:
                                q(xVar, wVar.f64234e);
                                return;
                            default:
                                throw new AssertionError();
                        }
                }
            default:
                switch (i11) {
                    case 21:
                        p(16777217);
                        return;
                    case 22:
                        p(16777220);
                        p(16777216);
                        return;
                    case 23:
                        p(16777218);
                        return;
                    case 24:
                        p(16777219);
                        p(16777216);
                        return;
                    case 25:
                        p(j(i12));
                        return;
                    default:
                        switch (i11) {
                            case 46:
                            case AD_REWARD_USER_VALUE:
                            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                n(2);
                                p(16777217);
                                return;
                            case 47:
                                n(2);
                                p(16777220);
                                p(16777216);
                                return;
                            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                n(2);
                                p(16777218);
                                return;
                            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                n(2);
                                p(16777219);
                                p(16777216);
                                return;
                            case 50:
                                n(1);
                                int iM = m();
                                if (iM != 16777221) {
                                    iM -= 268435456;
                                }
                                p(iM);
                                return;
                            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                            case AD_VISIBILITY_VALUE:
                            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                u(i12, m());
                                if (i12 > 0) {
                                    int i14 = i12 - 1;
                                    int iJ = j(i14);
                                    if (iJ == 16777220 || iJ == 16777219) {
                                        u(i14, 16777216);
                                        return;
                                    }
                                    int i15 = iJ & 251658240;
                                    if (i15 == 67108864 || i15 == 83886080) {
                                        u(i14, iJ | 1048576);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                            case 57:
                                n(1);
                                u(i12, m());
                                u(i12 + 1, 16777216);
                                if (i12 > 0) {
                                    int i16 = i12 - 1;
                                    int iJ2 = j(i16);
                                    if (iJ2 == 16777220 || iJ2 == 16777219) {
                                        u(i16, 16777216);
                                        return;
                                    }
                                    int i17 = iJ2 & 251658240;
                                    if (i17 == 67108864 || i17 == 83886080) {
                                        u(i16, iJ2 | 1048576);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            default:
                                switch (i11) {
                                    case 79:
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_TOP_SHOW /* 81 */:
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                                    case 84:
                                    case 85:
                                    case 86:
                                        n(3);
                                        return;
                                    case 80:
                                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW /* 82 */:
                                        n(4);
                                        return;
                                    case 87:
                                    case 153:
                                    case 154:
                                    case 155:
                                    case 156:
                                    case 157:
                                    case 158:
                                    case 170:
                                    case 171:
                                    case 172:
                                    case 174:
                                    case 176:
                                    case 191:
                                    case 194:
                                    case 195:
                                        break;
                                    case 88:
                                    case 159:
                                    case 160:
                                    case 161:
                                    case 162:
                                    case 163:
                                    case 164:
                                    case 165:
                                    case 166:
                                    case 173:
                                    case 175:
                                        n(2);
                                        return;
                                    case TsExtractor.TS_STREAM_TYPE_DVBSUBS /* 89 */:
                                        int iM2 = m();
                                        p(iM2);
                                        p(iM2);
                                        return;
                                    case TmcConstants.NOTIFY_ADDHOME_API_SHOW /* 90 */:
                                        int iM3 = m();
                                        int iM4 = m();
                                        p(iM3);
                                        p(iM4);
                                        p(iM3);
                                        return;
                                    case 91:
                                        int iM5 = m();
                                        int iM6 = m();
                                        int iM7 = m();
                                        p(iM5);
                                        p(iM7);
                                        p(iM6);
                                        p(iM5);
                                        return;
                                    case 92:
                                        int iM8 = m();
                                        int iM9 = m();
                                        p(iM9);
                                        p(iM8);
                                        p(iM9);
                                        p(iM8);
                                        return;
                                    case 93:
                                        int iM10 = m();
                                        int iM11 = m();
                                        int iM12 = m();
                                        p(iM11);
                                        p(iM10);
                                        p(iM12);
                                        p(iM11);
                                        p(iM10);
                                        return;
                                    case MBSupportMuteAdType.REWARD_VIDEO /* 94 */:
                                        int iM13 = m();
                                        int iM14 = m();
                                        int iM15 = m();
                                        int iM16 = m();
                                        p(iM14);
                                        p(iM13);
                                        p(iM16);
                                        p(iM15);
                                        p(iM14);
                                        p(iM13);
                                        return;
                                    case 95:
                                        int iM17 = m();
                                        int iM18 = m();
                                        p(iM17);
                                        p(iM18);
                                        return;
                                    case 96:
                                    case 100:
                                    case 104:
                                    case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                                    case 112:
                                    case 120:
                                    case INVALID_ADS_ENDPOINT_VALUE:
                                    case INVALID_LOG_ERROR_ENDPOINT_VALUE:
                                    case 126:
                                    case 128:
                                    case 130:
                                    case PRIVACY_URL_ERROR_VALUE:
                                    case 142:
                                    case 149:
                                    case 150:
                                        n(2);
                                        p(16777217);
                                        return;
                                    case 97:
                                    case 101:
                                    case 105:
                                    case 109:
                                    case 113:
                                    case 127:
                                    case 129:
                                    case MRAID_JS_WRITE_FAILED_VALUE:
                                        n(4);
                                        p(16777220);
                                        p(16777216);
                                        return;
                                    case 98:
                                    case 102:
                                    case 106:
                                    case 110:
                                    case ASSET_WRITE_ERROR_VALUE:
                                    case TPAT_RETRY_FAILED_VALUE:
                                    case 144:
                                        n(2);
                                        p(16777218);
                                        return;
                                    case 99:
                                    case 103:
                                    case 107:
                                    case 111:
                                    case INVALID_INDEX_URL_VALUE:
                                        n(4);
                                        p(16777219);
                                        p(16777216);
                                        return;
                                    case GZIP_ENCODE_ERROR_VALUE:
                                    case ASSET_FAILED_STATUS_CODE_VALUE:
                                    case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                                    case JSON_ENCODE_ERROR_VALUE:
                                    case 145:
                                    case 146:
                                    case 147:
                                    case 167:
                                    case 177:
                                        return;
                                    case TPAT_ERROR_VALUE:
                                    case INVALID_RI_ENDPOINT_VALUE:
                                    case INVALID_METRICS_ENDPOINT_VALUE:
                                        n(3);
                                        p(16777220);
                                        p(16777216);
                                        return;
                                    case OMSDK_DOWNLOAD_JS_ERROR_VALUE:
                                        u(i12, 16777217);
                                        return;
                                    case OMSDK_JS_WRITE_FAILED_VALUE:
                                    case 140:
                                        n(1);
                                        p(16777220);
                                        p(16777216);
                                        return;
                                    case 134:
                                        n(1);
                                        p(16777218);
                                        return;
                                    case 135:
                                    case 141:
                                        n(1);
                                        p(16777219);
                                        p(16777216);
                                        return;
                                    case 138:
                                        n(2);
                                        p(16777219);
                                        p(16777216);
                                        return;
                                    case 139:
                                    case 190:
                                    case 193:
                                        n(1);
                                        p(16777217);
                                        return;
                                    case 143:
                                        n(2);
                                        p(16777220);
                                        p(16777216);
                                        return;
                                    case 148:
                                    case 151:
                                    case 152:
                                        n(4);
                                        p(16777217);
                                        return;
                                    case 168:
                                    case 169:
                                        throw new IllegalArgumentException("JSR/RET are not supported with computeFrames option");
                                    case 178:
                                        q(xVar, wVar.f64234e);
                                        return;
                                    case 179:
                                        o(wVar.f64234e);
                                        return;
                                    case 180:
                                        n(1);
                                        q(xVar, wVar.f64234e);
                                        return;
                                    case 181:
                                        o(wVar.f64234e);
                                        m();
                                        return;
                                    case 182:
                                    case 183:
                                    case 184:
                                    case 185:
                                        o(wVar.f64234e);
                                        if (i11 != 184) {
                                            int iM19 = m();
                                            if (i11 == 183 && wVar.f64233d.charAt(0) == '<') {
                                                b(iM19);
                                            }
                                        }
                                        q(xVar, wVar.f64234e);
                                        return;
                                    case 186:
                                        o(wVar.f64234e);
                                        q(xVar, wVar.f64234e);
                                        return;
                                    case 187:
                                        p(xVar.K(wVar.f64234e, i12) | 50331648);
                                        return;
                                    case 188:
                                        m();
                                        switch (i12) {
                                            case 4:
                                                p(285212681);
                                                return;
                                            case 5:
                                                p(285212683);
                                                return;
                                            case 6:
                                                p(285212674);
                                                return;
                                            case 7:
                                                p(285212675);
                                                return;
                                            case 8:
                                                p(285212682);
                                                return;
                                            case 9:
                                                p(285212684);
                                                return;
                                            case 10:
                                                p(285212673);
                                                return;
                                            case 11:
                                                p(285212676);
                                                return;
                                            default:
                                                throw new IllegalArgumentException();
                                        }
                                    case PsExtractor.PRIVATE_STREAM_1 /* 189 */:
                                        String str = wVar.f64234e;
                                        m();
                                        if (str.charAt(0) != '[') {
                                            p(xVar.I(str) | 301989888);
                                            return;
                                        }
                                        q(xVar, '[' + str);
                                        return;
                                    case PsExtractor.AUDIO_STREAM /* 192 */:
                                        String str2 = wVar.f64234e;
                                        m();
                                        if (str2.charAt(0) == '[') {
                                            q(xVar, str2);
                                            return;
                                        } else {
                                            p(xVar.I(str2) | ASTNode.PCTX_STORED);
                                            return;
                                        }
                                    default:
                                        switch (i11) {
                                            case 197:
                                                n(i12);
                                                q(xVar, wVar.f64234e);
                                                return;
                                            case 198:
                                            case 199:
                                                break;
                                            default:
                                                throw new IllegalArgumentException();
                                        }
                                        break;
                                }
                                n(1);
                                return;
                        }
                }
        }
    }

    final int i() {
        return this.f64143c.length;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    /* JADX WARN: Code duplicated, block: B:23:0x0056 A[PHI: r8
  0x0056: PHI (r8v8 int) = (r8v7 int), (r8v7 int), (r8v9 int), (r8v9 int) binds: [B:26:0x0065, B:28:0x0069, B:19:0x004d, B:21:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:64:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fb A[PHI: r6
  0x00fb: PHI (r6v6 int) = (r6v5 int), (r6v5 int), (r6v9 int), (r6v9 int) binds: [B:68:0x010a, B:70:0x010e, B:61:0x00f2, B:63:0x00f6] A[DONT_GENERATE, DONT_INLINE]] */
    final boolean l(x xVar, n nVar, int i11) {
        boolean zK;
        boolean zK2;
        int i12;
        boolean z10;
        int iH;
        int i13;
        int i14;
        int length = this.f64142b.length;
        int length2 = this.f64143c.length;
        if (nVar.f64142b == null) {
            nVar.f64142b = new int[length];
            zK = true;
        } else {
            zK = false;
        }
        int i15 = 0;
        while (i15 < length) {
            int[] iArr = this.f64144d;
            if (iArr == null || i15 >= iArr.length || (i13 = iArr[i15]) == 0) {
                iH = this.f64142b[i15];
            } else {
                int i16 = i13 & (-268435456);
                int i17 = 251658240 & i13;
                if (i17 == 67108864) {
                    i14 = i16 + this.f64142b[i13 & 1048575];
                    if ((i13 & 1048576) == 0 || !(i14 == 16777220 || i14 == 16777219)) {
                        iH = i14;
                    } else {
                        iH = 16777216;
                    }
                } else if (i17 == 83886080) {
                    i14 = i16 + this.f64143c[length2 - (i13 & 1048575)];
                    if ((i13 & 1048576) == 0 || !(i14 == 16777220 || i14 == 16777219)) {
                        iH = i14;
                    } else {
                        iH = 16777216;
                    }
                } else {
                    iH = i13;
                }
            }
            if (this.f64149i != null) {
                iH = h(xVar, iH);
            }
            zK |= k(xVar, iH, nVar.f64142b, i15);
            i15++;
        }
        if (i11 > 0) {
            for (int i18 = 0; i18 < length; i18++) {
                zK |= k(xVar, this.f64142b[i18], nVar.f64142b, i18);
            }
            if (nVar.f64143c == null) {
                nVar.f64143c = new int[1];
                z10 = true;
            } else {
                z10 = zK;
            }
            return k(xVar, i11, nVar.f64143c, 0) | z10;
        }
        int length3 = this.f64143c.length + this.f64146f;
        if (nVar.f64143c == null) {
            nVar.f64143c = new int[this.f64147g + length3];
            zK2 = true;
        } else {
            zK2 = zK;
        }
        for (int i19 = 0; i19 < length3; i19++) {
            int iH2 = this.f64143c[i19];
            if (this.f64149i != null) {
                iH2 = h(xVar, iH2);
            }
            zK2 |= k(xVar, iH2, nVar.f64143c, i19);
        }
        for (int i20 = 0; i20 < this.f64147g; i20++) {
            int iH3 = this.f64145e[i20];
            int i21 = iH3 & (-268435456);
            int i22 = iH3 & 251658240;
            if (i22 == 67108864) {
                i12 = i21 + this.f64142b[iH3 & 1048575];
                if ((iH3 & 1048576) == 0 || !(i12 == 16777220 || i12 == 16777219)) {
                    iH3 = i12;
                } else {
                    iH3 = 16777216;
                }
            } else if (i22 == 83886080) {
                i12 = i21 + this.f64143c[length2 - (iH3 & 1048575)];
                if ((iH3 & 1048576) == 0 || !(i12 == 16777220 || i12 == 16777219)) {
                    iH3 = i12;
                } else {
                    iH3 = 16777216;
                }
            }
            if (this.f64149i != null) {
                iH3 = h(xVar, iH3);
            }
            zK2 |= k(xVar, iH3, nVar.f64143c, length3 + i20);
        }
        return zK2;
    }

    final void s(x xVar, int i11, Object[] objArr, int i12, Object[] objArr2) {
        int i13 = 0;
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = i13 + 1;
            this.f64142b[i13] = e(xVar, objArr[i14]);
            Object obj = objArr[i14];
            if (obj == v.f64227e || obj == v.f64226d) {
                i13 += 2;
                this.f64142b[i15] = 16777216;
            } else {
                i13 = i15;
            }
        }
        while (true) {
            int[] iArr = this.f64142b;
            if (i13 >= iArr.length) {
                break;
            }
            iArr[i13] = 16777216;
            i13++;
        }
        int i16 = 0;
        for (int i17 = 0; i17 < i12; i17++) {
            Object obj2 = objArr2[i17];
            if (obj2 == v.f64227e || obj2 == v.f64226d) {
                i16++;
            }
        }
        this.f64143c = new int[i16 + i12];
        int i18 = 0;
        for (int i19 = 0; i19 < i12; i19++) {
            int i20 = i18 + 1;
            this.f64143c[i18] = e(xVar, objArr2[i19]);
            Object obj3 = objArr2[i19];
            if (obj3 == v.f64227e || obj3 == v.f64226d) {
                i18 += 2;
                this.f64143c[i20] = 16777216;
            } else {
                i18 = i20;
            }
        }
        this.f64147g = (short) 0;
        this.f64148h = 0;
    }

    final void t(x xVar, int i11, String str, int i12) {
        int i13;
        int[] iArr = new int[i12];
        this.f64142b = iArr;
        this.f64143c = new int[0];
        if ((i11 & 8) == 0) {
            i13 = 1;
            if ((i11 & 262144) == 0) {
                iArr[0] = xVar.I(xVar.O()) | ASTNode.PCTX_STORED;
            } else {
                iArr[0] = 16777222;
            }
        } else {
            i13 = 0;
        }
        for (y yVar : y.b(str)) {
            int iF = f(xVar, yVar.e(), 0);
            int[] iArr2 = this.f64142b;
            int i14 = i13 + 1;
            iArr2[i13] = iF;
            if (iF == 16777220 || iF == 16777219) {
                i13 += 2;
                iArr2[i14] = 16777216;
            } else {
                i13 = i14;
            }
        }
        while (i13 < i12) {
            this.f64142b[i13] = 16777216;
            i13++;
        }
    }
}
