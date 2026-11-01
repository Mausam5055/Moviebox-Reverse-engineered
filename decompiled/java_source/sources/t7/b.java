package t7;

import b8.c;

/* JADX INFO: loaded from: classes4.dex */
public class b implements a {
    private static String b(String str) {
        StringBuilder sb2 = new StringBuilder(str.length() + 10);
        String[] strArrSplit = str.split(c.f16248a);
        int length = strArrSplit.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i11 != 0) {
                sb2.append(c.f16248a);
            }
            String str2 = strArrSplit[i11];
            sb2.append((char) 9553);
            sb2.append(str2);
        }
        return sb2.toString();
    }

    @Override // s7.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public String a(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        String[] strArr2 = new String[strArr.length];
        int i11 = 0;
        for (String str : strArr) {
            if (str != null) {
                strArr2[i11] = str;
                i11++;
            }
        }
        if (i11 == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("╔═══════════════════════════════════════════════════════════════════════════════════════════════════");
        sb2.append(c.f16248a);
        for (int i12 = 0; i12 < i11; i12++) {
            sb2.append(b(strArr2[i12]));
            if (i12 != i11 - 1) {
                sb2.append(c.f16248a);
                sb2.append("╟───────────────────────────────────────────────────────────────────────────────────────────────────");
                sb2.append(c.f16248a);
            } else {
                sb2.append(c.f16248a);
                sb2.append("╚═══════════════════════════════════════════════════════════════════════════════════════════════════");
            }
        }
        return sb2.toString();
    }
}
