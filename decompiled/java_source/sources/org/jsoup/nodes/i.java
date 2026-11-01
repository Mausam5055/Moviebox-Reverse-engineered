package org.jsoup.nodes;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
abstract class i extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List f71760d = Collections.emptyList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f71761c;

    i() {
    }

    private void b0() {
        if (x()) {
            return;
        }
        Object obj = this.f71761c;
        b bVar = new b();
        this.f71761c = bVar;
        if (obj != null) {
            bVar.w(B(), (String) obj);
        }
    }

    @Override // org.jsoup.nodes.j
    public String a(String str) {
        b0();
        return super.a(str);
    }

    String a0() {
        return f(B());
    }

    @Override // org.jsoup.nodes.j
    public String f(String str) {
        org.jsoup.helper.d.j(str);
        if (x()) {
            return super.f(str);
        }
        return str.equals(B()) ? (String) this.f71761c : "";
    }

    @Override // org.jsoup.nodes.j
    public j g(String str, String str2) {
        if (x() || !str.equals(B())) {
            b0();
            super.g(str, str2);
        } else {
            this.f71761c = str2;
        }
        return this;
    }

    @Override // org.jsoup.nodes.j
    public final b i() {
        b0();
        return (b) this.f71761c;
    }

    @Override // org.jsoup.nodes.j
    public String j() {
        return y() ? I().j() : "";
    }

    @Override // org.jsoup.nodes.j
    public int n() {
        return 0;
    }

    @Override // org.jsoup.nodes.j
    protected void s(String str) {
    }

    @Override // org.jsoup.nodes.j
    protected List t() {
        return f71760d;
    }

    @Override // org.jsoup.nodes.j
    public boolean w(String str) {
        b0();
        return super.w(str);
    }

    @Override // org.jsoup.nodes.j
    protected final boolean x() {
        return this.f71761c instanceof b;
    }
}
