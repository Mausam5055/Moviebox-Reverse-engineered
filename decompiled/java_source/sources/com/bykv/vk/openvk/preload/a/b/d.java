package com.bykv.vk.openvk.preload.a.b;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f20438a;

    static {
        String property = System.getProperty("java.version");
        int iA = a(property);
        if (iA == -1) {
            iA = b(property);
        }
        if (iA == -1) {
            iA = 6;
        }
        f20438a = iA;
    }

    public static int a() {
        return f20438a;
    }

    private static int a(String str) {
        try {
            String[] strArrSplit = str.split("[._]");
            int i11 = Integer.parseInt(strArrSplit[0]);
            return (i11 != 1 || strArrSplit.length <= 1) ? i11 : Integer.parseInt(strArrSplit[1]);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    private static int b(String str) {
        try {
            StringBuilder sb2 = new StringBuilder();
            for (int i11 = 0; i11 < str.length(); i11++) {
                char cCharAt = str.charAt(i11);
                if (!Character.isDigit(cCharAt)) {
                    break;
                }
                sb2.append(cCharAt);
            }
            return Integer.parseInt(sb2.toString());
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static boolean b() {
        return f20438a >= 9;
    }
}
