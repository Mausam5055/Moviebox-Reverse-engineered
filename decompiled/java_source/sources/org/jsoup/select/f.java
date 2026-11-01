package org.jsoup.select;

import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes7.dex */
abstract class f extends org.jsoup.select.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    org.jsoup.select.c f71918a;

    static class a extends f {
        public a(org.jsoup.select.c cVar) {
            this.f71918a = cVar;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            for (Element element3 : element2.x0()) {
                if (element3 != element2 && this.f71918a.a(element, element3)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format(":has(%s)", this.f71918a);
        }
    }

    static class b extends f {
        public b(org.jsoup.select.c cVar) {
            this.f71918a = cVar;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            Element elementI;
            return (element == element2 || (elementI = element2.I()) == null || !this.f71918a.a(element, elementI)) ? false : true;
        }

        public String toString() {
            return String.format(":ImmediateParent%s", this.f71918a);
        }
    }

    static class c extends f {
        public c(org.jsoup.select.c cVar) {
            this.f71918a = cVar;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            Element elementP0;
            return (element == element2 || (elementP0 = element2.P0()) == null || !this.f71918a.a(element, elementP0)) ? false : true;
        }

        public String toString() {
            return String.format(":prev%s", this.f71918a);
        }
    }

    static class d extends f {
        public d(org.jsoup.select.c cVar) {
            this.f71918a = cVar;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return !this.f71918a.a(element, element2);
        }

        public String toString() {
            return String.format(":not%s", this.f71918a);
        }
    }

    static class e extends f {
        public e(org.jsoup.select.c cVar) {
            this.f71918a = cVar;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            if (element == element2) {
                return false;
            }
            for (Element elementI = element2.I(); !this.f71918a.a(element, elementI); elementI = elementI.I()) {
                if (elementI == element) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return String.format(":parent%s", this.f71918a);
        }
    }

    /* JADX INFO: renamed from: org.jsoup.select.f$f, reason: collision with other inner class name */
    static class C0873f extends f {
        public C0873f(org.jsoup.select.c cVar) {
            this.f71918a = cVar;
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            if (element == element2) {
                return false;
            }
            for (Element elementP0 = element2.P0(); elementP0 != null; elementP0 = elementP0.P0()) {
                if (this.f71918a.a(element, elementP0)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format(":prev*%s", this.f71918a);
        }
    }

    static class g extends org.jsoup.select.c {
        g() {
        }

        @Override // org.jsoup.select.c
        public boolean a(Element element, Element element2) {
            return element == element2;
        }
    }

    f() {
    }
}
