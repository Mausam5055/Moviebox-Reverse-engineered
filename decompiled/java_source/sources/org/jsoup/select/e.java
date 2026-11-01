package org.jsoup.select;

import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.gslb.Utils;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.parser.g;

/* JADX INFO: loaded from: classes7.dex */
public class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f71911d = {",", ">", "+", "~", " "};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f71912e = {UrlUtils.EQUAL_MARK, "!=", "^=", "$=", "*=", "~="};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f71913f = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f71914g = Pattern.compile("([+-])?(\\d+)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f71915a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f71916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f71917c = new ArrayList();

    private e(String str) {
        this.f71916b = str;
        this.f71915a = new g(str);
    }

    private void a() {
        this.f71917c.add(new c.a());
    }

    private void b() {
        g gVar = new g(this.f71915a.a('[', ']'));
        String strH = gVar.h(f71912e);
        org.jsoup.helper.d.h(strH);
        gVar.i();
        if (gVar.j()) {
            if (strH.startsWith("^")) {
                this.f71917c.add(new c.d(strH.substring(1)));
                return;
            } else {
                this.f71917c.add(new c.b(strH));
                return;
            }
        }
        if (gVar.k(UrlUtils.EQUAL_MARK)) {
            this.f71917c.add(new c.e(strH, gVar.q()));
            return;
        }
        if (gVar.k("!=")) {
            this.f71917c.add(new c.i(strH, gVar.q()));
            return;
        }
        if (gVar.k("^=")) {
            this.f71917c.add(new c.j(strH, gVar.q()));
            return;
        }
        if (gVar.k("$=")) {
            this.f71917c.add(new c.g(strH, gVar.q()));
        } else if (gVar.k("*=")) {
            this.f71917c.add(new c.f(strH, gVar.q()));
        } else {
            if (!gVar.k("~=")) {
                throw new Selector.SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.f71916b, gVar.q());
            }
            this.f71917c.add(new c.h(strH, Pattern.compile(gVar.q())));
        }
    }

    private void c() {
        String strE = this.f71915a.e();
        org.jsoup.helper.d.h(strE);
        this.f71917c.add(new c.k(strE.trim()));
    }

    private void d() {
        String strE = this.f71915a.e();
        org.jsoup.helper.d.h(strE);
        this.f71917c.add(new c.p(strE));
    }

    private void e() {
        String strF = this.f71915a.f();
        org.jsoup.helper.d.h(strF);
        if (strF.startsWith("*|")) {
            this.f71917c.add(new b.C0871b(new c.j0(e10.b.b(strF)), new c.k0(e10.b.b(strF.replace("*|", ":")))));
            return;
        }
        if (strF.contains("|")) {
            strF = strF.replace("|", ":");
        }
        this.f71917c.add(new c.j0(strF.trim()));
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0048  */
    /* JADX WARN: Code duplicated, block: B:13:0x0059  */
    /* JADX WARN: Code duplicated, block: B:15:0x005d  */
    /* JADX WARN: Code duplicated, block: B:16:0x006e  */
    /* JADX WARN: Code duplicated, block: B:18:0x0072  */
    /* JADX WARN: Code duplicated, block: B:19:0x0083  */
    /* JADX WARN: Code duplicated, block: B:21:0x0087  */
    /* JADX WARN: Code duplicated, block: B:22:0x0098 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x009a  */
    /* JADX WARN: Code duplicated, block: B:25:0x009e  */
    /* JADX WARN: Code duplicated, block: B:26:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c0  */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00c0, please report this as an issue */
    private void f(char c11) {
        c aVar;
        c cVar;
        boolean z10;
        b.C0871b c0871b;
        c cVar2;
        b.a aVar2;
        b.a aVar3;
        b.a aVar4;
        c cVar3;
        b.a aVar5;
        this.f71915a.i();
        c cVarT = t(h());
        if (this.f71917c.size() == 1) {
            aVar = (c) this.f71917c.get(0);
            if ((aVar instanceof b.C0871b) && c11 != ',') {
                z10 = true;
                cVar = aVar;
                aVar = ((b.C0871b) aVar).c();
            }
            this.f71917c.clear();
            if (c11 == '>') {
                aVar5 = new b.a(cVarT, new f.b(aVar));
            } else if (c11 == ' ') {
                aVar4 = new b.a(cVarT, new f.e(aVar));
            } else if (c11 == '+') {
                aVar3 = new b.a(cVarT, new f.c(aVar));
            } else if (c11 == '~') {
                aVar2 = new b.a(cVarT, new f.C0873f(aVar));
            } else {
                if (c11 == ',') {
                    throw new Selector.SelectorParseException("Unknown combinator: " + c11, new Object[0]);
                }
                if (aVar instanceof b.C0871b) {
                    b.C0871b c0871b2 = (b.C0871b) aVar;
                    c0871b2.e(cVarT);
                    cVar2 = c0871b2;
                } else {
                    c0871b = new b.C0871b();
                    c0871b.e(aVar);
                    c0871b.e(cVarT);
                }
            }
            if (z10) {
                cVar2 = c0871b;
                cVar2 = aVar2;
                cVar2 = aVar3;
                cVar2 = aVar4;
                cVar2 = aVar5;
                ((b.C0871b) cVar).b(cVar2);
                cVar3 = cVar;
            } else {
                cVar2 = c0871b;
                cVar2 = aVar2;
                cVar2 = aVar3;
                cVar2 = aVar4;
                cVar2 = aVar5;
                cVar3 = cVar2;
            }
            this.f71917c.add(cVar3);
        }
        aVar = new b.a(this.f71917c);
        cVar = aVar;
        z10 = false;
        this.f71917c.clear();
        if (c11 == '>') {
            aVar5 = new b.a(cVarT, new f.b(aVar));
        } else if (c11 == ' ') {
            aVar4 = new b.a(cVarT, new f.e(aVar));
        } else if (c11 == '+') {
            aVar3 = new b.a(cVarT, new f.c(aVar));
        } else if (c11 == '~') {
            aVar2 = new b.a(cVarT, new f.C0873f(aVar));
        } else {
            if (c11 == ',') {
                throw new Selector.SelectorParseException("Unknown combinator: " + c11, new Object[0]);
            }
            if (aVar instanceof b.C0871b) {
                b.C0871b c0871b3 = (b.C0871b) aVar;
                c0871b3.e(cVarT);
                cVar2 = c0871b3;
            } else {
                c0871b = new b.C0871b();
                c0871b.e(aVar);
                c0871b.e(cVarT);
            }
        }
        if (z10) {
            cVar2 = c0871b;
            cVar2 = aVar2;
            cVar2 = aVar3;
            cVar2 = aVar4;
            cVar2 = aVar5;
            ((b.C0871b) cVar).b(cVar2);
            cVar3 = cVar;
        } else {
            cVar2 = c0871b;
            cVar2 = aVar2;
            cVar2 = aVar3;
            cVar2 = aVar4;
            cVar2 = aVar5;
            cVar3 = cVar2;
        }
        this.f71917c.add(cVar3);
    }

    private int g() {
        String strTrim = this.f71915a.b(")").trim();
        org.jsoup.helper.d.e(org.jsoup.helper.c.g(strTrim), "Index must be numeric");
        return Integer.parseInt(strTrim);
    }

    private String h() {
        StringBuilder sb2 = new StringBuilder();
        while (!this.f71915a.j()) {
            if (this.f71915a.l("(")) {
                sb2.append("(");
                sb2.append(this.f71915a.a('(', ')'));
                sb2.append(")");
            } else if (this.f71915a.l("[")) {
                sb2.append("[");
                sb2.append(this.f71915a.a('[', ']'));
                sb2.append("]");
            } else {
                if (this.f71915a.n(f71911d)) {
                    break;
                }
                sb2.append(this.f71915a.c());
            }
        }
        return sb2.toString();
    }

    private void i(boolean z10) {
        this.f71915a.d(z10 ? ":containsOwn" : ":contains");
        String strS = g.s(this.f71915a.a('(', ')'));
        org.jsoup.helper.d.i(strS, ":contains(text) query must not be empty");
        if (z10) {
            this.f71917c.add(new c.m(strS));
        } else {
            this.f71917c.add(new c.n(strS));
        }
    }

    private void j() {
        this.f71915a.d(":containsData");
        String strS = g.s(this.f71915a.a('(', ')'));
        org.jsoup.helper.d.i(strS, ":containsData(text) query must not be empty");
        this.f71917c.add(new c.l(strS));
    }

    private void k(boolean z10, boolean z11) {
        int i11;
        int i12 = 0;
        String strB = e10.b.b(this.f71915a.b(")"));
        Matcher matcher = f71913f.matcher(strB);
        Matcher matcher2 = f71914g.matcher(strB);
        if ("odd".equals(strB)) {
            i12 = 2;
            i11 = 1;
        } else if ("even".equals(strB)) {
            i11 = 0;
            i12 = 2;
        } else if (matcher.matches()) {
            int i13 = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : 1;
            i11 = matcher.group(4) != null ? Integer.parseInt(matcher.group(4).replaceFirst("^\\+", "")) : 0;
            i12 = i13;
        } else {
            if (!matcher2.matches()) {
                throw new Selector.SelectorParseException("Could not parse nth-index '%s': unexpected format", strB);
            }
            i11 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
        }
        if (z11) {
            if (z10) {
                this.f71917c.add(new c.b0(i12, i11));
                return;
            } else {
                this.f71917c.add(new c.c0(i12, i11));
                return;
            }
        }
        if (z10) {
            this.f71917c.add(new c.a0(i12, i11));
        } else {
            this.f71917c.add(new c.z(i12, i11));
        }
    }

    private void l() {
        if (this.f71915a.k(Utils.SEPARATOR)) {
            d();
            return;
        }
        if (this.f71915a.k(".")) {
            c();
            return;
        }
        if (this.f71915a.p() || this.f71915a.l("*|")) {
            e();
            return;
        }
        if (this.f71915a.l("[")) {
            b();
            return;
        }
        if (this.f71915a.k("*")) {
            a();
            return;
        }
        if (this.f71915a.k(":lt(")) {
            p();
            return;
        }
        if (this.f71915a.k(":gt(")) {
            o();
            return;
        }
        if (this.f71915a.k(":eq(")) {
            n();
            return;
        }
        if (this.f71915a.l(":has(")) {
            m();
            return;
        }
        if (this.f71915a.l(":contains(")) {
            i(false);
            return;
        }
        if (this.f71915a.l(":containsOwn(")) {
            i(true);
            return;
        }
        if (this.f71915a.l(":containsData(")) {
            j();
            return;
        }
        if (this.f71915a.l(":matches(")) {
            q(false);
            return;
        }
        if (this.f71915a.l(":matchesOwn(")) {
            q(true);
            return;
        }
        if (this.f71915a.l(":not(")) {
            r();
            return;
        }
        if (this.f71915a.k(":nth-child(")) {
            k(false, false);
            return;
        }
        if (this.f71915a.k(":nth-last-child(")) {
            k(true, false);
            return;
        }
        if (this.f71915a.k(":nth-of-type(")) {
            k(false, true);
            return;
        }
        if (this.f71915a.k(":nth-last-of-type(")) {
            k(true, true);
            return;
        }
        if (this.f71915a.k(":first-child")) {
            this.f71917c.add(new c.v());
            return;
        }
        if (this.f71915a.k(":last-child")) {
            this.f71917c.add(new c.x());
            return;
        }
        if (this.f71915a.k(":first-of-type")) {
            this.f71917c.add(new c.w());
            return;
        }
        if (this.f71915a.k(":last-of-type")) {
            this.f71917c.add(new c.y());
            return;
        }
        if (this.f71915a.k(":only-child")) {
            this.f71917c.add(new c.d0());
            return;
        }
        if (this.f71915a.k(":only-of-type")) {
            this.f71917c.add(new c.e0());
            return;
        }
        if (this.f71915a.k(":empty")) {
            this.f71917c.add(new c.u());
        } else if (this.f71915a.k(":root")) {
            this.f71917c.add(new c.f0());
        } else {
            if (!this.f71915a.k(":matchText")) {
                throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.f71916b, this.f71915a.q());
            }
            this.f71917c.add(new c.g0());
        }
    }

    private void m() {
        this.f71915a.d(":has");
        String strA = this.f71915a.a('(', ')');
        org.jsoup.helper.d.i(strA, ":has(el) subselect must not be empty");
        this.f71917c.add(new f.a(t(strA)));
    }

    private void n() {
        this.f71917c.add(new c.q(g()));
    }

    private void o() {
        this.f71917c.add(new c.s(g()));
    }

    private void p() {
        this.f71917c.add(new c.t(g()));
    }

    private void q(boolean z10) {
        this.f71915a.d(z10 ? ":matchesOwn" : ":matches");
        String strA = this.f71915a.a('(', ')');
        org.jsoup.helper.d.i(strA, ":matches(regex) query must not be empty");
        if (z10) {
            this.f71917c.add(new c.i0(Pattern.compile(strA)));
        } else {
            this.f71917c.add(new c.h0(Pattern.compile(strA)));
        }
    }

    private void r() {
        this.f71915a.d(":not");
        String strA = this.f71915a.a('(', ')');
        org.jsoup.helper.d.i(strA, ":not(selector) subselect must not be empty");
        this.f71917c.add(new f.d(t(strA)));
    }

    public static c t(String str) {
        try {
            return new e(str).s();
        } catch (IllegalArgumentException e11) {
            throw new Selector.SelectorParseException(e11.getMessage(), new Object[0]);
        }
    }

    c s() {
        this.f71915a.i();
        if (this.f71915a.n(f71911d)) {
            this.f71917c.add(new f.g());
            f(this.f71915a.c());
        } else {
            l();
        }
        while (!this.f71915a.j()) {
            boolean zI = this.f71915a.i();
            if (this.f71915a.n(f71911d)) {
                f(this.f71915a.c());
            } else if (zI) {
                f(' ');
            } else {
                l();
            }
        }
        return this.f71917c.size() == 1 ? (c) this.f71917c.get(0) : new b.a(this.f71917c);
    }
}
