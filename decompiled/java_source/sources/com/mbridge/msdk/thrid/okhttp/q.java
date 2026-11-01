package com.mbridge.msdk.thrid.okhttp;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes5.dex */
public final class q {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final char[] f38289j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f38290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f38291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f38292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f38293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f38294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<String> f38295f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<String> f38296g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f38297h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f38298i;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f38299a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f38302d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final List<String> f38304f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        List<String> f38305g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        String f38306h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f38300b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f38301c = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f38303e = -1;

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f38304f = arrayList;
            arrayList.add("");
        }

        private static String a(String str, int i11, int i12) {
            return com.mbridge.msdk.thrid.okhttp.internal.c.a(q.a(str, i11, i12, false));
        }

        private void a(String str, int i11, int i12, boolean z10, boolean z11) {
            String strA = q.a(str, i11, i12, HttpUrl.PATH_SEGMENT_ENCODE_SET, z11, false, false, true, null);
            if (c(strA)) {
                return;
            }
            if (d(strA)) {
                c();
                return;
            }
            List<String> list = this.f38304f;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f38304f;
                list2.set(list2.size() - 1, strA);
            } else {
                this.f38304f.add(strA);
            }
            if (z10) {
                this.f38304f.add("");
            }
        }

        private static int b(String str, int i11, int i12) {
            try {
                int i13 = Integer.parseInt(q.a(str, i11, i12, "", false, false, false, true, null));
                if (i13 <= 0 || i13 > 65535) {
                    return -1;
                }
                return i13;
            } catch (NumberFormatException unused) {
            }
        }

        private static int c(String str, int i11, int i12) {
            while (i11 < i12) {
                char cCharAt = str.charAt(i11);
                if (cCharAt == ':') {
                    return i11;
                }
                if (cCharAt == '[') {
                    do {
                        i11++;
                        if (i11 >= i12) {
                            break;
                        }
                    } while (str.charAt(i11) != ']');
                }
                i11++;
            }
            return i12;
        }

        private void c() {
            List<String> list = this.f38304f;
            if (!list.remove(list.size() - 1).isEmpty() || this.f38304f.isEmpty()) {
                this.f38304f.add("");
            } else {
                List<String> list2 = this.f38304f;
                list2.set(list2.size() - 1, "");
            }
        }

        private boolean c(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private void d(String str, int i11, int i12) {
            if (i11 == i12) {
                return;
            }
            char cCharAt = str.charAt(i11);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.f38304f.clear();
                this.f38304f.add("");
                i11++;
            } else {
                List<String> list = this.f38304f;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i13 = i11;
                while (i13 < i12) {
                    i11 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i13, i12, "/\\");
                    boolean z10 = i11 < i12;
                    a(str, i13, i11, z10, true);
                    if (z10) {
                        i13 = i11 + 1;
                    }
                }
                return;
            }
        }

        private boolean d(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private static int e(String str, int i11, int i12) {
            if (i12 - i11 < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i11);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i11++;
                    if (i11 >= i12) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i11);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i11;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private static int f(String str, int i11, int i12) {
            int i13 = 0;
            while (i11 < i12) {
                char cCharAt = str.charAt(i11);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i13++;
                i11++;
            }
            return i13;
        }

        public a a(int i11) {
            if (i11 > 0 && i11 <= 65535) {
                this.f38303e = i11;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i11);
        }

        a a(q qVar, String str) {
            int iA;
            int i11;
            int iB = com.mbridge.msdk.thrid.okhttp.internal.c.b(str, 0, str.length());
            int iC = com.mbridge.msdk.thrid.okhttp.internal.c.c(str, iB, str.length());
            int iE = e(str, iB, iC);
            if (iE != -1) {
                if (str.regionMatches(true, iB, "https:", 0, 6)) {
                    this.f38299a = "https";
                    iB += 6;
                } else {
                    if (!str.regionMatches(true, iB, "http:", 0, 5)) {
                        throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str.substring(0, iE) + "'");
                    }
                    this.f38299a = "http";
                    iB += 5;
                }
            } else {
                if (qVar == null) {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
                }
                this.f38299a = qVar.f38290a;
            }
            int iF = f(str, iB, iC);
            char c11 = '?';
            char c12 = '#';
            if (iF >= 2 || qVar == null || !qVar.f38290a.equals(this.f38299a)) {
                boolean z10 = false;
                boolean z11 = false;
                int i12 = iB + iF;
                while (true) {
                    iA = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i12, iC, "@/\\?#");
                    byte bCharAt = iA != iC ? str.charAt(iA) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c12 || bCharAt == 47 || bCharAt == 92 || bCharAt == c11) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z10) {
                            i11 = iA;
                            this.f38301c += "%40" + q.a(str, i12, i11, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        } else {
                            int iA2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i12, iA, ':');
                            i11 = iA;
                            String strA = q.a(str, i12, iA2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z11) {
                                strA = this.f38300b + "%40" + strA;
                            }
                            this.f38300b = strA;
                            if (iA2 != i11) {
                                this.f38301c = q.a(str, iA2 + 1, i11, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z10 = true;
                            }
                            z11 = true;
                        }
                        i12 = i11 + 1;
                        c11 = '?';
                        c12 = '#';
                    }
                }
                int iC2 = c(str, i12, iA);
                int i13 = iC2 + 1;
                if (i13 < iA) {
                    this.f38302d = a(str, i12, iC2);
                    int iB2 = b(str, i13, iA);
                    this.f38303e = iB2;
                    if (iB2 == -1) {
                        throw new IllegalArgumentException("Invalid URL port: \"" + str.substring(i13, iA) + '\"');
                    }
                } else {
                    this.f38302d = a(str, i12, iC2);
                    this.f38303e = q.a(this.f38299a);
                }
                if (this.f38302d == null) {
                    throw new IllegalArgumentException("Invalid URL host: \"" + str.substring(i12, iC2) + '\"');
                }
                iB = iA;
            } else {
                this.f38300b = qVar.f();
                this.f38301c = qVar.b();
                this.f38302d = qVar.f38293d;
                this.f38303e = qVar.f38294e;
                this.f38304f.clear();
                this.f38304f.addAll(qVar.d());
                if (iB == iC || str.charAt(iB) == '#') {
                    a(qVar.e());
                }
            }
            int iA3 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, iB, iC, "?#");
            d(str, iB, iA3);
            if (iA3 < iC && str.charAt(iA3) == '?') {
                int iA4 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, iA3, iC, '#');
                this.f38305g = q.d(q.a(str, iA3 + 1, iA4, HttpUrl.QUERY_ENCODE_SET, true, false, true, true, null));
                iA3 = iA4;
            }
            if (iA3 < iC && str.charAt(iA3) == '#') {
                this.f38306h = q.a(str, 1 + iA3, iC, "", true, false, false, false, null);
            }
            return this;
        }

        public a a(String str) {
            this.f38305g = str != null ? q.d(q.a(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public q a() {
            if (this.f38299a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f38302d != null) {
                return new q(this);
            }
            throw new IllegalStateException("host == null");
        }

        int b() {
            int i11 = this.f38303e;
            return i11 != -1 ? i11 : q.a(this.f38299a);
        }

        public a b(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String strA = a(str, 0, str.length());
            if (strA != null) {
                this.f38302d = strA;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        a d() {
            int size = this.f38304f.size();
            for (int i11 = 0; i11 < size; i11++) {
                this.f38304f.set(i11, q.a(this.f38304f.get(i11), "[]", true, true, false, true));
            }
            List<String> list = this.f38305g;
            if (list != null) {
                int size2 = list.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    String str = this.f38305g.get(i12);
                    if (str != null) {
                        this.f38305g.set(i12, q.a(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, true));
                    }
                }
            }
            String str2 = this.f38306h;
            if (str2 != null) {
                this.f38306h = q.a(str2, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, false);
            }
            return this;
        }

        public a e(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.f38299a = "http";
            } else {
                if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                this.f38299a = "https";
            }
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            String str = this.f38299a;
            if (str != null) {
                sb2.append(str);
                sb2.append("://");
            } else {
                sb2.append("//");
            }
            if (!this.f38300b.isEmpty() || !this.f38301c.isEmpty()) {
                sb2.append(this.f38300b);
                if (!this.f38301c.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.f38301c);
                }
                sb2.append('@');
            }
            String str2 = this.f38302d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb2.append('[');
                    sb2.append(this.f38302d);
                    sb2.append(']');
                } else {
                    sb2.append(this.f38302d);
                }
            }
            if (this.f38303e != -1 || this.f38299a != null) {
                int iB = b();
                String str3 = this.f38299a;
                if (str3 == null || iB != q.a(str3)) {
                    sb2.append(':');
                    sb2.append(iB);
                }
            }
            q.b(sb2, this.f38304f);
            if (this.f38305g != null) {
                sb2.append('?');
                q.a(sb2, this.f38305g);
            }
            if (this.f38306h != null) {
                sb2.append('#');
                sb2.append(this.f38306h);
            }
            return sb2.toString();
        }
    }

    q(a aVar) {
        this.f38290a = aVar.f38299a;
        this.f38291b = a(aVar.f38300b, false);
        this.f38292c = a(aVar.f38301c, false);
        this.f38293d = aVar.f38302d;
        this.f38294e = aVar.b();
        this.f38295f = a(aVar.f38304f, false);
        List<String> list = aVar.f38305g;
        this.f38296g = list != null ? a(list, true) : null;
        String str = aVar.f38306h;
        this.f38297h = str != null ? a(str, false) : null;
        this.f38298i = aVar.toString();
    }

    public static int a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    static String a(String str, int i11, int i12, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        int iCharCount = i11;
        while (iCharCount < i12) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && (iCodePointAt < 128 || !z13)) {
                if (str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z10 && (!z11 || a(str, iCharCount, i12)))) && (iCodePointAt != 43 || !z12))) {
                    iCharCount += Character.charCount(iCodePointAt);
                }
            }
            com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
            cVar.a(str, i11, iCharCount);
            a(cVar, str, iCharCount, i12, str2, z10, z11, z12, z13, charset);
            return cVar.p();
        }
        return str.substring(i11, i12);
    }

    static String a(String str, int i11, int i12, boolean z10) {
        for (int i13 = i11; i13 < i12; i13++) {
            char cCharAt = str.charAt(i13);
            if (cCharAt == '%' || (cCharAt == '+' && z10)) {
                com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
                cVar.a(str, i11, i13);
                a(cVar, str, i13, i12, z10);
                return cVar.p();
            }
        }
        return str.substring(i11, i12);
    }

    static String a(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        return a(str, 0, str.length(), str2, z10, z11, z12, z13, null);
    }

    static String a(String str, boolean z10) {
        return a(str, 0, str.length(), z10);
    }

    private List<String> a(List<String> list, boolean z10) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            String str = list.get(i11);
            arrayList.add(str != null ? a(str, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static void a(com.mbridge.msdk.thrid.okio.c cVar, String str, int i11, int i12, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        com.mbridge.msdk.thrid.okio.c cVar2 = null;
        while (i11 < i12) {
            int iCodePointAt = str.codePointAt(i11);
            if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z12) {
                    cVar.a(z10 ? "+" : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z13) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && (!z10 || (z11 && !a(str, i11, i12)))))) {
                    if (cVar2 == null) {
                        cVar2 = new com.mbridge.msdk.thrid.okio.c();
                    }
                    if (charset == null || charset.equals(com.mbridge.msdk.thrid.okhttp.internal.c.f37910j)) {
                        cVar2.f(iCodePointAt);
                    } else {
                        cVar2.a(str, i11, Character.charCount(iCodePointAt) + i11, charset);
                    }
                    while (!cVar2.f()) {
                        byte b11 = cVar2.readByte();
                        cVar.writeByte(37);
                        char[] cArr = f38289j;
                        cVar.writeByte((int) cArr[((b11 & 255) >> 4) & 15]);
                        cVar.writeByte((int) cArr[b11 & 15]);
                    }
                } else {
                    cVar.f(iCodePointAt);
                }
            }
            i11 += Character.charCount(iCodePointAt);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0039  */
    static void a(com.mbridge.msdk.thrid.okio.c cVar, String str, int i11, int i12, boolean z10) {
        int i13;
        while (i11 < i12) {
            int iCodePointAt = str.codePointAt(i11);
            if (iCodePointAt == 37 && (i13 = i11 + 2) < i12) {
                int iA = com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i11 + 1));
                int iA2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i13));
                if (iA == -1 || iA2 == -1) {
                    cVar.f(iCodePointAt);
                } else {
                    cVar.writeByte((iA << 4) + iA2);
                    i11 = i13;
                }
            } else if (iCodePointAt == 43 && z10) {
                cVar.writeByte(32);
            } else {
                cVar.f(iCodePointAt);
            }
            i11 += Character.charCount(iCodePointAt);
        }
    }

    static void a(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11 += 2) {
            String str = list.get(i11);
            String str2 = list.get(i11 + 1);
            if (i11 > 0) {
                sb2.append('&');
            }
            sb2.append(str);
            if (str2 != null) {
                sb2.append('=');
                sb2.append(str2);
            }
        }
    }

    static boolean a(String str, int i11, int i12) {
        int i13 = i11 + 2;
        return i13 < i12 && str.charAt(i11) == '%' && com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i11 + 1)) != -1 && com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i13)) != -1;
    }

    public static q b(String str) {
        return new a().a(null, str).a();
    }

    static void b(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            sb2.append('/');
            sb2.append(list.get(i11));
        }
    }

    static List<String> d(String str) {
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 <= str.length()) {
            int iIndexOf = str.indexOf(38, i11);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i11);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i11, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i11, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i11 = iIndexOf + 1;
        }
        return arrayList;
    }

    public String a() {
        if (this.f38297h == null) {
            return null;
        }
        return this.f38298i.substring(this.f38298i.indexOf(35) + 1);
    }

    public String b() {
        if (this.f38292c.isEmpty()) {
            return "";
        }
        return this.f38298i.substring(this.f38298i.indexOf(58, this.f38290a.length() + 3) + 1, this.f38298i.indexOf(64));
    }

    public a c(String str) {
        try {
            return new a().a(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public String c() {
        int iIndexOf = this.f38298i.indexOf(47, this.f38290a.length() + 3);
        String str = this.f38298i;
        return this.f38298i.substring(iIndexOf, com.mbridge.msdk.thrid.okhttp.internal.c.a(str, iIndexOf, str.length(), "?#"));
    }

    public List<String> d() {
        int iIndexOf = this.f38298i.indexOf(47, this.f38290a.length() + 3);
        String str = this.f38298i;
        int iA = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iA) {
            int i11 = iIndexOf + 1;
            int iA2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f38298i, i11, iA, '/');
            arrayList.add(this.f38298i.substring(i11, iA2));
            iIndexOf = iA2;
        }
        return arrayList;
    }

    public q e(String str) {
        a aVarC = c(str);
        if (aVarC != null) {
            return aVarC.a();
        }
        return null;
    }

    public String e() {
        if (this.f38296g == null) {
            return null;
        }
        int iIndexOf = this.f38298i.indexOf(63) + 1;
        String str = this.f38298i;
        return this.f38298i.substring(iIndexOf, com.mbridge.msdk.thrid.okhttp.internal.c.a(str, iIndexOf, str.length(), '#'));
    }

    public boolean equals(Object obj) {
        return (obj instanceof q) && ((q) obj).f38298i.equals(this.f38298i);
    }

    public String f() {
        if (this.f38291b.isEmpty()) {
            return "";
        }
        int length = this.f38290a.length() + 3;
        String str = this.f38298i;
        return this.f38298i.substring(length, com.mbridge.msdk.thrid.okhttp.internal.c.a(str, length, str.length(), ":@"));
    }

    public String g() {
        return this.f38293d;
    }

    public boolean h() {
        return this.f38290a.equals("https");
    }

    public int hashCode() {
        return this.f38298i.hashCode();
    }

    public a i() {
        a aVar = new a();
        aVar.f38299a = this.f38290a;
        aVar.f38300b = f();
        aVar.f38301c = b();
        aVar.f38302d = this.f38293d;
        aVar.f38303e = this.f38294e != a(this.f38290a) ? this.f38294e : -1;
        aVar.f38304f.clear();
        aVar.f38304f.addAll(d());
        aVar.a(e());
        aVar.f38306h = a();
        return aVar;
    }

    public int j() {
        return this.f38294e;
    }

    public String k() {
        if (this.f38296g == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        a(sb2, this.f38296g);
        return sb2.toString();
    }

    public String l() {
        return this.f38290a;
    }

    public URI m() {
        String string = i().d().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e11) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e11);
            }
        }
    }

    public String toString() {
        return this.f38298i;
    }
}
