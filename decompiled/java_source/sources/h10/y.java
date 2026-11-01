package h10;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes7.dex */
public final class y {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final y f64251e = new y(0, "VZCBSIFJD", 0, 1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final y f64252f = new y(1, "VZCBSIFJD", 1, 2);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final y f64253g = new y(2, "VZCBSIFJD", 2, 3);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final y f64254h = new y(3, "VZCBSIFJD", 3, 4);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final y f64255i = new y(4, "VZCBSIFJD", 4, 5);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final y f64256j = new y(5, "VZCBSIFJD", 5, 6);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final y f64257k = new y(6, "VZCBSIFJD", 6, 7);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final y f64258l = new y(7, "VZCBSIFJD", 7, 8);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final y f64259m = new y(8, "VZCBSIFJD", 8, 9);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f64260a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f64261b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f64262c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f64263d;

    private y(int i11, String str, int i12, int i13) {
        this.f64260a = i11;
        this.f64261b = str;
        this.f64262c = i12;
        this.f64263d = i13;
    }

    private static void a(Class cls, StringBuilder sb2) {
        char c11;
        while (cls.isArray()) {
            sb2.append('[');
            cls = cls.getComponentType();
        }
        if (!cls.isPrimitive()) {
            sb2.append('L');
            String name = cls.getName();
            int length = name.length();
            for (int i11 = 0; i11 < length; i11++) {
                char cCharAt = name.charAt(i11);
                if (cCharAt == '.') {
                    cCharAt = '/';
                }
                sb2.append(cCharAt);
            }
            sb2.append(';');
            return;
        }
        if (cls == Integer.TYPE) {
            c11 = 'I';
        } else if (cls == Void.TYPE) {
            c11 = 'V';
        } else if (cls == Boolean.TYPE) {
            c11 = 'Z';
        } else if (cls == Byte.TYPE) {
            c11 = 'B';
        } else if (cls == Character.TYPE) {
            c11 = 'C';
        } else if (cls == Short.TYPE) {
            c11 = 'S';
        } else if (cls == Double.TYPE) {
            c11 = 'D';
        } else if (cls == Float.TYPE) {
            c11 = 'F';
        } else {
            if (cls != Long.TYPE) {
                throw new AssertionError();
            }
            c11 = 'J';
        }
        sb2.append(c11);
    }

    public static y[] b(String str) {
        int i11 = 0;
        int i12 = 0;
        int iIndexOf = 1;
        while (str.charAt(iIndexOf) != ')') {
            while (str.charAt(iIndexOf) == '[') {
                iIndexOf++;
            }
            int i13 = iIndexOf + 1;
            iIndexOf = str.charAt(iIndexOf) == 'L' ? str.indexOf(59, i13) + 1 : i13;
            i12++;
        }
        y[] yVarArr = new y[i12];
        int i14 = 1;
        while (str.charAt(i14) != ')') {
            int i15 = i14;
            while (str.charAt(i15) == '[') {
                i15++;
            }
            int iIndexOf2 = i15 + 1;
            if (str.charAt(i15) == 'L') {
                iIndexOf2 = str.indexOf(59, iIndexOf2) + 1;
            }
            yVarArr[i11] = o(str, i14, iIndexOf2);
            i11++;
            i14 = iIndexOf2;
        }
        return yVarArr;
    }

    public static int c(String str) {
        char cCharAt = str.charAt(1);
        int i11 = 1;
        int i12 = 1;
        while (cCharAt != ')') {
            if (cCharAt == 'J' || cCharAt == 'D') {
                i11++;
                i12 += 2;
            } else {
                while (str.charAt(i11) == '[') {
                    i11++;
                }
                int iIndexOf = i11 + 1;
                if (str.charAt(i11) == 'L') {
                    iIndexOf = str.indexOf(59, iIndexOf) + 1;
                }
                i12++;
                i11 = iIndexOf;
            }
            cCharAt = str.charAt(i11);
        }
        char cCharAt2 = str.charAt(i11 + 1);
        if (cCharAt2 == 'V') {
            return i12 << 2;
        }
        return (i12 << 2) | ((cCharAt2 == 'J' || cCharAt2 == 'D') ? 2 : 1);
    }

    public static String d(Constructor constructor) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('(');
        for (Class<?> cls : constructor.getParameterTypes()) {
            a(cls, sb2);
        }
        sb2.append(")V");
        return sb2.toString();
    }

