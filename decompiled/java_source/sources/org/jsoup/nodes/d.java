package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.UncheckedIOException;

/* JADX INFO: loaded from: classes7.dex */
public class d extends l {
    public d(String str) {
        super(str);
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.j
    public String B() {
        return "#cdata";
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.j
    void F(Appendable appendable, int i11, Document.OutputSettings outputSettings) throws IOException {
        appendable.append("<![CDATA[").append(c0());
    }

    @Override // org.jsoup.nodes.l, org.jsoup.nodes.j
    void G(Appendable appendable, int i11, Document.OutputSettings outputSettings) {
        try {
            appendable.append("]]>");
        } catch (IOException e11) {
            throw new UncheckedIOException(e11);
        }
    }
}
