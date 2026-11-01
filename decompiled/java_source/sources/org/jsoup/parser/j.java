package org.jsoup.parser;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.Reader;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.l;
import org.jsoup.nodes.m;

/* JADX INFO: loaded from: classes7.dex */
public class j extends i {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f71887a;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            f71887a = iArr;
            try {
                iArr[Token.TokenType.StartTag.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f71887a[Token.TokenType.EndTag.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f71887a[Token.TokenType.Comment.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f71887a[Token.TokenType.Character.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f71887a[Token.TokenType.Doctype.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f71887a[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private void n(org.jsoup.nodes.j jVar) {
        a().g0(jVar);
    }

    private void o(Token.g gVar) {
        Element element;
        String strB = this.f71884h.b(gVar.f71796b);
        int size = this.f71880d.size() - 1;
        while (true) {
            if (size < 0) {
                element = null;
                break;
            }
            element = (Element) this.f71880d.get(size);
            if (element.B().equals(strB)) {
                break;
            } else {
                size--;
            }
        }
        if (element == null) {
            return;
        }
        for (int size2 = this.f71880d.size() - 1; size2 >= 0; size2--) {
            Element element2 = (Element) this.f71880d.get(size2);
            this.f71880d.remove(size2);
            if (element2 == element) {
                return;
            }
        }
    }

    @Override // org.jsoup.parser.i
    d b() {
        return d.f71832d;
    }

    @Override // org.jsoup.parser.i
    protected void c(Reader reader, String str, ParseErrorList parseErrorList, d dVar) {
        super.c(reader, str, parseErrorList, dVar);
        this.f71880d.add(this.f71879c);
        this.f71879c.g1().n(Document.OutputSettings.Syntax.xml);
    }

    @Override // org.jsoup.parser.i
    protected boolean e(Token token) {
        switch (a.f71887a[token.f71787a.ordinal()]) {
            case 1:
                j(token.e());
                break;
            case 2:
                o(token.d());
                break;
            case 3:
                l(token.b());
                break;
            case 4:
                k(token.a());
                break;
            case 5:
                m(token.c());
                break;
            case 6:
                break;
            default:
                org.jsoup.helper.d.a("Unexpected token type: " + token.f71787a);
                break;
        }
        return true;
    }

    Element j(Token.h hVar) {
        f fVarL = f.l(hVar.A(), this.f71884h);
        Element element = new Element(fVarL, this.f71881e, this.f71884h.a(hVar.f71804j));
        n(element);
        if (!hVar.z()) {
            this.f71880d.add(element);
        } else if (!fVarL.f()) {
            fVarL.j();
        }
        return element;
    }

    void k(Token.c cVar) {
        String strQ = cVar.q();
        n(cVar.f() ? new org.jsoup.nodes.d(strQ) : new l(strQ));
    }

    void l(Token.d dVar) {
        org.jsoup.nodes.e eVar = new org.jsoup.nodes.e(dVar.p());
        org.jsoup.nodes.j jVar = eVar;
        if (dVar.f71790c) {
            String strC0 = eVar.c0();
            if (strC0.length() > 1 && (strC0.startsWith("!") || strC0.startsWith(UrlUtils.QUESTION_MARK))) {
                jVar = eVar;
                jVar = eVar;
                jVar = eVar;
                Document documentC = d10.a.c("<" + strC0.substring(1, strC0.length() - 1) + ">", this.f71881e, e.g());
                jVar = eVar;
                if (documentC.n() > 0) {
                    Element elementM0 = documentC.m0(0);
                    org.jsoup.nodes.j mVar = new m(this.f71884h.b(elementM0.U0()), strC0.startsWith("!"));
                    mVar.i().e(elementM0.i());
                    jVar = mVar;
                }
            }
        }
        jVar = eVar;
        jVar = eVar;
        jVar = eVar;
        n(jVar);
    }

    void m(Token.e eVar) {
        org.jsoup.nodes.g gVar = new org.jsoup.nodes.g(this.f71884h.b(eVar.p()), eVar.r(), eVar.s());
        gVar.d0(eVar.q());
        n(gVar);
    }
}
