package org.jsoup.parser;

import java.io.Reader;
import java.util.ArrayList;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes7.dex */
abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    a f71877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    h f71878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Document f71879c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ArrayList f71880d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f71881e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Token f71882f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected ParseErrorList f71883g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected d f71884h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Token.h f71885i = new Token.h();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Token.g f71886j = new Token.g();

    i() {
    }

    protected Element a() {
        int size = this.f71880d.size();
        if (size > 0) {
            return (Element) this.f71880d.get(size - 1);
        }
        return null;
    }

    abstract d b();

    protected void c(Reader reader, String str, ParseErrorList parseErrorList, d dVar) {
        org.jsoup.helper.d.k(reader, "String input must not be null");
        org.jsoup.helper.d.k(str, "BaseURI must not be null");
        this.f71879c = new Document(str);
        this.f71884h = dVar;
        this.f71877a = new a(reader);
        this.f71883g = parseErrorList;
        this.f71882f = null;
        this.f71878b = new h(this.f71877a, parseErrorList);
        this.f71880d = new ArrayList(32);
        this.f71881e = str;
    }

    Document d(Reader reader, String str, ParseErrorList parseErrorList, d dVar) {
        c(reader, str, parseErrorList, dVar);
        i();
        return this.f71879c;
    }

    protected abstract boolean e(Token token);

    protected boolean f(String str) {
        Token token = this.f71882f;
        Token.g gVar = this.f71886j;
        return token == gVar ? e(new Token.g().B(str)) : e(gVar.m().B(str));
    }

    protected boolean g(String str) {
        Token token = this.f71882f;
        Token.h hVar = this.f71885i;
        return token == hVar ? e(new Token.h().B(str)) : e(hVar.m().B(str));
    }

    public boolean h(String str, org.jsoup.nodes.b bVar) {
        Token token = this.f71882f;
        Token.h hVar = this.f71885i;
        if (token == hVar) {
            return e(new Token.h().G(str, bVar));
        }
        hVar.m();
        this.f71885i.G(str, bVar);
        return e(this.f71885i);
    }

    protected void i() {
        Token tokenT;
        do {
            tokenT = this.f71878b.t();
            e(tokenT);
            tokenT.m();
        } while (tokenT.f71787a != Token.TokenType.EOF);
    }
}
