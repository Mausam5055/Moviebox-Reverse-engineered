package org.jsoup.parser;

/* JADX INFO: loaded from: classes7.dex */
abstract class Token {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    TokenType f71787a;

    public enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    static final class b extends c {
        b(String str) {
            p(str);
        }

        @Override // org.jsoup.parser.Token.c
        public String toString() {
            return "<![CDATA[" + q() + "]]>";
        }
    }

    static class c extends Token {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f71788b;

        c() {
            super();
            this.f71787a = TokenType.Character;
        }

        @Override // org.jsoup.parser.Token
        Token m() {
            this.f71788b = null;
            return this;
        }

        c p(String str) {
            this.f71788b = str;
            return this;
        }

        String q() {
            return this.f71788b;
        }

        public String toString() {
            return q();
        }
    }

    static final class d extends Token {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final StringBuilder f71789b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f71790c;

        d() {
            super();
            this.f71789b = new StringBuilder();
            this.f71790c = false;
            this.f71787a = TokenType.Comment;
        }

        @Override // org.jsoup.parser.Token
        Token m() {
            Token.n(this.f71789b);
            this.f71790c = false;
            return this;
        }

        String p() {
            return this.f71789b.toString();
        }

        public String toString() {
            return "<!--" + p() + "-->";
        }
    }

    static final class e extends Token {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final StringBuilder f71791b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f71792c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final StringBuilder f71793d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final StringBuilder f71794e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f71795f;

        e() {
            super();
            this.f71791b = new StringBuilder();
            this.f71792c = null;
            this.f71793d = new StringBuilder();
            this.f71794e = new StringBuilder();
            this.f71795f = false;
            this.f71787a = TokenType.Doctype;
        }

        @Override // org.jsoup.parser.Token
        Token m() {
            Token.n(this.f71791b);
            this.f71792c = null;
            Token.n(this.f71793d);
            Token.n(this.f71794e);
            this.f71795f = false;
            return this;
        }

        String p() {
            return this.f71791b.toString();
        }

        String q() {
            return this.f71792c;
        }

        String r() {
            return this.f71793d.toString();
        }

        public String s() {
            return this.f71794e.toString();
        }

        public boolean t() {
            return this.f71795f;
        }
    }

    static final class f extends Token {
        f() {
            super();
            this.f71787a = TokenType.EOF;
        }

        @Override // org.jsoup.parser.Token
        Token m() {
            return this;
        }
    }

    static final class g extends i {
        g() {
            this.f71787a = TokenType.EndTag;
        }

        public String toString() {
            return "</" + A() + ">";
        }
    }

    static final class h extends i {
        h() {
            this.f71804j = new org.jsoup.nodes.b();
            this.f71787a = TokenType.StartTag;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.parser.Token.i, org.jsoup.parser.Token
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
        public i m() {
            super.m();
            this.f71804j = new org.jsoup.nodes.b();
            return this;
        }

        h G(String str, org.jsoup.nodes.b bVar) {
            this.f71796b = str;
            this.f71804j = bVar;
            this.f71797c = e10.b.a(str);
            return this;
        }

        public String toString() {
            org.jsoup.nodes.b bVar = this.f71804j;
            if (bVar == null || bVar.size() <= 0) {
                return "<" + A() + ">";
            }
            return "<" + A() + " " + this.f71804j.toString() + ">";
        }
    }

    static abstract class i extends Token {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected String f71796b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected String f71797c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f71798d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private StringBuilder f71799e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f71800f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f71801g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f71802h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f71803i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        org.jsoup.nodes.b f71804j;

        i() {
            super();
            this.f71799e = new StringBuilder();
            this.f71801g = false;
            this.f71802h = false;
            this.f71803i = false;
        }

        private void w() {
            this.f71802h = true;
            String str = this.f71800f;
            if (str != null) {
                this.f71799e.append(str);
                this.f71800f = null;
            }
        }

        final String A() {
            String str = this.f71796b;
            org.jsoup.helper.d.b(str == null || str.length() == 0);
            return this.f71796b;
        }

        final i B(String str) {
            this.f71796b = str;
            this.f71797c = e10.b.a(str);
            return this;
        }

        final void C() {
            String string;
            if (this.f71804j == null) {
                this.f71804j = new org.jsoup.nodes.b();
            }
            String str = this.f71798d;
            if (str != null) {
                String strTrim = str.trim();
                this.f71798d = strTrim;
                if (strTrim.length() > 0) {
                    if (this.f71802h) {
                        string = this.f71799e.length() > 0 ? this.f71799e.toString() : this.f71800f;
                    } else {
                        string = this.f71801g ? "" : null;
                    }
                    this.f71804j.w(this.f71798d, string);
                }
            }
            this.f71798d = null;
            this.f71801g = false;
            this.f71802h = false;
            Token.n(this.f71799e);
            this.f71800f = null;
        }

        final String D() {
            return this.f71797c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.parser.Token
        /* JADX INFO: renamed from: E */
        public i m() {
            this.f71796b = null;
            this.f71797c = null;
            this.f71798d = null;
            Token.n(this.f71799e);
            this.f71800f = null;
            this.f71801g = false;
            this.f71802h = false;
            this.f71803i = false;
            this.f71804j = null;
            return this;
        }

        final void F() {
            this.f71801g = true;
        }

        final void p(char c11) {
            q(String.valueOf(c11));
        }

        final void q(String str) {
            String str2 = this.f71798d;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.f71798d = str;
        }

        final void r(char c11) {
            w();
            this.f71799e.append(c11);
        }

        final void s(String str) {
            w();
            if (this.f71799e.length() == 0) {
                this.f71800f = str;
            } else {
                this.f71799e.append(str);
            }
        }

        final void t(int[] iArr) {
            w();
            for (int i11 : iArr) {
                this.f71799e.appendCodePoint(i11);
            }
        }

        final void u(char c11) {
            v(String.valueOf(c11));
        }

        final void v(String str) {
            String str2 = this.f71796b;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.f71796b = str;
            this.f71797c = e10.b.a(str);
        }

        final void x() {
            if (this.f71798d != null) {
                C();
            }
        }

        final org.jsoup.nodes.b y() {
            return this.f71804j;
        }

        final boolean z() {
            return this.f71803i;
        }
    }

    private Token() {
    }

    static void n(StringBuilder sb2) {
        if (sb2 != null) {
            sb2.delete(0, sb2.length());
        }
    }

    final c a() {
        return (c) this;
    }

    final d b() {
        return (d) this;
    }

    final e c() {
        return (e) this;
    }

    final g d() {
        return (g) this;
    }

    final h e() {
        return (h) this;
    }

    final boolean f() {
        return this instanceof b;
    }

    final boolean g() {
        return this.f71787a == TokenType.Character;
    }

    final boolean h() {
        return this.f71787a == TokenType.Comment;
    }

    final boolean i() {
        return this.f71787a == TokenType.Doctype;
    }

    final boolean j() {
        return this.f71787a == TokenType.EOF;
    }

    final boolean k() {
        return this.f71787a == TokenType.EndTag;
    }

    final boolean l() {
        return this.f71787a == TokenType.StartTag;
    }

    abstract Token m();

    String o() {
        return getClass().getSimpleName();
    }
}
