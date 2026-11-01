package y4;

/* JADX INFO: loaded from: classes3.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f78899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f78900b;

    public i(int i11) {
        this.f78900b = i11 - 1;
        this.f78899a = new String[i11];
        a("$ref", 0, 4, 1185263);
        String str = com.alibaba.fastjson.a.DEFAULT_TYPE_KEY;
        a(str, 0, str.length(), com.alibaba.fastjson.a.DEFAULT_TYPE_KEY.hashCode());
    }

    private static String d(String str, int i11, int i12) {
        char[] cArr = new char[i12];
        str.getChars(i11, i12 + i11, cArr, 0);
        return new String(cArr);
    }

    public String a(String str, int i11, int i12, int i13) {
        return b(str, i11, i12, i13, false);
    }

    public String b(String str, int i11, int i12, int i13, boolean z10) {
        int i14 = this.f78900b & i13;
        String str2 = this.f78899a[i14];
        if (str2 == null) {
            if (i12 != str.length()) {
                str = d(str, i11, i12);
            }
            String strIntern = str.intern();
            this.f78899a[i14] = strIntern;
            return strIntern;
        }
        if (i13 == str2.hashCode() && i12 == str2.length() && str.startsWith(str2, i11)) {
            return str2;
        }
        String strD = d(str, i11, i12);
        if (z10) {
            this.f78899a[i14] = strD;
        }
        return strD;
    }

    public String c(char[] cArr, int i11, int i12, int i13) {
        int i14 = this.f78900b & i13;
        String str = this.f78899a[i14];
        if (str == null) {
            String strIntern = new String(cArr, i11, i12).intern();
            this.f78899a[i14] = strIntern;
            return strIntern;
        }
        if (i13 == str.hashCode() && i12 == str.length()) {
            for (int i15 = 0; i15 < i12; i15++) {
                if (cArr[i11 + i15] == str.charAt(i15)) {
                }
            }
            return str;
        }
        return new String(cArr, i11, i12);
    }
}
