package org.jsoup.parser;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import java.util.Locale;
import org.jsoup.UncheckedIOException;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final char[] f71805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Reader f71806b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f71807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f71808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f71809e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f71810f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f71811g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String[] f71812h;

    public a(Reader reader) {
        this(reader, 32768);
    }

    public a(Reader reader, int i11) {
        this.f71812h = new String[512];
        org.jsoup.helper.d.j(reader);
        org.jsoup.helper.d.d(reader.markSupported());
        this.f71806b = reader;
        this.f71805a = new char[i11 > 32768 ? 32768 : i11];
        b();
    }

    public a(String str) {
        this(new StringReader(str), str.length());
    }

    static boolean G(char[] cArr, int i11, int i12, String str) {
        if (i12 != str.length()) {
            return false;
        }
        int i13 = 0;
        while (true) {
            int i14 = i12 - 1;
            if (i12 == 0) {
                return true;
            }
            int i15 = i11 + 1;
            int i16 = i13 + 1;
            if (cArr[i11] != str.charAt(i13)) {
                return false;
            }
            i11 = i15;
            i12 = i14;
            i13 = i16;
        }
    }

    private void b() {
        int i11 = this.f71809e;
        if (i11 < this.f71808d) {
            return;
        }
        try {
            this.f71806b.skip(i11);
            this.f71806b.mark(32768);
            int i12 = this.f71806b.read(this.f71805a);
            this.f71806b.reset();
            if (i12 != -1) {
                this.f71807c = i12;
                this.f71810f += this.f71809e;
                this.f71809e = 0;
                this.f71811g = 0;
                if (i12 > 24576) {
                    i12 = 24576;
                }
                this.f71808d = i12;
            }
        } catch (IOException e11) {
            throw new UncheckedIOException(e11);
        }
    }

    private static String c(char[] cArr, String[] strArr, int i11, int i12) {
        if (i12 > 12) {
            return new String(cArr, i11, i12);
        }
        if (i12 < 1) {
            return "";
        }
        int i13 = 0;
        int i14 = i11;
        int i15 = 0;
        while (i13 < i12) {
            i15 = (i15 * 31) + cArr[i14];
            i13++;
            i14++;
        }
        int length = i15 & (strArr.length - 1);
        String str = strArr[length];
        if (str == null) {
            String str2 = new String(cArr, i11, i12);
            strArr[length] = str2;
            return str2;
        }
        if (G(cArr, i11, i12, str)) {
            return str;
        }
        String str3 = new String(cArr, i11, i12);
        strArr[length] = str3;
        return str3;
    }

    private boolean s() {
        return this.f71809e >= this.f71807c;
    }

    boolean A() {
        char c11;
        return !r() && (c11 = this.f71805a[this.f71809e]) >= '0' && c11 <= '9';
    }

    boolean B(String str) {
        b();
        int length = str.length();
        if (length > this.f71807c - this.f71809e) {
            return false;
        }
        for (int i11 = 0; i11 < length; i11++) {
            if (Character.toUpperCase(str.charAt(i11)) != Character.toUpperCase(this.f71805a[this.f71809e + i11])) {
                return false;
            }
        }
        return true;
    }

    boolean C() {
        if (r()) {
            return false;
        }
        char c11 = this.f71805a[this.f71809e];
        return (c11 >= 'A' && c11 <= 'Z') || (c11 >= 'a' && c11 <= 'z') || Character.isLetter(c11);
    }

    int D(char c11) {
        b();
        for (int i11 = this.f71809e; i11 < this.f71807c; i11++) {
            if (c11 == this.f71805a[i11]) {
                return i11 - this.f71809e;
            }
        }
        return -1;
    }

    int E(CharSequence charSequence) {
        b();
        char cCharAt = charSequence.charAt(0);
        int i11 = this.f71809e;
        while (i11 < this.f71807c) {
            if (cCharAt != this.f71805a[i11]) {
                do {
                    i11++;
                    if (i11 >= this.f71807c) {
                        break;
                    }
                } while (cCharAt != this.f71805a[i11]);
            }
            int i12 = i11 + 1;
            int length = (charSequence.length() + i12) - 1;
            int i13 = this.f71807c;
            if (i11 < i13 && length <= i13) {
                int i14 = i12;
                for (int i15 = 1; i14 < length && charSequence.charAt(i15) == this.f71805a[i14]; i15++) {
                    i14++;
                }
                if (i14 == length) {
                    return i11 - this.f71809e;
                }
            }
            i11 = i12;
        }
        return -1;
    }

    public int F() {
        return this.f71810f + this.f71809e;
    }

    void H() {
        this.f71809e = this.f71811g;
    }

    void I() {
        this.f71809e--;
    }

    public void a() {
        this.f71809e++;
    }

    char d() {
        b();
        char c11 = s() ? (char) 65535 : this.f71805a[this.f71809e];
        this.f71809e++;
        return c11;
    }

    String e() {
        int i11;
        char c11;
        b();
        int i12 = this.f71809e;
        int i13 = this.f71807c;
        char[] cArr = this.f71805a;
        while (true) {
            i11 = this.f71809e;
            if (i11 >= i13 || (c11 = cArr[i11]) == '&' || c11 == '<' || c11 == 0) {
                break;
            }
            this.f71809e = i11 + 1;
        }
        return i11 > i12 ? c(this.f71805a, this.f71812h, i12, i11 - i12) : "";
    }

    String f() {
        int i11;
        char c11;
        b();
        int i12 = this.f71809e;
        while (true) {
            i11 = this.f71809e;
            if (i11 >= this.f71807c || (c11 = this.f71805a[i11]) < '0' || c11 > '9') {
                break;
            }
            this.f71809e = i11 + 1;
        }
        return c(this.f71805a, this.f71812h, i12, i11 - i12);
    }

    String g() {
        int i11;
        char c11;
        b();
        int i12 = this.f71809e;
        while (true) {
            i11 = this.f71809e;
            if (i11 >= this.f71807c || (((c11 = this.f71805a[i11]) < '0' || c11 > '9') && ((c11 < 'A' || c11 > 'F') && (c11 < 'a' || c11 > 'f')))) {
                break;
            }
            this.f71809e = i11 + 1;
        }
        return c(this.f71805a, this.f71812h, i12, i11 - i12);
    }

    String h() {
        char c11;
        b();
        int i11 = this.f71809e;
        while (true) {
            int i12 = this.f71809e;
            if (i12 >= this.f71807c || (((c11 = this.f71805a[i12]) < 'A' || c11 > 'Z') && ((c11 < 'a' || c11 > 'z') && !Character.isLetter(c11)))) {
                break;
            }
            this.f71809e++;
        }
        return c(this.f71805a, this.f71812h, i11, this.f71809e - i11);
    }

    String i() {
        char c11;
        b();
        int i11 = this.f71809e;
        while (true) {
            int i12 = this.f71809e;
            if (i12 >= this.f71807c || (((c11 = this.f71805a[i12]) < 'A' || c11 > 'Z') && ((c11 < 'a' || c11 > 'z') && !Character.isLetter(c11)))) {
                break;
            }
            this.f71809e++;
        }
        while (!s()) {
            char[] cArr = this.f71805a;
            int i13 = this.f71809e;
            char c12 = cArr[i13];
            if (c12 < '0' || c12 > '9') {
                break;
            }
            this.f71809e = i13 + 1;
        }
        return c(this.f71805a, this.f71812h, i11, this.f71809e - i11);
    }

    String j() {
        int i11;
        char c11;
        b();
        int i12 = this.f71809e;
        int i13 = this.f71807c;
        char[] cArr = this.f71805a;
        while (true) {
            i11 = this.f71809e;
            if (i11 >= i13 || (c11 = cArr[i11]) == '\t' || c11 == '\n' || c11 == '\r' || c11 == '\f' || c11 == ' ' || c11 == '/' || c11 == '>' || c11 == 0) {
                break;
            }
            this.f71809e = i11 + 1;
        }
        return i11 > i12 ? c(this.f71805a, this.f71812h, i12, i11 - i12) : "";
    }

    public String k(char c11) {
        int iD = D(c11);
        if (iD == -1) {
            return o();
        }
        String strC = c(this.f71805a, this.f71812h, this.f71809e, iD);
        this.f71809e += iD;
        return strC;
    }

    String l(String str) {
        int iE = E(str);
        if (iE == -1) {
            return o();
        }
        String strC = c(this.f71805a, this.f71812h, this.f71809e, iE);
        this.f71809e += iE;
        return strC;
    }

    public String m(char... cArr) {
        b();
        int i11 = this.f71809e;
        int i12 = this.f71807c;
        char[] cArr2 = this.f71805a;
        loop0: while (this.f71809e < i12) {
            for (char c11 : cArr) {
                if (cArr2[this.f71809e] == c11) {
                    break loop0;
                }
            }
            this.f71809e++;
        }
        int i13 = this.f71809e;
        return i13 > i11 ? c(this.f71805a, this.f71812h, i11, i13 - i11) : "";
    }

    String n(char... cArr) {
        b();
        int i11 = this.f71809e;
        int i12 = this.f71807c;
        char[] cArr2 = this.f71805a;
        while (true) {
            int i13 = this.f71809e;
            if (i13 >= i12 || Arrays.binarySearch(cArr, cArr2[i13]) >= 0) {
                break;
            }
            this.f71809e++;
        }
        int i14 = this.f71809e;
        return i14 > i11 ? c(this.f71805a, this.f71812h, i11, i14 - i11) : "";
    }

    String o() {
        b();
        char[] cArr = this.f71805a;
        String[] strArr = this.f71812h;
        int i11 = this.f71809e;
        String strC = c(cArr, strArr, i11, this.f71807c - i11);
        this.f71809e = this.f71807c;
        return strC;
    }

    boolean p(String str) {
        Locale locale = Locale.ENGLISH;
        return E(str.toLowerCase(locale)) > -1 || E(str.toUpperCase(locale)) > -1;
    }

    public char q() {
        b();
        if (s()) {
            return (char) 65535;
        }
        return this.f71805a[this.f71809e];
    }

    public boolean r() {
        b();
        return this.f71809e >= this.f71807c;
    }

    void t() {
        this.f71811g = this.f71809e;
    }

    public String toString() {
        char[] cArr = this.f71805a;
        int i11 = this.f71809e;
        return new String(cArr, i11, this.f71807c - i11);
    }

    boolean u(String str) {
        b();
        if (!x(str)) {
            return false;
        }
        this.f71809e += str.length();
        return true;
    }

    boolean v(String str) {
        if (!B(str)) {
            return false;
        }
        this.f71809e += str.length();
        return true;
    }

    boolean w(char c11) {
        return !r() && this.f71805a[this.f71809e] == c11;
    }

    boolean x(String str) {
        b();
        int length = str.length();
        if (length > this.f71807c - this.f71809e) {
            return false;
        }
        for (int i11 = 0; i11 < length; i11++) {
            if (str.charAt(i11) != this.f71805a[this.f71809e + i11]) {
                return false;
            }
        }
        return true;
    }

    boolean y(char... cArr) {
        if (r()) {
            return false;
        }
        b();
        char c11 = this.f71805a[this.f71809e];
        for (char c12 : cArr) {
            if (c12 == c11) {
                return true;
            }
        }
        return false;
    }

    boolean z(char[] cArr) {
        b();
        return !r() && Arrays.binarySearch(cArr, this.f71805a[this.f71809e]) >= 0;
    }
}
