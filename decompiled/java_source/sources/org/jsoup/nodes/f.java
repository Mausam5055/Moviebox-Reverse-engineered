package org.jsoup.nodes;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class f extends i {
    public f(String str) {
        this.f71761c = str;
    }

    @Override // org.jsoup.nodes.j
    public String B() {
        return "#data";
    }

    @Override // org.jsoup.nodes.j
    void F(Appendable appendable, int i11, Document.OutputSettings outputSettings) throws IOException {
        appendable.append(c0());
    }

    @Override // org.jsoup.nodes.j
    void G(Appendable appendable, int i11, Document.OutputSettings outputSettings) {
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ String a(String str) {
        return super.a(str);
    }

    public String c0() {
        return a0();
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ String f(String str) {
        return super.f(str);
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ String j() {
        return super.j();
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ int n() {
        return super.n();
    }

    @Override // org.jsoup.nodes.j
    public String toString() {
        return D();
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ boolean w(String str) {
        return super.w(str);
    }
}
