package org.jsoup.nodes;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class g extends i {
    public g(String str, String str2, String str3) {
        org.jsoup.helper.d.j(str);
        org.jsoup.helper.d.j(str2);
        org.jsoup.helper.d.j(str3);
        g("name", str);
        g("publicId", str2);
        if (c0("publicId")) {
            g("pubSysKey", "PUBLIC");
        }
        g("systemId", str3);
    }

    private boolean c0(String str) {
        return !org.jsoup.helper.c.e(f(str));
    }

    @Override // org.jsoup.nodes.j
    public String B() {
        return "#doctype";
    }

    @Override // org.jsoup.nodes.j
    void F(Appendable appendable, int i11, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.m() != Document.OutputSettings.Syntax.html || c0("publicId") || c0("systemId")) {
            appendable.append("<!DOCTYPE");
        } else {
            appendable.append("<!doctype");
        }
        if (c0("name")) {
            appendable.append(" ").append(f("name"));
        }
        if (c0("pubSysKey")) {
            appendable.append(" ").append(f("pubSysKey"));
        }
        if (c0("publicId")) {
            appendable.append(" \"").append(f("publicId")).append('\"');
        }
        if (c0("systemId")) {
            appendable.append(" \"").append(f("systemId")).append('\"');
        }
        appendable.append('>');
    }

    @Override // org.jsoup.nodes.j
    void G(Appendable appendable, int i11, Document.OutputSettings outputSettings) {
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ String a(String str) {
        return super.a(str);
    }

    public void d0(String str) {
        if (str != null) {
            g("pubSysKey", str);
        }
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ String f(String str) {
        return super.f(str);
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ j g(String str, String str2) {
        return super.g(str, str2);
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ String j() {
        return super.j();
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ int n() {
        return super.n();
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ boolean w(String str) {
        return super.w(str);
    }
}
