package l2;

/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f68652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f68653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68654c;

    private o(int i11, int i12, String str) {
        this.f68652a = i11;
        this.f68653b = i12;
        this.f68654c = str;
    }

    public static o a(androidx.media3.common.util.j0 j0Var) {
        String str;
        j0Var.X(2);
        int iH = j0Var.H();
        int i11 = iH >> 1;
        int iH2 = ((j0Var.H() >> 3) & 31) | ((iH & 1) << 5);
        if (i11 == 4 || i11 == 5 || i11 == 7 || i11 == 8) {
            str = "dvhe";
        } else if (i11 == 9) {
            str = "dvav";
        } else {
            if (i11 != 10) {
                return null;
            }
            str = "dav1";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(i11 < 10 ? ".0" : ".");
        sb2.append(i11);
        sb2.append(iH2 < 10 ? ".0" : ".");
        sb2.append(iH2);
        return new o(i11, iH2, sb2.toString());
    }
}
