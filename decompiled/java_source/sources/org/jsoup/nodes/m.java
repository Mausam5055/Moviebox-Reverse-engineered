package org.jsoup.nodes;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class m extends i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f71768e;

    public m(String str, boolean z10) {
        org.jsoup.helper.d.j(str);
        this.f71761c = str;
        this.f71768e = z10;
    }

    private void c0(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        for (a aVar : i()) {
            if (!aVar.getKey().equals(B())) {
                appendable.append(' ');
                aVar.f(appendable, outputSettings);
            }
        }
    }

    @Override // org.jsoup.nodes.j
    public String B() {
        return "#declaration";
    }

    @Override // org.jsoup.nodes.j
    void F(Appendable appendable, int i11, Document.OutputSettings outputSettings) throws IOException {
        Appendable appendableAppend = appendable.append("<");
        boolean z10 = this.f71768e;
        String str = UrlUtils.QUESTION_MARK;
        appendableAppend.append(z10 ? "!" : UrlUtils.QUESTION_MARK).append(a0());
        c0(appendable, outputSettings);
        if (this.f71768e) {
            str = "!";
        }
        appendable.append(str).append(">");
    }

    @Override // org.jsoup.nodes.j
    void G(Appendable appendable, int i11, Document.OutputSettings outputSettings) {
    }

    @Override // org.jsoup.nodes.i, org.jsoup.nodes.j
    public /* bridge */ /* synthetic */ String a(String str) {
        return super.a(str);
    }

    public String d0() {
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
