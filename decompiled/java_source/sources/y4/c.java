package y4;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import okio.internal.Buffer;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c implements b, Closeable {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final ThreadLocal f78845q = new ThreadLocal();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected static final char[] f78846r = ("\"" + com.alibaba.fastjson.a.DEFAULT_TYPE_KEY + "\":\"").toCharArray();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected static final int[] f78847s = new int[103];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f78848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f78849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f78850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected char f78851d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f78852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f78853f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected char[] f78854g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f78855h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f78856i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected boolean f78857j;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected String f78862o;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected Calendar f78858k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected TimeZone f78859l = com.alibaba.fastjson.a.defaultTimeZone;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected Locale f78860m = com.alibaba.fastjson.a.defaultLocale;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f78861n = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected int f78863p = 0;

    static {
        for (int i11 = 48; i11 <= 57; i11++) {
            f78847s[i11] = i11 - 48;
        }
        for (int i12 = 97; i12 <= 102; i12++) {
            f78847s[i12] = i12 - 87;
        }
        for (int i13 = 65; i13 <= 70; i13++) {
            f78847s[i13] = i13 - 55;
        }
    }

    public c(int i11) {
        this.f78862o = null;
        this.f78850c = i11;
        if ((i11 & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.f78862o = "";
        }
        char[] cArr = (char[]) f78845q.get();
        this.f78854g = cArr;
        if (cArr == null) {
            this.f78854g = new char[512];
        }
    }

    public static boolean M0(char c11) {
        return c11 <= ' ' && (c11 == ' ' || c11 == '\n' || c11 == '\r' || c11 == '\t' || c11 == '\f' || c11 == '\b');
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00f1  */
    public static String S0(char[] cArr, int i11) {
        int i12;
        int i13;
        int i14;
        int i15 = 5;
        char[] cArr2 = new char[i11];
        int i16 = 0;
        int i17 = 0;
        while (i16 < i11) {
            char c11 = cArr[i16];
            if (c11 != '\\') {
                cArr2[i17] = c11;
                i12 = i15;
                i17++;
            } else {
                int i18 = i16 + 1;
                char c12 = cArr[i18];
                if (c12 == '\"') {
                    i12 = i15;
                    i13 = i17 + 1;
                    cArr2[i17] = '\"';
                } else if (c12 == '\'') {
                    i12 = i15;
                    i13 = i17 + 1;
                    cArr2[i17] = '\'';
                } else if (c12 == 'F') {
                    i12 = i15;
                    i13 = i17 + 1;
                    cArr2[i17] = '\f';
                } else if (c12 == '\\') {
                    i12 = i15;
                    i13 = i17 + 1;
                    cArr2[i17] = '\\';
                } else if (c12 == 'b') {
                    i12 = i15;
                    i13 = i17 + 1;
                    cArr2[i17] = '\b';
                } else if (c12 == 'f') {
                    i12 = i15;
                    i13 = i17 + 1;
                    cArr2[i17] = '\f';
                } else if (c12 == 'n') {
                    i12 = i15;
                    i13 = i17 + 1;
                    cArr2[i17] = '\n';
                } else if (c12 == 'r') {
                    i12 = i15;
                    i13 = i17 + 1;
                    cArr2[i17] = '\r';
                } else if (c12 != 'x') {
                    switch (c12) {
                        case '/':
                            i12 = i15;
                            i13 = i17 + 1;
                            cArr2[i17] = '/';
                            break;
                        case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                            i12 = i15;
                            i13 = i17 + 1;
                            cArr2[i17] = 0;
                            break;
                        case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                            i12 = i15;
                            i13 = i17 + 1;
                            cArr2[i17] = 1;
                            break;
                        case '2':
                            i12 = i15;
                            i13 = i17 + 1;
                            cArr2[i17] = 2;
                            break;
                        case AD_REWARD_USER_VALUE:
                            i12 = i15;
                            i13 = i17 + 1;
                            cArr2[i17] = 3;
                            break;
                        case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                            i12 = i15;
                            i13 = i17 + 1;
                            cArr2[i17] = 4;
                            break;
                        case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                            i13 = i17 + 1;
                            i12 = 5;
                            cArr2[i17] = 5;
                            break;
                        case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                            i14 = i17 + 1;
                            cArr2[i17] = 6;
                            i17 = i14;
                            i16 = i18;
                            i12 = 5;
                            break;
                        case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                            i14 = i17 + 1;
                            cArr2[i17] = 7;
                            i17 = i14;
                            i16 = i18;
                            i12 = 5;
                            break;
                        default:
                            switch (c12) {
                                case GZIP_ENCODE_ERROR_VALUE:
                                    i14 = i17 + 1;
                                    cArr2[i17] = '\t';
                                    i17 = i14;
                                    i16 = i18;
                                    i12 = 5;
                                    break;
                                case ASSET_FAILED_STATUS_CODE_VALUE:
                                    char c13 = cArr[i16 + 2];
                                    char c14 = cArr[i16 + 3];
                                    char c15 = cArr[i16 + 4];
                                    i16 += i15;
                                    cArr2[i17] = (char) Integer.parseInt(new String(new char[]{c13, c14, c15, cArr[i16]}), 16);
                                    i17++;
                                    i12 = 5;
                                    break;
                                case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                                    cArr2[i17] = 11;
                                    i12 = i15;
                                    i17++;
                                    i16 = i18;
                                    break;
                                default:
                                    throw new JSONException("unclosed.str.lit");
                            }
                            break;
                    }
                } else {
                    i12 = i15;
                    int[] iArr = f78847s;
                    int i19 = iArr[cArr[i16 + 2]] * 16;
                    i16 += 3;
                    cArr2[i17] = (char) (i19 + iArr[cArr[i16]]);
                    i17++;
                }
                i17 = i13;
                i16 = i18;
            }
            i16++;
            i15 = i12;
        }
        return new String(cArr2, 0, i17);
    }

    private void l1() {
        this.f78856i = this.f78852e;
        this.f78857j = false;
        while (true) {
            char next = next();
            if (next == '\'') {
                this.f78848a = 4;
                next();
                return;
            }
            if (next == 26) {
                if (L0()) {
                    throw new JSONException("unclosed single-quote string");
                }
                R0((char) 26);
            } else if (next == '\\') {
                if (!this.f78857j) {
                    this.f78857j = true;
                    int i11 = this.f78855h;
                    char[] cArr = this.f78854g;
                    if (i11 > cArr.length) {
                        char[] cArr2 = new char[i11 * 2];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.f78854g = cArr2;
                    }
                    H0(this.f78856i + 1, this.f78855h, this.f78854g);
                }
                char next2 = next();
                if (next2 == '\"') {
                    R0('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            R0('\\');
                        } else if (next2 == 'b') {
                            R0('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                R0('\n');
                            } else if (next2 == 'r') {
                                R0('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        R0('/');
                                        break;
                                    case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                        R0((char) 0);
                                        break;
                                    case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                        R0((char) 1);
                                        break;
                                    case '2':
                                        R0((char) 2);
                                        break;
                                    case AD_REWARD_USER_VALUE:
                                        R0((char) 3);
                                        break;
                                    case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                        R0((char) 4);
                                        break;
                                    case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                        R0((char) 5);
                                        break;
                                    case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                        R0((char) 6);
                                        break;
                                    case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                        R0((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case GZIP_ENCODE_ERROR_VALUE:
                                                R0('\t');
                                                break;
                                            case ASSET_FAILED_STATUS_CODE_VALUE:
                                                R0((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                break;
                                            case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                                                R0((char) 11);
                                                break;
                                            default:
                                                this.f78851d = next2;
                                                throw new JSONException("unclosed single-quote string");
                                        }
                                        break;
                                }
                            } else {
                                char next3 = next();
                                char next4 = next();
                                boolean z10 = (next3 >= '0' && next3 <= '9') || (next3 >= 'a' && next3 <= 'f') || (next3 >= 'A' && next3 <= 'F');
                                boolean z11 = (next4 >= '0' && next4 <= '9') || (next4 >= 'a' && next4 <= 'f') || (next4 >= 'A' && next4 <= 'F');
                                if (!z10 || !z11) {
                                    throw new JSONException("invalid escape character \\x" + next3 + next4);
                                }
                                int[] iArr = f78847s;
                                R0((char) ((iArr[next3] * 16) + iArr[next4]));
                            }
                        }
                    }
                    R0('\f');
                } else {
                    R0('\'');
                }
            } else if (this.f78857j) {
                int i12 = this.f78855h;
                char[] cArr3 = this.f78854g;
                if (i12 == cArr3.length) {
                    R0(next);
                } else {
                    this.f78855h = i12 + 1;
                    cArr3[i12] = next;
                }
            } else {
                this.f78855h++;
            }
        }
    }

    @Override // y4.b
    public Locale B0() {
        return this.f78860m;
    }

    @Override // y4.b
    public abstract String C0();

    protected abstract void E0(int i11, char[] cArr, int i12, int i13);

    protected abstract boolean F0(char[] cArr);

    public abstract char G0(int i11);

    protected abstract void H0(int i11, int i12, char[] cArr);

    public double I0() {
        return Double.parseDouble(C0());
    }

    public Calendar J0() {
        return this.f78858k;
    }

    public abstract int K0(char c11, int i11);

    public abstract boolean L0();

    protected void N0(String str, Object... objArr) {
        this.f78848a = 1;
    }

    public final boolean O0(char[] cArr) {
        while (!F0(cArr)) {
            if (!M0(this.f78851d)) {
                return false;
            }
            next();
        }
        int length = this.f78852e + cArr.length;
        this.f78852e = length;
        char cG0 = G0(length);
        this.f78851d = cG0;
        if (cG0 == '{') {
            next();
            this.f78848a = 12;
        } else if (cG0 == '[') {
            next();
            this.f78848a = 14;
        } else if (cG0 == 'S' && G0(this.f78852e + 1) == 'e' && G0(this.f78852e + 2) == 't' && G0(this.f78852e + 3) == '[') {
            int i11 = this.f78852e + 3;
            this.f78852e = i11;
            this.f78851d = G0(i11);
            this.f78848a = 21;
        } else {
            Z();
        }
        return true;
    }

    public final void P0() {
        while (M0(this.f78851d)) {
            next();
        }
        char c11 = this.f78851d;
        if (c11 == '_' || c11 == '$' || Character.isLetter(c11)) {
            i1();
        } else {
            Z();
        }
    }

    public final void Q0(char c11) {
        this.f78855h = 0;
        while (true) {
            char c12 = this.f78851d;
            if (c12 == c11) {
                next();
                Z();
                return;
            }
            if (c12 != ' ' && c12 != '\n' && c12 != '\r' && c12 != '\t' && c12 != '\f' && c12 != '\b') {
                throw new JSONException("not match " + c11 + " - " + this.f78851d + ", info : " + k());
            }
            next();
        }
    }

    protected final void R0(char c11) {
        int i11 = this.f78855h;
        char[] cArr = this.f78854g;
        if (i11 >= cArr.length) {
            int length = cArr.length * 2;
            if (length < i11) {
                length = i11 + 1;
            }
            char[] cArr2 = new char[length];
            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
            this.f78854g = cArr2;
        }
        char[] cArr3 = this.f78854g;
        int i12 = this.f78855h;
        this.f78855h = i12 + 1;
        cArr3[i12] = c11;
    }

    @Override // y4.b
    public Enum T(Class cls, i iVar, char c11) {
        String strM1 = m1(iVar, c11);
        if (strM1 == null) {
            return null;
        }
        return Enum.valueOf(cls, strM1);
    }

    public long T0(char[] cArr) {
        this.f78861n = 0;
        if (!F0(cArr)) {
            this.f78861n = -2;
            return 0L;
        }
        int length = cArr.length;
        int i11 = length + 1;
        if (G0(this.f78852e + length) != '\"') {
            this.f78861n = -1;
            return 0L;
        }
        long j11 = -3750763034362895579L;
        while (true) {
            int i12 = i11 + 1;
            char cG0 = G0(this.f78852e + i11);
            if (cG0 == '\"') {
                int i13 = i11 + 2;
                char cG1 = G0(this.f78852e + i12);
                if (cG1 == ',') {
                    int i14 = this.f78852e + i13;
                    this.f78852e = i14;
                    this.f78851d = G0(i14);
                    this.f78861n = 3;
                    return j11;
                }
                if (cG1 != '}') {
                    this.f78861n = -1;
                    return 0L;
                }
                int i15 = i11 + 3;
                char cG2 = G0(this.f78852e + i13);
                if (cG2 == ',') {
                    this.f78848a = 16;
                    int i16 = this.f78852e + i15;
                    this.f78852e = i16;
                    this.f78851d = G0(i16);
                } else if (cG2 == ']') {
                    this.f78848a = 15;
                    int i17 = this.f78852e + i15;
                    this.f78852e = i17;
                    this.f78851d = G0(i17);
                } else if (cG2 == '}') {
                    this.f78848a = 13;
                    int i18 = this.f78852e + i15;
                    this.f78852e = i18;
                    this.f78851d = G0(i18);
                } else {
                    if (cG2 != 26) {
                        this.f78861n = -1;
                        return 0L;
                    }
                    this.f78848a = 20;
                    this.f78852e += i11 + 2;
                    this.f78851d = (char) 26;
                }
                this.f78861n = 4;
                return j11;
            }
            j11 = (j11 ^ ((long) ((cG0 < 'A' || cG0 > 'Z') ? cG0 : cG0 + ' '))) * 1099511628211L;
            if (cG0 == '\\') {
                this.f78861n = -1;
                return 0L;
            }
            i11 = i12;
        }
    }

    @Override // y4.b
    public boolean U() {
        int i11 = 0;
        while (true) {
            char cG0 = G0(i11);
            if (cG0 == 26) {
                this.f78848a = 20;
                return true;
            }
            if (!M0(cG0)) {
                return false;
            }
            i11++;
        }
    }

    public final void U0() {
        if (this.f78851d != 'f') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f78851d != 'a') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f78851d != 'l') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f78851d != 's') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f78851d != 'e') {
            throw new JSONException("error parse false");
        }
        next();
        char c11 = this.f78851d;
        if (c11 != ' ' && c11 != ',' && c11 != '}' && c11 != ']' && c11 != '\n' && c11 != '\r' && c11 != '\t' && c11 != 26 && c11 != '\f' && c11 != '\b' && c11 != ':' && c11 != '/') {
            throw new JSONException("scan false error");
        }
        this.f78848a = 7;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ac A[LOOP:0: B:34:0x0096->B:39:0x00ac, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b7 A[SYNTHETIC] */
    @Override // y4.b
    public boolean V(char c11) {
        boolean z10 = false;
        this.f78861n = 0;
        char cG0 = G0(this.f78852e);
        int i11 = 5;
        if (cG0 != 't') {
            if (cG0 == 'f') {
                if (G0(this.f78852e + 1) != 'a' || G0(this.f78852e + 2) != 'l' || G0(this.f78852e + 3) != 's' || G0(this.f78852e + 4) != 'e') {
                    this.f78861n = -1;
                    return false;
                }
                cG0 = G0(this.f78852e + 5);
                i11 = 6;
            } else if (cG0 == '1') {
                cG0 = G0(this.f78852e + 1);
                i11 = 2;
            } else if (cG0 == '0') {
                cG0 = G0(this.f78852e + 1);
                i11 = 2;
            } else {
                i11 = 1;
            }
            while (cG0 != c11) {
                if (M0(cG0)) {
                    this.f78861n = -1;
                    return z10;
                }
                cG0 = G0(this.f78852e + i11);
                i11++;
            }
            int i12 = this.f78852e + i11;
            this.f78852e = i12;
            this.f78851d = G0(i12);
            this.f78861n = 3;
            return z10;
        }
        if (G0(this.f78852e + 1) != 'r' || G0(this.f78852e + 2) != 'u' || G0(this.f78852e + 3) != 'e') {
            this.f78861n = -1;
            return false;
        }
        cG0 = G0(this.f78852e + 4);
        z10 = true;
        while (cG0 != c11) {
            if (M0(cG0)) {
                this.f78861n = -1;
                return z10;
            }
            cG0 = G0(this.f78852e + i11);
            i11++;
        }
        int i13 = this.f78852e + i11;
        this.f78852e = i13;
        this.f78851d = G0(i13);
        this.f78861n = 3;
        return z10;
    }

    public BigInteger V0(char[] cArr) {
        int i11;
        char cG0;
        boolean z10;
        int length;
        int i12;
        BigInteger bigInteger;
        this.f78861n = 0;
        if (!F0(cArr)) {
            this.f78861n = -2;
            return null;
        }
        int length2 = cArr.length;
        int i13 = length2 + 1;
        char cG1 = G0(this.f78852e + length2);
        boolean z11 = cG1 == '\"';
        if (z11) {
            cG1 = G0(this.f78852e + i13);
            i13 = length2 + 2;
        }
        boolean z12 = cG1 == '-';
        if (z12) {
            cG1 = G0(this.f78852e + i13);
            i13++;
        }
        if (cG1 >= '0') {
            char c11 = '9';
            if (cG1 <= '9') {
                long j11 = cG1 - '0';
                while (true) {
                    i11 = i13 + 1;
                    cG0 = G0(this.f78852e + i13);
                    if (cG0 < '0' || cG0 > c11) {
                        z10 = false;
                        break;
                    }
                    long j12 = (10 * j11) + ((long) (cG0 - '0'));
                    if (j12 < j11) {
                        z10 = true;
                        break;
                    }
                    j11 = j12;
                    i13 = i11;
                    c11 = '9';
                }
                if (!z11) {
                    int i14 = this.f78852e;
                    length = cArr.length + i14;
                    i12 = ((i14 + i11) - length) - 1;
                } else {
                    if (cG0 != '\"') {
                        this.f78861n = -1;
                        return null;
                    }
                    int i15 = i13 + 2;
                    cG0 = G0(this.f78852e + i11);
                    int i16 = this.f78852e;
                    length = cArr.length + i16 + 1;
                    i12 = ((i16 + i15) - length) - 2;
                    i11 = i15;
                }
                if (!z10 && (i12 < 20 || (z12 && i12 < 21))) {
                    if (z12) {
                        j11 = -j11;
                    }
                    bigInteger = BigInteger.valueOf(j11);
                } else {
                    if (i12 > 65535) {
                        throw new JSONException("scanInteger overflow");
                    }
                    bigInteger = new BigInteger(r1(length, i12), 10);
                }
                if (cG0 == ',') {
                    int i17 = this.f78852e + i11;
                    this.f78852e = i17;
                    this.f78851d = G0(i17);
                    this.f78861n = 3;
                    this.f78848a = 16;
                    return bigInteger;
                }
                if (cG0 != '}') {
                    this.f78861n = -1;
                    return null;
                }
                int i18 = i11 + 1;
                char cG2 = G0(this.f78852e + i11);
                if (cG2 == ',') {
                    this.f78848a = 16;
                    int i19 = this.f78852e + i18;
                    this.f78852e = i19;
                    this.f78851d = G0(i19);
                } else if (cG2 == ']') {
                    this.f78848a = 15;
                    int i20 = this.f78852e + i18;
                    this.f78852e = i20;
                    this.f78851d = G0(i20);
                } else if (cG2 == '}') {
                    this.f78848a = 13;
                    int i21 = this.f78852e + i18;
                    this.f78852e = i21;
                    this.f78851d = G0(i21);
                } else {
                    if (cG2 != 26) {
                        this.f78861n = -1;
                        return null;
                    }
                    this.f78848a = 20;
                    this.f78852e += i11;
                    this.f78851d = (char) 26;
                }
                this.f78861n = 4;
                return bigInteger;
            }
        }
        if (cG1 != 'n' || G0(this.f78852e + i13) != 'u' || G0(this.f78852e + i13 + 1) != 'l' || G0(this.f78852e + i13 + 2) != 'l') {
            this.f78861n = -1;
            return null;
        }
        this.f78861n = 5;
        int i22 = i13 + 4;
        char cG3 = G0(this.f78852e + i13 + 3);
        if (z11 && cG3 == '\"') {
            cG3 = G0(this.f78852e + i22);
            i22 = i13 + 5;
        }
        while (cG3 != ',') {
            if (cG3 == '}') {
                int i23 = this.f78852e + i22;
                this.f78852e = i23;
                this.f78851d = G0(i23);
                this.f78861n = 5;
                this.f78848a = 13;
                return null;
            }
            if (!M0(cG3)) {
                this.f78861n = -1;
                return null;
            }
            cG3 = G0(this.f78852e + i22);
            i22++;
        }
        int i24 = this.f78852e + i22;
        this.f78852e = i24;
        this.f78851d = G0(i24);
        this.f78861n = 5;
        this.f78848a = 16;
        return null;
    }

    public abstract boolean W0(char[] cArr);

    public abstract Date X0(char[] cArr);

    public BigDecimal Y0(char[] cArr) {
        int i11;
        char cG0;
        int length;
        int i12;
        this.f78861n = 0;
        if (!F0(cArr)) {
            this.f78861n = -2;
            return null;
        }
        int length2 = cArr.length;
        int i13 = length2 + 1;
        char cG1 = G0(this.f78852e + length2);
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(this.f78852e + i13);
            i13 = length2 + 2;
        }
        if (cG1 == '-') {
            cG1 = G0(this.f78852e + i13);
            i13++;
        }
        if (cG1 < '0' || cG1 > '9') {
            if (cG1 != 'n' || G0(this.f78852e + i13) != 'u' || G0(this.f78852e + i13 + 1) != 'l' || G0(this.f78852e + i13 + 2) != 'l') {
                this.f78861n = -1;
                return null;
            }
            this.f78861n = 5;
            int i14 = i13 + 4;
            char cG2 = G0(this.f78852e + i13 + 3);
            if (z10 && cG2 == '\"') {
                cG2 = G0(this.f78852e + i14);
                i14 = i13 + 5;
            }
            while (cG2 != ',') {
                if (cG2 == '}') {
                    int i15 = this.f78852e + i14;
                    this.f78852e = i15;
                    this.f78851d = G0(i15);
                    this.f78861n = 5;
                    this.f78848a = 13;
                    return null;
                }
                if (!M0(cG2)) {
                    this.f78861n = -1;
                    return null;
                }
                cG2 = G0(this.f78852e + i14);
                i14++;
            }
            int i16 = this.f78852e + i14;
            this.f78852e = i16;
            this.f78851d = G0(i16);
            this.f78861n = 5;
            this.f78848a = 16;
            return null;
        }
        while (true) {
            i11 = i13 + 1;
            cG0 = G0(this.f78852e + i13);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            i13 = i11;
        }
        if (cG0 == '.') {
            int i17 = i13 + 2;
            char cG3 = G0(this.f78852e + i11);
            if (cG3 < '0' || cG3 > '9') {
                this.f78861n = -1;
                return null;
            }
            while (true) {
                i11 = i17 + 1;
                cG0 = G0(this.f78852e + i17);
                if (cG0 < '0' || cG0 > '9') {
                    break;
                }
                i17 = i11;
            }
        }
        if (cG0 == 'e' || cG0 == 'E') {
            int i18 = i11 + 1;
            cG0 = G0(this.f78852e + i11);
            if (cG0 == '+' || cG0 == '-') {
                i11 += 2;
                cG0 = G0(this.f78852e + i18);
            } else {
                i11 = i18;
            }
            while (cG0 >= '0' && cG0 <= '9') {
                char cG4 = G0(this.f78852e + i11);
                i11++;
                cG0 = cG4;
            }
        }
        if (!z10) {
            int i19 = this.f78852e;
            length = cArr.length + i19;
            i12 = ((i19 + i11) - length) - 1;
        } else {
            if (cG0 != '\"') {
                this.f78861n = -1;
                return null;
            }
            int i20 = i11 + 1;
            char cG5 = G0(this.f78852e + i11);
            int i21 = this.f78852e;
            length = cArr.length + i21 + 1;
            i12 = ((i21 + i20) - length) - 2;
            i11 = i20;
            cG0 = cG5;
        }
        if (i12 > 65535) {
            throw new JSONException("scan decimal overflow");
        }
        char[] cArrS1 = s1(length, i12);
        BigDecimal bigDecimal = new BigDecimal(cArrS1, 0, cArrS1.length, MathContext.UNLIMITED);
        if (cG0 == ',') {
            int i22 = this.f78852e + i11;
            this.f78852e = i22;
            this.f78851d = G0(i22);
            this.f78861n = 3;
            this.f78848a = 16;
            return bigDecimal;
        }
        if (cG0 != '}') {
            this.f78861n = -1;
            return null;
        }
        int i23 = i11 + 1;
        char cG6 = G0(this.f78852e + i11);
        if (cG6 == ',') {
            this.f78848a = 16;
            int i24 = this.f78852e + i23;
            this.f78852e = i24;
            this.f78851d = G0(i24);
        } else if (cG6 == ']') {
            this.f78848a = 15;
            int i25 = this.f78852e + i23;
            this.f78852e = i25;
            this.f78851d = G0(i25);
        } else if (cG6 == '}') {
            this.f78848a = 13;
            int i26 = this.f78852e + i23;
            this.f78852e = i26;
            this.f78851d = G0(i26);
        } else {
            if (cG6 != 26) {
                this.f78861n = -1;
                return null;
            }
            this.f78848a = 20;
            this.f78852e += i11;
            this.f78851d = (char) 26;
        }
        this.f78861n = 4;
        return bigDecimal;
    }

    @Override // y4.b
    public final void Z() {
        this.f78855h = 0;
        while (true) {
            this.f78849b = this.f78852e;
            char c11 = this.f78851d;
            if (c11 == '/') {
                p1();
            } else {
                if (c11 == '\"') {
                    a0();
                    return;
                }
                if (c11 == ',') {
                    next();
                    this.f78848a = 16;
                    return;
                }
                if (c11 >= '0' && c11 <= '9') {
                    p();
                    return;
                }
                if (c11 == '-') {
                    p();
                    return;
                }
                switch (c11) {
                    case '\b':
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                        next();
                        break;
                    case '\'':
                        if (!n(Feature.AllowSingleQuotes)) {
                            throw new JSONException("Feature.AllowSingleQuotes is false");
                        }
                        l1();
                        return;
                    case '(':
                        next();
                        this.f78848a = 10;
                        return;
                    case ')':
                        next();
                        this.f78848a = 11;
                        return;
                    case '+':
                        next();
                        p();
                        return;
                    case '.':
                        next();
                        this.f78848a = 25;
                        return;
                    case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                        next();
                        this.f78848a = 17;
                        return;
                    case ';':
                        next();
                        this.f78848a = 24;
                        return;
                    case 'N':
                    case TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW /* 83 */:
                    case 'T':
                    case ASSET_FAILED_STATUS_CODE_VALUE:
                        i1();
                        return;
                    case '[':
                        next();
                        this.f78848a = 14;
                        return;
                    case ']':
                        next();
                        this.f78848a = 15;
                        return;
                    case 'f':
                        U0();
                        return;
                    case 'n':
                        j1();
                        return;
                    case GZIP_ENCODE_ERROR_VALUE:
                        n1();
                        return;
                    case 'x':
                        h1();
                        return;
                    case INVALID_RI_ENDPOINT_VALUE:
                        next();
                        this.f78848a = 12;
                        return;
                    case INVALID_METRICS_ENDPOINT_VALUE:
                        next();
                        this.f78848a = 13;
                        return;
                    default:
                        if (L0()) {
                            if (this.f78848a == 20) {
                                throw new JSONException("EOF error");
                            }
                            this.f78848a = 20;
                            int i11 = this.f78852e;
                            this.f78849b = i11;
                            this.f78853f = i11;
                            return;
                        }
                        char c12 = this.f78851d;
                        if (c12 > 31 && c12 != 127) {
                            N0("illegal.char", String.valueOf((int) c12));
                            next();
                            return;
                        }
                        next();
                        break;
                        break;
                }
            }
        }
    }

    public final double Z0(char[] cArr) {
        int i11;
        char cG0;
        long j11;
        int length;
        int i12;
        double d11;
        this.f78861n = 0;
        if (!F0(cArr)) {
            this.f78861n = -2;
            return 0.0d;
        }
        int length2 = cArr.length;
        int i13 = length2 + 1;
        char cG1 = G0(this.f78852e + length2);
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(this.f78852e + i13);
            i13 = length2 + 2;
        }
        boolean z11 = cG1 == '-';
        if (z11) {
            cG1 = G0(this.f78852e + i13);
            i13++;
        }
        if (cG1 < '0' || cG1 > '9') {
            if (cG1 != 'n' || G0(this.f78852e + i13) != 'u' || G0(this.f78852e + i13 + 1) != 'l' || G0(this.f78852e + i13 + 2) != 'l') {
                this.f78861n = -1;
                return 0.0d;
            }
            this.f78861n = 5;
            int i14 = i13 + 4;
            char cG2 = G0(this.f78852e + i13 + 3);
            if (z10 && cG2 == '\"') {
                cG2 = G0(this.f78852e + i14);
                i14 = i13 + 5;
            }
            while (cG2 != ',') {
                if (cG2 == '}') {
                    int i15 = this.f78852e + i14;
                    this.f78852e = i15;
                    this.f78851d = G0(i15);
                    this.f78861n = 5;
                    this.f78848a = 13;
                    return 0.0d;
                }
                if (!M0(cG2)) {
                    this.f78861n = -1;
                    return 0.0d;
                }
                cG2 = G0(this.f78852e + i14);
                i14++;
            }
            int i16 = this.f78852e + i14;
            this.f78852e = i16;
            this.f78851d = G0(i16);
            this.f78861n = 5;
            this.f78848a = 16;
            return 0.0d;
        }
        long j12 = cG1 - '0';
        while (true) {
            i11 = i13 + 1;
            cG0 = G0(this.f78852e + i13);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            j12 = (j12 * 10) + ((long) (cG0 - '0'));
            i13 = i11;
        }
        if (cG0 == '.') {
            int i17 = i13 + 2;
            char cG3 = G0(this.f78852e + i11);
            if (cG3 < '0' || cG3 > '9') {
                this.f78861n = -1;
                return 0.0d;
            }
            j12 = (j12 * 10) + ((long) (cG3 - '0'));
            j11 = 10;
            while (true) {
                i11 = i17 + 1;
                cG0 = G0(this.f78852e + i17);
                if (cG0 < '0' || cG0 > '9') {
                    break;
                }
                j12 = (j12 * 10) + ((long) (cG0 - '0'));
                j11 *= 10;
                i17 = i11;
            }
        } else {
            j11 = 1;
        }
        boolean z12 = cG0 == 'e' || cG0 == 'E';
        if (z12) {
            int i18 = i11 + 1;
            cG0 = G0(this.f78852e + i11);
            if (cG0 == '+' || cG0 == '-') {
                i11 += 2;
                cG0 = G0(this.f78852e + i18);
            } else {
                i11 = i18;
            }
            while (cG0 >= '0' && cG0 <= '9') {
                cG0 = G0(this.f78852e + i11);
                i11++;
            }
        }
        if (!z10) {
            int i19 = this.f78852e;
            length = cArr.length + i19;
            i12 = ((i19 + i11) - length) - 1;
        } else {
            if (cG0 != '\"') {
                this.f78861n = -1;
                return 0.0d;
            }
            int i20 = i11 + 1;
            cG0 = G0(this.f78852e + i11);
            int i21 = this.f78852e;
            length = cArr.length + i21 + 1;
            i12 = ((i21 + i20) - length) - 2;
            i11 = i20;
        }
        if (z12 || i12 >= 17) {
            d11 = Double.parseDouble(r1(length, i12));
        } else {
            d11 = j12 / j11;
            if (z11) {
                d11 = -d11;
            }
        }
        if (cG0 == ',') {
            int i22 = this.f78852e + i11;
            this.f78852e = i22;
            this.f78851d = G0(i22);
            this.f78861n = 3;
            this.f78848a = 16;
            return d11;
        }
        if (cG0 != '}') {
            this.f78861n = -1;
            return 0.0d;
        }
        int i23 = i11 + 1;
        char cG4 = G0(this.f78852e + i11);
        if (cG4 == ',') {
            this.f78848a = 16;
            int i24 = this.f78852e + i23;
            this.f78852e = i24;
            this.f78851d = G0(i24);
        } else if (cG4 == ']') {
            this.f78848a = 15;
            int i25 = this.f78852e + i23;
            this.f78852e = i25;
            this.f78851d = G0(i25);
        } else if (cG4 == '}') {
            this.f78848a = 13;
            int i26 = this.f78852e + i23;
            this.f78852e = i26;
            this.f78851d = G0(i26);
        } else {
            if (cG4 != 26) {
                this.f78861n = -1;
                return 0.0d;
            }
            this.f78848a = 20;
            this.f78852e += i11;
            this.f78851d = (char) 26;
        }
        this.f78861n = 4;
        return d11;
    }

    @Override // y4.b
    public final void a0() {
        this.f78856i = this.f78852e;
        this.f78857j = false;
        while (true) {
            char next = next();
            if (next == '\"') {
                this.f78848a = 4;
                this.f78851d = next();
                return;
            }
            if (next == 26) {
                if (L0()) {
                    throw new JSONException("unclosed string : " + next);
                }
                R0((char) 26);
            } else if (next == '\\') {
                if (!this.f78857j) {
                    this.f78857j = true;
                    int i11 = this.f78855h;
                    char[] cArr = this.f78854g;
                    if (i11 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i11 <= length) {
                            i11 = length;
                        }
                        char[] cArr2 = new char[i11];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.f78854g = cArr2;
                    }
                    H0(this.f78856i + 1, this.f78855h, this.f78854g);
                }
                char next2 = next();
                if (next2 == '\"') {
                    R0('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            R0('\\');
                        } else if (next2 == 'b') {
                            R0('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                R0('\n');
                            } else if (next2 == 'r') {
                                R0('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        R0('/');
                                        break;
                                    case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                        R0((char) 0);
                                        break;
                                    case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                        R0((char) 1);
                                        break;
                                    case '2':
                                        R0((char) 2);
                                        break;
                                    case AD_REWARD_USER_VALUE:
                                        R0((char) 3);
                                        break;
                                    case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                        R0((char) 4);
                                        break;
                                    case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                        R0((char) 5);
                                        break;
                                    case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                        R0((char) 6);
                                        break;
                                    case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                        R0((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case GZIP_ENCODE_ERROR_VALUE:
                                                R0('\t');
                                                break;
                                            case ASSET_FAILED_STATUS_CODE_VALUE:
                                                R0((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                break;
                                            case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                                                R0((char) 11);
                                                break;
                                            default:
                                                this.f78851d = next2;
                                                throw new JSONException("unclosed string : " + next2);
                                        }
                                        break;
                                }
                            } else {
                                char next3 = next();
                                char next4 = next();
                                boolean z10 = (next3 >= '0' && next3 <= '9') || (next3 >= 'a' && next3 <= 'f') || (next3 >= 'A' && next3 <= 'F');
                                boolean z11 = (next4 >= '0' && next4 <= '9') || (next4 >= 'a' && next4 <= 'f') || (next4 >= 'A' && next4 <= 'F');
                                if (!z10 || !z11) {
                                    throw new JSONException("invalid escape character \\x" + next3 + next4);
                                }
                                int[] iArr = f78847s;
                                R0((char) ((iArr[next3] * 16) + iArr[next4]));
                            }
                        }
                    }
                    R0('\f');
                } else {
                    R0('\'');
                }
            } else if (this.f78857j) {
                int i12 = this.f78855h;
                char[] cArr3 = this.f78854g;
                if (i12 == cArr3.length) {
                    R0(next);
                } else {
                    this.f78855h = i12 + 1;
                    cArr3[i12] = next;
                }
            } else {
                this.f78855h++;
            }
        }
    }

    public final float a1(char[] cArr) {
        int i11;
        char cG0;
        long j11;
        int length;
        int i12;
        float f11;
        this.f78861n = 0;
        if (!F0(cArr)) {
            this.f78861n = -2;
            return 0.0f;
        }
        int length2 = cArr.length;
        int i13 = length2 + 1;
        char cG1 = G0(this.f78852e + length2);
        boolean z10 = cG1 == '\"';
        if (z10) {
            cG1 = G0(this.f78852e + i13);
            i13 = length2 + 2;
        }
        boolean z11 = cG1 == '-';
        if (z11) {
            cG1 = G0(this.f78852e + i13);
            i13++;
        }
        if (cG1 < '0' || cG1 > '9') {
            if (cG1 != 'n' || G0(this.f78852e + i13) != 'u' || G0(this.f78852e + i13 + 1) != 'l' || G0(this.f78852e + i13 + 2) != 'l') {
                this.f78861n = -1;
                return 0.0f;
            }
            this.f78861n = 5;
            int i14 = i13 + 4;
            char cG2 = G0(this.f78852e + i13 + 3);
            if (z10 && cG2 == '\"') {
                cG2 = G0(this.f78852e + i14);
                i14 = i13 + 5;
            }
            while (cG2 != ',') {
                if (cG2 == '}') {
                    int i15 = this.f78852e + i14;
                    this.f78852e = i15;
                    this.f78851d = G0(i15);
                    this.f78861n = 5;
                    this.f78848a = 13;
                    return 0.0f;
                }
                if (!M0(cG2)) {
                    this.f78861n = -1;
                    return 0.0f;
                }
                cG2 = G0(this.f78852e + i14);
                i14++;
            }
            int i16 = this.f78852e + i14;
            this.f78852e = i16;
            this.f78851d = G0(i16);
            this.f78861n = 5;
            this.f78848a = 16;
            return 0.0f;
        }
        long j12 = cG1 - '0';
        while (true) {
            i11 = i13 + 1;
            cG0 = G0(this.f78852e + i13);
            if (cG0 < '0' || cG0 > '9') {
                break;
            }
            j12 = (j12 * 10) + ((long) (cG0 - '0'));
            i13 = i11;
        }
        if (cG0 == '.') {
            int i17 = i13 + 2;
            char cG3 = G0(this.f78852e + i11);
            if (cG3 < '0' || cG3 > '9') {
                this.f78861n = -1;
                return 0.0f;
            }
            j12 = (j12 * 10) + ((long) (cG3 - '0'));
            j11 = 10;
            while (true) {
                i11 = i17 + 1;
                cG0 = G0(this.f78852e + i17);
                if (cG0 < '0' || cG0 > '9') {
                    break;
                }
                j12 = (j12 * 10) + ((long) (cG0 - '0'));
                j11 *= 10;
                i17 = i11;
            }
        } else {
            j11 = 1;
        }
        boolean z12 = cG0 == 'e' || cG0 == 'E';
        if (z12) {
            int i18 = i11 + 1;
            cG0 = G0(this.f78852e + i11);
            if (cG0 == '+' || cG0 == '-') {
                i11 += 2;
                cG0 = G0(this.f78852e + i18);
            } else {
                i11 = i18;
            }
            while (cG0 >= '0' && cG0 <= '9') {
                char cG4 = G0(this.f78852e + i11);
                i11++;
                cG0 = cG4;
            }
        }
        if (!z10) {
            int i19 = this.f78852e;
            length = cArr.length + i19;
            i12 = ((i19 + i11) - length) - 1;
        } else {
            if (cG0 != '\"') {
                this.f78861n = -1;
                return 0.0f;
            }
            int i20 = i11 + 1;
            cG0 = G0(this.f78852e + i11);
            int i21 = this.f78852e;
            length = cArr.length + i21 + 1;
            i12 = ((i21 + i20) - length) - 2;
            i11 = i20;
        }
        if (z12 || i12 >= 17) {
            f11 = Float.parseFloat(r1(length, i12));
        } else {
            f11 = (float) (j12 / j11);
            if (z11) {
                f11 = -f11;
            }
        }
        if (cG0 == ',') {
            int i22 = this.f78852e + i11;
            this.f78852e = i22;
            this.f78851d = G0(i22);
            this.f78861n = 3;
            this.f78848a = 16;
            return f11;
        }
        if (cG0 != '}') {
            this.f78861n = -1;
            return 0.0f;
        }
        int i23 = i11 + 1;
        char cG5 = G0(this.f78852e + i11);
        if (cG5 == ',') {
            this.f78848a = 16;
            int i24 = this.f78852e + i23;
            this.f78852e = i24;
            this.f78851d = G0(i24);
        } else if (cG5 == ']') {
            this.f78848a = 15;
            int i25 = this.f78852e + i23;
            this.f78852e = i25;
            this.f78851d = G0(i25);
        } else if (cG5 == '}') {
            this.f78848a = 13;
            int i26 = this.f78852e + i23;
            this.f78852e = i26;
            this.f78851d = G0(i26);
        } else {
            if (cG5 != 26) {
                this.f78861n = -1;
                return 0.0f;
            }
            this.f78852e += i11;
            this.f78848a = 20;
            this.f78851d = (char) 26;
        }
        this.f78861n = 4;
        return f11;
    }

    public abstract String b(int i11, int i12, int i13, i iVar);

    public final float[] b1(char[] cArr) {
        int i11;
        char cG0;
        int i12;
        float f11;
        float[] fArr;
        char c11;
        boolean z10;
        boolean z11 = false;
        this.f78861n = 0;
        float[] fArr2 = null;
        if (!F0(cArr)) {
            this.f78861n = -2;
            return null;
        }
        int length = cArr.length;
        int i13 = length + 1;
        if (G0(this.f78852e + length) != '[') {
            this.f78861n = -2;
            return null;
        }
        int i14 = length + 2;
        char cG1 = G0(this.f78852e + i13);
        float[] fArr3 = new float[16];
        int i15 = 0;
        while (true) {
            int i16 = this.f78852e;
            int i17 = (i16 + i14) - 1;
            boolean z12 = cG1 == '-' ? true : z11;
            if (z12) {
                cG1 = G0(i16 + i14);
                i14++;
            }
            if (cG1 < '0' || cG1 > '9') {
                break;
            }
            int i18 = cG1 - '0';
            while (true) {
                i11 = i14 + 1;
                cG0 = G0(this.f78852e + i14);
                if (cG0 < '0' || cG0 > '9') {
                    break;
                }
                i18 = (i18 * 10) + (cG0 - '0');
                i14 = i11;
            }
            if (cG0 == '.') {
                int i19 = i14 + 2;
                char cG2 = G0(this.f78852e + i11);
                if (cG2 < '0' || cG2 > '9') {
                    this.f78861n = -1;
                    return fArr2;
                }
                i18 = (i18 * 10) + (cG2 - '0');
                i12 = 10;
                while (true) {
                    i11 = i19 + 1;
                    cG0 = G0(this.f78852e + i19);
                    if (cG0 < '0' || cG0 > '9') {
                        break;
                    }
                    i18 = (i18 * 10) + (cG0 - '0');
                    i12 *= 10;
                    i19 = i11;
                }
            } else {
                i12 = 1;
            }
            boolean z13 = cG0 == 'e' || cG0 == 'E';
            if (z13) {
                int i20 = i11 + 1;
                cG0 = G0(this.f78852e + i11);
                if (cG0 == '+' || cG0 == '-') {
                    i11 += 2;
                    cG0 = G0(this.f78852e + i20);
                } else {
                    i11 = i20;
                }
                while (cG0 >= '0' && cG0 <= '9') {
                    cG0 = G0(this.f78852e + i11);
                    i11++;
                }
            }
            int i21 = ((this.f78852e + i11) - i17) - 1;
            if (z13 || i21 >= 10) {
                f11 = Float.parseFloat(r1(i17, i21));
            } else {
                f11 = i18 / i12;
                if (z12) {
                    f11 = -f11;
                }
            }
            if (i15 >= fArr3.length) {
                float[] fArr4 = new float[(fArr3.length * 3) / 2];
                System.arraycopy(fArr3, 0, fArr4, 0, i15);
                fArr3 = fArr4;
            }
            int i22 = i15 + 1;
            fArr3[i15] = f11;
            if (cG0 == ',') {
                i14 = i11 + 1;
                cG0 = G0(this.f78852e + i11);
                fArr = null;
                c11 = 16;
                z10 = false;
            } else {
                if (cG0 == ']') {
                    int i23 = i11 + 1;
                    char cG3 = G0(this.f78852e + i11);
                    if (i22 != fArr3.length) {
                        float[] fArr5 = new float[i22];
                        System.arraycopy(fArr3, 0, fArr5, 0, i22);
                        fArr3 = fArr5;
                    }
                    if (cG3 == ',') {
                        this.f78852e += i11;
                        next();
                        this.f78861n = 3;
                        this.f78848a = 16;
                        return fArr3;
                    }
                    if (cG3 != '}') {
                        this.f78861n = -1;
                        return null;
                    }
                    char cG4 = G0(this.f78852e + i23);
                    if (cG4 == ',') {
                        this.f78848a = 16;
                        this.f78852e += i11 + 1;
                        next();
                    } else if (cG4 == ']') {
                        this.f78848a = 15;
                        this.f78852e += i11 + 1;
                        next();
                    } else if (cG4 == '}') {
                        this.f78848a = 13;
                        this.f78852e += i11 + 1;
                        next();
                    } else {
                        if (cG4 != 26) {
                            this.f78861n = -1;
                            return null;
                        }
                        this.f78852e += i11 + 1;
                        this.f78848a = 20;
                        this.f78851d = (char) 26;
                    }
                    this.f78861n = 4;
                    return fArr3;
                }
                fArr = null;
                c11 = 16;
                z10 = false;
                i14 = i11;
            }
            i15 = i22;
            cG1 = cG0;
            fArr2 = fArr;
            z11 = z10;
        }
        float[] fArr6 = fArr2;
        this.f78861n = -1;
        return fArr6;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:108:0x007b A[SYNTHETIC] */
    @Override // y4.b
    public final void c0(int i11) {
        this.f78855h = 0;
        while (true) {
            if (i11 == 2) {
                char c11 = this.f78851d;
                if (c11 >= '0' && c11 <= '9') {
                    this.f78849b = this.f78852e;
                    p();
                    return;
                }
                if (c11 == '\"') {
                    this.f78849b = this.f78852e;
                    a0();
                    return;
                } else if (c11 == '[') {
                    this.f78848a = 14;
                    next();
                    return;
                } else if (c11 == '{') {
                    this.f78848a = 12;
                    next();
                    return;
                }
            } else if (i11 == 4) {
                char c12 = this.f78851d;
                if (c12 == '\"') {
                    this.f78849b = this.f78852e;
                    a0();
                    return;
                }
                if (c12 >= '0' && c12 <= '9') {
                    this.f78849b = this.f78852e;
                    p();
                    return;
                } else if (c12 == '[') {
                    this.f78848a = 14;
                    next();
                    return;
                } else if (c12 == '{') {
                    this.f78848a = 12;
                    next();
                    return;
                }
            } else if (i11 == 12) {
                char c13 = this.f78851d;
                if (c13 == '{') {
                    this.f78848a = 12;
                    next();
                    return;
                } else if (c13 == '[') {
                    this.f78848a = 14;
                    next();
                    return;
                }
            } else {
                if (i11 == 18) {
                    P0();
                    return;
                }
                if (i11 != 20) {
                    switch (i11) {
                        case 14:
                            char c14 = this.f78851d;
                            if (c14 == '[') {
                                this.f78848a = 14;
                                next();
                            } else if (c14 == '{') {
                                this.f78848a = 12;
                                next();
                            }
                            break;
                        case 15:
                            if (this.f78851d == ']') {
                                this.f78848a = 15;
                                next();
                            }
                            if (this.f78851d == 26) {
                                this.f78848a = 20;
                            }
                            break;
                        case 16:
                            char c15 = this.f78851d;
                            if (c15 == ',') {
                                this.f78848a = 16;
                                next();
                            } else if (c15 == '}') {
                                this.f78848a = 13;
                                next();
                            } else if (c15 == ']') {
                                this.f78848a = 15;
                                next();
                            } else if (c15 == 26) {
                                this.f78848a = 20;
                            } else if (c15 == 'n') {
                                k1(false);
                            }
                            break;
                    }
                    return;
                }
                if (this.f78851d == 26) {
                    this.f78848a = 20;
                    return;
                }
            }
            char c16 = this.f78851d;
            if (c16 != ' ' && c16 != '\n' && c16 != '\r' && c16 != '\t' && c16 != '\f' && c16 != '\b') {
                Z();
                return;
            }
            next();
        }
    }

    public final float[][] c1(char[] cArr) {
        int i11;
        char cG0;
        int i12;
        int i13;
        float f11;
        int i14;
        int i15;
        char cG1;
        int i16 = 0;
        this.f78861n = 0;
        float[][] fArr = null;
        if (!F0(cArr)) {
            this.f78861n = -2;
            return null;
        }
        int length = cArr.length;
        int i17 = length + 1;
        char c11 = '[';
        if (G0(this.f78852e + length) != '[') {
            this.f78861n = -2;
            return null;
        }
        int i18 = length + 2;
        char cG2 = G0(this.f78852e + i17);
        int i19 = 16;
        float[][] fArr2 = new float[16][];
        int i20 = 0;
        while (true) {
            int i21 = 1;
            if (cG2 != c11) {
                break;
            }
            int i22 = i18 + 1;
            char cG3 = G0(this.f78852e + i18);
            float[] fArr3 = new float[i19];
            int i23 = i16;
            while (true) {
                int i24 = this.f78852e;
                int i25 = (i24 + i22) - 1;
                int i26 = cG3 == '-' ? i21 : i16;
                if (i26 != 0) {
                    char cG4 = G0(i24 + i22);
                    i22++;
                    cG3 = cG4;
                }
                if (cG3 < '0' || cG3 > '9') {
                    this.f78861n = -1;
                    return null;
                }
                int i27 = cG3 - '0';
                while (true) {
                    i11 = i22 + 1;
                    cG0 = G0(this.f78852e + i22);
                    if (cG0 < '0' || cG0 > '9') {
                        break;
                    }
                    i27 = (i27 * 10) + (cG0 - '0');
                    i22 = i11;
                }
                if (cG0 == '.') {
                    int i28 = i22 + 2;
                    char cG5 = G0(this.f78852e + i11);
                    if (cG5 < '0' || cG5 > '9') {
                        this.f78861n = -1;
                        return fArr;
                    }
                    int i29 = (i27 * 10) + (cG5 - '0');
                    int i30 = 10;
                    while (true) {
                        i11 = i28 + 1;
                        cG1 = G0(this.f78852e + i28);
                        if (cG1 < '0' || cG1 > '9') {
                            break;
                        }
                        i29 = (i29 * 10) + (cG1 - '0');
                        i30 *= 10;
                        i28 = i11;
                    }
                    int i31 = i29;
                    i13 = i30;
                    cG0 = cG1;
                    i12 = i31;
                } else {
                    i12 = i27;
                    i13 = 1;
                }
                boolean z10 = cG0 == 'e' || cG0 == 'E';
                if (z10) {
                    int i32 = i11 + 1;
                    cG0 = G0(this.f78852e + i11);
                    if (cG0 == '+' || cG0 == '-') {
                        i11 += 2;
                        cG0 = G0(this.f78852e + i32);
                    } else {
                        i11 = i32;
                    }
                    while (cG0 >= '0' && cG0 <= '9') {
                        cG0 = G0(this.f78852e + i11);
                        i11++;
                    }
                }
                int i33 = ((this.f78852e + i11) - i25) - 1;
                if (z10 || i33 >= 10) {
                    f11 = Float.parseFloat(r1(i25, i33));
                } else {
                    f11 = i12 / i13;
                    if (i26 != 0) {
                        f11 = -f11;
                    }
                }
                if (i23 >= fArr3.length) {
                    float[] fArr4 = new float[(fArr3.length * 3) / 2];
                    System.arraycopy(fArr3, 0, fArr4, 0, i23);
                    fArr3 = fArr4;
                }
                i14 = i23 + 1;
                fArr3[i23] = f11;
                if (cG0 == ',') {
                    cG0 = G0(this.f78852e + i11);
                    i22 = i11 + 1;
                } else {
                    if (cG0 == ']') {
                        break;
                    }
                    i22 = i11;
                }
                i23 = i14;
                fArr = null;
                i21 = 1;
                cG3 = cG0;
                i16 = 0;
            }
            int i34 = i11 + 1;
            char cG6 = G0(this.f78852e + i11);
            if (i14 != fArr3.length) {
                float[] fArr5 = new float[i14];
                i15 = 0;
                System.arraycopy(fArr3, 0, fArr5, 0, i14);
                fArr3 = fArr5;
            } else {
                i15 = 0;
            }
            if (i20 >= fArr2.length) {
                float[][] fArr6 = new float[(fArr2.length * 3) / 2][];
                System.arraycopy(fArr3, i15, fArr6, i15, i14);
                fArr2 = fArr6;
            }
            int i35 = i20 + 1;
            fArr2[i20] = fArr3;
            if (cG6 == ',') {
                cG2 = G0(this.f78852e + i34);
                i18 = i11 + 2;
            } else {
                if (cG6 == ']') {
                    i18 = i11 + 2;
                    cG2 = G0(this.f78852e + i34);
                    i20 = i35;
                    break;
                }
                cG2 = cG6;
                i18 = i34;
            }
            i20 = i35;
            i16 = 0;
            fArr = null;
            i19 = 16;
            c11 = '[';
        }
        if (i20 != fArr2.length) {
            float[][] fArr7 = new float[i20][];
            System.arraycopy(fArr2, 0, fArr7, 0, i20);
            fArr2 = fArr7;
        }
        if (cG2 == ',') {
            this.f78852e += i18 - 1;
            next();
            this.f78861n = 3;
            this.f78848a = 16;
            return fArr2;
        }
        if (cG2 != '}') {
            this.f78861n = -1;
            return null;
        }
        char cG7 = G0(this.f78852e + i18);
        if (cG7 == ',') {
            this.f78848a = 16;
            this.f78852e += i18;
            next();
        } else if (cG7 == ']') {
            this.f78848a = 15;
            this.f78852e += i18;
            next();
        } else if (cG7 == '}') {
            this.f78848a = 13;
            this.f78852e += i18;
            next();
        } else {
            if (cG7 != 26) {
                this.f78861n = -1;
                return null;
            }
            this.f78852e += i18;
            this.f78848a = 20;
            this.f78851d = (char) 26;
        }
        this.f78861n = 4;
        return fArr2;
    }

    @Override // y4.b, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        char[] cArr = this.f78854g;
        if (cArr.length <= 8192) {
            f78845q.set(cArr);
        }
        this.f78854g = null;
    }

    @Override // y4.b
    public final char d() {
        return this.f78851d;
    }

    @Override // y4.b
    public abstract BigDecimal d0();

    public abstract int d1(char[] cArr);

    public final int[] e1(char[] cArr) {
        boolean z10;
        int i11;
        char cG0;
        int i12;
        char cG1;
        int i13;
        int[] iArr;
        this.f78861n = 0;
        int[] iArr2 = null;
        if (!F0(cArr)) {
            this.f78861n = -2;
            return null;
        }
        int length = cArr.length;
        int i14 = length + 1;
        if (G0(this.f78852e + length) != '[') {
            this.f78861n = -2;
            return null;
        }
        int i15 = length + 2;
        char cG2 = G0(this.f78852e + i14);
        int[] iArr3 = new int[16];
        if (cG2 == ']') {
            i13 = length + 3;
            cG1 = G0(this.f78852e + i15);
            i12 = 0;
        } else {
            int i16 = 0;
            while (true) {
                if (cG2 == '-') {
                    cG2 = G0(this.f78852e + i15);
                    i15++;
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (cG2 < '0' || cG2 > '9') {
                    int[] iArr4 = iArr2;
                    this.f78861n = -1;
                    return iArr4;
                }
                int i17 = cG2 - '0';
                while (true) {
                    i11 = i15 + 1;
                    cG0 = G0(this.f78852e + i15);
                    if (cG0 < '0' || cG0 > '9') {
                        break;
                    }
                    i17 = (i17 * 10) + (cG0 - '0');
                    i15 = i11;
                }
                if (i16 >= iArr3.length) {
                    int[] iArr5 = new int[(iArr3.length * 3) / 2];
                    System.arraycopy(iArr3, 0, iArr5, 0, i16);
                    iArr3 = iArr5;
                }
                i12 = i16 + 1;
                if (z10) {
                    i17 = -i17;
                }
                iArr3[i16] = i17;
                if (cG0 == ',') {
                    i15 += 2;
                    cG2 = G0(this.f78852e + i11);
                    iArr = null;
                } else {
                    if (cG0 == ']') {
                        cG1 = G0(this.f78852e + i11);
                        i13 = i15 + 2;
                        break;
                    }
                    iArr = null;
                    cG2 = cG0;
                    i15 = i11;
                }
                iArr2 = iArr;
                i16 = i12;
            }
        }
        if (i12 != iArr3.length) {
            int[] iArr6 = new int[i12];
            System.arraycopy(iArr3, 0, iArr6, 0, i12);
            iArr3 = iArr6;
        }
        if (cG1 == ',') {
            this.f78852e += i13 - 1;
            next();
            this.f78861n = 3;
            this.f78848a = 16;
            return iArr3;
        }
        if (cG1 != '}') {
            this.f78861n = -1;
            return null;
        }
        char cG3 = G0(this.f78852e + i13);
        if (cG3 == ',') {
            this.f78848a = 16;
            this.f78852e += i13;
            next();
        } else if (cG3 == ']') {
            this.f78848a = 15;
            this.f78852e += i13;
            next();
        } else if (cG3 == '}') {
            this.f78848a = 13;
            this.f78852e += i13;
            next();
        } else {
            if (cG3 != 26) {
                this.f78861n = -1;
                return null;
            }
            this.f78852e += i13;
            this.f78848a = 20;
            this.f78851d = (char) 26;
        }
        this.f78861n = 4;
        return iArr3;
    }

    public abstract long f1(char[] cArr);

    public abstract String g1(char[] cArr);

    @Override // y4.b
    public final int h() {
        return this.f78849b;
    }

    public final void h1() {
        char next;
        if (this.f78851d != 'x') {
            throw new JSONException("illegal state. " + this.f78851d);
        }
        next();
        if (this.f78851d != '\'') {
            throw new JSONException("illegal state. " + this.f78851d);
        }
        this.f78856i = this.f78852e;
        next();
        if (this.f78851d == '\'') {
            next();
            this.f78848a = 26;
            return;
        }
        while (true) {
            next = next();
            if ((next < '0' || next > '9') && (next < 'A' || next > 'F')) {
                break;
            } else {
                this.f78855h++;
            }
        }
        if (next == '\'') {
            this.f78855h++;
            next();
            this.f78848a = 26;
        } else {
            throw new JSONException("illegal state. " + next);
        }
    }

    @Override // y4.b
    public final String i(i iVar) {
        u0();
        char c11 = this.f78851d;
        if (c11 == '\"') {
            return y0(iVar, '\"');
        }
        if (c11 == '\'') {
            if (n(Feature.AllowSingleQuotes)) {
                return y0(iVar, '\'');
            }
            throw new JSONException("syntax error");
        }
        if (c11 == '}') {
            next();
            this.f78848a = 13;
            return null;
        }
        if (c11 == ',') {
            next();
            this.f78848a = 16;
            return null;
        }
        if (c11 == 26) {
            this.f78848a = 20;
            return null;
        }
        if (n(Feature.AllowUnQuotedFieldNames)) {
            return w(iVar);
        }
        throw new JSONException("syntax error");
    }

    public final void i1() {
        this.f78856i = this.f78852e - 1;
        this.f78857j = false;
        do {
            this.f78855h++;
            next();
        } while (Character.isLetterOrDigit(this.f78851d));
        String strK0 = k0();
        if ("null".equalsIgnoreCase(strK0)) {
            this.f78848a = 8;
            return;
        }
        if ("new".equals(strK0)) {
            this.f78848a = 9;
            return;
        }
        if ("true".equals(strK0)) {
            this.f78848a = 6;
            return;
        }
        if ("false".equals(strK0)) {
            this.f78848a = 7;
            return;
        }
        if ("undefined".equals(strK0)) {
            this.f78848a = 23;
            return;
        }
        if ("Set".equals(strK0)) {
            this.f78848a = 21;
        } else if ("TreeSet".equals(strK0)) {
            this.f78848a = 22;
        } else {
            this.f78848a = 18;
        }
    }

    @Override // y4.b
    public final boolean isEnabled(int i11) {
        return (i11 & this.f78850c) != 0;
    }

    public final void j1() {
        k1(true);
    }

    @Override // y4.b
    public abstract String k();

    @Override // y4.b
    public abstract String k0();

    public final void k1(boolean z10) {
        if (this.f78851d != 'n') {
            throw new JSONException("error parse null or new");
        }
        next();
        char c11 = this.f78851d;
        if (c11 != 'u') {
            if (c11 != 'e') {
                throw new JSONException("error parse new");
            }
            next();
            if (this.f78851d != 'w') {
                throw new JSONException("error parse new");
            }
            next();
            char c12 = this.f78851d;
            if (c12 != ' ' && c12 != ',' && c12 != '}' && c12 != ']' && c12 != '\n' && c12 != '\r' && c12 != '\t' && c12 != 26 && c12 != '\f' && c12 != '\b') {
                throw new JSONException("scan new error");
            }
            this.f78848a = 9;
            return;
        }
        next();
        if (this.f78851d != 'l') {
            throw new JSONException("error parse null");
        }
        next();
        if (this.f78851d != 'l') {
            throw new JSONException("error parse null");
        }
        next();
        char c13 = this.f78851d;
        if (c13 != ' ' && c13 != ',' && c13 != '}' && c13 != ']' && c13 != '\n' && c13 != '\r' && c13 != '\t' && c13 != 26 && ((c13 != ':' || !z10) && c13 != '\f' && c13 != '\b')) {
            throw new JSONException("scan null error");
        }
        this.f78848a = 8;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0034  */
    /* JADX WARN: Code duplicated, block: B:32:0x0075  */
    /* JADX WARN: Code duplicated, block: B:34:0x007a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x007b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0085  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005c -> B:11:0x002e). Please report as a decompilation issue!!! */
    @Override // y4.b
    public final long l() {
        long j11;
        long j12;
        int i11;
        char cG0;
        boolean z10 = false;
        if (this.f78856i == -1) {
            this.f78856i = 0;
        }
        int i12 = this.f78856i;
        int i13 = this.f78855h + i12;
        if (G0(i12) == '-') {
            i12++;
            j11 = Long.MIN_VALUE;
            z10 = true;
        } else {
            j11 = C.TIME_UNSET;
        }
        if (i12 >= i13) {
            j12 = 0;
            if (i12 < i13) {
                i11 = i12 + 1;
                cG0 = G0(i12);
                if (cG0 != 'L' || cG0 == 'S' || cG0 == 'B') {
                    i12 = i11;
                } else {
                    int i14 = cG0 - '0';
                    if (j12 < Buffer.OVERFLOW_ZONE) {
                        throw new NumberFormatException(C0());
                    }
                    long j13 = j12 * 10;
                    long j14 = i14;
                    if (j13 < j11 + j14) {
                        throw new NumberFormatException(C0());
                    }
                    j12 = j13 - j14;
                }
            }
            if (z10) {
                return -j12;
            }
            if (i12 > this.f78856i + 1) {
                return j12;
            }
            throw new NumberFormatException(C0());
        }
        i11 = i12 + 1;
        j12 = -(G0(i12) - '0');
        i12 = i11;
        if (i12 < i13) {
            i11 = i12 + 1;
            cG0 = G0(i12);
            if (cG0 != 'L') {
            }
            i12 = i11;
        }
        if (z10) {
            return -j12;
        }
        if (i12 > this.f78856i + 1) {
            return j12;
        }
        throw new NumberFormatException(C0());
    }

    @Override // y4.b
    public TimeZone l0() {
        return this.f78859l;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00c3 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x00c5 -> B:51:0x00b4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // y4.b
    public final float m(char r21) {
        /*
            Method dump skipped, instruction units count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: y4.c.m(char):float");
    }

    public String m1(i iVar, char c11) {
        int i11 = 0;
        this.f78861n = 0;
        char cG0 = G0(this.f78852e);
        if (cG0 == 'n') {
            if (G0(this.f78852e + 1) != 'u' || G0(this.f78852e + 2) != 'l' || G0(this.f78852e + 3) != 'l') {
                this.f78861n = -1;
                return null;
            }
            if (G0(this.f78852e + 4) != c11) {
                this.f78861n = -1;
                return null;
            }
            int i12 = this.f78852e + 5;
            this.f78852e = i12;
            this.f78851d = G0(i12);
            this.f78861n = 3;
            return null;
        }
        if (cG0 != '\"') {
            this.f78861n = -1;
            return null;
        }
        int i13 = 1;
        while (true) {
            int i14 = i13 + 1;
            char cG1 = G0(this.f78852e + i13);
            if (cG1 == '\"') {
                int i15 = this.f78852e;
                int i16 = i15 + 1;
                String strB = b(i16, ((i15 + i14) - i16) - 1, i11, iVar);
                int i17 = i13 + 2;
                char cG2 = G0(this.f78852e + i14);
                while (cG2 != c11) {
                    if (!M0(cG2)) {
                        this.f78861n = -1;
                        return strB;
                    }
                    cG2 = G0(this.f78852e + i17);
                    i17++;
                }
                int i18 = this.f78852e + i17;
                this.f78852e = i18;
                this.f78851d = G0(i18);
                this.f78861n = 3;
                return strB;
            }
            i11 = (i11 * 31) + cG1;
            if (cG1 == '\\') {
                this.f78861n = -1;
                return null;
            }
            i13 = i14;
        }
    }

    @Override // y4.b
    public final boolean n(Feature feature) {
        return isEnabled(feature.mask);
    }

    public final void n1() {
        if (this.f78851d != 't') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f78851d != 'r') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f78851d != 'u') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f78851d != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        char c11 = this.f78851d;
        if (c11 != ' ' && c11 != ',' && c11 != '}' && c11 != ']' && c11 != '\n' && c11 != '\r' && c11 != '\t' && c11 != 26 && c11 != '\f' && c11 != '\b' && c11 != ':' && c11 != '/') {
            throw new JSONException("scan true error");
        }
        this.f78848a = 6;
    }

    @Override // y4.b
    public abstract char next();

    @Override // y4.b
    public final int o() {
        int i11;
        boolean z10;
        int i12 = 0;
        if (this.f78856i == -1) {
            this.f78856i = 0;
        }
        int i13 = this.f78856i;
        int i14 = this.f78855h + i13;
        if (G0(i13) == '-') {
            i13++;
            i11 = Integer.MIN_VALUE;
            z10 = true;
        } else {
            i11 = -2147483647;
            z10 = false;
        }
        if (i13 < i14) {
            i12 = -(G0(i13) - '0');
            i13++;
        }
        while (i13 < i14) {
            int i15 = i13 + 1;
            char cG0 = G0(i13);
            if (cG0 == 'L' || cG0 == 'S' || cG0 == 'B') {
                i13 = i15;
                break;
            }
            int i16 = cG0 - '0';
            if (i12 < -214748364) {
                throw new NumberFormatException(C0());
            }
            int i17 = i12 * 10;
            if (i17 < i11 + i16) {
                throw new NumberFormatException(C0());
            }
            i12 = i17 - i16;
            i13 = i15;
        }
        if (!z10) {
            return -i12;
        }
        if (i13 > this.f78856i + 1) {
            return i12;
        }
        throw new NumberFormatException(C0());
    }

    @Override // y4.b
    public final Number o0() {
        char c11;
        long j11;
        long j12;
        boolean z10 = false;
        if (this.f78856i == -1) {
            this.f78856i = 0;
        }
        int i11 = this.f78856i;
        int i12 = this.f78855h + i11;
        char cG0 = G0(i12 - 1);
        if (cG0 == 'B') {
            i12--;
            c11 = 'B';
        } else if (cG0 == 'L') {
            i12--;
            c11 = 'L';
        } else if (cG0 != 'S') {
            c11 = ' ';
        } else {
            i12--;
            c11 = 'S';
        }
        if (G0(this.f78856i) == '-') {
            i11++;
            j11 = Long.MIN_VALUE;
            z10 = true;
        } else {
            j11 = C.TIME_UNSET;
        }
        if (i11 < i12) {
            j12 = -(G0(i11) - '0');
            i11++;
        } else {
            j12 = 0;
        }
        while (i11 < i12) {
            int i13 = i11 + 1;
            int iG0 = G0(i11) - '0';
            if (j12 < Buffer.OVERFLOW_ZONE) {
                return new BigInteger(C0(), 10);
            }
            long j13 = j12 * 10;
            long j14 = iG0;
            if (j13 < j11 + j14) {
                return new BigInteger(C0(), 10);
            }
            j12 = j13 - j14;
            i11 = i13;
        }
        if (!z10) {
            long j15 = -j12;
            if (j15 > 2147483647L || c11 == 'L') {
                return Long.valueOf(j15);
            }
            if (c11 == 'S') {
                return Short.valueOf((short) j15);
            }
            return c11 == 'B' ? Byte.valueOf((byte) j15) : Integer.valueOf((int) j15);
        }
        if (i11 <= this.f78856i + 1) {
            throw new JSONException("illegal number format : " + C0());
        }
        if (j12 < -2147483648L || c11 == 'L') {
            return Long.valueOf(j12);
        }
        if (c11 == 'S') {
            return Short.valueOf((short) j12);
        }
        return c11 == 'B' ? Byte.valueOf((byte) j12) : Integer.valueOf((int) j12);
    }

    public void o1(TimeZone timeZone) {
        this.f78859l = timeZone;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c6  */
    @Override // y4.b
    public final void p() {
        char c11;
        boolean z10;
        char c12;
        this.f78856i = this.f78852e;
        boolean z11 = true;
        if (this.f78851d == '-') {
            this.f78855h++;
            next();
        }
        while (true) {
            c11 = this.f78851d;
            if (c11 < '0' || c11 > '9') {
                break;
            }
            this.f78855h++;
            next();
        }
        if (c11 == '.') {
            this.f78855h++;
            next();
            while (true) {
                char c13 = this.f78851d;
                if (c13 < '0' || c13 > '9') {
                    break;
                }
                this.f78855h++;
                next();
            }
            z10 = true;
        } else {
            z10 = false;
        }
        int i11 = this.f78855h;
        if (i11 > 65535) {
            throw new JSONException("scanNumber overflow");
        }
        char c14 = this.f78851d;
        if (c14 != 'L' && c14 != 'S' && c14 != 'B') {
            if (c14 == 'F' || c14 == 'D') {
                this.f78855h = i11 + 1;
                next();
            } else if (c14 == 'e' || c14 == 'E') {
                this.f78855h = i11 + 1;
                next();
                char c15 = this.f78851d;
                if (c15 == '+' || c15 == '-') {
                    this.f78855h++;
                    next();
                }
                while (true) {
                    c12 = this.f78851d;
                    if (c12 < '0' || c12 > '9') {
                        break;
                    }
                    this.f78855h++;
                    next();
                }
                if (c12 == 'D' || c12 == 'F') {
                    this.f78855h++;
                    next();
                }
            }
            if (z11) {
                this.f78848a = 3;
            } else {
                this.f78848a = 2;
            }
        }
        this.f78855h = i11 + 1;
        next();
        z11 = z10;
        if (z11) {
            this.f78848a = 3;
        } else {
            this.f78848a = 2;
        }
    }

    @Override // y4.b
    public float p0() {
        char cCharAt;
        String strC0 = C0();
        float f11 = Float.parseFloat(strC0);
        if ((f11 != 0.0f && f11 != Float.POSITIVE_INFINITY) || (cCharAt = strC0.charAt(0)) <= '0' || cCharAt > '9') {
            return f11;
        }
        throw new JSONException("float overflow : " + strC0);
    }

    protected void p1() {
        char c11;
        next();
        char c12 = this.f78851d;
        if (c12 == '/') {
            do {
                next();
                c11 = this.f78851d;
                if (c11 == '\n') {
                    next();
                    return;
                }
            } while (c11 != 26);
            return;
        }
        if (c12 != '*') {
            throw new JSONException("invalid comment");
        }
        next();
        while (true) {
            char c13 = this.f78851d;
            if (c13 == 26) {
                return;
            }
            if (c13 == '*') {
                next();
                if (this.f78851d == '/') {
                    next();
                    return;
                }
            } else {
                next();
            }
        }
    }

    @Override // y4.b
    public final void q(int i11) {
        Q0(':');
    }

    @Override // y4.b
    public final int q0() {
        return this.f78848a;
    }

    public final String q1() {
        return this.f78862o;
    }

    @Override // y4.b
    public int r() {
        return this.f78850c;
    }

    @Override // y4.b
    public String r0(char c11) {
        this.f78861n = 0;
        char cG0 = G0(this.f78852e);
        if (cG0 == 'n') {
            if (G0(this.f78852e + 1) != 'u' || G0(this.f78852e + 2) != 'l' || G0(this.f78852e + 3) != 'l') {
                this.f78861n = -1;
                return null;
            }
            if (G0(this.f78852e + 4) != c11) {
                this.f78861n = -1;
                return null;
            }
            int i11 = this.f78852e + 5;
            this.f78852e = i11;
            this.f78851d = G0(i11);
            this.f78861n = 3;
            return null;
        }
        int i12 = 1;
        while (cG0 != '\"') {
            if (!M0(cG0)) {
                this.f78861n = -1;
                return q1();
            }
            cG0 = G0(this.f78852e + i12);
            i12++;
        }
        int i13 = this.f78852e + i12;
        int iK0 = K0('\"', i13);
        if (iK0 == -1) {
            throw new JSONException("unclosed str");
        }
        String strR1 = r1(this.f78852e + i12, iK0 - i13);
        if (strR1.indexOf(92) != -1) {
            while (true) {
                int i14 = 0;
                for (int i15 = iK0 - 1; i15 >= 0 && G0(i15) == '\\'; i15--) {
                    i14++;
                }
                if (i14 % 2 == 0) {
                    break;
                }
                iK0 = K0('\"', iK0 + 1);
            }
            int i16 = iK0 - i13;
            strR1 = S0(s1(this.f78852e + 1, i16), i16);
        }
        int i17 = i12 + (iK0 - i13) + 1;
        int i18 = i17 + 1;
        char cG1 = G0(this.f78852e + i17);
        while (cG1 != c11) {
            if (!M0(cG1)) {
                if (cG1 == ']') {
                    int i19 = this.f78852e + i18;
                    this.f78852e = i19;
                    this.f78851d = G0(i19);
                    this.f78861n = -1;
                }
                return strR1;
            }
            cG1 = G0(this.f78852e + i18);
            i18++;
        }
        int i20 = this.f78852e + i18;
        this.f78852e = i20;
        this.f78851d = G0(i20);
        this.f78861n = 3;
        this.f78848a = 16;
        return strR1;
    }

    public abstract String r1(int i11, int i12);

    protected abstract char[] s1(int i11, int i12);

    /* JADX WARN: Code duplicated, block: B:43:0x0097 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0099 -> B:40:0x0089). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // y4.b
    public java.math.BigDecimal t(char r18) {
        /*
            Method dump skipped, instruction units count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: y4.c.t(char):java.math.BigDecimal");
    }

    @Override // y4.b
    public final void u() {
        Q0(':');
    }

    @Override // y4.b
    public final void u0() {
        while (true) {
            char c11 = this.f78851d;
            if (c11 > '/') {
                return;
            }
            if (c11 == ' ' || c11 == '\r' || c11 == '\n' || c11 == '\t' || c11 == '\f' || c11 == '\b') {
                next();
            } else if (c11 != '/') {
                return;
            } else {
                p1();
            }
        }
    }

    @Override // y4.b
    public final String v() {
        return f.a(this.f78848a);
    }

    @Override // y4.b
    public final void v0() {
        this.f78855h = 0;
    }

    @Override // y4.b
    public final String w(i iVar) {
        if (this.f78848a == 1 && this.f78849b == 0 && this.f78852e == 1) {
            this.f78852e = 0;
        }
        boolean[] zArr = com.alibaba.fastjson.util.f.f18222d;
        int i11 = this.f78851d;
        if (i11 < zArr.length && !zArr[i11]) {
            throw new JSONException("illegal identifier : " + this.f78851d + k());
        }
        boolean[] zArr2 = com.alibaba.fastjson.util.f.f18223e;
        this.f78856i = this.f78852e;
        this.f78855h = 1;
        while (true) {
            char next = next();
            if (next < zArr2.length && !zArr2[next]) {
                break;
            }
            i11 = (i11 * 31) + next;
            this.f78855h++;
        }
        this.f78851d = G0(this.f78852e);
        this.f78848a = 18;
        if (this.f78855h == 4 && i11 == 3392903 && G0(this.f78856i) == 'n' && G0(this.f78856i + 1) == 'u' && G0(this.f78856i + 2) == 'l' && G0(this.f78856i + 3) == 'l') {
            return null;
        }
        return iVar == null ? r1(this.f78856i, this.f78855h) : b(this.f78856i, this.f78855h, i11, iVar);
    }

    @Override // y4.b
    public final boolean x() {
        return this.f78855h == 4 && G0(this.f78856i + 1) == '$' && G0(this.f78856i + 2) == 'r' && G0(this.f78856i + 3) == 'e' && G0(this.f78856i + 4) == 'f';
    }

    @Override // y4.b
    public final String y0(i iVar, char c11) {
        String strC;
        this.f78856i = this.f78852e;
        this.f78855h = 0;
        boolean z10 = false;
        int i11 = 0;
        while (true) {
            char next = next();
            if (next == c11) {
                this.f78848a = 4;
                if (z10) {
                    strC = iVar.c(this.f78854g, 0, this.f78855h, i11);
                } else {
                    int i12 = this.f78856i;
                    strC = b(i12 == -1 ? 0 : i12 + 1, this.f78855h, i11, iVar);
                }
                this.f78855h = 0;
                next();
                return strC;
            }
            if (next == 26) {
                throw new JSONException("unclosed.str");
            }
            if (next == '\\') {
                if (!z10) {
                    int i13 = this.f78855h;
                    char[] cArr = this.f78854g;
                    if (i13 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i13 <= length) {
                            i13 = length;
                        }
                        char[] cArr2 = new char[i13];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.f78854g = cArr2;
                    }
                    E0(this.f78856i + 1, this.f78854g, 0, this.f78855h);
                    z10 = true;
                }
                char next2 = next();
                if (next2 == '\"') {
                    i11 = (i11 * 31) + 34;
                    R0('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            i11 = (i11 * 31) + 92;
                            R0('\\');
                        } else if (next2 == 'b') {
                            i11 = (i11 * 31) + 8;
                            R0('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                i11 = (i11 * 31) + 10;
                                R0('\n');
                            } else if (next2 == 'r') {
                                i11 = (i11 * 31) + 13;
                                R0('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        i11 = (i11 * 31) + 47;
                                        R0('/');
                                        break;
                                    case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                        i11 = (i11 * 31) + next2;
                                        R0((char) 0);
                                        break;
                                    case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                        i11 = (i11 * 31) + next2;
                                        R0((char) 1);
                                        break;
                                    case '2':
                                        i11 = (i11 * 31) + next2;
                                        R0((char) 2);
                                        break;
                                    case AD_REWARD_USER_VALUE:
                                        i11 = (i11 * 31) + next2;
                                        R0((char) 3);
                                        break;
                                    case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                        i11 = (i11 * 31) + next2;
                                        R0((char) 4);
                                        break;
                                    case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                        i11 = (i11 * 31) + next2;
                                        R0((char) 5);
                                        break;
                                    case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                        i11 = (i11 * 31) + next2;
                                        R0((char) 6);
                                        break;
                                    case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                        i11 = (i11 * 31) + next2;
                                        R0((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case GZIP_ENCODE_ERROR_VALUE:
                                                i11 = (i11 * 31) + 9;
                                                R0('\t');
                                                break;
                                            case ASSET_FAILED_STATUS_CODE_VALUE:
                                                int i14 = Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16);
                                                i11 = (i11 * 31) + i14;
                                                R0((char) i14);
                                                break;
                                            case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                                                i11 = (i11 * 31) + 11;
                                                R0((char) 11);
                                                break;
                                            default:
                                                this.f78851d = next2;
                                                throw new JSONException("unclosed.str.lit");
                                        }
                                        break;
                                }
                            } else {
                                char next3 = next();
                                this.f78851d = next3;
                                char next4 = next();
                                this.f78851d = next4;
                                int[] iArr = f78847s;
                                char c12 = (char) ((iArr[next3] * 16) + iArr[next4]);
                                i11 = (i11 * 31) + c12;
                                R0(c12);
                            }
                        }
                    }
                    i11 = (i11 * 31) + 12;
                    R0('\f');
                } else {
                    i11 = (i11 * 31) + 39;
                    R0('\'');
                }
            } else {
                i11 = (i11 * 31) + next;
                if (z10) {
                    int i15 = this.f78855h;
                    char[] cArr3 = this.f78854g;
                    if (i15 == cArr3.length) {
                        R0(next);
                    } else {
                        this.f78855h = i15 + 1;
                        cArr3[i15] = next;
                    }
                } else {
                    this.f78855h++;
                }
            }
        }
    }

    @Override // y4.b
    public final Number z0(boolean z10) {
        char cG0 = G0((this.f78856i + this.f78855h) - 1);
        try {
            if (cG0 == 'F') {
                return Float.valueOf(Float.parseFloat(C0()));
            }
            if (cG0 == 'D') {
                return Double.valueOf(Double.parseDouble(C0()));
            }
            return z10 ? d0() : Double.valueOf(I0());
        } catch (NumberFormatException e11) {
            throw new JSONException(e11.getMessage() + ", " + k());
        }
    }
}
