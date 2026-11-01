package com.mbridge.msdk.thrid.okhttp;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f38287a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List<String> f38288a = new ArrayList(20);

        a a(String str) {
            int iIndexOf = str.indexOf(":", 1);
            if (iIndexOf != -1) {
                return b(str.substring(0, iIndexOf), str.substring(iIndexOf + 1));
            }
            return str.startsWith(":") ? b("", str.substring(1)) : b("", str);
        }

        public a a(String str, String str2) {
            p.a(str);
            p.a(str2, str);
            return b(str, str2);
        }

        public p a() {
            return new p(this);
        }

        public a b(String str) {
            int i11 = 0;
            while (i11 < this.f38288a.size()) {
                if (str.equalsIgnoreCase(this.f38288a.get(i11))) {
                    this.f38288a.remove(i11);
                    this.f38288a.remove(i11);
                    i11 -= 2;
                }
                i11 += 2;
            }
            return this;
        }

        a b(String str, String str2) {
            this.f38288a.add(str);
            this.f38288a.add(str2.trim());
            return this;
        }

        public a c(String str, String str2) {
            p.a(str);
            p.a(str2, str);
            b(str);
            b(str, str2);
            return this;
        }
    }

    p(a aVar) {
        List<String> list = aVar.f38288a;
        this.f38287a = (String[]) list.toArray(new String[list.size()]);
    }

    private static String a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    static void a(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (str.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt <= ' ' || cCharAt >= 127) {
                throw new IllegalArgumentException(com.mbridge.msdk.thrid.okhttp.internal.c.a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i11), str));
            }
        }
    }

    static void a(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("value for name " + str2 + " == null");
        }
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                throw new IllegalArgumentException(com.mbridge.msdk.thrid.okhttp.internal.c.a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt), Integer.valueOf(i11), str2, str));
            }
        }
    }

    public a a() {
        a aVar = new a();
        Collections.addAll(aVar.f38288a, this.f38287a);
        return aVar;
    }

    public String a(int i11) {
        return this.f38287a[i11 * 2];
    }

    public int b() {
        return this.f38287a.length / 2;
    }

    public String b(int i11) {
        return this.f38287a[(i11 * 2) + 1];
    }

    public String b(String str) {
        return a(this.f38287a, str);
    }

    public List<String> c(String str) {
        int iB = b();
        ArrayList arrayList = null;
        for (int i11 = 0; i11 < iB; i11++) {
            if (str.equalsIgnoreCase(a(i11))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(b(i11));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    public boolean equals(Object obj) {
        return (obj instanceof p) && Arrays.equals(((p) obj).f38287a, this.f38287a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f38287a);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int iB = b();
        for (int i11 = 0; i11 < iB; i11++) {
            sb2.append(a(i11));
            sb2.append(": ");
            sb2.append(b(i11));
            sb2.append("\n");
        }
        return sb2.toString();
    }
}