    public static String f(Class cls) {
        StringBuilder sb2 = new StringBuilder();
        a(cls, sb2);
        return sb2.toString();
    }

    public static String h(Class cls) {
        return cls.getName().replace('.', '/');
    }

    public static String i(Method method) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('(');
        for (Class<?> cls : method.getParameterTypes()) {
            a(cls, sb2);
        }
        sb2.append(')');
        a(method.getReturnType(), sb2);
        return sb2.toString();
    }

    public static y j(String str) {
        return new y(11, str, 0, str.length());
    }

    public static y k(String str) {
        return new y(str.charAt(0) == '[' ? 9 : 12, str, 0, str.length());
    }

    public static y m(Class cls) {
        if (!cls.isPrimitive()) {
            return n(f(cls));
        }
        if (cls == Integer.TYPE) {
            return f64256j;
        }
        if (cls == Void.TYPE) {
            return f64251e;
        }
        if (cls == Boolean.TYPE) {
            return f64252f;
        }
        if (cls == Byte.TYPE) {
            return f64254h;
        }
        if (cls == Character.TYPE) {
            return f64253g;
        }
        if (cls == Short.TYPE) {
            return f64255i;
        }
        if (cls == Double.TYPE) {
            return f64259m;
        }
        if (cls == Float.TYPE) {
            return f64257k;
        }
        if (cls == Long.TYPE) {
            return f64258l;
        }
        throw new AssertionError();
    }

    public static y n(String str) {
        return o(str, 0, str.length());
    }

    private static y o(String str, int i11, int i12) {
        char cCharAt = str.charAt(i11);
        if (cCharAt == '(') {
            return new y(11, str, i11, i12);
        }
        if (cCharAt == 'F') {
            return f64257k;
        }
        if (cCharAt == 'L') {
            return new y(10, str, i11 + 1, i12 - 1);
        }
        if (cCharAt == 'S') {
            return f64255i;
        }
        if (cCharAt == 'V') {
            return f64251e;
        }
        if (cCharAt == 'I') {
            return f64256j;
        }
        if (cCharAt == 'J') {
            return f64258l;
        }
        if (cCharAt == 'Z') {
            return f64252f;
        }
        if (cCharAt == '[') {
            return new y(9, str, i11, i12);
        }
        switch (cCharAt) {
            case 'B':
                return f64254h;
            case 'C':
                return f64253g;
            case 'D':
                return f64259m;
            default:
                throw new IllegalArgumentException();
        }
    }

    public String e() {
        int i11 = this.f64260a;
        if (i11 == 10) {
            return this.f64261b.substring(this.f64262c - 1, this.f64263d + 1);
        }
        if (i11 != 12) {
            return this.f64261b.substring(this.f64262c, this.f64263d);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('L');
        sb2.append((CharSequence) this.f64261b, this.f64262c, this.f64263d);
        sb2.append(';');
        return sb2.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        int i11 = this.f64260a;
        if (i11 == 12) {
            i11 = 10;
        }
        int i12 = yVar.f64260a;
        if (i11 != (i12 != 12 ? i12 : 10)) {
            return false;
        }
        int i13 = this.f64262c;
        int i14 = this.f64263d;
        int i15 = yVar.f64262c;
        if (i14 - i13 != yVar.f64263d - i15) {
            return false;
        }
        while (i13 < i14) {
            if (this.f64261b.charAt(i13) != yVar.f64261b.charAt(i15)) {
                return false;
            }
            i13++;
            i15++;
        }
        return true;
    }

    public String g() {
        return this.f64261b.substring(this.f64262c, this.f64263d);
    }

    public int hashCode() {
        int i11 = this.f64260a;
        int iCharAt = (i11 == 12 ? 10 : i11) * 13;
        if (i11 >= 9) {
            int i12 = this.f64263d;
            for (int i13 = this.f64262c; i13 < i12; i13++) {
                iCharAt = (iCharAt + this.f64261b.charAt(i13)) * 17;
            }
        }
        return iCharAt;
    }

    public int l() {
        int i11 = this.f64260a;
        if (i11 == 12) {
            return 10;
        }
        return i11;
    }

    public String toString() {
        return e();
    }
}
