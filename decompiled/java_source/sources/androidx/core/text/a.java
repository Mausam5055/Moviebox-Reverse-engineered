package androidx.core.text;

import android.text.SpannableStringBuilder;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final t f8236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f8237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f8238f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final a f8239g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final a f8240h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f8241a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t f8243c;

    /* JADX INFO: renamed from: androidx.core.text.a$a, reason: collision with other inner class name */
    public static final class C0069a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f8244a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f8245b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private t f8246c;

        public C0069a() {
            c(a.g(Locale.getDefault()));
        }

        private static a b(boolean z10) {
            return z10 ? a.f8240h : a.f8239g;
        }

        private void c(boolean z10) {
            this.f8244a = z10;
            this.f8246c = a.f8236d;
            this.f8245b = 2;
        }

        public a a() {
            return (this.f8245b == 2 && this.f8246c == a.f8236d) ? b(this.f8244a) : new a(this.f8244a, this.f8245b, this.f8246c);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final byte[] f8247f = new byte[1792];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CharSequence f8248a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f8249b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f8250c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f8251d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private char f8252e;

        static {
            for (int i11 = 0; i11 < 1792; i11++) {
                f8247f[i11] = Character.getDirectionality(i11);
            }
        }

        b(CharSequence charSequence, boolean z10) {
            this.f8248a = charSequence;
            this.f8249b = z10;
            this.f8250c = charSequence.length();
        }

        private static byte c(char c11) {
            return c11 < 1792 ? f8247f[c11] : Character.getDirectionality(c11);
        }

        private byte f() {
            char cCharAt;
            int i11 = this.f8251d;
            do {
                int i12 = this.f8251d;
                if (i12 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f8248a;
                int i13 = i12 - 1;
                this.f8251d = i13;
                cCharAt = charSequence.charAt(i13);
                this.f8252e = cCharAt;
                if (cCharAt == '&') {
                    return (byte) 12;
                }
            } while (cCharAt != ';');
            this.f8251d = i11;
            this.f8252e = ';';
            return (byte) 13;
        }

        private byte g() {
            char cCharAt;
            do {
                int i11 = this.f8251d;
                if (i11 >= this.f8250c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f8248a;
                this.f8251d = i11 + 1;
                cCharAt = charSequence.charAt(i11);
                this.f8252e = cCharAt;
            } while (cCharAt != ';');
            return (byte) 12;
        }

        private byte h() {
            char cCharAt;
            int i11 = this.f8251d;
            while (true) {
                int i12 = this.f8251d;
                if (i12 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f8248a;
                int i13 = i12 - 1;
                this.f8251d = i13;
                char cCharAt2 = charSequence.charAt(i13);
                this.f8252e = cCharAt2;
                if (cCharAt2 == '<') {
                    return (byte) 12;
                }
                if (cCharAt2 == '>') {
                    break;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i14 = this.f8251d;
                        if (i14 <= 0) {
                            break;
                        }
                        CharSequence charSequence2 = this.f8248a;
                        int i15 = i14 - 1;
                        this.f8251d = i15;
                        cCharAt = charSequence2.charAt(i15);
                        this.f8252e = cCharAt;
                    } while (cCharAt != cCharAt2);
                }
            }
            this.f8251d = i11;
            this.f8252e = '>';
            return (byte) 13;
        }

        private byte i() {
            char cCharAt;
            int i11 = this.f8251d;
            while (true) {
                int i12 = this.f8251d;
                if (i12 >= this.f8250c) {
                    this.f8251d = i11;
                    this.f8252e = '<';
                    return (byte) 13;
                }
                CharSequence charSequence = this.f8248a;
                this.f8251d = i12 + 1;
                char cCharAt2 = charSequence.charAt(i12);
                this.f8252e = cCharAt2;
                if (cCharAt2 == '>') {
                    return (byte) 12;
                }
                if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                    do {
                        int i13 = this.f8251d;
                        if (i13 >= this.f8250c) {
                            break;
                        }
                        CharSequence charSequence2 = this.f8248a;
                        this.f8251d = i13 + 1;
                        cCharAt = charSequence2.charAt(i13);
                        this.f8252e = cCharAt;
                    } while (cCharAt != cCharAt2);
                }
            }
        }

        byte a() {
            char cCharAt = this.f8248a.charAt(this.f8251d - 1);
            this.f8252e = cCharAt;
            if (Character.isLowSurrogate(cCharAt)) {
                int iCodePointBefore = Character.codePointBefore(this.f8248a, this.f8251d);
                this.f8251d -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.f8251d--;
            byte bC = c(this.f8252e);
            if (!this.f8249b) {
                return bC;
            }
            char c11 = this.f8252e;
            if (c11 == '>') {
                return h();
            }
            return c11 == ';' ? f() : bC;
        }

        byte b() {
            char cCharAt = this.f8248a.charAt(this.f8251d);
            this.f8252e = cCharAt;
            if (Character.isHighSurrogate(cCharAt)) {
                int iCodePointAt = Character.codePointAt(this.f8248a, this.f8251d);
                this.f8251d += Character.charCount(iCodePointAt);
                return Character.getDirectionality(iCodePointAt);
            }
            this.f8251d++;
            byte bC = c(this.f8252e);
            if (!this.f8249b) {
                return bC;
            }
            char c11 = this.f8252e;
            if (c11 == '<') {
                return i();
            }
            return c11 == '&' ? g() : bC;
        }

        int d() {
            this.f8251d = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            while (this.f8251d < this.f8250c && i11 == 0) {
                byte b11 = b();
                if (b11 != 0) {
                    if (b11 == 1 || b11 == 2) {
                        if (i13 == 0) {
                            return 1;
                        }
                    } else if (b11 != 9) {
                        switch (b11) {
                            case 14:
                            case 15:
                                i13++;
                                i12 = -1;
                                continue;
                            case 16:
                            case 17:
                                i13++;
                                i12 = 1;
                                continue;
                            case 18:
                                i13--;
                                i12 = 0;
                                continue;
                        }
                    }
                } else if (i13 == 0) {
                    return -1;
                }
                i11 = i13;
            }
            if (i11 == 0) {
                return 0;
            }
            if (i12 != 0) {
                return i12;
            }
            while (this.f8251d > 0) {
                switch (a()) {
                    case 14:
                    case 15:
                        if (i11 == i13) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i11 == i13) {
                            return 1;
                        }
                        break;
                    case 18:
                        i13++;
                        continue;
                    default:
                        continue;
                }
                i13--;
            }
            return 0;
        }

        int e() {
            this.f8251d = this.f8250c;
            int i11 = 0;
            while (true) {
                int i12 = i11;
                while (this.f8251d > 0) {
                    byte bA = a();
                    if (bA == 0) {
                        if (i11 == 0) {
                            return -1;
                        }
                        if (i12 == 0) {
                        }
                    } else if (bA == 1 || bA == 2) {
                        if (i11 == 0) {
                            return 1;
                        }
                        if (i12 == 0) {
                        }
                    } else if (bA != 9) {
                        switch (bA) {
                            case 14:
                            case 15:
                                if (i12 == i11) {
                                    return -1;
                                }
                                i11--;
                                break;
                            case 16:
                            case 17:
                                if (i12 == i11) {
                                    return 1;
                                }
                                i11--;
                                break;
                            case 18:
                                i11++;
                                break;
                            default:
                                if (i12 != 0) {
                                }
                                break;
                        }
                    } else {
                        continue;
                    }
                }
                return 0;
            }
        }
    }

    static {
        t tVar = u.f8255c;
        f8236d = tVar;
        f8237e = Character.toString((char) 8206);
        f8238f = Character.toString((char) 8207);
        f8239g = new a(false, 2, tVar);
        f8240h = new a(true, 2, tVar);
    }

    a(boolean z10, int i11, t tVar) {
        this.f8241a = z10;
        this.f8242b = i11;
        this.f8243c = tVar;
    }

    private static int a(CharSequence charSequence) {
        return new b(charSequence, false).d();
    }

    private static int b(CharSequence charSequence) {
        return new b(charSequence, false).e();
    }

    public static a c() {
        return new C0069a().a();
    }

    static boolean g(Locale locale) {
        return v.a(locale) == 1;
    }

    private String h(CharSequence charSequence, t tVar) {
        boolean zA = tVar.a(charSequence, 0, charSequence.length());
        if (!this.f8241a && (zA || b(charSequence) == 1)) {
            return f8237e;
        }
        if (this.f8241a) {
            return (!zA || b(charSequence) == -1) ? f8238f : "";
        }
        return "";
    }

    private String i(CharSequence charSequence, t tVar) {
        boolean zA = tVar.a(charSequence, 0, charSequence.length());
        if (!this.f8241a && (zA || a(charSequence) == 1)) {
            return f8237e;
        }
        if (this.f8241a) {
            return (!zA || a(charSequence) == -1) ? f8238f : "";
        }
        return "";
    }

    public boolean d() {
        return (this.f8242b & 2) != 0;
    }

    public boolean e(CharSequence charSequence) {
        return this.f8243c.a(charSequence, 0, charSequence.length());
    }

    public boolean f(String str) {
        return e(str);
    }

    public CharSequence j(CharSequence charSequence) {
        return k(charSequence, this.f8243c, true);
    }

    public CharSequence k(CharSequence charSequence, t tVar, boolean z10) {
        if (charSequence == null) {
            return null;
        }
        boolean zA = tVar.a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (d() && z10) {
            spannableStringBuilder.append((CharSequence) i(charSequence, zA ? u.f8254b : u.f8253a));
        }
        if (zA != this.f8241a) {
            spannableStringBuilder.append(zA ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z10) {
            spannableStringBuilder.append((CharSequence) h(charSequence, zA ? u.f8254b : u.f8253a));
        }
        return spannableStringBuilder;
    }

    public String l(String str) {
        return n(str, this.f8243c, true);
    }

    public String m(String str, t tVar) {
        return n(str, tVar, true);
    }

    public String n(String str, t tVar, boolean z10) {
        if (str == null) {
            return null;
        }
        return k(str, tVar, z10).toString();
    }
}
