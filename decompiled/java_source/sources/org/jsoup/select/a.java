package org.jsoup.select;

import org.jsoup.nodes.Element;
import org.jsoup.nodes.j;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: org.jsoup.select.a$a, reason: collision with other inner class name */
    private static class C0870a implements f10.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Element f71888a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Elements f71889b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c f71890c;

        C0870a(Element element, Elements elements, c cVar) {
            this.f71888a = element;
            this.f71889b = elements;
            this.f71890c = cVar;
        }

        @Override // f10.a
        public void a(j jVar, int i11) {
        }

        @Override // f10.a
        public void b(j jVar, int i11) {
            if (jVar instanceof Element) {
                Element element = (Element) jVar;
                if (this.f71890c.a(this.f71888a, element)) {
                    this.f71889b.add(element);
                }
            }
        }
    }

    public static Elements a(c cVar, Element element) {
        Elements elements = new Elements();
        d.c(new C0870a(element, elements, cVar), element);
        return elements;
    }
}
