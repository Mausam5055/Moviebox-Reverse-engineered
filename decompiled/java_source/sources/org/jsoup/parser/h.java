package org.jsoup.parser;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.transsion.gslb.Utils;
import java.util.Arrays;
import org.jsoup.nodes.Entities;

/* JADX INFO: loaded from: classes7.dex */
final class h {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final char[] f71858r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final int[] f71859s = {8364, 129, 8218, TTAdConstant.AD_ID_IS_NULL_CODE, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 157, 382, 376};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f71860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ParseErrorList f71861b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Token f71863d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    Token.i f71868i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f71874o;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TokeniserState f71862c = TokeniserState.Data;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f71864e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f71865f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private StringBuilder f71866g = new StringBuilder(1024);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    StringBuilder f71867h = new StringBuilder(1024);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Token.h f71869j = new Token.h();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    Token.g f71870k = new Token.g();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Token.c f71871l = new Token.c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Token.e f71872m = new Token.e();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    Token.d f71873n = new Token.d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int[] f71875p = new int[1];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int[] f71876q = new int[2];

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        f71858r = cArr;
        Arrays.sort(cArr);
    }

    h(a aVar, ParseErrorList parseErrorList) {
        this.f71860a = aVar;
        this.f71861b = parseErrorList;
    }

    private void c(String str) {
        if (this.f71861b.canAddError()) {
            this.f71861b.add(new c(this.f71860a.F(), "Invalid character reference: %s", str));
        }
    }

    void a(TokeniserState tokeniserState) {
        this.f71860a.a();
        this.f71862c = tokeniserState;
    }

    String b() {
        return this.f71874o;
    }

    int[] d(Character ch2, boolean z10) {
        int iIntValue;
        if (this.f71860a.r()) {
            return null;
        }
        if ((ch2 != null && ch2.charValue() == this.f71860a.q()) || this.f71860a.z(f71858r)) {
            return null;
        }
        int[] iArr = this.f71875p;
        this.f71860a.t();
        if (this.f71860a.u(Utils.SEPARATOR)) {
            boolean zV = this.f71860a.v("X");
            a aVar = this.f71860a;
            String strG = zV ? aVar.g() : aVar.f();
            if (strG.length() == 0) {
                c("numeric reference with no numerals");
                this.f71860a.H();
                return null;
            }
            if (!this.f71860a.u(";")) {
                c("missing semicolon");
            }
            try {
                iIntValue = Integer.valueOf(strG, zV ? 16 : 10).intValue();
            } catch (NumberFormatException unused) {
                iIntValue = -1;
            }
            if (iIntValue == -1 || ((iIntValue >= 55296 && iIntValue <= 57343) || iIntValue > 1114111)) {
                c("character outside of valid range");
                iArr[0] = 65533;
                return iArr;
            }
            if (iIntValue >= 128) {
                int[] iArr2 = f71859s;
                if (iIntValue < iArr2.length + 128) {
                    c("character is not a valid unicode code point");
                    iIntValue = iArr2[iIntValue - 128];
                }
            }
            iArr[0] = iIntValue;
            return iArr;
        }
        String strI = this.f71860a.i();
        boolean zW = this.f71860a.w(';');
        if (!Entities.f(strI) && (!Entities.g(strI) || !zW)) {
            this.f71860a.H();
            if (zW) {
                c(String.format("invalid named referenece '%s'", strI));
            }
            return null;
        }
        if (z10 && (this.f71860a.C() || this.f71860a.A() || this.f71860a.y('=', '-', '_'))) {
            this.f71860a.H();
            return null;
        }
        if (!this.f71860a.u(";")) {
            c("missing semicolon");
        }
        int iD = Entities.d(strI, this.f71876q);
        if (iD == 1) {
            iArr[0] = this.f71876q[0];
            return iArr;
        }
        if (iD == 2) {
            return this.f71876q;
        }
        org.jsoup.helper.d.a("Unexpected characters returned for " + strI);
        return this.f71876q;
    }

    void e() {
        this.f71873n.m();
    }

    void f() {
        this.f71872m.m();
    }

    Token.i g(boolean z10) {
        Token.i iVarM = z10 ? this.f71869j.m() : this.f71870k.m();
        this.f71868i = iVarM;
        return iVarM;
    }

    void h() {
        Token.n(this.f71867h);
    }

    void i(char c11) {
        j(String.valueOf(c11));
    }

    void j(String str) {
        if (this.f71865f == null) {
            this.f71865f = str;
            return;
        }
        if (this.f71866g.length() == 0) {
            this.f71866g.append(this.f71865f);
        }
        this.f71866g.append(str);
    }

    void k(Token token) {
        org.jsoup.helper.d.c(this.f71864e, "There is an unread token pending!");
        this.f71863d = token;
        this.f71864e = true;
        Token.TokenType tokenType = token.f71787a;
        if (tokenType == Token.TokenType.StartTag) {
            this.f71874o = ((Token.h) token).f71796b;
        } else {
            if (tokenType != Token.TokenType.EndTag || ((Token.g) token).f71804j == null) {
                return;
            }
            q("Attributes incorrectly present on end tag");
        }
    }

    void l(int[] iArr) {
        j(new String(iArr, 0, iArr.length));
    }

    void m() {
        k(this.f71873n);
    }

    void n() {
        k(this.f71872m);
    }

    void o() {
        this.f71868i.x();
        k(this.f71868i);
    }

    void p(TokeniserState tokeniserState) {
        if (this.f71861b.canAddError()) {
            this.f71861b.add(new c(this.f71860a.F(), "Unexpectedly reached end of file (EOF) in input state [%s]", tokeniserState));
        }
    }

    void q(String str) {
        if (this.f71861b.canAddError()) {
            this.f71861b.add(new c(this.f71860a.F(), str));
        }
    }

    void r(TokeniserState tokeniserState) {
        if (this.f71861b.canAddError()) {
            this.f71861b.add(new c(this.f71860a.F(), "Unexpected character '%s' in input state [%s]", Character.valueOf(this.f71860a.q()), tokeniserState));
        }
    }

    boolean s() {
        return this.f71874o != null && this.f71868i.A().equalsIgnoreCase(this.f71874o);
    }

    Token t() {
        while (!this.f71864e) {
            this.f71862c.read(this, this.f71860a);
        }
        if (this.f71866g.length() > 0) {
            String string = this.f71866g.toString();
            StringBuilder sb2 = this.f71866g;
            sb2.delete(0, sb2.length());
            this.f71865f = null;
            return this.f71871l.p(string);
        }
        String str = this.f71865f;
        if (str == null) {
            this.f71864e = false;
            return this.f71863d;
        }
        Token.c cVarP = this.f71871l.p(str);
        this.f71865f = null;
        return cVarP;
    }

    void u(TokeniserState tokeniserState) {
        this.f71862c = tokeniserState;
    }
}
