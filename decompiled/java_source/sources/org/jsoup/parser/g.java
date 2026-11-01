package org.jsoup.parser;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f71856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f71857b = 0;

    public g(String str) {
        org.jsoup.helper.d.j(str);
        this.f71856a = str;
    }

    private int r() {
        return this.f71856a.length() - this.f71857b;
    }

    public static String s(String str) {
        StringBuilder sbO = org.jsoup.helper.c.o();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i11 = 0;
        char c11 = 0;
        while (i11 < length) {
            char c12 = charArray[i11];
            if (c12 != '\\') {
                sbO.append(c12);
            } else if (c11 != 0 && c11 == '\\') {
                sbO.append(c12);
            }
            i11++;
            c11 = c12;
        }
        return sbO.toString();
    }

    public String a(char c11, char c12) {
        char c13 = 0;
        int i11 = -1;
        int i12 = -1;
        boolean z10 = false;
        boolean z11 = false;
        int i13 = 0;
        while (!j()) {
            char c14 = c();
            Character chValueOf = Character.valueOf(c14);
            if (c13 == 0 || c13 != '\\') {
                if (chValueOf.equals('\'') && c14 != c11 && !z10) {
                    z11 = !z11;
                } else if (chValueOf.equals('\"') && c14 != c11 && !z11) {
                    z10 = !z10;
                }
                if (!z11 && !z10) {
                    if (chValueOf.equals(Character.valueOf(c11))) {
                        i13++;
                        if (i11 == -1) {
                            i11 = this.f71857b;
                        }
                    } else if (chValueOf.equals(Character.valueOf(c12))) {
                        i13--;
                    }
                    if (i13 > 0 && c13 != 0) {
                        i12 = this.f71857b;
                    }
                    c13 = c14;
                }
            } else {
                if (i13 > 0) {
                    i12 = this.f71857b;
                }
                c13 = c14;
            }
            if (i13 <= 0) {
                break;
            }
        }
        String strSubstring = i12 >= 0 ? this.f71856a.substring(i11, i12) : "";
        if (i13 > 0) {
            org.jsoup.helper.d.a("Did not find balanced marker at '" + strSubstring + "'");
        }
        return strSubstring;
    }

    public String b(String str) {
        String strG = g(str);
        k(str);
        return strG;
    }

    public char c() {
        String str = this.f71856a;
        int i11 = this.f71857b;
        this.f71857b = i11 + 1;
        return str.charAt(i11);
    }

    public void d(String str) {
        if (!l(str)) {
            throw new IllegalStateException("Queue did not match expected sequence");
        }
        int length = str.length();
        if (length > r()) {
            throw new IllegalStateException("Queue not long enough to consume sequence");
        }
        this.f71857b += length;
    }

    public String e() {
        int i11 = this.f71857b;
        while (!j() && (p() || m('-', '_'))) {
            this.f71857b++;
        }
        return this.f71856a.substring(i11, this.f71857b);
    }

    public String f() {
        int i11 = this.f71857b;
        while (!j() && (p() || n("*|", "|", "_", "-"))) {
            this.f71857b++;
        }
        return this.f71856a.substring(i11, this.f71857b);
    }

    public String g(String str) {
        int iIndexOf = this.f71856a.indexOf(str, this.f71857b);
        if (iIndexOf == -1) {
            return q();
        }
        String strSubstring = this.f71856a.substring(this.f71857b, iIndexOf);
        this.f71857b += strSubstring.length();
        return strSubstring;
    }

    public String h(String... strArr) {
        int i11 = this.f71857b;
        while (!j() && !n(strArr)) {
            this.f71857b++;
        }
        return this.f71856a.substring(i11, this.f71857b);
    }

    public boolean i() {
        boolean z10 = false;
        while (o()) {
            this.f71857b++;
            z10 = true;
        }
        return z10;
    }

    public boolean j() {
        return r() == 0;
    }

    public boolean k(String str) {
        if (!l(str)) {
            return false;
        }
        this.f71857b += str.length();
        return true;
    }

    public boolean l(String str) {
        return this.f71856a.regionMatches(true, this.f71857b, str, 0, str.length());
    }

    public boolean m(char... cArr) {
        if (j()) {
            return false;
        }
        for (char c11 : cArr) {
            if (this.f71856a.charAt(this.f71857b) == c11) {
                return true;
            }
        }
        return false;
    }

    public boolean n(String... strArr) {
        for (String str : strArr) {
            if (l(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean o() {
        return !j() && org.jsoup.helper.c.h(this.f71856a.charAt(this.f71857b));
    }

    public boolean p() {
        return !j() && Character.isLetterOrDigit(this.f71856a.charAt(this.f71857b));
    }

    public String q() {
        String str = this.f71856a;
        String strSubstring = str.substring(this.f71857b, str.length());
        this.f71857b = this.f71856a.length();
        return strSubstring;
    }

    public String toString() {
        return this.f71856a.substring(this.f71857b);
    }
}
