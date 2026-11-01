package androidx.media3.common;

import androidx.media3.common.util.a1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final i f10063h = new b().d(1).c(2).e(3).a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final i f10064i = new b().d(1).c(1).e(2).a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f10065j = a1.C0(0);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f10066k = a1.C0(1);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f10067l = a1.C0(2);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f10068m = a1.C0(3);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f10069n = a1.C0(4);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f10070o = a1.C0(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f10074d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f10075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f10076f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10077g;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f10078a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f10079b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f10080c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte[] f10081d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f10082e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f10083f;

        public b() {
            this.f10078a = -1;
            this.f10079b = -1;
            this.f10080c = -1;
            this.f10082e = -1;
            this.f10083f = -1;
        }

        private b(i iVar) {
            this.f10078a = iVar.f10071a;
            this.f10079b = iVar.f10072b;
            this.f10080c = iVar.f10073c;
            this.f10081d = iVar.f10074d;
            this.f10082e = iVar.f10075e;
            this.f10083f = iVar.f10076f;
        }

        public i a() {
            return new i(this.f10078a, this.f10079b, this.f10080c, this.f10081d, this.f10082e, this.f10083f);
        }

        public b b(int i11) {
            this.f10083f = i11;
            return this;
        }

        public b c(int i11) {
            this.f10079b = i11;
            return this;
        }

        public b d(int i11) {
            this.f10078a = i11;
            return this;
        }

        public b e(int i11) {
            this.f10080c = i11;
            return this;
        }

        public b f(byte[] bArr) {
            this.f10081d = bArr;
            return this;
        }

        public b g(int i11) {
            this.f10082e = i11;
            return this;
        }
    }

    private i(int i11, int i12, int i13, byte[] bArr, int i14, int i15) {
        this.f10071a = i11;
        this.f10072b = i12;
        this.f10073c = i13;
        this.f10074d = bArr;
        this.f10075e = i14;
        this.f10076f = i15;
    }

    private static String b(int i11) {
        if (i11 == -1) {
            return "NA";
        }
        return i11 + "bit Chroma";
    }

    private static String c(int i11) {
        if (i11 == -1) {
            return "Unset color range";
        }
        if (i11 == 1) {
            return "Full range";
        }
        if (i11 == 2) {
            return "Limited range";
        }
        return "Undefined color range " + i11;
    }

    private static String d(int i11) {
        if (i11 == -1) {
            return "Unset color space";
        }
        if (i11 == 6) {
            return "BT2020";
        }
        if (i11 == 1) {
            return "BT709";
        }
        if (i11 == 2) {
            return "BT601";
        }
        return "Undefined color space " + i11;
    }

    private static String e(int i11) {
        if (i11 == -1) {
            return "Unset color transfer";
        }
        if (i11 == 10) {
            return "Gamma 2.2";
        }
        if (i11 == 1) {
            return "Linear";
        }
        if (i11 == 2) {
            return "sRGB";
        }
        if (i11 == 3) {
            return "SDR SMPTE 170M";
        }
        if (i11 == 6) {
            return "ST2084 PQ";
        }
        if (i11 == 7) {
            return "HLG";
        }
        return "Undefined color transfer " + i11;
    }

    public static boolean h(i iVar) {
        int i11;
        int i12;
        int i13;
        int i14;
        if (iVar == null) {
            return true;
        }
        int i15 = iVar.f10071a;
        return (i15 == -1 || i15 == 1 || i15 == 2) && ((i11 = iVar.f10072b) == -1 || i11 == 2) && (((i12 = iVar.f10073c) == -1 || i12 == 3) && iVar.f10074d == null && (((i13 = iVar.f10076f) == -1 || i13 == 8) && ((i14 = iVar.f10075e) == -1 || i14 == 8)));
    }

    public static int j(int i11) {
        if (i11 == 1) {
            return 1;
        }
        if (i11 != 9) {
            return (i11 == 4 || i11 == 5 || i11 == 6 || i11 == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int k(int i11) {
        if (i11 == 1) {
            return 3;
        }
        if (i11 == 4) {
            return 10;
        }
        if (i11 == 13) {
            return 2;
        }
        if (i11 == 16) {
            return 6;
        }
        if (i11 != 18) {
            return (i11 == 6 || i11 == 7) ? 3 : -1;
        }
        return 7;
    }

    private static String l(int i11) {
        if (i11 == -1) {
            return "NA";
        }
        return i11 + "bit Luma";
    }

    public b a() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f10071a == iVar.f10071a && this.f10072b == iVar.f10072b && this.f10073c == iVar.f10073c && Arrays.equals(this.f10074d, iVar.f10074d) && this.f10075e == iVar.f10075e && this.f10076f == iVar.f10076f;
    }

    public boolean f() {
        return (this.f10075e == -1 || this.f10076f == -1) ? false : true;
    }

    public boolean g() {
        return (this.f10071a == -1 || this.f10072b == -1 || this.f10073c == -1) ? false : true;
    }

    public int hashCode() {
        if (this.f10077g == 0) {
            this.f10077g = ((((((((((527 + this.f10071a) * 31) + this.f10072b) * 31) + this.f10073c) * 31) + Arrays.hashCode(this.f10074d)) * 31) + this.f10075e) * 31) + this.f10076f;
        }
        return this.f10077g;
    }

    public boolean i() {
        return f() || g();
    }

    public String m() {
        String str;
        String strG = g() ? a1.G("%s/%s/%s", d(this.f10071a), c(this.f10072b), e(this.f10073c)) : "NA/NA/NA";
        if (f()) {
            str = this.f10075e + "/" + this.f10076f;
        } else {
            str = "NA/NA";
        }
        return strG + "/" + str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ColorInfo(");
        sb2.append(d(this.f10071a));
        sb2.append(", ");
        sb2.append(c(this.f10072b));
        sb2.append(", ");
        sb2.append(e(this.f10073c));
        sb2.append(", ");
        sb2.append(this.f10074d != null);
        sb2.append(", ");
        sb2.append(l(this.f10075e));
        sb2.append(", ");
        sb2.append(b(this.f10076f));
        sb2.append(")");
        return sb2.toString();
    }
}
