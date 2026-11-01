package org.jsoup.parser;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f71831c = new d(false, false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d f71832d = new d(true, true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f71833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f71834b;

    public d(boolean z10, boolean z11) {
        this.f71833a = z10;
        this.f71834b = z11;
    }

    org.jsoup.nodes.b a(org.jsoup.nodes.b bVar) {
        if (!this.f71834b) {
            bVar.v();
        }
        return bVar;
    }

    String b(String str) {
        String strTrim = str.trim();
        return !this.f71833a ? e10.b.a(strTrim) : strTrim;
    }
}
