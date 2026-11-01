package org.jsoup.select;

import java.util.Iterator;
import java.util.regex.Pattern;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c {

    public static final class a extends c {
        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return true;
        }

        public String toString() {
            return "*";
        }
    }

    public static final class a0 extends o {
        public a0(int i11, int i12) {
            super(i11, i12);
        }

        @Override // org.jsoup.select.c.o
        protected int b(Element element, Element element2) {
            return element2.I().o0().size() - element2.v0();
        }

        @Override // org.jsoup.select.c.o
        protected String c() {
            return "nth-last-child";
        }
    }

    public static final class b extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f71893a;

        public b(String str) {
            this.f71893a = str;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element2.w(this.f71893a);
        }

        public String toString() {
            return String.format("[%s]", this.f71893a);
        }
    }

    public static class b0 extends o {
        public b0(int i11, int i12) {
            super(i11, i12);
        }

        @Override // org.jsoup.select.c.o
        protected int b(Element element, Element element2) {
            Elements elementsO0 = element2.I().o0();
            int i11 = 0;
            for (int iV0 = element2.v0(); iV0 < elementsO0.size(); iV0++) {
                if (elementsO0.get(iV0).T0().equals(element2.T0())) {
                    i11++;
                }
            }
            return i11;
        }

        @Override // org.jsoup.select.c.o
        protected String c() {
            return "nth-last-of-type";
        }
    }

    /* JADX INFO: renamed from: org.jsoup.select.c$c, reason: collision with other inner class name */
    public static abstract class AbstractC0872c extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f71894a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f71895b;

        public AbstractC0872c(String str, String str2) {
            org.jsoup.helper.d.h(str);
            org.jsoup.helper.d.h(str2);
            this.f71894a = e10.b.b(str);
            if ((str2.startsWith("\"") && str2.endsWith("\"")) || (str2.startsWith("'") && str2.endsWith("'"))) {
                str2 = str2.substring(1, str2.length() - 1);
            }
            this.f71895b = e10.b.b(str2);
        }
    }

    public static class c0 extends o {
        public c0(int i11, int i12) {
            super(i11, i12);
        }

        @Override // org.jsoup.select.c.o
        protected int b(Element element, Element element2) {
            int i11 = 0;
            for (Element element3 : element2.I().o0()) {
                if (element3.T0().equals(element2.T0())) {
                    i11++;
                }
                if (element3 == element2) {
                    break;
                }
            }
            return i11;
        }

        @Override // org.jsoup.select.c.o
        protected String c() {
            return "nth-of-type";
        }
    }

    public static final class d extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f71896a;

        public d(String str) {
            org.jsoup.helper.d.h(str);
            this.f71896a = e10.b.a(str);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            Iterator it = element2.i().f().iterator();
            while (it.hasNext()) {
                if (e10.b.a(((org.jsoup.nodes.a) it.next()).getKey()).startsWith(this.f71896a)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("[^%s]", this.f71896a);
        }
    }

    public static final class d0 extends c {
        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            Element elementI = element2.I();
            return (elementI == null || (elementI instanceof Document) || element2.S0().size() != 0) ? false : true;
        }

        public String toString() {
            return ":only-child";
        }
    }

    public static final class e extends AbstractC0872c {
        public e(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element2.w(this.f71894a) && this.f71895b.equalsIgnoreCase(element2.f(this.f71894a).trim());
        }

        public String toString() {
            return String.format("[%s=%s]", this.f71894a, this.f71895b);
        }
    }

    public static final class e0 extends c {
        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            Element elementI = element2.I();
            if (elementI == null || (elementI instanceof Document)) {
                return false;
            }
            Iterator<Element> it = elementI.o0().iterator();
            int i11 = 0;
            while (it.hasNext()) {
                if (it.next().T0().equals(element2.T0())) {
                    i11++;
                }
            }
            return i11 == 1;
        }

        public String toString() {
            return ":only-of-type";
        }
    }

    public static final class f extends AbstractC0872c {
        public f(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element2.w(this.f71894a) && e10.b.a(element2.f(this.f71894a)).contains(this.f71895b);
        }

        public String toString() {
            return String.format("[%s*=%s]", this.f71894a, this.f71895b);
        }
    }

    public static final class f0 extends c {
        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            if (element instanceof Document) {
                element = element.m0(0);
            }
            return element2 == element;
        }

        public String toString() {
            return ":root";
        }
    }

    public static final class g extends AbstractC0872c {
        public g(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element2.w(this.f71894a) && e10.b.a(element2.f(this.f71894a)).endsWith(this.f71895b);
        }

        public String toString() {
            return String.format("[%s$=%s]", this.f71894a, this.f71895b);
        }
    }

    public static final class g0 extends c {
        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            if (element2 instanceof org.jsoup.nodes.k) {
                return true;
            }
            for (org.jsoup.nodes.j jVar : element2.Y0()) {
                org.jsoup.nodes.k kVar = new org.jsoup.nodes.k(org.jsoup.parser.f.k(element2.U0()), element2.j(), element2.i());
                jVar.Q(kVar);
                kVar.g0(jVar);
            }
            return false;
        }

        public String toString() {
            return ":matchText";
        }
    }

    public static final class h extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f71897a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Pattern f71898b;

        public h(String str, Pattern pattern) {
            this.f71897a = e10.b.b(str);
            this.f71898b = pattern;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element2.w(this.f71897a) && this.f71898b.matcher(element2.f(this.f71897a)).find();
        }

        public String toString() {
            return String.format("[%s~=%s]", this.f71897a, this.f71898b.toString());
        }
    }

    public static final class h0 extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Pattern f71899a;

        public h0(Pattern pattern) {
            this.f71899a = pattern;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return this.f71899a.matcher(element2.W0()).find();
        }

        public String toString() {
            return String.format(":matches(%s)", this.f71899a);
        }
    }

    public static final class i extends AbstractC0872c {
        public i(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return !this.f71895b.equalsIgnoreCase(element2.f(this.f71894a));
        }

        public String toString() {
            return String.format("[%s!=%s]", this.f71894a, this.f71895b);
        }
    }

    public static final class i0 extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Pattern f71900a;

        public i0(Pattern pattern) {
            this.f71900a = pattern;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return this.f71900a.matcher(element2.J0()).find();
        }

        public String toString() {
            return String.format(":matchesOwn(%s)", this.f71900a);
        }
    }

    public static final class j extends AbstractC0872c {
        public j(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element2.w(this.f71894a) && e10.b.a(element2.f(this.f71894a)).startsWith(this.f71895b);
        }

        public String toString() {
            return String.format("[%s^=%s]", this.f71894a, this.f71895b);
        }
    }

    public static final class j0 extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f71901a;

        public j0(String str) {
            this.f71901a = str;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element2.U0().equalsIgnoreCase(this.f71901a);
        }

        public String toString() {
            return String.format("%s", this.f71901a);
        }
    }

    public static final class k extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f71902a;

        public k(String str) {
            this.f71902a = str;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element2.z0(this.f71902a);
        }

        public String toString() {
            return String.format(".%s", this.f71902a);
        }
    }

    public static final class k0 extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f71903a;

        public k0(String str) {
            this.f71903a = str;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element2.U0().endsWith(this.f71903a);
        }

        public String toString() {
            return String.format("%s", this.f71903a);
        }
    }

    public static final class l extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f71904a;

        public l(String str) {
            this.f71904a = e10.b.a(str);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return e10.b.a(element2.t0()).contains(this.f71904a);
        }

        public String toString() {
            return String.format(":containsData(%s)", this.f71904a);
        }
    }

    public static final class m extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f71905a;

        public m(String str) {
            this.f71905a = e10.b.a(str);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return e10.b.a(element2.J0()).contains(this.f71905a);
        }

        public String toString() {
            return String.format(":containsOwn(%s)", this.f71905a);
        }
    }

    public static final class n extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f71906a;

        public n(String str) {
            this.f71906a = e10.b.a(str);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return e10.b.a(element2.W0()).contains(this.f71906a);
        }

        public String toString() {
            return String.format(":contains(%s)", this.f71906a);
        }
    }

    public static abstract class o extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final int f71907a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected final int f71908b;

        public o(int i11, int i12) {
            this.f71907a = i11;
            this.f71908b = i12;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            Element elementI = element2.I();
            if (elementI == null || (elementI instanceof Document)) {
                return false;
            }
            int iB = b(element, element2);
            int i11 = this.f71907a;
            if (i11 == 0) {
                return iB == this.f71908b;
            }
            int i12 = this.f71908b;
            return (iB - i12) * i11 >= 0 && (iB - i12) % i11 == 0;
        }

        protected abstract int b(Element element, Element element2);

        protected abstract String c();

        public String toString() {
            if (this.f71907a == 0) {
                return String.format(":%s(%d)", c(), Integer.valueOf(this.f71908b));
            }
            return this.f71908b == 0 ? String.format(":%s(%dn)", c(), Integer.valueOf(this.f71907a)) : String.format(":%s(%dn%+d)", c(), Integer.valueOf(this.f71907a), Integer.valueOf(this.f71908b));
        }
    }

    public static final class p extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f71909a;

        public p(String str) {
            this.f71909a = str;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return this.f71909a.equals(element2.E0());
        }

        public String toString() {
            return String.format("#%s", this.f71909a);
        }
    }

    public static final class q extends r {
        public q(int i11) {
            super(i11);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element2.v0() == this.f71910a;
        }

        public String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.f71910a));
        }
    }

    public static abstract class r extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f71910a;

        public r(int i11) {
            this.f71910a = i11;
        }
    }

    public static final class s extends r {
        public s(int i11) {
            super(i11);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element2.v0() > this.f71910a;
        }

        public String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.f71910a));
        }
    }

    public static final class t extends r {
        public t(int i11) {
            super(i11);
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element != element2 && element2.v0() < this.f71910a;
        }

        public String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.f71910a));
        }
    }

    public static final class u extends c {
        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            for (org.jsoup.nodes.j jVar : element2.o()) {
                if (!(jVar instanceof org.jsoup.nodes.e) && !(jVar instanceof org.jsoup.nodes.m) && !(jVar instanceof org.jsoup.nodes.g)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return ":empty";
        }
    }

    public static final class v extends c {
        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            Element elementI = element2.I();
            return (elementI == null || (elementI instanceof Document) || element2.v0() != 0) ? false : true;
        }

        public String toString() {
            return ":first-child";
        }
    }

    public static final class w extends c0 {
        public w() {
            super(0, 1);
        }

        @Override // org.jsoup.select.c.o
        public String toString() {
            return ":first-of-type";
        }
    }

    public static final class x extends c {
        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            Element elementI = element2.I();
            return (elementI == null || (elementI instanceof Document) || element2.v0() != elementI.o0().size() - 1) ? false : true;
        }

        public String toString() {
            return ":last-child";
        }
    }

    public static final class y extends b0 {
        public y() {
            super(0, 1);
        }

        @Override // org.jsoup.select.c.o
        public String toString() {
            return ":last-of-type";
        }
    }

    public static final class z extends o {
        public z(int i11, int i12) {
            super(i11, i12);
        }

        @Override // org.jsoup.select.c.o
        protected int b(Element element, Element element2) {
            return element2.v0() + 1;
        }

        @Override // org.jsoup.select.c.o
        protected String c() {
            return "nth-child";
        }
    }

    protected c() {
    }

    public abstract boolean a(Element element, Element element2);
}
