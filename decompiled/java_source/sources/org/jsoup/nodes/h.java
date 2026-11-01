package org.jsoup.nodes;

import org.jsoup.select.Elements;

/* JADX INFO: loaded from: classes7.dex */
public class h extends Element {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Elements f71759j;

    public h(org.jsoup.parser.f fVar, String str, b bVar) {
        super(fVar, str, bVar);
        this.f71759j = new Elements();
    }

    @Override // org.jsoup.nodes.j
    protected void N(j jVar) {
        super.N(jVar);
        this.f71759j.remove(jVar);
    }

    public h d1(Element element) {
        this.f71759j.add(element);
        return this;
    }
}
