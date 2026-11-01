package y4;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.Calendar;
import java.util.Date;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes3.dex */
public final class e extends c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final String f78864t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f78865u;

    public e(String str) {
        this(str, com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE);
    }

    public e(String str, int i11) {
        super(i11);
        this.f78864t = str;
        this.f78865u = str.length();
        this.f78852e = -1;
        next();
        if (this.f78851d == 65279) {
            next();
        }
    }

    public e(char[] cArr, int i11, int i12) {
        this(new String(cArr, 0, i11), i12);
    }

    static boolean t1(String str, int i11, char[] cArr) {
        int length = cArr.length;
        if (length + i11 > str.length()) {
            return false;
        }
        for (int i12 = 0; i12 < length; i12++) {
            if (cArr[i12] != str.charAt(i11 + i12)) {
                return false;
            }
        }
        return true;
    }

    static boolean u1(char c11, char c12, char c13, char c14, char c15, char c16, int i11, int i12) {
        if (c11 >= '0' && c11 <= '9' && c12 >= '0' && c12 <= '9' && c13 >= '0' && c13 <= '9' && c14 >= '0' && c14 <= '9') {
            if (c15 == '0') {
                if (c16 < '1' || c16 > '9') {
                    return false;
                }
            } else if (c15 != '1' || (c16 != '0' && c16 != '1' && c16 != '2')) {
                return false;
            }
            if (i11 == 48) {
                return i12 >= 49 && i12 <= 57;
            }
            if (i11 != 49 && i11 != 50) {
                return i11 == 51 && (i12 == 48 || i12 == 49);
            }
            if (i12 >= 48 && i12 <= 57) {
                return true;
            }
        }
        return false;
    }

    private boolean v1(char c11, char c12, char c13, char c14, char c15, char c16) {
        if (c11 == '0') {
            if (c12 < '0' || c12 > '9') {
                return false;
            }
        } else {
            if (c11 != '1') {
                if (c11 == '2' && c12 >= '0' && c12 <= '4') {
                }
                return false;
            }
            if (c12 < '0' || c12 > '9') {
                return false;
            }
        }
        if (c13 < '0' || c13 > '5') {
            if (c13 != '6' || c14 != '0') {
                return false;
            }
        } else if (c14 < '0' || c14 > '9') {
            return false;
        }
        if (c15 < '0' || c15 > '5') {
            return c15 == '6' && c16 == '0';
        }
        return c16 >= '0' && c16 <= '9';
    }

    private boolean y1(boolean z10, int i11) {
        int i12;
        boolean z11;
        char c11;
        char cG0;
        char c12;
        char c13;
        char c14;
        int i13;
        int i14;
        int i15;
        int i16;
        char c15;
        char c16;
        char cG1;
        char c17;
        char c18;
        char c19;
        int i17;
        int i18;
        char c20;
        int i19;
        int i20;
        char cG2;
        char cG3;
        char cG4;
        char cG5;
        char cG6;
        char cG7;
        if (i11 < 8) {
            return false;
        }
        char cG8 = G0(this.f78852e);
        char cG9 = G0(this.f78852e + 1);
        char cG10 = G0(this.f78852e + 2);
        int i21 = 3;
        char cG11 = G0(this.f78852e + 3);
        char cG12 = G0(this.f78852e + 4);
        int i22 = 5;
        char cG13 = G0(this.f78852e + 5);
        char cG14 = G0(this.f78852e + 6);
        char cG15 = G0(this.f78852e + 7);
        if (!z10) {
            if (i11 > 13) {
                char cG16 = G0((this.f78852e + i11) - 1);
                char cG17 = G0((this.f78852e + i11) - 2);
                if (cG8 == '/' && cG9 == 'D' && cG10 == 'a' && cG11 == 't' && cG12 == 'e' && cG13 == '(' && cG16 == '/' && cG17 == ')') {
                    int i23 = -1;
                    for (int i24 = 6; i24 < i11; i24++) {
                        char cG18 = G0(this.f78852e + i24);
                        if (cG18 != '+') {
                            if (cG18 < '0' || cG18 > '9') {
                                break;
                            }
                        } else {
                            i23 = i24;
                        }
                    }
                    if (i23 == -1) {
                        return false;
                    }
                    int i25 = this.f78852e;
                    int i26 = i25 + 6;
                    long j11 = Long.parseLong(r1(i26, (i25 + i23) - i26));
                    Calendar calendar = Calendar.getInstance(this.f78859l, this.f78860m);
                    this.f78858k = calendar;
                    calendar.setTimeInMillis(j11);
                    this.f78848a = 5;
                    return true;
                }
            }
            i22 = 5;
        }
        if (i11 == 8 || i11 == 14) {
            i12 = i22;
            z11 = false;
            c11 = ':';
        } else {
            if (!(i11 == 16 && ((cG7 = G0(this.f78852e + 10)) == 'T' || cG7 == ' ')) && (i11 != 17 || G0(this.f78852e + 6) == '-')) {
                if (i11 < 9) {
                    return false;
                }
                char cG19 = G0(this.f78852e + 8);
                char cG20 = G0(this.f78852e + 9);
                if ((cG12 == '-' && cG15 == '-') || (cG12 == '/' && cG15 == '/')) {
                    if (cG20 == ' ') {
                        c20 = '0';
                        i18 = 9;
                        cG9 = cG19;
                        cG13 = cG14;
                        cG10 = cG10;
                    } else {
                        i18 = 10;
                        c20 = cG19;
                        cG13 = cG14;
                        cG10 = cG10;
                        cG13 = cG13;
                        cG9 = cG9;
                        cG9 = cG20;
                    }
                } else if (cG12 == '-' && cG14 == '-') {
                    if (cG19 == ' ') {
                        cG13 = '0';
                        i18 = 8;
                        cG9 = cG15;
                        cG11 = cG11;
                        c20 = '0';
                    } else {
                        cG13 = '0';
                        i18 = 9;
                        cG13 = cG13;
                        cG9 = cG9;
                        cG9 = cG19;
                        c20 = cG15;
                        cG11 = cG11;
                    }
                } else if ((cG10 == '.' && cG13 == '.') || (cG10 == '-' && cG13 == '-')) {
                    cG9 = cG15;
                    cG11 = cG20;
                    cG13 = cG11;
                    c20 = cG8;
                    i18 = 10;
                    cG13 = cG12;
                    cG8 = cG14;
                    cG10 = cG19;
                } else {
                    if (cG19 == 'T') {
                        cG13 = cG12;
                        cG13 = cG13;
                        cG8 = cG8;
                        cG9 = cG9;
                        i18 = 8;
                        cG9 = cG15;
                        cG11 = cG11;
                        c20 = cG14;
                    } else {
                        if (cG12 != 24180 && cG12 != 45380) {
                            return false;
                        }
                        if (cG15 != 26376 && cG15 != 50900) {
                            if (cG14 != 26376 && cG14 != 50900) {
                                return false;
                            }
                            if (cG19 == 26085 || cG19 == 51068) {
                                i18 = 10;
                                cG13 = '0';
                                cG9 = cG15;
                                cG11 = cG11;
                                c20 = '0';
                            } else {
                                if (cG20 != 26085 && cG20 != 51068) {
                                    return false;
                                }
                                i18 = 10;
                                cG13 = '0';
                                cG13 = cG13;
                                cG9 = cG9;
                                cG9 = cG19;
                                c20 = cG15;
                                cG11 = cG11;
                            }
                        } else if (cG20 == 26085 || cG20 == 51068) {
                            i18 = 10;
                            c20 = '0';
                            cG9 = cG19;
                            cG13 = cG14;
                        } else {
                            if (G0(this.f78852e + 10) != 26085 && G0(this.f78852e + 10) != 51068) {
                                return false;
                            }
                            i18 = 11;
                            c20 = cG19;
                            cG13 = cG14;
                            cG10 = cG10;
                            cG13 = cG13;
                            cG9 = cG9;
                            cG9 = cG20;
                        }
                    }
                    cG10 = cG10;
                }
                if (!u1(cG8, cG9, cG10, cG11, cG13, cG13, c20, cG9)) {
                    return false;
                }
                z1(cG8, cG9, cG10, cG11, cG13, cG13, c20, cG9);
                char cG21 = G0(this.f78852e + i18);
                char c21 = 'T';
                if (cG21 == 'T') {
                    if (i11 == 16 && i18 == 8 && G0(this.f78852e + 15) == 'Z') {
                        char cG22 = G0(this.f78852e + i18 + 1);
                        char cG23 = G0(this.f78852e + i18 + 2);
                        char cG24 = G0(this.f78852e + i18 + 3);
                        char cG25 = G0(this.f78852e + i18 + 4);
                        char cG26 = G0(this.f78852e + i18 + 5);
                        char cG27 = G0(this.f78852e + i18 + 6);
                        if (!v1(cG22, cG23, cG24, cG25, cG26, cG27)) {
                            return false;
                        }
                        A1(cG22, cG23, cG24, cG25, cG26, cG27);
                        this.f78858k.set(14, 0);
                        if (this.f78858k.getTimeZone().getRawOffset() != 0) {
                            String[] availableIDs = TimeZone.getAvailableIDs(0);
                            if (availableIDs.length > 0) {
                                this.f78858k.setTimeZone(TimeZone.getTimeZone(availableIDs[0]));
                            }
                        }
                        this.f78848a = 5;
                        return true;
                    }
                    c21 = 'T';
                }
                if (cG21 != c21 && (cG21 != ' ' || z10)) {
                    if (cG21 == '\"' || cG21 == 26 || cG21 == 26085 || cG21 == 51068) {
                        this.f78858k.set(11, 0);
                        this.f78858k.set(12, 0);
                        this.f78858k.set(13, 0);
                        this.f78858k.set(14, 0);
                        int i27 = this.f78852e + i18;
                        this.f78852e = i27;
                        this.f78851d = G0(i27);
                        this.f78848a = 5;
                        return true;
                    }
                    if ((cG21 != '+' && cG21 != '-') || this.f78865u != i18 + 6 || G0(this.f78852e + i18 + 3) != ':' || G0(this.f78852e + i18 + 4) != '0' || G0(this.f78852e + i18 + 5) != '0') {
                        return false;
                    }
                    A1('0', '0', '0', '0', '0', '0');
                    this.f78858k.set(14, 0);
                    B1(cG21, G0(this.f78852e + i18 + 1), G0(this.f78852e + i18 + 2));
                    return true;
                }
                if (i11 < i18 + 9 || G0(this.f78852e + i18 + 3) != ':' || G0(this.f78852e + i18 + 6) != ':') {
                    return false;
                }
                char cG28 = G0(this.f78852e + i18 + 1);
                char cG29 = G0(this.f78852e + i18 + 2);
                char cG30 = G0(this.f78852e + i18 + 4);
                char cG31 = G0(this.f78852e + i18 + 5);
                char cG32 = G0(this.f78852e + i18 + 7);
                char cG33 = G0(this.f78852e + i18 + 8);
                if (!v1(cG28, cG29, cG30, cG31, cG32, cG33)) {
                    return false;
                }
                A1(cG28, cG29, cG30, cG31, cG32, cG33);
                if (G0(this.f78852e + i18 + 9) == '.') {
                    int i28 = i18 + 11;
                    if (i11 < i28 || (cG4 = G0(this.f78852e + i18 + 10)) < '0' || cG4 > '9') {
                        return false;
                    }
                    int i29 = cG4 - '0';
                    if (i11 <= i28 || (cG6 = G0(this.f78852e + i18 + 11)) < '0' || cG6 > '9') {
                        i19 = 1;
                    } else {
                        i29 = (i29 * 10) + (cG6 - '0');
                        i19 = 2;
                    }
                    if (i19 != 2 || (cG5 = G0(this.f78852e + i18 + 12)) < '0' || cG5 > '9') {
                        i20 = i29;
                    } else {
                        i20 = (cG5 - '0') + (i29 * 10);
                        i19 = 3;
                    }
                } else {
                    i19 = -1;
                    i20 = 0;
                }
                this.f78858k.set(14, i20);
                char cG34 = G0(this.f78852e + i18 + 10 + i19);
                if (cG34 == ' ') {
                    i19++;
                    cG34 = G0(this.f78852e + i18 + 10 + i19);
                }
                char c22 = cG34;
                if (c22 == '+' || c22 == '-') {
                    char cG35 = G0(this.f78852e + i18 + 10 + i19 + 1);
                    if (cG35 < '0' || cG35 > '1' || (cG2 = G0(this.f78852e + i18 + 10 + i19 + 2)) < '0' || cG2 > '9') {
                        return false;
                    }
                    char cG36 = G0(this.f78852e + i18 + 10 + i19 + 3);
                    char c23 = '3';
                    if (cG36 == ':') {
                        char cG37 = G0(this.f78852e + i18 + 10 + i19 + 4);
                        cG3 = G0(this.f78852e + i18 + 10 + i19 + 5);
                        if (cG37 == '4' && cG3 == '5') {
                            if (cG35 != '1' || (cG2 != '2' && cG2 != '3')) {
                                if (cG35 != '0') {
                                    return false;
                                }
                                if (cG2 != '5' && cG2 != '8') {
                                    return false;
                                }
                            }
                        } else if ((cG37 != '0' && cG37 != '3') || cG3 != '0') {
                            return false;
                        }
                        c23 = cG37;
                        i21 = 6;
                    } else {
                        if (cG36 == '0') {
                            char cG38 = G0(this.f78852e + i18 + 10 + i19 + 4);
                            if (cG38 != '0' && cG38 != '3') {
                                return false;
                            }
                            c23 = cG38;
                        } else {
                            if (cG36 != '3' || G0(this.f78852e + i18 + 10 + i19 + 4) != '0') {
                                if (cG36 == '4' && G0(this.f78852e + i18 + 10 + i19 + 4) == '5') {
                                    cG3 = '5';
                                    i21 = 5;
                                    c23 = '4';
                                } else {
                                    c23 = '0';
                                }
                            }
                            cG3 = '0';
                        }
                        i21 = 5;
                        cG3 = '0';
                    }
                    C1(c22, cG35, cG2, c23, cG3);
                } else if (c22 == 'Z') {
                    if (this.f78858k.getTimeZone().getRawOffset() != 0) {
                        String[] availableIDs2 = TimeZone.getAvailableIDs(0);
                        if (availableIDs2.length > 0) {
                            this.f78858k.setTimeZone(TimeZone.getTimeZone(availableIDs2[0]));
                        }
                    }
                    i21 = 1;
                } else {
                    i21 = 0;
                }
                int i30 = i18 + 10 + i19 + i21;
                char cG39 = G0(this.f78852e + i30);
                if (cG39 != 26 && cG39 != '\"') {
                    return false;
                }
                int i31 = this.f78852e + i30;
                this.f78852e = i31;
                this.f78851d = G0(i31);
                this.f78848a = 5;
                return true;
            }
            z11 = false;
            c11 = ':';
            i12 = 5;
        }
        if (z10) {
            return z11;
        }
        char cG40 = G0(this.f78852e + 8);
        boolean z12 = cG12 == '-' && cG15 == '-';
        boolean z13 = z12 && i11 == 16;
        boolean z14 = z12 && i11 == 17;
        if (z14 || z13) {
            cG0 = G0(this.f78852e + 9);
            c12 = cG13;
            c13 = cG14;
            c14 = cG40;
        } else if (cG12 == '-' && cG14 == '-') {
            c13 = cG13;
            cG0 = cG15;
            c12 = '0';
            c14 = '0';
        } else {
            c12 = cG12;
            c13 = cG13;
            c14 = cG14;
            cG0 = cG15;
        }
        if (!u1(cG8, cG9, cG10, cG11, c12, c13, c14, cG0)) {
            return false;
        }
        z1(cG8, cG9, cG10, cG11, c12, c13, c14, cG0);
        if (i11 != 8) {
            char cG41 = G0(this.f78852e + 9);
            char cG42 = G0(this.f78852e + 10);
            char cG43 = G0(this.f78852e + 11);
            char cG44 = G0(this.f78852e + 12);
            char cG45 = G0(this.f78852e + 13);
            if ((z14 && cG42 == 'T' && cG45 == c11 && G0(this.f78852e + 16) == 'Z') || (z13 && ((cG42 == ' ' || cG42 == 'T') && cG45 == c11))) {
                char cG46 = G0(this.f78852e + 14);
                cG1 = G0(this.f78852e + 15);
                c16 = cG46;
                c18 = cG43;
                c15 = cG44;
                c19 = '0';
                c17 = '0';
            } else {
                c15 = cG41;
                c16 = cG42;
                cG1 = cG43;
                c17 = cG45;
                c18 = cG40;
                c19 = cG44;
            }
            if (!v1(c18, c15, c16, cG1, c19, c17)) {
                return false;
            }
            if (i11 != 17 || z14) {
                i17 = 0;
            } else {
                char cG47 = G0(this.f78852e + 14);
                char cG48 = G0(this.f78852e + 15);
                char cG49 = G0(this.f78852e + 16);
                if (cG47 < '0' || cG47 > '9' || cG48 < '0' || cG48 > '9' || cG49 < '0' || cG49 > '9') {
                    return false;
                }
                i17 = ((cG47 - '0') * 100) + ((cG48 - '0') * 10) + (cG49 - '0');
            }
            i14 = ((c19 - '0') * 10) + (c17 - '0');
            i16 = ((c18 - '0') * 10) + (c15 - '0');
            i15 = i17;
            i13 = ((c16 - '0') * 10) + (cG1 - '0');
        } else {
            i13 = 0;
            i14 = 0;
            i15 = 0;
            i16 = 0;
        }
        this.f78858k.set(11, i16);
        this.f78858k.set(12, i13);
        this.f78858k.set(13, i14);
        this.f78858k.set(14, i15);
        this.f78848a = i12;
        return true;
    }

    private void z1(char c11, char c12, char c13, char c14, char c15, char c16, char c17, char c18) {
        Calendar calendar = Calendar.getInstance(this.f78859l, this.f78860m);
        this.f78858k = calendar;
        calendar.set(1, ((c11 - '0') * 1000) + ((c12 - '0') * 100) + ((c13 - '0') * 10) + (c14 - '0'));
        this.f78858k.set(2, (((c15 - '0') * 10) + (c16 - '0')) - 1);
        this.f78858k.set(5, ((c17 - '0') * 10) + (c18 - '0'));
    }

    protected void A1(char c11, char c12, char c13, char c14, char c15, char c16) {
        this.f78858k.set(11, ((c11 - '0') * 10) + (c12 - '0'));
        this.f78858k.set(12, ((c13 - '0') * 10) + (c14 - '0'));
        this.f78858k.set(13, ((c15 - '0') * 10) + (c16 - '0'));
    }

    protected void B1(char c11, char c12, char c13) {
        C1(c11, c12, c13, '0', '0');
    }

    @Override // y4.c, y4.b
    public final String C0() {
        char cG0 = G0((this.f78856i + this.f78855h) - 1);
        int i11 = this.f78855h;
        if (cG0 == 'L' || cG0 == 'S' || cG0 == 'B' || cG0 == 'F' || cG0 == 'D') {
            i11--;
        }
        return r1(this.f78856i, i11);
    }

    protected void C1(char c11, char c12, char c13, char c14, char c15) {
        int i11 = ((((c12 - '0') * 10) + (c13 - '0')) * TimeConstants.HOUR) + ((((c14 - '0') * 10) + (c15 - '0')) * 60000);
        if (c11 == '-') {
            i11 = -i11;
        }
        if (this.f78858k.getTimeZone().getRawOffset() != i11) {
            this.f78858k.setTimeZone(new SimpleTimeZone(i11, Integer.toString(i11)));
        }
    }

    public final void D1(boolean z10) {
        int i11 = this.f78852e;
        boolean z11 = false;
        int i12 = 0;
        while (i11 < this.f78864t.length()) {
            char cCharAt = this.f78864t.charAt(i11);
            if (cCharAt == '\\') {
                if (i11 >= this.f78865u - 1) {
                    this.f78851d = cCharAt;
                    this.f78852e = i11;
                    throw new JSONException("illegal str, " + k());
                }
                i11++;
            } else if (cCharAt == '\"') {
                z11 = !z11;
            } else if (cCharAt != '[') {
                if (cCharAt == '{' && z10) {
                    int i13 = this.f78852e + 1;
                    this.f78852e = i13;
                    this.f78851d = i13 < this.f78864t.length() ? this.f78864t.charAt(i13) : (char) 26;
                    E1(z10);
                } else if (cCharAt == ']' && !z11 && (i12 = i12 - 1) == -1) {
                    int i14 = i11 + 1;
                    this.f78852e = i14;
                    if (i14 == this.f78864t.length()) {
                        this.f78851d = (char) 26;
                        this.f78848a = 20;
                        return;
                    } else {
                        this.f78851d = this.f78864t.charAt(this.f78852e);
                        c0(16);
                        return;
                    }
                }
            } else if (!z11) {
                i12++;
            }
            i11++;
        }
        if (i11 != this.f78864t.length()) {
            return;
        }
        throw new JSONException("illegal str, " + k());
    }

    @Override // y4.c
    protected final void E0(int i11, char[] cArr, int i12, int i13) {
        this.f78864t.getChars(i11, i13 + i11, cArr, i12);
    }

    public final void E1(boolean z10) {
        int i11 = this.f78852e;
        boolean z11 = false;
        int i12 = 0;
        while (i11 < this.f78864t.length()) {
            char cCharAt = this.f78864t.charAt(i11);
            if (cCharAt == '\\') {
                if (i11 >= this.f78865u - 1) {
                    this.f78851d = cCharAt;
                    this.f78852e = i11;
                    throw new JSONException("illegal str, " + k());
                }
                i11++;
            } else if (cCharAt == '\"') {
                z11 = !z11;
            } else if (cCharAt != '{') {
                if (cCharAt == '}' && !z11 && (i12 = i12 - 1) == -1) {
                    int i13 = i11 + 1;
                    this.f78852e = i13;
                    if (i13 == this.f78864t.length()) {
                        this.f78851d = (char) 26;
                        this.f78848a = 20;
                        return;
                    }
                    char cCharAt2 = this.f78864t.charAt(this.f78852e);
                    this.f78851d = cCharAt2;
                    if (cCharAt2 == ',') {
                        this.f78848a = 16;
                        int i14 = this.f78852e + 1;
                        this.f78852e = i14;
                        this.f78851d = i14 < this.f78864t.length() ? this.f78864t.charAt(i14) : (char) 26;
                        return;
                    }
                    if (cCharAt2 == '}') {
                        this.f78848a = 13;
                        next();
                        return;
                    } else if (cCharAt2 != ']') {
                        c0(16);
                        return;
                    } else {
                        this.f78848a = 15;
                        next();
                        return;
                    }
                }
            } else if (!z11) {
                i12++;
            }
            i11++;
        }
        for (int i15 = 0; i15 < this.f78852e; i15++) {
            if (i15 < this.f78864t.length() && this.f78864t.charAt(i15) == ' ') {
                i11++;
            }
        }
        if (i11 != this.f78864t.length()) {
            return;
        }
        throw new JSONException("illegal str, " + k());
    }

    @Override // y4.c
    public final boolean F0(char[] cArr) {
        return t1(this.f78864t, this.f78852e, cArr);
    }

    @Override // y4.c
    public final char G0(int i11) {
        if (i11 >= this.f78865u) {
            return (char) 26;
        }
        return this.f78864t.charAt(i11);
    }

    @Override // y4.c
    protected final void H0(int i11, int i12, char[] cArr) {
        this.f78864t.getChars(i11, i12 + i11, cArr, 0);
    }

    @Override // y4.c
    public final int K0(char c11, int i11) {
        return this.f78864t.indexOf(c11, i11);
    }

    @Override // y4.c
    public boolean L0() {
        int i11 = this.f78852e;
        int i12 = this.f78865u;
        if (i11 != i12) {
            return this.f78851d == 26 && i11 + 1 >= i12;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0165  */
    /* JADX WARN: Code duplicated, block: B:103:0x016b A[LOOP:0: B:78:0x00ed->B:103:0x016b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:108:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x0176 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x0162 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x0125 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x014b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0104  */
    /* JADX WARN: Code duplicated, block: B:86:0x0121  */
    /* JADX WARN: Code duplicated, block: B:89:0x0135 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x0147  */
    /* JADX WARN: Code duplicated, block: B:96:0x0152  */
    /* JADX WARN: Code duplicated, block: B:98:0x0158 A[LOOP:1: B:84:0x0111->B:98:0x0158, LOOP_END] */
    @Override // y4.c
    public boolean W0(char[] cArr) {
        char cG0;
        boolean z10;
        char cG1;
        this.f78861n = 0;
        if (!t1(this.f78864t, this.f78852e, cArr)) {
            this.f78861n = -2;
            return false;
        }
        int i11 = this.f78852e;
        int length = cArr.length + i11;
        int i12 = length + 1;
        char cG2 = G0(length);
        boolean z11 = cG2 == '\"';
        if (z11) {
            cG2 = G0(i12);
            i12 = length + 2;
        }
        if (cG2 != 't') {
            if (cG2 == 'f') {
                int i13 = i12 + 1;
                if (G0(i12) != 'a') {
                    this.f78861n = -1;
                    return false;
                }
                int i14 = i12 + 2;
                if (G0(i13) != 'l') {
                    this.f78861n = -1;
                    return false;
                }
                int i15 = i12 + 3;
                if (G0(i14) != 's') {
                    this.f78861n = -1;
                    return false;
                }
                int i16 = i12 + 4;
                if (G0(i15) != 'e') {
                    this.f78861n = -1;
                    return false;
                }
                if (z11) {
                    int i17 = i12 + 5;
                    if (G0(i16) != '\"') {
                        this.f78861n = -1;
                        return false;
                    }
                    i16 = i17;
                }
                this.f78852e = i16;
                cG0 = G0(i16);
            } else if (cG2 == '1') {
                if (z11) {
                    int i18 = i12 + 1;
                    if (G0(i12) != '\"') {
                        this.f78861n = -1;
                        return false;
                    }
                    i12 = i18;
                }
                this.f78852e = i12;
                cG0 = G0(i12);
            } else {
                if (cG2 != '0') {
                    this.f78861n = -1;
                    return false;
                }
                if (z11) {
                    int i19 = i12 + 1;
                    if (G0(i12) != '\"') {
                        this.f78861n = -1;
                        return false;
                    }
                    i12 = i19;
                }
                this.f78852e = i12;
                cG0 = G0(i12);
            }
            z10 = false;
            while (cG0 != ',') {
                if (cG0 == '}') {
                    int i20 = this.f78852e + 1;
                    this.f78852e = i20;
                    cG1 = G0(i20);
                    while (cG1 != ',') {
                        if (cG1 == ']') {
                            this.f78848a = 15;
                            int i21 = this.f78852e + 1;
                            this.f78852e = i21;
                            this.f78851d = G0(i21);
                        } else if (cG1 == '}') {
                            this.f78848a = 13;
                            int i22 = this.f78852e + 1;
                            this.f78852e = i22;
                            this.f78851d = G0(i22);
                        } else if (cG1 == 26) {
                            this.f78848a = 20;
                        } else {
                            if (c.M0(cG1)) {
                                this.f78861n = -1;
                                return false;
                            }
                            int i23 = this.f78852e + 1;
                            this.f78852e = i23;
                            cG1 = G0(i23);
                        }
                        this.f78861n = 4;
                        return z10;
                    }
                    this.f78848a = 16;
                    int i24 = this.f78852e + 1;
                    this.f78852e = i24;
                    this.f78851d = G0(i24);
                    this.f78861n = 4;
                    return z10;
                }
                if (c.M0(cG0)) {
                    this.f78852e = i11;
                    G0(i11);
                    this.f78861n = -1;
                    return false;
                }
                int i25 = this.f78852e + 1;
                this.f78852e = i25;
                cG0 = G0(i25);
            }
            int i26 = this.f78852e + 1;
            this.f78852e = i26;
            this.f78851d = G0(i26);
            this.f78861n = 3;
            this.f78848a = 16;
            return z10;
        }
        int i27 = i12 + 1;
        if (G0(i12) != 'r') {
            this.f78861n = -1;
            return false;
        }
        int i28 = i12 + 2;
        if (G0(i27) != 'u') {
            this.f78861n = -1;
            return false;
        }
        int i29 = i12 + 3;
        if (G0(i28) != 'e') {
            this.f78861n = -1;
            return false;
        }
        if (z11) {
            int i30 = i12 + 4;
            if (G0(i29) != '\"') {
                this.f78861n = -1;
                return false;
            }
            i29 = i30;
        }
        this.f78852e = i29;
        cG0 = G0(i29);
        z10 = true;
        while (cG0 != ',') {
            if (cG0 == '}') {
                int i210 = this.f78852e + 1;
                this.f78852e = i210;
                cG1 = G0(i210);
                while (cG1 != ',') {
                    if (cG1 == ']') {
                        this.f78848a = 15;
                        int i211 = this.f78852e + 1;
                        this.f78852e = i211;
                        this.f78851d = G0(i211);
                    } else if (cG1 == '}') {
                        this.f78848a = 13;
                        int i212 = this.f78852e + 1;
                        this.f78852e = i212;
                        this.f78851d = G0(i212);
                    } else if (cG1 == 26) {
                        this.f78848a = 20;
                    } else {
                        if (c.M0(cG1)) {
                            this.f78861n = -1;
                            return false;
                        }
                        int i213 = this.f78852e + 1;
                        this.f78852e = i213;
                        cG1 = G0(i213);
                    }
                    this.f78861n = 4;
                    return z10;
                }
                this.f78848a = 16;
                int i214 = this.f78852e + 1;
                this.f78852e = i214;
                this.f78851d = G0(i214);
                this.f78861n = 4;
                return z10;
            }
            if (c.M0(cG0)) {
                this.f78852e = i11;
                G0(i11);
                this.f78861n = -1;
                return false;
            }
            int i215 = this.f78852e + 1;
            this.f78852e = i215;
            cG0 = G0(i215);
        }
        int i216 = this.f78852e + 1;
        this.f78852e = i216;
        this.f78851d = G0(i216);
        this.f78861n = 3;
        this.f78848a = 16;
        return z10;
    }

    @Override // y4.c
    public Date X0(char[] cArr) {
        long j11;
        Date date;
        char cG0;
        char cG1;
        boolean z10 = false;
        this.f78861n = 0;
        int i11 = this.f78852e;
        char c11 = this.f78851d;
        if (!t1(this.f78864t, i11, cArr)) {
            this.f78861n = -2;
            return null;
        }
        int length = this.f78852e + cArr.length;
        int i12 = length + 1;
        char cG2 = G0(length);
        if (cG2 == '\"') {
            int iK0 = K0('\"', i12);
            if (iK0 == -1) {
                throw new JSONException("unclosed str");
            }
            this.f78852e = i12;
            if (!y1(false, iK0 - i12)) {
                this.f78852e = i11;
                this.f78861n = -1;
                return null;
            }
            date = this.f78858k.getTime();
            cG0 = G0(iK0 + 1);
            this.f78852e = i11;
            while (cG0 != ',' && cG0 != '}') {
                if (!c.M0(cG0)) {
                    this.f78861n = -1;
                    return null;
                }
                int i13 = iK0 + 1;
                char cG3 = G0(iK0 + 2);
                iK0 = i13;
                cG0 = cG3;
            }
            this.f78852e = iK0 + 1;
            this.f78851d = cG0;
        } else {
            char c12 = '9';
            char c13 = '0';
            if (cG2 != '-' && (cG2 < '0' || cG2 > '9')) {
                this.f78861n = -1;
                return null;
            }
            if (cG2 == '-') {
                cG2 = G0(i12);
                i12 = length + 2;
                z10 = true;
            }
            if (cG2 < '0' || cG2 > '9') {
                j11 = 0;
            } else {
                long j12 = cG2 - '0';
                while (true) {
                    int i14 = i12 + 1;
                    cG1 = G0(i12);
                    if (cG1 < c13 || cG1 > c12) {
                        break;
                    }
                    j12 = (j12 * 10) + ((long) (cG1 - '0'));
                    i12 = i14;
                    c12 = '9';
                    c13 = '0';
                }
                if (cG1 == ',' || cG1 == '}') {
                    this.f78852e = i12;
                }
                long j13 = j12;
                cG2 = cG1;
                j11 = j13;
            }
            if (j11 < 0) {
                this.f78861n = -1;
                return null;
            }
            if (z10) {
                j11 = -j11;
            }
            date = new Date(j11);
            cG0 = cG2;
        }
        if (cG0 == ',') {
            int i15 = this.f78852e + 1;
            this.f78852e = i15;
            this.f78851d = G0(i15);
            this.f78861n = 3;
            this.f78848a = 16;
            return date;
        }
        int i16 = this.f78852e + 1;
        this.f78852e = i16;
        char cG4 = G0(i16);
        if (cG4 == ',') {
            this.f78848a = 16;
            int i17 = this.f78852e + 1;
            this.f78852e = i17;
            this.f78851d = G0(i17);
        } else if (cG4 == ']') {
            this.f78848a = 15;
            int i18 = this.f78852e + 1;
            this.f78852e = i18;
            this.f78851d = G0(i18);
        } else if (cG4 == '}') {
            this.f78848a = 13;
            int i19 = this.f78852e + 1;
            this.f78852e = i19;
            this.f78851d = G0(i19);
        } else {
            if (cG4 != 26) {
                this.f78852e = i11;
                this.f78851d = c11;
                this.f78861n = -1;
                return null;
            }
            this.f78848a = 20;
        }
        this.f78861n = 4;
        return date;
    }

    @Override // y4.c
    public final String b(int i11, int i12, int i13, i iVar) {
        return iVar.a(this.f78864t, i11, i12, i13);
    }

    @Override // y4.c, y4.b
    public final BigDecimal d0() {
        char cG0 = G0((this.f78856i + this.f78855h) - 1);
        int i11 = this.f78855h;
        if (cG0 == 'L' || cG0 == 'S' || cG0 == 'B' || cG0 == 'F' || cG0 == 'D') {
            i11--;
        }
        if (i11 > 65535) {
            throw new JSONException("decimal overflow");
        }
        int i12 = this.f78856i;
        char[] cArr = this.f78854g;
        if (i11 < cArr.length) {
            this.f78864t.getChars(i12, i12 + i11, cArr, 0);
            return new BigDecimal(this.f78854g, 0, i11, MathContext.UNLIMITED);
        }
        char[] cArr2 = new char[i11];
        this.f78864t.getChars(i12, i12 + i11, cArr2, 0);
        return new BigDecimal(cArr2, 0, i11, MathContext.UNLIMITED);
    }

    @Override // y4.c
    public int d1(char[] cArr) {
        int i11;
        char cG0;
        this.f78861n = 0;
        int i12 = this.f78852e;
        char c11 = this.f78851d;
        if (!t1(this.f78864t, i12, cArr)) {
            this.f78861n = -2;
            return 0;
        }
        int length = this.f78852e + cArr.length;
        int i13 = length + 1;
        char cG1 = G0(length);
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(i13);
            i13 = length + 2;
        }
        boolean z11 = cG1 == '-';
        if (z11) {
            cG1 = G0(i13);
            i13++;
        }
        if (cG1 < '0' || cG1 > '9') {
            this.f78861n = -1;
            return 0;
        }
        int i14 = cG1 - '0';
        while (true) {
            i11 = i13 + 1;
            cG0 = G0(i13);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            int i15 = i14 * 10;
            if (i15 < i14) {
                this.f78861n = -1;
                return 0;
            }
            i14 = i15 + (cG0 - '0');
            i13 = i11;
        }
        if (cG0 == '.') {
            this.f78861n = -1;
            return 0;
        }
        if (i14 < 0) {
            this.f78861n = -1;
            return 0;
        }
        if (z10) {
            if (cG0 != '\"') {
                this.f78861n = -1;
                return 0;
            }
            int i16 = i13 + 2;
            cG0 = G0(i11);
            i11 = i16;
        }
        while (cG0 != ',' && cG0 != '}') {
            if (!c.M0(cG0)) {
                this.f78861n = -1;
                return 0;
            }
            int i17 = i11 + 1;
            cG0 = G0(i11);
            i11 = i17;
        }
        this.f78852e = i11 - 1;
        if (cG0 == ',') {
            this.f78852e = i11;
            this.f78851d = G0(i11);
            this.f78861n = 3;
            this.f78848a = 16;
            return z11 ? -i14 : i14;
        }
        if (cG0 == '}') {
            this.f78852e = i11;
            char cG2 = G0(i11);
            while (true) {
                if (cG2 == ',') {
                    this.f78848a = 16;
                    int i18 = this.f78852e + 1;
                    this.f78852e = i18;
                    this.f78851d = G0(i18);
                    break;
                }
                if (cG2 == ']') {
                    this.f78848a = 15;
                    int i19 = this.f78852e + 1;
                    this.f78852e = i19;
                    this.f78851d = G0(i19);
                    break;
                }
                if (cG2 == '}') {
                    this.f78848a = 13;
                    int i20 = this.f78852e + 1;
                    this.f78852e = i20;
                    this.f78851d = G0(i20);
                    break;
                }
                if (cG2 == 26) {
                    this.f78848a = 20;
                    break;
                }
                if (!c.M0(cG2)) {
                    this.f78852e = i12;
                    this.f78851d = c11;
                    this.f78861n = -1;
                    return 0;
                }
                int i21 = this.f78852e + 1;
                this.f78852e = i21;
                cG2 = G0(i21);
            }
            this.f78861n = 4;
        }
        return z11 ? -i14 : i14;
    }

    @Override // y4.c
    public long f1(char[] cArr) {
        int i11;
        char cG0;
        boolean z10 = false;
        this.f78861n = 0;
        int i12 = this.f78852e;
        char c11 = this.f78851d;
        if (!t1(this.f78864t, i12, cArr)) {
            this.f78861n = -2;
            return 0L;
        }
        int length = this.f78852e + cArr.length;
        int i13 = length + 1;
        char cG1 = G0(length);
        boolean z11 = cG1 == '\"';
        if (z11) {
            cG1 = G0(i13);
            i13 = length + 2;
        }
        if (cG1 == '-') {
            cG1 = G0(i13);
            i13++;
            z10 = true;
        }
        if (cG1 < '0' || cG1 > '9') {
            this.f78852e = i12;
            this.f78851d = c11;
            this.f78861n = -1;
            return 0L;
        }
        long j11 = cG1 - '0';
        while (true) {
            i11 = i13 + 1;
            cG0 = G0(i13);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            j11 = (j11 * 10) + ((long) (cG0 - '0'));
            i13 = i11;
        }
        if (cG0 == '.') {
            this.f78861n = -1;
            return 0L;
        }
        if (z11) {
            if (cG0 != '\"') {
                this.f78861n = -1;
                return 0L;
            }
            cG0 = G0(i11);
            i11 = i13 + 2;
        }
        if (cG0 == ',' || cG0 == '}') {
            this.f78852e = i11 - 1;
        }
        if (j11 < 0 && (j11 != Long.MIN_VALUE || !z10)) {
            this.f78852e = i12;
            this.f78851d = c11;
            this.f78861n = -1;
            return 0L;
        }
        while (cG0 != ',') {
            if (cG0 == '}') {
                int i14 = 1;
                int i15 = this.f78852e + 1;
                this.f78852e = i15;
                char cG2 = G0(i15);
                while (true) {
                    if (cG2 == ',') {
                        this.f78848a = 16;
                        int i16 = this.f78852e + i14;
                        this.f78852e = i16;
                        this.f78851d = G0(i16);
                        break;
                    }
                    if (cG2 == ']') {
                        this.f78848a = 15;
                        int i17 = this.f78852e + i14;
                        this.f78852e = i17;
                        this.f78851d = G0(i17);
                        break;
                    }
                    if (cG2 == '}') {
                        this.f78848a = 13;
                        int i18 = this.f78852e + i14;
                        this.f78852e = i18;
                        this.f78851d = G0(i18);
                        break;
                    }
                    if (cG2 == 26) {
                        this.f78848a = 20;
                        break;
                    }
                    if (!c.M0(cG2)) {
                        this.f78852e = i12;
                        this.f78851d = c11;
                        this.f78861n = -1;
                        return 0L;
                    }
                    int i19 = this.f78852e + 1;
                    this.f78852e = i19;
                    cG2 = G0(i19);
                    i14 = 1;
                }
                this.f78861n = 4;
                return z10 ? -j11 : j11;
            }
            if (!c.M0(cG0)) {
                this.f78861n = -1;
                return 0L;
            }
            this.f78852e = i11;
            cG0 = G0(i11);
            i11++;
        }
        int i20 = this.f78852e + 1;
        this.f78852e = i20;
        this.f78851d = G0(i20);
        this.f78861n = 3;
        this.f78848a = 16;
        return z10 ? -j11 : j11;
    }

    @Override // y4.b
    public final int g0(char c11) {
        int i11;
        char cG0;
        this.f78861n = 0;
        int i12 = this.f78852e;
        int i13 = i12 + 1;
        char cG1 = G0(i12);
        while (c.M0(cG1)) {
            cG1 = G0(i13);
            i13++;
        }
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(i13);
            i13++;
        }
        boolean z11 = cG1 == '-';
        if (z11) {
            cG1 = G0(i13);
            i13++;
        }
        if (cG1 < '0' || cG1 > '9') {
            if (cG1 == 'n') {
                int i14 = i13 + 1;
                if (G0(i13) == 'u') {
                    int i15 = i13 + 2;
                    if (G0(i14) == 'l') {
                        int i16 = i13 + 3;
                        if (G0(i15) == 'l') {
                            this.f78861n = 5;
                            int i17 = i13 + 4;
                            char cG2 = G0(i16);
                            if (z10 && cG2 == '\"') {
                                cG2 = G0(i17);
                                i17 = i13 + 5;
                            }
                            while (cG2 != ',') {
                                if (cG2 == ']') {
                                    this.f78852e = i17;
                                    this.f78851d = G0(i17);
                                    this.f78861n = 5;
                                    this.f78848a = 15;
                                    return 0;
                                }
                                if (!c.M0(cG2)) {
                                    this.f78861n = -1;
                                    return 0;
                                }
                                char cG3 = G0(i17);
                                i17++;
                                cG2 = cG3;
                            }
                            this.f78852e = i17;
                            this.f78851d = G0(i17);
                            this.f78861n = 5;
                            this.f78848a = 16;
                            return 0;
                        }
                    }
                }
            }
            this.f78861n = -1;
            return 0;
        }
        int i18 = cG1 - '0';
        while (true) {
            i11 = i13 + 1;
            cG0 = G0(i13);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            int i19 = i18 * 10;
            if (i19 < i18) {
                throw new JSONException("parseInt error : " + r1(i12, i13));
            }
            i18 = i19 + (cG0 - '0');
            i13 = i11;
        }
        if (cG0 == '.') {
            this.f78861n = -1;
            return 0;
        }
        if (z10) {
            if (cG0 != '\"') {
                this.f78861n = -1;
                return 0;
            }
            cG0 = G0(i11);
            i11 = i13 + 2;
        }
        if (i18 < 0) {
            this.f78861n = -1;
            return 0;
        }
        while (cG0 != c11) {
            if (!c.M0(cG0)) {
                this.f78861n = -1;
                return z11 ? -i18 : i18;
            }
            cG0 = G0(i11);
            i11++;
        }
        this.f78852e = i11;
        this.f78851d = G0(i11);
        this.f78861n = 3;
        this.f78848a = 16;
        return z11 ? -i18 : i18;
    }

    @Override // y4.c
    public String g1(char[] cArr) {
        this.f78861n = 0;
        int i11 = this.f78852e;
        char c11 = this.f78851d;
        while (!t1(this.f78864t, this.f78852e, cArr)) {
            if (!c.M0(this.f78851d)) {
                this.f78861n = -2;
                return q1();
            }
            next();
            while (c.M0(this.f78851d)) {
                next();
            }
        }
        int length = this.f78852e + cArr.length;
        int i12 = length + 1;
        char cG0 = G0(length);
        int i13 = 0;
        if (cG0 != '\"') {
            while (c.M0(cG0)) {
                i13++;
                int i14 = i12 + 1;
                char cG1 = G0(i12);
                i12 = i14;
                cG0 = cG1;
            }
            if (cG0 != '\"') {
                this.f78861n = -1;
                return q1();
            }
        }
        int iK0 = K0('\"', i12);
        if (iK0 == -1) {
            throw new JSONException("unclosed str");
        }
        String strR1 = r1(i12, iK0 - i12);
        if (strR1.indexOf(92) != -1) {
            while (true) {
                int i15 = 0;
                for (int i16 = iK0 - 1; i16 >= 0 && G0(i16) == '\\'; i16--) {
                    i15++;
                }
                if (i15 % 2 == 0) {
                    break;
                }
                iK0 = K0('\"', iK0 + 1);
            }
            int i17 = this.f78852e;
            int length2 = iK0 - (((cArr.length + i17) + 1) + i13);
            strR1 = c.S0(s1(i17 + cArr.length + 1 + i13, length2), length2);
        }
        if ((this.f78850c & Feature.TrimStringFieldValue.mask) != 0) {
            strR1 = strR1.trim();
        }
        char cG2 = G0(iK0 + 1);
        while (cG2 != ',' && cG2 != '}') {
            if (!c.M0(cG2)) {
                this.f78861n = -1;
                return q1();
            }
            char cG3 = G0(iK0 + 2);
            iK0++;
            cG2 = cG3;
        }
        this.f78852e = iK0 + 1;
        this.f78851d = cG2;
        if (cG2 == ',') {
            int i18 = iK0 + 2;
            this.f78852e = i18;
            this.f78851d = G0(i18);
            this.f78861n = 3;
            return strR1;
        }
        int i19 = iK0 + 2;
        this.f78852e = i19;
        char cG4 = G0(i19);
        if (cG4 == ',') {
            this.f78848a = 16;
            int i20 = this.f78852e + 1;
            this.f78852e = i20;
            this.f78851d = G0(i20);
        } else if (cG4 == ']') {
            this.f78848a = 15;
            int i21 = this.f78852e + 1;
            this.f78852e = i21;
            this.f78851d = G0(i21);
        } else if (cG4 == '}') {
            this.f78848a = 13;
            int i22 = this.f78852e + 1;
            this.f78852e = i22;
            this.f78851d = G0(i22);
        } else {
            if (cG4 != 26) {
                this.f78852e = i11;
                this.f78851d = c11;
                this.f78861n = -1;
                return q1();
            }
            this.f78848a = 20;
        }
        this.f78861n = 4;
        return strR1;
    }

    @Override // y4.b
    public byte[] h0() {
        if (this.f78848a != 26) {
            return !this.f78857j ? com.alibaba.fastjson.util.f.d(this.f78864t, this.f78856i + 1, this.f78855h) : com.alibaba.fastjson.util.f.c(new String(this.f78854g, 0, this.f78855h));
        }
        int i11 = this.f78856i + 1;
        int i12 = this.f78855h;
        if (i12 % 2 != 0) {
            throw new JSONException("illegal state. " + i12);
        }
        int i13 = i12 / 2;
        byte[] bArr = new byte[i13];
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = (i14 * 2) + i11;
            char cCharAt = this.f78864t.charAt(i15);
            char cCharAt2 = this.f78864t.charAt(i15 + 1);
            char c11 = '7';
            int i16 = cCharAt - (cCharAt <= '9' ? '0' : '7');
            if (cCharAt2 <= '9') {
                c11 = '0';
            }
            bArr[i14] = (byte) ((i16 << 4) | (cCharAt2 - c11));
        }
        return bArr;
    }

    @Override // y4.c, y4.b
    public String k() {
        StringBuilder sb2 = new StringBuilder();
        int i11 = 1;
        int i12 = 1;
        int i13 = 0;
        while (i13 < this.f78852e) {
            if (this.f78864t.charAt(i13) == '\n') {
                i11++;
                i12 = 1;
            }
            i13++;
            i12++;
        }
        sb2.append("pos ");
        sb2.append(this.f78852e);
        sb2.append(", line ");
        sb2.append(i11);
        sb2.append(", column ");
        sb2.append(i12);
        if (this.f78864t.length() < 65535) {
            sb2.append(this.f78864t);
        } else {
            sb2.append(this.f78864t.substring(0, Settings.DEFAULT_INITIAL_WINDOW_SIZE));
        }
        return sb2.toString();
    }

    @Override // y4.c, y4.b
    public final String k0() {
        return !this.f78857j ? r1(this.f78856i + 1, this.f78855h) : new String(this.f78854g, 0, this.f78855h);
    }

    @Override // y4.b
    public String m0(i iVar) {
        int iIndexOf;
        if (!this.f78864t.startsWith("\"@type\":\"", this.f78852e) || (iIndexOf = this.f78864t.indexOf(34, this.f78852e + 9)) == -1) {
            return null;
        }
        int i11 = this.f78852e + 9;
        this.f78852e = i11;
        int iCharAt = 0;
        while (i11 < iIndexOf) {
            iCharAt = (iCharAt * 31) + this.f78864t.charAt(i11);
            i11++;
        }
        int i12 = this.f78852e;
        String strB = b(i12, iIndexOf - i12, iCharAt, iVar);
        char cCharAt = this.f78864t.charAt(iIndexOf + 1);
        if (cCharAt != ',' && cCharAt != ']') {
            return null;
        }
        int i13 = iIndexOf + 2;
        this.f78852e = i13;
        this.f78851d = this.f78864t.charAt(i13);
        return strB;
    }

    @Override // y4.c, y4.b
    public final char next() {
        int i11 = this.f78852e + 1;
        this.f78852e = i11;
        char cCharAt = i11 >= this.f78865u ? (char) 26 : this.f78864t.charAt(i11);
        this.f78851d = cCharAt;
        return cCharAt;
    }

    @Override // y4.c
    public final String r1(int i11, int i12) {
        if (!com.alibaba.fastjson.util.b.f18196b) {
            return this.f78864t.substring(i11, i12 + i11);
        }
        char[] cArr = this.f78854g;
        if (i12 < cArr.length) {
            this.f78864t.getChars(i11, i11 + i12, cArr, 0);
            return new String(this.f78854g, 0, i12);
        }
        char[] cArr2 = new char[i12];
        this.f78864t.getChars(i11, i12 + i11, cArr2, 0);
        return new String(cArr2);
    }

    @Override // y4.b
    public double s(char c11) {
        int i11;
        char cG0;
        long j11;
        int i12;
        int i13;
        double d11;
        char cG1;
        this.f78861n = 0;
        int i14 = this.f78852e;
        int i15 = i14 + 1;
        char cG2 = G0(i14);
        boolean z10 = cG2 == '\"';
        if (z10) {
            cG2 = G0(i15);
            i15 = i14 + 2;
        }
        boolean z11 = cG2 == '-';
        if (z11) {
            cG2 = G0(i15);
            i15++;
        }
        if (cG2 >= '0') {
            char c12 = '9';
            if (cG2 <= '9') {
                long j12 = cG2 - '0';
                while (true) {
                    i11 = i15 + 1;
                    cG0 = G0(i15);
                    if (cG0 < '0' || cG0 > '9') {
                        break;
                    }
                    j12 = (j12 * 10) + ((long) (cG0 - '0'));
                    i15 = i11;
                }
                if (cG0 == '.') {
                    int i16 = i15 + 2;
                    char cG3 = G0(i11);
                    if (cG3 < '0' || cG3 > '9') {
                        this.f78861n = -1;
                        return 0.0d;
                    }
                    j12 = (j12 * 10) + ((long) (cG3 - '0'));
                    long j13 = 10;
                    while (true) {
                        i11 = i16 + 1;
                        cG1 = G0(i16);
                        if (cG1 < '0' || cG1 > c12) {
                            break;
                        }
                        j12 = (j12 * 10) + ((long) (cG1 - '0'));
                        j13 *= 10;
                        i16 = i11;
                        c12 = '9';
                    }
                    long j14 = j13;
                    cG0 = cG1;
                    j11 = j14;
                } else {
                    j11 = 1;
                }
                boolean z12 = cG0 == 'e' || cG0 == 'E';
                if (z12) {
                    int i17 = i11 + 1;
                    char cG4 = G0(i11);
                    if (cG4 == '+' || cG4 == '-') {
                        i11 += 2;
                        cG0 = G0(i17);
                    } else {
                        i11 = i17;
                        cG0 = cG4;
                    }
                    while (cG0 >= '0' && cG0 <= '9') {
                        int i18 = i11 + 1;
                        char cG5 = G0(i11);
                        i11 = i18;
                        cG0 = cG5;
                    }
                }
                if (!z10) {
                    i12 = this.f78852e;
                    i13 = (i11 - i12) - 1;
                } else {
                    if (cG0 != '\"') {
                        this.f78861n = -1;
                        return 0.0d;
                    }
                    int i19 = i11 + 1;
                    char cG6 = G0(i11);
                    i12 = this.f78852e + 1;
                    i13 = (i19 - i12) - 2;
                    i11 = i19;
                    cG0 = cG6;
                }
                if (z12 || i13 >= 18) {
                    d11 = Double.parseDouble(r1(i12, i13));
                } else {
                    d11 = j12 / j11;
                    if (z11) {
                        d11 = -d11;
                    }
                }
                if (cG0 != c11) {
                    this.f78861n = -1;
                    return d11;
                }
                this.f78852e = i11;
                this.f78851d = G0(i11);
                this.f78861n = 3;
                this.f78848a = 16;
                return d11;
            }
        }
        if (cG2 == 'n') {
            int i20 = i15 + 1;
            if (G0(i15) == 'u') {
                int i21 = i15 + 2;
                if (G0(i20) == 'l') {
                    int i22 = i15 + 3;
                    if (G0(i21) == 'l') {
                        this.f78861n = 5;
                        int i23 = i15 + 4;
                        char cG7 = G0(i22);
                        if (z10 && cG7 == '\"') {
                            cG7 = G0(i23);
                            i23 = i15 + 5;
                        }
                        while (cG7 != ',') {
                            if (cG7 == ']') {
                                this.f78852e = i23;
                                this.f78851d = G0(i23);
                                this.f78861n = 5;
                                this.f78848a = 15;
                                return 0.0d;
                            }
                            if (!c.M0(cG7)) {
                                this.f78861n = -1;
                                return 0.0d;
                            }
                            char cG8 = G0(i23);
                            i23++;
                            cG7 = cG8;
                        }
                        this.f78852e = i23;
                        this.f78851d = G0(i23);
                        this.f78861n = 5;
                        this.f78848a = 16;
                        return 0.0d;
                    }
                }
            }
        }
        this.f78861n = -1;
        return 0.0d;
    }

    @Override // y4.c
    public final char[] s1(int i11, int i12) {
        if (com.alibaba.fastjson.util.b.f18196b) {
            char[] cArr = this.f78854g;
            if (i12 < cArr.length) {
                this.f78864t.getChars(i11, i12 + i11, cArr, 0);
                return this.f78854g;
            }
        }
        char[] cArr2 = new char[i12];
        this.f78864t.getChars(i11, i12 + i11, cArr2, 0);
        return cArr2;
    }

    public boolean w1() {
        return x1(true);
    }

    @Override // y4.b
    public long x0(char c11) {
        int i11;
        char cG0;
        this.f78861n = 0;
        int i12 = this.f78852e;
        int i13 = i12 + 1;
        char cG1 = G0(i12);
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(i13);
            i13 = i12 + 2;
        }
        boolean z11 = cG1 == '-';
        if (z11) {
            cG1 = G0(i13);
            i13++;
        }
        if (cG1 >= '0' && cG1 <= '9') {
            long j11 = cG1 - '0';
            while (true) {
                i11 = i13 + 1;
                cG0 = G0(i13);
                if (cG0 < '0' || cG0 > '9') {
                    break;
                }
                j11 = (j11 * 10) + ((long) (cG0 - '0'));
                i13 = i11;
            }
            if (cG0 == '.') {
                this.f78861n = -1;
                return 0L;
            }
            if (z10) {
                if (cG0 != '\"') {
                    this.f78861n = -1;
                    return 0L;
                }
                cG0 = G0(i11);
                i11 = i13 + 2;
            }
            if (j11 < 0 && (j11 != Long.MIN_VALUE || !z11)) {
                this.f78861n = -1;
                return 0L;
            }
            while (cG0 != c11) {
                if (!c.M0(cG0)) {
                    this.f78861n = -1;
                    return j11;
                }
                cG0 = G0(i11);
                i11++;
            }
            this.f78852e = i11;
            this.f78851d = G0(i11);
            this.f78861n = 3;
            this.f78848a = 16;
            return z11 ? -j11 : j11;
        }
        if (cG1 == 'n') {
            int i14 = i13 + 1;
            if (G0(i13) == 'u') {
                int i15 = i13 + 2;
                if (G0(i14) == 'l') {
                    int i16 = i13 + 3;
                    if (G0(i15) == 'l') {
                        this.f78861n = 5;
                        int i17 = i13 + 4;
                        char cG2 = G0(i16);
                        if (z10 && cG2 == '\"') {
                            cG2 = G0(i17);
                            i17 = i13 + 5;
                        }
                        while (cG2 != ',') {
                            if (cG2 == ']') {
                                this.f78852e = i17;
                                this.f78851d = G0(i17);
                                this.f78861n = 5;
                                this.f78848a = 15;
                                return 0L;
                            }
                            if (!c.M0(cG2)) {
                                this.f78861n = -1;
                                return 0L;
                            }
                            char cG3 = G0(i17);
                            i17++;
                            cG2 = cG3;
                        }
                        this.f78852e = i17;
                        this.f78851d = G0(i17);
                        this.f78861n = 5;
                        this.f78848a = 16;
                        return 0L;
                    }
                }
            }
        }
        this.f78861n = -1;
        return 0L;
    }

    public boolean x1(boolean z10) {
        return y1(z10, this.f78865u - this.f78852e);
    }
}
