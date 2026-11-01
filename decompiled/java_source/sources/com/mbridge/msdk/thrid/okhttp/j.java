package com.mbridge.msdk.thrid.okhttp;

import com.mbridge.msdk.thrid.okhttp.internal.publicsuffix.PublicSuffixDatabase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.http.DatesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class j {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Pattern f38259j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Pattern f38260k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Pattern f38261l = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Pattern f38262m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f38263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f38264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f38265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f38266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f38267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f38268f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f38269g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f38270h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f38271i;

    private j(String str, String str2, long j11, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f38263a = str;
        this.f38264b = str2;
        this.f38265c = j11;
        this.f38266d = str3;
        this.f38267e = str4;
        this.f38268f = z10;
        this.f38269g = z11;
        this.f38271i = z12;
        this.f38270h = z13;
    }

    private static int a(String str, int i11, int i12, boolean z10) {
        while (i11 < i12) {
            char cCharAt = str.charAt(i11);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z10)) {
                return i11;
            }
            i11++;
        }
        return i12;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0081  */
    private static long a(String str, int i11, int i12) {
        int iA = a(str, i11, i12, false);
        Matcher matcher = f38262m.matcher(str);
        int i13 = -1;
        int i14 = -1;
        int i15 = -1;
        int iIndexOf = -1;
        int i16 = -1;
        int i17 = -1;
        while (iA < i12) {
            int iA2 = a(str, iA + 1, i12, true);
            matcher.region(iA, iA2);
            if (i14 == -1 && matcher.usePattern(f38262m).matches()) {
                i14 = Integer.parseInt(matcher.group(1));
                i16 = Integer.parseInt(matcher.group(2));
                i17 = Integer.parseInt(matcher.group(3));
            } else if (i15 == -1 && matcher.usePattern(f38261l).matches()) {
                i15 = Integer.parseInt(matcher.group(1));
            } else if (iIndexOf == -1) {
                Pattern pattern = f38260k;
                if (matcher.usePattern(pattern).matches()) {
                    iIndexOf = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                } else if (i13 != -1 && matcher.usePattern(f38259j).matches()) {
                    i13 = Integer.parseInt(matcher.group(1));
                }
            } else if (i13 != -1) {
            }
            iA = a(str, iA2 + 1, i12, false);
        }
        if (i13 >= 70 && i13 <= 99) {
            i13 += 1900;
        }
        if (i13 >= 0 && i13 <= 69) {
            i13 += 2000;
        }
        if (i13 < 1601) {
            throw new IllegalArgumentException();
        }
        if (iIndexOf == -1) {
            throw new IllegalArgumentException();
        }
        if (i15 < 1 || i15 > 31) {
            throw new IllegalArgumentException();
        }
        if (i14 < 0 || i14 > 23) {
            throw new IllegalArgumentException();
        }
        if (i16 < 0 || i16 > 59) {
            throw new IllegalArgumentException();
        }
        if (i17 < 0 || i17 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(com.mbridge.msdk.thrid.okhttp.internal.c.f37916p);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i13);
        gregorianCalendar.set(2, iIndexOf - 1);
        gregorianCalendar.set(5, i15);
        gregorianCalendar.set(11, i14);
        gregorianCalendar.set(12, i16);
        gregorianCalendar.set(13, i17);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    static j a(long j11, q qVar, String str) {
        long j12;
        j jVar;
        String str2;
        String strSubstring;
        int length = str.length();
        char c11 = ';';
        int iA = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, 0, length, ';');
        char c12 = '=';
        int iA2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, 0, iA, '=');
        if (iA2 == iA) {
            return null;
        }
        String strD = com.mbridge.msdk.thrid.okhttp.internal.c.d(str, 0, iA2);
        if (strD.isEmpty() || com.mbridge.msdk.thrid.okhttp.internal.c.c(strD) != -1) {
            return null;
        }
        String strD2 = com.mbridge.msdk.thrid.okhttp.internal.c.d(str, iA2 + 1, iA);
        if (com.mbridge.msdk.thrid.okhttp.internal.c.c(strD2) != -1) {
            return null;
        }
        int i11 = iA + 1;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        String strA = null;
        boolean z13 = true;
        long jB = -1;
        long jA = 253402300799999L;
        String str3 = null;
        while (i11 < length) {
            int iA3 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i11, length, c11);
            int iA4 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i11, iA3, c12);
            String strD3 = com.mbridge.msdk.thrid.okhttp.internal.c.d(str, i11, iA4);
            String strD4 = iA4 < iA3 ? com.mbridge.msdk.thrid.okhttp.internal.c.d(str, iA4 + 1, iA3) : "";
            if (strD3.equalsIgnoreCase("expires")) {
                try {
                    jA = a(strD4, 0, strD4.length());
                    z12 = true;
                } catch (NumberFormatException | IllegalArgumentException unused) {
                }
            } else if (strD3.equalsIgnoreCase("max-age")) {
                jB = b(strD4);
                z12 = true;
            } else if (strD3.equalsIgnoreCase("domain")) {
                strA = a(strD4);
                z13 = false;
            } else if (strD3.equalsIgnoreCase("path")) {
                str3 = strD4;
            } else if (strD3.equalsIgnoreCase("secure")) {
                z10 = true;
            } else if (strD3.equalsIgnoreCase("httponly")) {
                z11 = true;
            }
            i11 = iA3 + 1;
            c11 = ';';
            c12 = '=';
        }
        if (jB == Long.MIN_VALUE) {
            j12 = Long.MIN_VALUE;
        } else if (jB != -1) {
            long j13 = j11 + (jB <= 9223372036854775L ? jB * 1000 : Long.MAX_VALUE);
            j12 = (j13 < j11 || j13 > DatesKt.MAX_DATE) ? 253402300799999L : j13;
        } else {
            j12 = jA;
        }
        String strG = qVar.g();
        if (strA == null) {
            str2 = strG;
            jVar = null;
        } else {
            if (!a(strG, strA)) {
                return null;
            }
            jVar = null;
            str2 = strA;
        }
        if (strG.length() != str2.length() && PublicSuffixDatabase.a().a(str2) == null) {
            return jVar;
        }
        if (str3 == null || !str3.startsWith("/")) {
            String strC = qVar.c();
            int iLastIndexOf = strC.lastIndexOf(47);
            strSubstring = iLastIndexOf != 0 ? strC.substring(0, iLastIndexOf) : "/";
        } else {
            strSubstring = str3;
        }
        return new j(strD, strD2, j12, str2, strSubstring, z10, z11, z13, z12);
    }

    public static j a(q qVar, String str) {
        return a(System.currentTimeMillis(), qVar, str);
    }

    private static String a(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        String strA = com.mbridge.msdk.thrid.okhttp.internal.c.a(str);
        if (strA != null) {
            return strA;
        }
        throw new IllegalArgumentException();
    }

    public static List<j> a(q qVar, p pVar) {
        List<String> listC = pVar.c("Set-Cookie");
        int size = listC.size();
        ArrayList arrayList = null;
        for (int i11 = 0; i11 < size; i11++) {
            j jVarA = a(qVar, listC.get(i11));
            if (jVarA != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(jVarA);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    private static boolean a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !com.mbridge.msdk.thrid.okhttp.internal.c.d(str);
    }

    private static long b(String str) {
        try {
            long j11 = Long.parseLong(str);
            if (j11 <= 0) {
                return Long.MIN_VALUE;
            }
            return j11;
        } catch (NumberFormatException e11) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e11;
        }
    }

    public String a() {
        return this.f38263a;
    }

    String a(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f38263a);
        sb2.append('=');
        sb2.append(this.f38264b);
        if (this.f38270h) {
            if (this.f38265c == Long.MIN_VALUE) {
                sb2.append("; max-age=0");
            } else {
                sb2.append("; expires=");
                sb2.append(com.mbridge.msdk.thrid.okhttp.internal.http.d.a(new Date(this.f38265c)));
            }
        }
        if (!this.f38271i) {
            sb2.append("; domain=");
            if (z10) {
                sb2.append(".");
            }
            sb2.append(this.f38266d);
        }
        sb2.append("; path=");
        sb2.append(this.f38267e);
        if (this.f38268f) {
            sb2.append("; secure");
        }
        if (this.f38269g) {
            sb2.append("; httponly");
        }
        return sb2.toString();
    }

    public String b() {
        return this.f38264b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return jVar.f38263a.equals(this.f38263a) && jVar.f38264b.equals(this.f38264b) && jVar.f38266d.equals(this.f38266d) && jVar.f38267e.equals(this.f38267e) && jVar.f38265c == this.f38265c && jVar.f38268f == this.f38268f && jVar.f38269g == this.f38269g && jVar.f38270h == this.f38270h && jVar.f38271i == this.f38271i;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f38263a.hashCode() + 527) * 31) + this.f38264b.hashCode()) * 31) + this.f38266d.hashCode()) * 31) + this.f38267e.hashCode()) * 31;
        long j11 = this.f38265c;
        return ((((((((iHashCode + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (!this.f38268f ? 1 : 0)) * 31) + (!this.f38269g ? 1 : 0)) * 31) + (!this.f38270h ? 1 : 0)) * 31) + (!this.f38271i ? 1 : 0);
    }

    public String toString() {
        return a(false);
    }
}
