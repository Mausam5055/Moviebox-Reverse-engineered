package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class j1 extends Writer {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final ThreadLocal f261s = new ThreadLocal();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final ThreadLocal f262t = new ThreadLocal();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final char[] f263u = ":true".toCharArray();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final char[] f264v = ":false".toCharArray();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static int f265w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final int f266x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected char[] f267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Writer f270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected boolean f272f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f273g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f274h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected boolean f275i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected boolean f276j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected boolean f277k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f278l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected boolean f279m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected boolean f280n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected char f281o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected int f282p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f283q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected long f284r;

    static {
        int i11;
        f265w = 131072;
        try {
            String strJ = com.alibaba.fastjson.util.f.j("fastjson.serializer_buffer_threshold");
            if (strJ != null && strJ.length() > 0 && (i11 = Integer.parseInt(strJ)) >= 64 && i11 <= 65536) {
                f265w = i11 * 1024;
            }
        } catch (Throwable unused) {
        }
        f266x = SerializerFeature.UseSingleQuotes.mask | SerializerFeature.BrowserCompatible.mask | SerializerFeature.PrettyFormat.mask | SerializerFeature.WriteEnumUsingToString.mask | SerializerFeature.WriteNonStringValueAsString.mask | SerializerFeature.WriteSlashAsSpecial.mask | SerializerFeature.IgnoreErrorGetter.mask | SerializerFeature.WriteClassName.mask | SerializerFeature.NotWriteDefaultValue.mask;
    }

    public j1() {
        this(null);
    }

    public j1(Writer writer) {
        this(writer, com.alibaba.fastjson.a.DEFAULT_GENERATE_FEATURE, SerializerFeature.EMPTY);
    }

    public j1(Writer writer, int i11, SerializerFeature... serializerFeatureArr) {
        this.f282p = -1;
        this.f270d = writer;
        ThreadLocal threadLocal = f261s;
        char[] cArr = (char[]) threadLocal.get();
        this.f267a = cArr;
        if (cArr != null) {
            threadLocal.set(null);
        } else {
            this.f267a = new char[2048];
        }
        for (SerializerFeature serializerFeature : serializerFeatureArr) {
            i11 |= serializerFeature.getMask();
        }
        this.f269c = i11;
        k();
    }

    private void k0(String str) {
        byte[] bArr = com.alibaba.fastjson.util.f.f18225g;
        int length = str.length();
        boolean z10 = true;
        int i11 = this.f268b + length + 1;
        int i12 = 0;
        if (i11 > this.f267a.length) {
            if (this.f270d != null) {
                if (length == 0) {
                    write(39);
                    write(39);
                    write(58);
                    return;
                }
                int i13 = 0;
                while (true) {
                    if (i13 < length) {
                        char cCharAt = str.charAt(i13);
                        if (cCharAt < bArr.length && bArr[cCharAt] != 0) {
                            break;
                        } else {
                            i13++;
                        }
                    } else {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    write(39);
                }
                while (i12 < length) {
                    char cCharAt2 = str.charAt(i12);
                    if (cCharAt2 >= bArr.length || bArr[cCharAt2] == 0) {
                        write(cCharAt2);
                    } else {
                        write(92);
                        write(com.alibaba.fastjson.util.f.f18228j[cCharAt2]);
                    }
                    i12++;
                }
                if (z10) {
                    write(39);
                }
                write(58);
                return;
            }
            o(i11);
        }
        if (length == 0) {
            int i14 = this.f268b;
            if (i14 + 3 > this.f267a.length) {
                o(i14 + 3);
            }
            char[] cArr = this.f267a;
            int i15 = this.f268b;
            int i16 = i15 + 1;
            this.f268b = i16;
            cArr[i15] = '\'';
            int i17 = i15 + 2;
            this.f268b = i17;
            cArr[i16] = '\'';
            this.f268b = i15 + 3;
            cArr[i17] = ':';
            return;
        }
        int i18 = this.f268b;
        int i19 = i18 + length;
        str.getChars(0, length, this.f267a, i18);
        this.f268b = i11;
        int i20 = i18;
        boolean z11 = false;
        while (i20 < i19) {
            char[] cArr2 = this.f267a;
            char c11 = cArr2[i20];
            if (c11 < bArr.length && bArr[c11] != 0) {
                if (z11) {
                    i11++;
                    if (i11 > cArr2.length) {
                        o(i11);
                    }
                    this.f268b = i11;
                    char[] cArr3 = this.f267a;
                    int i21 = i20 + 1;
                    System.arraycopy(cArr3, i21, cArr3, i20 + 2, i19 - i20);
                    char[] cArr4 = this.f267a;
                    cArr4[i20] = '\\';
                    cArr4[i21] = com.alibaba.fastjson.util.f.f18228j[c11];
                    i19++;
                    i20 = i21;
                } else {
                    i11 += 3;
                    if (i11 > cArr2.length) {
                        o(i11);
                    }
                    this.f268b = i11;
                    char[] cArr5 = this.f267a;
                    int i22 = i20 + 1;
                    System.arraycopy(cArr5, i22, cArr5, i20 + 3, (i19 - i20) - 1);
                    char[] cArr6 = this.f267a;
                    System.arraycopy(cArr6, i12, cArr6, 1, i20);
                    char[] cArr7 = this.f267a;
                    cArr7[i18] = '\'';
                    cArr7[i22] = '\\';
                    i20 += 2;
                    cArr7[i20] = com.alibaba.fastjson.util.f.f18228j[c11];
                    i19 += 2;
                    cArr7[this.f268b - 2] = '\'';
                    z11 = true;
                }
            }
            i20++;
            i12 = 0;
        }
        this.f267a[i11 - 1] = ':';
    }

    private int m(OutputStream outputStream) throws IOException {
        int i11 = (int) (((double) this.f268b) * 3.0d);
        ThreadLocal threadLocal = f262t;
        byte[] bArr = (byte[]) threadLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            threadLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < i11 ? new byte[i11] : bArr;
        int iF = com.alibaba.fastjson.util.f.f(this.f267a, 0, this.f268b, bArr2);
        outputStream.write(bArr2, 0, iF);
        if (bArr2 != bArr && bArr2.length <= f265w) {
            threadLocal.set(bArr2);
        }
        return iF;
    }

    private byte[] n() {
        int i11 = (int) (((double) this.f268b) * 3.0d);
        ThreadLocal threadLocal = f262t;
        byte[] bArr = (byte[]) threadLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            threadLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < i11 ? new byte[i11] : bArr;
        int iF = com.alibaba.fastjson.util.f.f(this.f267a, 0, this.f268b, bArr2);
        byte[] bArr3 = new byte[iF];
        System.arraycopy(bArr2, 0, bArr3, 0, iF);
        if (bArr2 != bArr && bArr2.length <= f265w) {
            threadLocal.set(bArr2);
        }
        return bArr3;
    }

    public void T(char c11, String str, double d11) {
        write(c11);
        w(str);
        u(d11, false);
    }

    public void U(char c11, String str, int i11) {
        if (i11 == Integer.MIN_VALUE || !this.f272f) {
            write(c11);
            w(str);
            h0(i11);
            return;
        }
        int iN = i11 < 0 ? com.alibaba.fastjson.util.f.n(-i11) + 1 : com.alibaba.fastjson.util.f.n(i11);
        int length = str.length();
        int i12 = this.f268b + length + 4 + iN;
        if (i12 > this.f267a.length) {
            if (this.f270d != null) {
                write(c11);
                w(str);
                h0(i11);
                return;
            }
            o(i12);
        }
        int i13 = this.f268b;
        this.f268b = i12;
        char[] cArr = this.f267a;
        cArr[i13] = c11;
        int i14 = i13 + length;
        cArr[i13 + 1] = this.f281o;
        str.getChars(0, length, cArr, i13 + 2);
        char[] cArr2 = this.f267a;
        cArr2[i14 + 2] = this.f281o;
        cArr2[i14 + 3] = ':';
        com.alibaba.fastjson.util.f.h(i11, this.f268b, cArr2);
    }

    public void V(char c11, String str, long j11) {
        if (j11 == Long.MIN_VALUE || !this.f272f || p(SerializerFeature.BrowserCompatible.mask)) {
            write(c11);
            w(str);
            l0(j11);
            return;
        }
        int iO = j11 < 0 ? com.alibaba.fastjson.util.f.o(-j11) + 1 : com.alibaba.fastjson.util.f.o(j11);
        int length = str.length();
        int i11 = this.f268b + length + 4 + iO;
        if (i11 > this.f267a.length) {
            if (this.f270d != null) {
                write(c11);
                w(str);
                l0(j11);
                return;
            }
            o(i11);
        }
        int i12 = this.f268b;
        this.f268b = i11;
        char[] cArr = this.f267a;
        cArr[i12] = c11;
        int i13 = i12 + length;
        cArr[i12 + 1] = this.f281o;
        str.getChars(0, length, cArr, i12 + 2);
        char[] cArr2 = this.f267a;
        cArr2[i13 + 2] = this.f281o;
        cArr2[i13 + 3] = ':';
        com.alibaba.fastjson.util.f.i(j11, this.f268b, cArr2);
    }

    public void Z(char c11, String str, String str2) {
        if (!this.f272f) {
            write(c11);
            w(str);
            if (str2 == null) {
                m0();
                return;
            } else {
                q0(str2);
                return;
            }
        }
        if (this.f271e) {
            write(c11);
            w(str);
            if (str2 == null) {
                m0();
                return;
            } else {
                q0(str2);
                return;
            }
        }
        if (!q(SerializerFeature.BrowserCompatible)) {
            c0(c11, str, str2);
            return;
        }
        write(c11);
        u0(str, ':');
        u0(str2, (char) 0);
    }

    public void a0(char c11, String str, BigDecimal bigDecimal) {
        write(c11);
        w(str);
        if (bigDecimal == null) {
            m0();
        } else {
            int iScale = bigDecimal.scale();
            write((!q(SerializerFeature.WriteBigDecimalAsPlain) || iScale < -100 || iScale >= 100) ? bigDecimal.toString() : bigDecimal.toPlainString());
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public j1 append(char c11) {
        write(c11);
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00d2  */
    public void c0(char c11, String str, String str2) {
        int length;
        int i11;
        int length2 = str.length();
        int i12 = this.f268b;
        if (str2 == null) {
            i11 = i12 + length2 + 8;
            length = 4;
        } else {
            length = str2.length();
            i11 = i12 + length2 + length + 6;
        }
        int i13 = 0;
        if (i11 > this.f267a.length) {
            if (this.f270d != null) {
                write(c11);
                u0(str, ':');
                u0(str2, (char) 0);
                return;
            }
            o(i11);
        }
        char[] cArr = this.f267a;
        int i14 = this.f268b;
        cArr[i14] = c11;
        int i15 = i14 + 2;
        int i16 = i15 + length2;
        cArr[i14 + 1] = '\"';
        str.getChars(0, length2, cArr, i15);
        this.f268b = i11;
        char[] cArr2 = this.f267a;
        cArr2[i16] = '\"';
        int i17 = i16 + 2;
        cArr2[i16 + 1] = ':';
        if (str2 == null) {
            cArr2[i17] = 'n';
            cArr2[i16 + 3] = 'u';
            cArr2[i16 + 4] = 'l';
            cArr2[i16 + 5] = 'l';
            return;
        }
        int i18 = i16 + 3;
        cArr2[i17] = '\"';
        int i19 = i18 + length;
        str2.getChars(0, length, cArr2, i18);
        int i20 = -1;
        int i21 = -1;
        int i22 = -1;
        char c12 = 0;
        for (int i23 = i18; i23 < i19; i23++) {
            char c13 = this.f267a[i23];
            if (c13 >= ']') {
                if (c13 >= 127 && (c13 == 8232 || c13 == 8233 || c13 < 160)) {
                    if (i21 == i20) {
                        i21 = i23;
                    }
                    i13++;
                    i11 += 4;
                    c12 = c13;
                    i22 = i23;
                }
            } else if ((c13 >= '@' || (this.f284r & (1 << c13)) == 0) && c13 != '\\') {
                i20 = -1;
            } else {
                i13++;
                if (c13 == '(' || c13 == ')' || c13 == '<' || c13 == '>') {
                    i11 += 4;
                } else {
                    byte[] bArr = com.alibaba.fastjson.util.f.f18224f;
                    if (c13 < bArr.length && bArr[c13] == 4) {
                        i11 += 4;
                    }
                }
                i20 = -1;
                c12 = c13;
                if (i21 == -1) {
                    i21 = i23;
                    i22 = i21;
                } else {
                    i22 = i23;
                }
            }
        }
        if (i13 > 0) {
            int i24 = i11 + i13;
            if (i24 > this.f267a.length) {
                o(i24);
            }
            this.f268b = i24;
            if (i13 == 1) {
                if (c12 == 8232) {
                    int i25 = i22 + 1;
                    char[] cArr3 = this.f267a;
                    System.arraycopy(cArr3, i25, cArr3, i22 + 6, (i19 - i22) - 1);
                    char[] cArr4 = this.f267a;
                    cArr4[i22] = '\\';
                    cArr4[i25] = 'u';
                    cArr4[i22 + 2] = '2';
                    cArr4[i22 + 3] = '0';
                    cArr4[i22 + 4] = '2';
                    cArr4[i22 + 5] = '8';
                } else if (c12 == 8233) {
                    int i26 = i22 + 1;
                    char[] cArr5 = this.f267a;
                    System.arraycopy(cArr5, i26, cArr5, i22 + 6, (i19 - i22) - 1);
                    char[] cArr6 = this.f267a;
                    cArr6[i22] = '\\';
                    cArr6[i26] = 'u';
                    cArr6[i22 + 2] = '2';
                    cArr6[i22 + 3] = '0';
                    cArr6[i22 + 4] = '2';
                    cArr6[i22 + 5] = '9';
                } else if (c12 == '(' || c12 == ')' || c12 == '<' || c12 == '>') {
                    int i27 = i22 + 1;
                    char[] cArr7 = this.f267a;
                    System.arraycopy(cArr7, i27, cArr7, i22 + 6, (i19 - i22) - 1);
                    char[] cArr8 = this.f267a;
                    cArr8[i22] = '\\';
                    cArr8[i27] = 'u';
                    char[] cArr9 = com.alibaba.fastjson.util.f.f18221c;
                    cArr8[i22 + 2] = cArr9[(c12 >>> '\f') & 15];
                    cArr8[i22 + 3] = cArr9[(c12 >>> '\b') & 15];
                    cArr8[i22 + 4] = cArr9[(c12 >>> 4) & 15];
                    cArr8[i22 + 5] = cArr9[c12 & 15];
                } else {
                    byte[] bArr2 = com.alibaba.fastjson.util.f.f18224f;
                    if (c12 >= bArr2.length || bArr2[c12] != 4) {
                        int i28 = i22 + 1;
                        char[] cArr10 = this.f267a;
                        System.arraycopy(cArr10, i28, cArr10, i22 + 2, (i19 - i22) - 1);
                        char[] cArr11 = this.f267a;
                        cArr11[i22] = '\\';
                        cArr11[i28] = com.alibaba.fastjson.util.f.f18228j[c12];
                    } else {
                        int i29 = i22 + 1;
                        char[] cArr12 = this.f267a;
                        System.arraycopy(cArr12, i29, cArr12, i22 + 6, (i19 - i22) - 1);
                        char[] cArr13 = this.f267a;
                        cArr13[i22] = '\\';
                        cArr13[i29] = 'u';
                        char[] cArr14 = com.alibaba.fastjson.util.f.f18221c;
                        cArr13[i22 + 2] = cArr14[(c12 >>> '\f') & 15];
                        cArr13[i22 + 3] = cArr14[(c12 >>> '\b') & 15];
                        cArr13[i22 + 4] = cArr14[(c12 >>> 4) & 15];
                        cArr13[i22 + 5] = cArr14[c12 & 15];
                    }
                }
            } else if (i13 > 1) {
                for (int i30 = i21 - i18; i30 < str2.length(); i30++) {
                    char cCharAt = str2.charAt(i30);
                    if (this.f283q) {
                        if (cCharAt != '(' && cCharAt != ')') {
                            if (cCharAt == '<' || cCharAt == '>') {
                            }
                        }
                        char[] cArr15 = this.f267a;
                        cArr15[i21] = '\\';
                        cArr15[i21 + 1] = 'u';
                        char[] cArr16 = com.alibaba.fastjson.util.f.f18221c;
                        cArr15[i21 + 2] = cArr16[(cCharAt >>> '\f') & 15];
                        cArr15[i21 + 3] = cArr16[(cCharAt >>> '\b') & 15];
                        int i31 = i21 + 5;
                        cArr15[i21 + 4] = cArr16[(cCharAt >>> 4) & 15];
                        i21 += 6;
                        cArr15[i31] = cArr16[cCharAt & 15];
                    }
                    byte[] bArr3 = com.alibaba.fastjson.util.f.f18224f;
                    if ((cCharAt >= bArr3.length || bArr3[cCharAt] == 0) && !(cCharAt == '/' && q(SerializerFeature.WriteSlashAsSpecial))) {
                        if (cCharAt == 8232 || cCharAt == 8233) {
                            char[] cArr17 = this.f267a;
                            cArr17[i21] = '\\';
                            cArr17[i21 + 1] = 'u';
                            char[] cArr18 = com.alibaba.fastjson.util.f.f18221c;
                            cArr17[i21 + 2] = cArr18[(cCharAt >>> '\f') & 15];
                            cArr17[i21 + 3] = cArr18[(cCharAt >>> '\b') & 15];
                            int i32 = i21 + 5;
                            cArr17[i21 + 4] = cArr18[(cCharAt >>> 4) & 15];
                            i21 += 6;
                            cArr17[i32] = cArr18[cCharAt & 15];
                        } else {
                            this.f267a[i21] = cCharAt;
                            i21++;
                        }
                    } else {
                        char[] cArr19 = this.f267a;
                        int i33 = i21 + 1;
                        cArr19[i21] = '\\';
                        if (bArr3[cCharAt] == 4) {
                            cArr19[i33] = 'u';
                            char[] cArr20 = com.alibaba.fastjson.util.f.f18221c;
                            cArr19[i21 + 2] = cArr20[(cCharAt >>> '\f') & 15];
                            cArr19[i21 + 3] = cArr20[(cCharAt >>> '\b') & 15];
                            int i34 = i21 + 5;
                            cArr19[i21 + 4] = cArr20[(cCharAt >>> 4) & 15];
                            i21 += 6;
                            cArr19[i34] = cArr20[cCharAt & 15];
                        } else {
                            i21 += 2;
                            cArr19[i33] = com.alibaba.fastjson.util.f.f18228j[cCharAt];
                        }
                    }
                }
            }
        }
        this.f267a[this.f268b - 1] = '\"';
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f270d != null && this.f268b > 0) {
            flush();
        }
        char[] cArr = this.f267a;
        if (cArr.length <= f265w) {
            f261s.set(cArr);
        }
        this.f267a = null;
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public j1 append(CharSequence charSequence) {
        String string = charSequence == null ? "null" : charSequence.toString();
        write(string, 0, string.length());
        return this;
    }

    public void d0(float f11, boolean z10) {
        if (f11 != f11 || f11 == Float.POSITIVE_INFINITY || f11 == Float.NEGATIVE_INFINITY) {
            m0();
            return;
        }
        int i11 = this.f268b + 15;
        if (i11 > this.f267a.length) {
            if (this.f270d != null) {
                String strB = com.alibaba.fastjson.util.k.b(f11);
                write(strB, 0, strB.length());
                if (z10 && q(SerializerFeature.WriteClassName)) {
                    write(70);
                    return;
                }
                return;
            }
            o(i11);
        }
        this.f268b += com.alibaba.fastjson.util.k.a(f11, this.f267a, this.f268b);
        if (z10 && q(SerializerFeature.WriteClassName)) {
            write(70);
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        Writer writer = this.f270d;
        if (writer == null) {
            return;
        }
        try {
            writer.write(this.f267a, 0, this.f268b);
            this.f270d.flush();
            this.f268b = 0;
        } catch (IOException e11) {
            throw new JSONException(e11.getMessage(), e11);
        }
    }

    public void g0(byte[] bArr) {
        int length = this.f268b + (bArr.length * 2) + 3;
        if (length > this.f267a.length) {
            o(length);
        }
        char[] cArr = this.f267a;
        int i11 = this.f268b;
        int i12 = i11 + 1;
        this.f268b = i12;
        cArr[i11] = 'x';
        this.f268b = i11 + 2;
        cArr[i12] = '\'';
        for (byte b11 : bArr) {
            int i13 = (b11 & 255) >> 4;
            int i14 = b11 & 15;
            char[] cArr2 = this.f267a;
            int i15 = this.f268b;
            int i16 = i15 + 1;
            this.f268b = i16;
            int i17 = 55;
            cArr2[i15] = (char) (i13 + (i13 < 10 ? 48 : 55));
            this.f268b = i15 + 2;
            if (i14 < 10) {
                i17 = 48;
            }
            cArr2[i16] = (char) (i14 + i17);
        }
        char[] cArr3 = this.f267a;
        int i18 = this.f268b;
        this.f268b = i18 + 1;
        cArr3[i18] = '\'';
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public j1 append(CharSequence charSequence, int i11, int i12) {
        if (charSequence == null) {
            charSequence = "null";
        }
        String string = charSequence.subSequence(i11, i12).toString();
        write(string, 0, string.length());
        return this;
    }

    public void h0(int i11) {
        if (i11 == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int iN = i11 < 0 ? com.alibaba.fastjson.util.f.n(-i11) + 1 : com.alibaba.fastjson.util.f.n(i11);
        int i12 = this.f268b + iN;
        if (i12 > this.f267a.length) {
            if (this.f270d != null) {
                char[] cArr = new char[iN];
                com.alibaba.fastjson.util.f.h(i11, iN, cArr);
                write(cArr, 0, iN);
                return;
            }
            o(i12);
        }
        com.alibaba.fastjson.util.f.h(i11, i12, this.f267a);
        this.f268b = i12;
    }

    protected void k() {
        long j11;
        int i11 = this.f269c;
        boolean z10 = (SerializerFeature.QuoteFieldNames.mask & i11) != 0;
        this.f272f = z10;
        boolean z11 = (SerializerFeature.UseSingleQuotes.mask & i11) != 0;
        this.f271e = z11;
        this.f273g = (SerializerFeature.SortField.mask & i11) != 0;
        this.f274h = (SerializerFeature.DisableCircularReferenceDetect.mask & i11) != 0;
        boolean z12 = (SerializerFeature.BeanToArray.mask & i11) != 0;
        this.f275i = z12;
        this.f276j = (SerializerFeature.WriteNonStringValueAsString.mask & i11) != 0;
        this.f277k = (SerializerFeature.NotWriteDefaultValue.mask & i11) != 0;
        boolean z13 = (SerializerFeature.WriteEnumUsingName.mask & i11) != 0;
        this.f278l = z13;
        this.f279m = (SerializerFeature.WriteEnumUsingToString.mask & i11) != 0;
        this.f280n = z10 && (f266x & i11) == 0 && (z12 || z13);
        this.f281o = z11 ? '\'' : '\"';
        boolean z14 = (SerializerFeature.BrowserSecure.mask & i11) != 0;
        this.f283q = z14;
        if (z14) {
            j11 = 5764610843043954687L;
        } else {
            j11 = (i11 & SerializerFeature.WriteSlashAsSpecial.mask) != 0 ? 140758963191807L : 21474836479L;
        }
        this.f284r = j11;
    }

    public void l(SerializerFeature serializerFeature, boolean z10) {
        if (z10) {
            int mask = this.f269c | serializerFeature.getMask();
            this.f269c = mask;
            SerializerFeature serializerFeature2 = SerializerFeature.WriteEnumUsingToString;
            if (serializerFeature == serializerFeature2) {
                this.f269c = (~SerializerFeature.WriteEnumUsingName.getMask()) & mask;
            } else if (serializerFeature == SerializerFeature.WriteEnumUsingName) {
                this.f269c = (~serializerFeature2.getMask()) & mask;
            }
        } else {
            this.f269c = (~serializerFeature.getMask()) & this.f269c;
        }
        k();
    }

    public void l0(long j11) {
        boolean z10 = q(SerializerFeature.BrowserCompatible) && !q(SerializerFeature.WriteClassName) && (j11 > 9007199254740991L || j11 < -9007199254740991L);
        if (j11 == Long.MIN_VALUE) {
            if (z10) {
                write("\"-9223372036854775808\"");
                return;
            } else {
                write("-9223372036854775808");
                return;
            }
        }
        int iO = j11 < 0 ? com.alibaba.fastjson.util.f.o(-j11) + 1 : com.alibaba.fastjson.util.f.o(j11);
        int i11 = this.f268b + iO;
        if (z10) {
            i11 += 2;
        }
        if (i11 > this.f267a.length) {
            if (this.f270d != null) {
                char[] cArr = new char[iO];
                com.alibaba.fastjson.util.f.i(j11, iO, cArr);
                if (!z10) {
                    write(cArr, 0, iO);
                    return;
                }
                write(34);
                write(cArr, 0, iO);
                write(34);
                return;
            }
            o(i11);
        }
        if (z10) {
            char[] cArr2 = this.f267a;
            cArr2[this.f268b] = '\"';
            int i12 = i11 - 1;
            com.alibaba.fastjson.util.f.i(j11, i12, cArr2);
            this.f267a[i12] = '\"';
        } else {
            com.alibaba.fastjson.util.f.i(j11, i11, this.f267a);
        }
        this.f268b = i11;
    }

    public void m0() {
        write("null");
    }

    public void o(int i11) {
        int i12 = this.f282p;
        if (i12 != -1 && i11 >= i12) {
            throw new JSONException("serialize exceeded MAX_OUTPUT_LENGTH=" + this.f282p + ", minimumCapacity=" + i11);
        }
        char[] cArr = this.f267a;
        int length = cArr.length + (cArr.length >> 1) + 1;
        if (length >= i11) {
            i11 = length;
        }
        char[] cArr2 = new char[i11];
        System.arraycopy(cArr, 0, cArr2, 0, this.f268b);
        if (this.f267a.length < f265w) {
            ThreadLocal threadLocal = f261s;
            char[] cArr3 = (char[]) threadLocal.get();
            if (cArr3 == null || cArr3.length < this.f267a.length) {
                threadLocal.set(this.f267a);
            }
        }
        this.f267a = cArr2;
    }

    public void o0(int i11, int i12) {
        if ((i11 & i12) == 0 && (this.f269c & i12) == 0) {
            m0();
            return;
        }
        int i13 = SerializerFeature.WriteMapNullValue.mask;
        if ((i11 & i13) != 0 && (i11 & (~i13) & SerializerFeature.WRITE_MAP_NULL_FEATURES) == 0) {
            m0();
            return;
        }
        if (i12 == SerializerFeature.WriteNullListAsEmpty.mask) {
            write("[]");
            return;
        }
        if (i12 == SerializerFeature.WriteNullStringAsEmpty.mask) {
            q0("");
            return;
        }
        if (i12 == SerializerFeature.WriteNullBooleanAsFalse.mask) {
            write("false");
        } else if (i12 == SerializerFeature.WriteNullNumberAsZero.mask) {
            write(48);
        } else {
            m0();
        }
    }

    public boolean p(int i11) {
        return (i11 & this.f269c) != 0;
    }

    public void p0(SerializerFeature serializerFeature) {
        o0(0, serializerFeature.mask);
    }

    public boolean q(SerializerFeature serializerFeature) {
        return (serializerFeature.mask & this.f269c) != 0;
    }

    public void q0(String str) {
        if (this.f271e) {
            v0(str);
        } else {
            u0(str, (char) 0);
        }
    }

    public byte[] r(Charset charset) {
        if (this.f270d == null) {
            return charset == com.alibaba.fastjson.util.f.f18220b ? n() : new String(this.f267a, 0, this.f268b).getBytes(charset);
        }
        throw new UnsupportedOperationException("writer not null");
    }

    public void r0(char[] cArr) {
        if (this.f271e) {
            x0(cArr);
        } else {
            u0(new String(cArr), (char) 0);
        }
    }

    public void s(boolean z10) {
        if (z10) {
            write("true");
        } else {
            write("false");
        }
    }

    public void t(byte[] bArr) {
        if (p(SerializerFeature.WriteClassName.mask)) {
            g0(bArr);
            return;
        }
        int length = bArr.length;
        boolean z10 = this.f271e;
        char c11 = z10 ? '\'' : '\"';
        if (length == 0) {
            write(z10 ? "''" : "\"\"");
            return;
        }
        char[] cArr = com.alibaba.fastjson.util.f.f18234p;
        int i11 = (length / 3) * 3;
        int i12 = length - 1;
        int i13 = this.f268b;
        int i14 = (((i12 / 3) + 1) << 2) + i13;
        int i15 = i14 + 2;
        if (i15 > this.f267a.length) {
            if (this.f270d != null) {
                write(c11);
                int i16 = 0;
                while (i16 < i11) {
                    int i17 = i16 + 2;
                    int i18 = ((bArr[i16 + 1] & 255) << 8) | ((bArr[i16] & 255) << 16);
                    i16 += 3;
                    int i19 = i18 | (bArr[i17] & 255);
                    write(cArr[(i19 >>> 18) & 63]);
                    write(cArr[(i19 >>> 12) & 63]);
                    write(cArr[(i19 >>> 6) & 63]);
                    write(cArr[i19 & 63]);
                }
                int i20 = length - i11;
                if (i20 > 0) {
                    int i21 = ((bArr[i11] & 255) << 10) | (i20 == 2 ? (bArr[i12] & 255) << 2 : 0);
                    write(cArr[i21 >> 12]);
                    write(cArr[(i21 >>> 6) & 63]);
                    write(i20 == 2 ? cArr[i21 & 63] : '=');
                    write(61);
                }
                write(c11);
                return;
            }
            o(i15);
        }
        this.f268b = i15;
        int i22 = i13 + 1;
        this.f267a[i13] = c11;
        int i23 = 0;
        while (i23 < i11) {
            int i24 = i23 + 2;
            int i25 = ((bArr[i23 + 1] & 255) << 8) | ((bArr[i23] & 255) << 16);
            i23 += 3;
            int i26 = i25 | (bArr[i24] & 255);
            char[] cArr2 = this.f267a;
            cArr2[i22] = cArr[(i26 >>> 18) & 63];
            cArr2[i22 + 1] = cArr[(i26 >>> 12) & 63];
            int i27 = i22 + 3;
            cArr2[i22 + 2] = cArr[(i26 >>> 6) & 63];
            i22 += 4;
            cArr2[i27] = cArr[i26 & 63];
        }
        int i28 = length - i11;
        if (i28 > 0) {
            int i29 = ((bArr[i11] & 255) << 10) | (i28 == 2 ? (bArr[i12] & 255) << 2 : 0);
            char[] cArr3 = this.f267a;
            cArr3[i14 - 3] = cArr[i29 >> 12];
            cArr3[i14 - 2] = cArr[(i29 >>> 6) & 63];
            cArr3[i14 - 1] = i28 == 2 ? cArr[i29 & 63] : '=';
            cArr3[i14] = '=';
        }
        this.f267a[i14 + 1] = c11;
    }

    public String toString() {
        return new String(this.f267a, 0, this.f268b);
    }

    public void u(double d11, boolean z10) {
        if (Double.isNaN(d11) || Double.isInfinite(d11)) {
            m0();
            return;
        }
        int i11 = this.f268b + 24;
        if (i11 > this.f267a.length) {
            if (this.f270d != null) {
                String strB = com.alibaba.fastjson.util.j.b(d11);
                write(strB, 0, strB.length());
                if (z10 && q(SerializerFeature.WriteClassName)) {
                    write(68);
                    return;
                }
                return;
            }
            o(i11);
        }
        this.f268b += com.alibaba.fastjson.util.j.a(d11, this.f267a, this.f268b);
        if (z10 && q(SerializerFeature.WriteClassName)) {
            write(68);
        }
    }

    /* JADX WARN: Code duplicated, block: B:165:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:59:0x014f  */
    public void u0(String str, char c11) {
        if (str == null) {
            m0();
            if (c11 != 0) {
                write(c11);
                return;
            }
            return;
        }
        int length = str.length();
        int i11 = this.f268b + length;
        int i12 = i11 + 2;
        if (c11 != 0) {
            i12 = i11 + 3;
        }
        char c12 = '>';
        if (i12 > this.f267a.length) {
            if (this.f270d != null) {
                write(34);
                int i13 = 0;
                while (i13 < str.length()) {
                    char cCharAt = str.charAt(i13);
                    if (q(SerializerFeature.BrowserSecure) && (cCharAt == '(' || cCharAt == ')' || cCharAt == '<' || cCharAt == c12)) {
                        write(92);
                        write(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
                        char[] cArr = com.alibaba.fastjson.util.f.f18221c;
                        write(cArr[(cCharAt >>> '\f') & 15]);
                        write(cArr[(cCharAt >>> '\b') & 15]);
                        write(cArr[(cCharAt >>> 4) & 15]);
                        write(cArr[cCharAt & 15]);
                    } else if (!q(SerializerFeature.BrowserCompatible)) {
                        byte[] bArr = com.alibaba.fastjson.util.f.f18224f;
                        if ((cCharAt >= bArr.length || bArr[cCharAt] == 0) && !(cCharAt == '/' && q(SerializerFeature.WriteSlashAsSpecial))) {
                            write(cCharAt);
                        } else {
                            write(92);
                            if (bArr[cCharAt] == 4) {
                                write(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
                                char[] cArr2 = com.alibaba.fastjson.util.f.f18221c;
                                write(cArr2[(cCharAt >>> '\f') & 15]);
                                write(cArr2[(cCharAt >>> '\b') & 15]);
                                write(cArr2[(cCharAt >>> 4) & 15]);
                                write(cArr2[cCharAt & 15]);
                            } else {
                                write(com.alibaba.fastjson.util.f.f18228j[cCharAt]);
                            }
                        }
                    } else if (cCharAt == '\b' || cCharAt == '\f' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t' || cCharAt == '\"' || cCharAt == '/' || cCharAt == '\\') {
                        write(92);
                        write(com.alibaba.fastjson.util.f.f18228j[cCharAt]);
                    } else if (cCharAt < ' ') {
                        write(92);
                        write(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
                        write(48);
                        write(48);
                        char[] cArr3 = com.alibaba.fastjson.util.f.f18229k;
                        int i14 = cCharAt * 2;
                        write(cArr3[i14]);
                        write(cArr3[i14 + 1]);
                    } else if (cCharAt >= 127) {
                        write(92);
                        write(Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
                        char[] cArr4 = com.alibaba.fastjson.util.f.f18221c;
                        write(cArr4[(cCharAt >>> '\f') & 15]);
                        write(cArr4[(cCharAt >>> '\b') & 15]);
                        write(cArr4[(cCharAt >>> 4) & 15]);
                        write(cArr4[cCharAt & 15]);
                    } else {
                        write(cCharAt);
                    }
                    i13++;
                    c12 = '>';
                }
                write(34);
                if (c11 != 0) {
                    write(c11);
                    return;
                }
                return;
            }
            o(i12);
        }
        int i15 = this.f268b;
        int i16 = i15 + 1;
        int i17 = i16 + length;
        char[] cArr5 = this.f267a;
        cArr5[i15] = '\"';
        char c13 = 0;
        str.getChars(0, length, cArr5, i16);
        this.f268b = i12;
        int i18 = -1;
        if (q(SerializerFeature.BrowserCompatible)) {
            for (int i19 = i16; i19 < i17; i19++) {
                char c14 = this.f267a[i19];
                if (c14 == '\"' || c14 == '/' || c14 == '\\' || c14 == '\b' || c14 == '\f' || c14 == '\n' || c14 == '\r' || c14 == '\t') {
                    i12++;
                } else {
                    if (c14 < ' ' || c14 >= 127) {
                        i12 += 5;
                    }
                }
                i18 = i19;
            }
            if (i12 > this.f267a.length) {
                o(i12);
            }
            this.f268b = i12;
            while (i18 >= i16) {
                char[] cArr6 = this.f267a;
                char c15 = cArr6[i18];
                if (c15 == '\b' || c15 == '\f' || c15 == '\n' || c15 == '\r' || c15 == '\t') {
                    int i20 = i18 + 1;
                    System.arraycopy(cArr6, i20, cArr6, i18 + 2, (i17 - i18) - 1);
                    char[] cArr7 = this.f267a;
                    cArr7[i18] = '\\';
                    cArr7[i20] = com.alibaba.fastjson.util.f.f18228j[c15];
                } else {
                    if (c15 == '\"' || c15 == '/' || c15 == '\\') {
                        int i21 = i18 + 1;
                        System.arraycopy(cArr6, i21, cArr6, i18 + 2, (i17 - i18) - 1);
                        char[] cArr8 = this.f267a;
                        cArr8[i18] = '\\';
                        cArr8[i21] = c15;
                    } else {
                        if (c15 < ' ') {
                            int i22 = i18 + 1;
                            System.arraycopy(cArr6, i22, cArr6, i18 + 6, (i17 - i18) - 1);
                            char[] cArr9 = this.f267a;
                            cArr9[i18] = '\\';
                            cArr9[i22] = 'u';
                            cArr9[i18 + 2] = '0';
                            cArr9[i18 + 3] = '0';
                            char[] cArr10 = com.alibaba.fastjson.util.f.f18229k;
                            int i23 = c15 * 2;
                            cArr9[i18 + 4] = cArr10[i23];
                            cArr9[i18 + 5] = cArr10[i23 + 1];
                        } else if (c15 >= 127) {
                            int i24 = i18 + 1;
                            System.arraycopy(cArr6, i24, cArr6, i18 + 6, (i17 - i18) - 1);
                            char[] cArr11 = this.f267a;
                            cArr11[i18] = '\\';
                            cArr11[i24] = 'u';
                            char[] cArr12 = com.alibaba.fastjson.util.f.f18221c;
                            cArr11[i18 + 2] = cArr12[(c15 >>> '\f') & 15];
                            cArr11[i18 + 3] = cArr12[(c15 >>> '\b') & 15];
                            cArr11[i18 + 4] = cArr12[(c15 >>> 4) & 15];
                            cArr11[i18 + 5] = cArr12[c15 & 15];
                        }
                        i17 += 5;
                    }
                    i18--;
                }
                i17++;
                i18--;
            }
            if (c11 == 0) {
                this.f267a[this.f268b - 1] = '\"';
                return;
            }
            char[] cArr13 = this.f267a;
            int i25 = this.f268b;
            cArr13[i25 - 2] = '\"';
            cArr13[i25 - 1] = c11;
            return;
        }
        int i26 = 0;
        int i27 = -1;
        int i28 = -1;
        for (int i29 = i16; i29 < i17; i29++) {
            char c16 = this.f267a[i29];
            if (c16 >= ']') {
                if (c16 >= 127 && (c16 == 8232 || c16 == 8233 || c16 < 160)) {
                    if (i27 == i18) {
                        i27 = i29;
                    }
                    i26++;
                    i12 += 4;
                    i28 = i29;
                    c13 = c16;
                }
            } else if ((c16 >= '@' || (this.f284r & (1 << c16)) == 0) && c16 != '\\') {
                i18 = -1;
            } else {
                i26++;
                if (c16 == '(' || c16 == ')' || c16 == '<' || c16 == '>') {
                    i12 += 4;
                } else {
                    byte[] bArr2 = com.alibaba.fastjson.util.f.f18224f;
                    if (c16 < bArr2.length && bArr2[c16] == 4) {
                        i12 += 4;
                    }
                }
                i18 = -1;
                if (i27 == -1) {
                    i27 = i29;
                    i28 = i27;
                } else {
                    i28 = i29;
                }
                c13 = c16;
            }
        }
        if (i26 > 0) {
            int i30 = i12 + i26;
            if (i30 > this.f267a.length) {
                o(i30);
            }
            this.f268b = i30;
            if (i26 == 1) {
                if (c13 == 8232) {
                    int i31 = i28 + 1;
                    char[] cArr14 = this.f267a;
                    System.arraycopy(cArr14, i31, cArr14, i28 + 6, (i17 - i28) - 1);
                    char[] cArr15 = this.f267a;
                    cArr15[i28] = '\\';
                    cArr15[i31] = 'u';
                    cArr15[i28 + 2] = '2';
                    cArr15[i28 + 3] = '0';
                    cArr15[i28 + 4] = '2';
                    cArr15[i28 + 5] = '8';
                } else if (c13 == 8233) {
                    int i32 = i28 + 1;
                    char[] cArr16 = this.f267a;
                    System.arraycopy(cArr16, i32, cArr16, i28 + 6, (i17 - i28) - 1);
                    char[] cArr17 = this.f267a;
                    cArr17[i28] = '\\';
                    cArr17[i32] = 'u';
                    cArr17[i28 + 2] = '2';
                    cArr17[i28 + 3] = '0';
                    cArr17[i28 + 4] = '2';
                    cArr17[i28 + 5] = '9';
                } else if (c13 == '(' || c13 == ')' || c13 == '<' || c13 == '>') {
                    int i33 = i28 + 1;
                    char[] cArr18 = this.f267a;
                    System.arraycopy(cArr18, i33, cArr18, i28 + 6, (i17 - i28) - 1);
                    char[] cArr19 = this.f267a;
                    cArr19[i28] = '\\';
                    cArr19[i33] = 'u';
                    char[] cArr20 = com.alibaba.fastjson.util.f.f18221c;
                    cArr19[i28 + 2] = cArr20[(c13 >>> '\f') & 15];
                    cArr19[i28 + 3] = cArr20[(c13 >>> '\b') & 15];
                    cArr19[i28 + 4] = cArr20[(c13 >>> 4) & 15];
                    cArr19[i28 + 5] = cArr20[c13 & 15];
                } else {
                    byte[] bArr3 = com.alibaba.fastjson.util.f.f18224f;
                    if (c13 >= bArr3.length || bArr3[c13] != 4) {
                        int i34 = i28 + 1;
                        char[] cArr21 = this.f267a;
                        System.arraycopy(cArr21, i34, cArr21, i28 + 2, (i17 - i28) - 1);
                        char[] cArr22 = this.f267a;
                        cArr22[i28] = '\\';
                        cArr22[i34] = com.alibaba.fastjson.util.f.f18228j[c13];
                    } else {
                        int i35 = i28 + 1;
                        char[] cArr23 = this.f267a;
                        System.arraycopy(cArr23, i35, cArr23, i28 + 6, (i17 - i28) - 1);
                        char[] cArr24 = this.f267a;
                        cArr24[i28] = '\\';
                        cArr24[i35] = 'u';
                        char[] cArr25 = com.alibaba.fastjson.util.f.f18221c;
                        cArr24[i28 + 2] = cArr25[(c13 >>> '\f') & 15];
                        cArr24[i28 + 3] = cArr25[(c13 >>> '\b') & 15];
                        cArr24[i28 + 4] = cArr25[(c13 >>> 4) & 15];
                        cArr24[i28 + 5] = cArr25[c13 & 15];
                    }
                }
            } else if (i26 > 1) {
                for (int i36 = i27 - i16; i36 < str.length(); i36++) {
                    char cCharAt2 = str.charAt(i36);
                    if (this.f283q) {
                        if (cCharAt2 != '(' && cCharAt2 != ')') {
                            if (cCharAt2 == '<' || cCharAt2 == '>') {
                            }
                        }
                        char[] cArr26 = this.f267a;
                        cArr26[i27] = '\\';
                        cArr26[i27 + 1] = 'u';
                        char[] cArr27 = com.alibaba.fastjson.util.f.f18221c;
                        cArr26[i27 + 2] = cArr27[(cCharAt2 >>> '\f') & 15];
                        cArr26[i27 + 3] = cArr27[(cCharAt2 >>> '\b') & 15];
                        int i37 = i27 + 5;
                        cArr26[i27 + 4] = cArr27[(cCharAt2 >>> 4) & 15];
                        i27 += 6;
                        cArr26[i37] = cArr27[cCharAt2 & 15];
                    }
                    byte[] bArr4 = com.alibaba.fastjson.util.f.f18224f;
                    if ((cCharAt2 >= bArr4.length || bArr4[cCharAt2] == 0) && !(cCharAt2 == '/' && q(SerializerFeature.WriteSlashAsSpecial))) {
                        if (cCharAt2 == 8232 || cCharAt2 == 8233) {
                            char[] cArr28 = this.f267a;
                            cArr28[i27] = '\\';
                            cArr28[i27 + 1] = 'u';
                            char[] cArr29 = com.alibaba.fastjson.util.f.f18221c;
                            cArr28[i27 + 2] = cArr29[(cCharAt2 >>> '\f') & 15];
                            cArr28[i27 + 3] = cArr29[(cCharAt2 >>> '\b') & 15];
                            int i38 = i27 + 5;
                            cArr28[i27 + 4] = cArr29[(cCharAt2 >>> 4) & 15];
                            i27 += 6;
                            cArr28[i38] = cArr29[cCharAt2 & 15];
                        } else {
                            this.f267a[i27] = cCharAt2;
                            i27++;
                        }
                    } else {
                        char[] cArr30 = this.f267a;
                        int i39 = i27 + 1;
                        cArr30[i27] = '\\';
                        if (bArr4[cCharAt2] == 4) {
                            cArr30[i39] = 'u';
                            char[] cArr31 = com.alibaba.fastjson.util.f.f18221c;
                            cArr30[i27 + 2] = cArr31[(cCharAt2 >>> '\f') & 15];
                            cArr30[i27 + 3] = cArr31[(cCharAt2 >>> '\b') & 15];
                            int i40 = i27 + 5;
                            cArr30[i27 + 4] = cArr31[(cCharAt2 >>> 4) & 15];
                            i27 += 6;
                            cArr30[i40] = cArr31[cCharAt2 & 15];
                        } else {
                            i27 += 2;
                            cArr30[i39] = com.alibaba.fastjson.util.f.f18228j[cCharAt2];
                        }
                    }
                }
            }
        }
        if (c11 == 0) {
            this.f267a[this.f268b - 1] = '\"';
            return;
        }
        char[] cArr32 = this.f267a;
        int i41 = this.f268b;
        cArr32[i41 - 2] = '\"';
        cArr32[i41 - 1] = c11;
    }

    public void v(Enum r11) {
        String string;
        if (r11 == null) {
            m0();
            return;
        }
        if (!this.f278l || this.f279m) {
            string = this.f279m ? r11.toString() : null;
        } else {
            string = r11.name();
        }
        if (string == null) {
            h0(r11.ordinal());
            return;
        }
        int i11 = q(SerializerFeature.UseSingleQuotes) ? 39 : 34;
        write(i11);
        write(string);
        write(i11);
    }

    protected void v0(String str) {
        int i11 = 0;
        if (str == null) {
            int i12 = this.f268b + 4;
            if (i12 > this.f267a.length) {
                o(i12);
            }
            "null".getChars(0, 4, this.f267a, this.f268b);
            this.f268b = i12;
            return;
        }
        int length = str.length();
        int i13 = this.f268b + length + 2;
        if (i13 > this.f267a.length) {
            if (this.f270d != null) {
                write(39);
                while (i11 < str.length()) {
                    char cCharAt = str.charAt(i11);
                    if (cCharAt <= '\r' || cCharAt == '\\' || cCharAt == '\'' || (cCharAt == '/' && q(SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        write(com.alibaba.fastjson.util.f.f18228j[cCharAt]);
                    } else {
                        write(cCharAt);
                    }
                    i11++;
                }
                write(39);
                return;
            }
            o(i13);
        }
        int i14 = this.f268b;
        int i15 = i14 + 1;
        int i16 = i15 + length;
        char[] cArr = this.f267a;
        cArr[i14] = '\'';
        str.getChars(0, length, cArr, i15);
        this.f268b = i13;
        int i17 = -1;
        char c11 = 0;
        for (int i18 = i15; i18 < i16; i18++) {
            char c12 = this.f267a[i18];
            if (c12 <= '\r' || c12 == '\\' || c12 == '\'' || (c12 == '/' && q(SerializerFeature.WriteSlashAsSpecial))) {
                i11++;
                i17 = i18;
                c11 = c12;
            }
        }
        int i19 = i13 + i11;
        if (i19 > this.f267a.length) {
            o(i19);
        }
        this.f268b = i19;
        if (i11 == 1) {
            char[] cArr2 = this.f267a;
            int i20 = i17 + 1;
            System.arraycopy(cArr2, i20, cArr2, i17 + 2, (i16 - i17) - 1);
            char[] cArr3 = this.f267a;
            cArr3[i17] = '\\';
            cArr3[i20] = com.alibaba.fastjson.util.f.f18228j[c11];
        } else if (i11 > 1) {
            char[] cArr4 = this.f267a;
            int i21 = i17 + 1;
            System.arraycopy(cArr4, i21, cArr4, i17 + 2, (i16 - i17) - 1);
            char[] cArr5 = this.f267a;
            cArr5[i17] = '\\';
            cArr5[i21] = com.alibaba.fastjson.util.f.f18228j[c11];
            int i22 = i16 + 1;
            for (int i23 = i17 - 1; i23 >= i15; i23--) {
                char c13 = this.f267a[i23];
                if (c13 <= '\r' || c13 == '\\' || c13 == '\'' || (c13 == '/' && q(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr6 = this.f267a;
                    int i24 = i23 + 1;
                    System.arraycopy(cArr6, i24, cArr6, i23 + 2, (i22 - i23) - 1);
                    char[] cArr7 = this.f267a;
                    cArr7[i23] = '\\';
                    cArr7[i24] = com.alibaba.fastjson.util.f.f18228j[c13];
                    i22++;
                }
            }
        }
        this.f267a[this.f268b - 1] = '\'';
    }

    public void w(String str) {
        x(str, false);
    }

    @Override // java.io.Writer
    public void write(int i11) {
        int i12 = 1;
        int i13 = this.f268b + 1;
        if (i13 <= this.f267a.length) {
            i12 = i13;
        } else if (this.f270d == null) {
            o(i13);
            i12 = i13;
        } else {
            flush();
        }
        this.f267a[this.f268b] = (char) i11;
        this.f268b = i12;
    }

    @Override // java.io.Writer
    public void write(String str) {
        if (str == null) {
            m0();
        } else {
            write(str, 0, str.length());
        }
    }

    @Override // java.io.Writer
    public void write(String str, int i11, int i12) {
        int i13;
        int i14 = this.f268b + i12;
        if (i14 > this.f267a.length) {
            if (this.f270d == null) {
                o(i14);
            } else {
                while (true) {
                    char[] cArr = this.f267a;
                    int length = cArr.length;
                    int i15 = this.f268b;
                    int i16 = length - i15;
                    i13 = i11 + i16;
                    str.getChars(i11, i13, cArr, i15);
                    this.f268b = this.f267a.length;
                    flush();
                    i12 -= i16;
                    if (i12 <= this.f267a.length) {
                        break;
                    } else {
                        i11 = i13;
                    }
                }
                i14 = i12;
                i11 = i13;
            }
        }
        str.getChars(i11, i12 + i11, this.f267a, this.f268b);
        this.f268b = i14;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i11, int i12) {
        int i13;
        if (i11 < 0 || i11 > cArr.length || i12 < 0 || (i13 = i11 + i12) > cArr.length || i13 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i12 == 0) {
            return;
        }
        int i14 = this.f268b + i12;
        if (i14 > this.f267a.length) {
            if (this.f270d == null) {
                o(i14);
            } else {
                do {
                    char[] cArr2 = this.f267a;
                    int length = cArr2.length;
                    int i15 = this.f268b;
                    int i16 = length - i15;
                    System.arraycopy(cArr, i11, cArr2, i15, i16);
                    this.f268b = this.f267a.length;
                    flush();
                    i12 -= i16;
                    i11 += i16;
                } while (i12 > this.f267a.length);
                i14 = i12;
            }
        }
        System.arraycopy(cArr, i11, this.f267a, this.f268b, i12);
        this.f268b = i14;
    }

    public void x(String str, boolean z10) {
        if (str == null) {
            write("null:");
            return;
        }
        if (this.f271e) {
            if (!this.f272f) {
                k0(str);
                return;
            } else {
                v0(str);
                write(58);
                return;
            }
        }
        if (this.f272f) {
            u0(str, ':');
            return;
        }
        int i11 = 0;
        boolean z11 = true;
        boolean z12 = str.length() == 0;
        while (true) {
            if (i11 >= str.length()) {
                z11 = z12;
                break;
            }
            char cCharAt = str.charAt(i11);
            if ((cCharAt < '@' && (this.f284r & (1 << cCharAt)) != 0) || cCharAt == '\\') {
                break;
            } else {
                i11++;
            }
        }
        if (z11) {
            u0(str, ':');
        } else {
            write(str);
            write(58);
        }
    }

    protected void x0(char[] cArr) {
        int i11 = 0;
        if (cArr == null) {
            int i12 = this.f268b + 4;
            if (i12 > this.f267a.length) {
                o(i12);
            }
            "null".getChars(0, 4, this.f267a, this.f268b);
            this.f268b = i12;
            return;
        }
        int length = cArr.length;
        int i13 = this.f268b + length + 2;
        if (i13 > this.f267a.length) {
            if (this.f270d != null) {
                write(39);
                while (i11 < cArr.length) {
                    char c11 = cArr[i11];
                    if (c11 <= '\r' || c11 == '\\' || c11 == '\'' || (c11 == '/' && q(SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        write(com.alibaba.fastjson.util.f.f18228j[c11]);
                    } else {
                        write(c11);
                    }
                    i11++;
                }
                write(39);
                return;
            }
            o(i13);
        }
        int i14 = this.f268b;
        int i15 = i14 + 1;
        int i16 = length + i15;
        char[] cArr2 = this.f267a;
        cArr2[i14] = '\'';
        System.arraycopy(cArr, 0, cArr2, i15, cArr.length);
        this.f268b = i13;
        int i17 = -1;
        char c12 = 0;
        for (int i18 = i15; i18 < i16; i18++) {
            char c13 = this.f267a[i18];
            if (c13 <= '\r' || c13 == '\\' || c13 == '\'' || (c13 == '/' && q(SerializerFeature.WriteSlashAsSpecial))) {
                i11++;
                i17 = i18;
                c12 = c13;
            }
        }
        int i19 = i13 + i11;
        if (i19 > this.f267a.length) {
            o(i19);
        }
        this.f268b = i19;
        if (i11 == 1) {
            char[] cArr3 = this.f267a;
            int i20 = i17 + 1;
            System.arraycopy(cArr3, i20, cArr3, i17 + 2, (i16 - i17) - 1);
            char[] cArr4 = this.f267a;
            cArr4[i17] = '\\';
            cArr4[i20] = com.alibaba.fastjson.util.f.f18228j[c12];
        } else if (i11 > 1) {
            char[] cArr5 = this.f267a;
            int i21 = i17 + 1;
            System.arraycopy(cArr5, i21, cArr5, i17 + 2, (i16 - i17) - 1);
            char[] cArr6 = this.f267a;
            cArr6[i17] = '\\';
            cArr6[i21] = com.alibaba.fastjson.util.f.f18228j[c12];
            int i22 = i16 + 1;
            for (int i23 = i17 - 1; i23 >= i15; i23--) {
                char c14 = this.f267a[i23];
                if (c14 <= '\r' || c14 == '\\' || c14 == '\'' || (c14 == '/' && q(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr7 = this.f267a;
                    int i24 = i23 + 1;
                    System.arraycopy(cArr7, i24, cArr7, i23 + 2, (i22 - i23) - 1);
                    char[] cArr8 = this.f267a;
                    cArr8[i23] = '\\';
                    cArr8[i24] = com.alibaba.fastjson.util.f.f18228j[c14];
                    i22++;
                }
            }
        }
        this.f267a[this.f268b - 1] = '\'';
    }

    public int y0(OutputStream outputStream, Charset charset) throws IOException {
        if (this.f270d != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        if (charset == com.alibaba.fastjson.util.f.f18220b) {
            return m(outputStream);
        }
        byte[] bytes = new String(this.f267a, 0, this.f268b).getBytes(charset);
        outputStream.write(bytes);
        return bytes.length;
    }
}
