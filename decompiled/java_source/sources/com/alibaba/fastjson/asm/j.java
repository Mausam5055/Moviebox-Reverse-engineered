package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final j f18129e = new j(0, null, 1443168256, 1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final j f18130f = new j(1, null, 1509950721, 1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final j f18131g = new j(2, null, 1124075009, 1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final j f18132h = new j(3, null, 1107297537, 1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final j f18133i = new j(4, null, 1392510721, 1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final j f18134j = new j(5, null, 1224736769, 1);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final j f18135k = new j(6, null, 1174536705, 1);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final j f18136l = new j(7, null, 1241579778, 1);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final j f18137m = new j(8, null, 1141048066, 1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final int f18138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final char[] f18139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f18140c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f18141d;

    private j(int i11, char[] cArr, int i12, int i13) {
        this.f18138a = i11;
        this.f18139b = cArr;
        this.f18140c = i12;
        this.f18141d = i13;
    }

    static j[] a(String str) {
        char[] charArray = str.toCharArray();
        int i11 = 1;
        int i12 = 1;
        int i13 = 0;
        while (true) {
            int i14 = i12 + 1;
            char c11 = charArray[i12];
            if (c11 == ')') {
                break;
            }
            if (c11 == 'L') {
                while (true) {
                    i12 = i14 + 1;
                    if (charArray[i14] == ';') {
                        break;
                    }
                    i14 = i12;
                }
                i13++;
            } else {
                if (c11 != '[') {
                    i13++;
                }
                i12 = i14;
            }
        }
        j[] jVarArr = new j[i13];
        int i15 = 0;
        while (charArray[i11] != ')') {
            j jVarH = h(charArray, i11);
            jVarArr[i15] = jVarH;
            i11 += jVarH.f18141d + (jVarH.f18138a == 10 ? 2 : 0);
            i15++;
        }
        return jVarArr;
    }

    public static int b(String str) {
        int i11;
        int i12 = 1;
        int i13 = 1;
        int i14 = 1;
        while (true) {
            i11 = i13 + 1;
            char cCharAt = str.charAt(i13);
            if (cCharAt == ')') {
                break;
            }
            if (cCharAt == 'L') {
                while (true) {
                    i13 = i11 + 1;
                    if (str.charAt(i11) == ';') {
                        break;
                    }
                    i11 = i13;
                }
                i14++;
            } else {
                i14 = (cCharAt == 'D' || cCharAt == 'J') ? i14 + 2 : i14 + 1;
                i13 = i11;
            }
        }
        char cCharAt2 = str.charAt(i11);
        int i15 = i14 << 2;
        if (cCharAt2 == 'V') {
            i12 = 0;
        } else if (cCharAt2 == 'D' || cCharAt2 == 'J') {
            i12 = 2;
        }
        return i15 | i12;
    }

    private int e() {
        int i11 = 1;
        while (this.f18139b[this.f18140c + i11] == '[') {
            i11++;
        }
        return i11;
    }

    public static j g(String str) {
        return h(str.toCharArray(), 0);
    }

    private static j h(char[] cArr, int i11) {
        char c11;
        char c12 = cArr[i11];
        if (c12 == 'F') {
            return f18135k;
        }
        if (c12 == 'S') {
            return f18133i;
        }
        if (c12 == 'V') {
            return f18129e;
        }
        if (c12 == 'I') {
            return f18134j;
        }
        if (c12 == 'J') {
            return f18136l;
        }
        if (c12 == 'Z') {
            return f18130f;
        }
        if (c12 != '[') {
            switch (c12) {
                case 'B':
                    return f18132h;
                case 'C':
                    return f18131g;
                case 'D':
                    return f18137m;
                default:
                    int i12 = 1;
                    while (cArr[i11 + i12] != ';') {
                        i12++;
                    }
                    return new j(10, cArr, i11 + 1, i12 - 1);
            }
        }
        int i13 = 1;
        while (true) {
            c11 = cArr[i11 + i13];
            if (c11 != '[') {
                break;
            }
            i13++;
        }
        if (c11 == 'L') {
            do {
                i13++;
            } while (cArr[i11 + i13] != ';');
        }
        return new j(9, cArr, i11, i13 + 1);
    }

    protected String c() {
        switch (this.f18138a) {
            case 0:
                return "void";
            case 1:
                return "boolean";
            case 2:
                return "char";
            case 3:
                return "byte";
            case 4:
                return "short";
            case 5:
                return "int";
            case 6:
                return "float";
            case 7:
                return "long";
            case 8:
                return "double";
            case 9:
                StringBuilder sb2 = new StringBuilder(h(this.f18139b, this.f18140c + e()).c());
                for (int iE = e(); iE > 0; iE--) {
                    sb2.append("[]");
                }
                return sb2.toString();
            default:
                return new String(this.f18139b, this.f18140c, this.f18141d).replace('/', '.');
        }
    }

    String d() {
        return new String(this.f18139b, this.f18140c, this.f18141d);
    }

    public String f() {
        return new String(this.f18139b, this.f18140c, this.f18141d);
    }
}
