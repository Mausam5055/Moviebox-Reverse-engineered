package com.google.common.base;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b implements n {

    private static final class a extends e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final b f30218b = new a();

        a() {
            super("CharMatcher.ascii()");
        }

        @Override // com.google.common.base.b
        public boolean g(char c11) {
            return c11 <= 127;
        }
    }

    /* JADX INFO: renamed from: com.google.common.base.b$b, reason: collision with other inner class name */
    static abstract class AbstractC0402b extends b {
        AbstractC0402b() {
        }

        @Override // com.google.common.base.n
        public /* bridge */ /* synthetic */ boolean apply(Object obj) {
            return super.b((Character) obj);
        }
    }

    private static final class c extends AbstractC0402b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final char f30219a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final char f30220b;

        c(char c11, char c12) {
            m.d(c12 >= c11);
            this.f30219a = c11;
            this.f30220b = c12;
        }

        @Override // com.google.common.base.b
        public boolean g(char c11) {
            return this.f30219a <= c11 && c11 <= this.f30220b;
        }

        public String toString() {
            return "CharMatcher.inRange('" + b.j(this.f30219a) + "', '" + b.j(this.f30220b) + "')";
        }
    }

    private static final class d extends AbstractC0402b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final char f30221a;

        d(char c11) {
            this.f30221a = c11;
        }

        @Override // com.google.common.base.b
        public boolean g(char c11) {
            return c11 == this.f30221a;
        }

        public String toString() {
            return "CharMatcher.is('" + b.j(this.f30221a) + "')";
        }
    }

    static abstract class e extends AbstractC0402b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f30222a;

        e(String str) {
            this.f30222a = (String) m.o(str);
        }

        public final String toString() {
            return this.f30222a;
        }
    }

    private static final class f extends e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final b f30223b = new f();

        private f() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.b
        public int e(CharSequence charSequence, int i11) {
            m.r(i11, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.b
        public boolean g(char c11) {
            return false;
        }

        @Override // com.google.common.base.b
        public boolean h(CharSequence charSequence) {
            return charSequence.length() == 0;
        }
    }

    static final class g extends e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final int f30224b = Integer.numberOfLeadingZeros(31);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final b f30225c = new g();

        g() {
            super("CharMatcher.whitespace()");
        }

        @Override // com.google.common.base.b
        public boolean g(char c11) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c11) >>> f30224b) == c11;
        }
    }

    protected b() {
    }

    public static b c() {
        return a.f30218b;
    }

    public static b d(char c11, char c12) {
        return new c(c11, c12);
    }

    public static b f(char c11) {
        return new d(c11);
    }

    public static b i() {
        return f.f30223b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String j(char c11) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            cArr[5 - i11] = "0123456789ABCDEF".charAt(c11 & 15);
            c11 = (char) (c11 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public static b k() {
        return g.f30225c;
    }

    public boolean b(Character ch2) {
        return g(ch2.charValue());
    }

    public int e(CharSequence charSequence, int i11) {
        int length = charSequence.length();
        m.r(i11, length);
        while (i11 < length) {
            if (g(charSequence.charAt(i11))) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public abstract boolean g(char c11);

    public boolean h(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!g(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }
}
