package org.jsoup.nodes;

/* JADX INFO: loaded from: classes7.dex */
public class l extends i {
    public l(String str) {
        this.f71761c = str;
    }

    static boolean e0(StringBuilder sb2) {
        return sb2.length() != 0 && sb2.charAt(sb2.length() - 1) == ' ';
    }

    @Override // org.jsoup.nodes.j
    public String B() {
        return "#text";
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    /* JADX WARN: Code duplicated, block: B:18:0x003a  */
    @Override // org.jsoup.nodes.j
    void F(Appendable appendable, int i11, Document.OutputSettings outputSettings) {
        if (outputSettings.l()) {
            if (V() == 0) {
                j jVar = this.f71762a;
                if ((jVar instanceof Element) && ((Element) jVar).T0().a() && !d0()) {
                    z(appendable, i11, outputSettings);
                } else if (outputSettings.j() && W().size() > 0 && !d0()) {
                    z(appendable, i11, outputSettings);
                }
            } else if (outputSettings.j()) {
                z(appendable, i11, outputSettings);
            }
        }
        Entities.e(appendable, a0(), outputSettings, false, outputSettings.l() && (I() instanceof Element) && !Element.O0(I()), false);
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

    public boolean d0() {
        return org.jsoup.helper.c.e(a0());
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
