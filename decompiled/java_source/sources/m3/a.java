package m3;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f69123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f69124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f69125c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f69126d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f69127e;

    private a(int i11, int i12, int i13, int i14, int i15) {
        this.f69123a = i11;
        this.f69124b = i12;
        this.f69125c = i13;
        this.f69126d = i14;
        this.f69127e = i15;
    }

    public static a a(String str) {
        androidx.media3.common.util.a.a(str.startsWith("Format:"));
        String[] strArrSplit = TextUtils.split(str.substring(7), ",");
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        for (int i15 = 0; i15 < strArrSplit.length; i15++) {
            String strE = com.google.common.base.a.e(strArrSplit[i15].trim());
            strE.hashCode();
            switch (strE) {
                case "end":
                    i12 = i15;
                    break;
                case "text":
                    i14 = i15;
                    break;
                case "start":
                    i11 = i15;
                    break;
                case "style":
                    i13 = i15;
                    break;
            }
        }
        if (i11 == -1 || i12 == -1 || i14 == -1) {
            return null;
        }
        return new a(i11, i12, i13, i14, strArrSplit.length);
    }
}
