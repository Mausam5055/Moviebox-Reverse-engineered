package com.apm.insight.runtime;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f19782a = -30000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static File f19783b;

    public static String a(long j11, String str) {
        try {
            return com.apm.insight.l.f.a(new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/TrackInfo/" + ((j11 - (j11 % 86400000)) / 86400000) + "/" + str), "\n");
        } catch (Throwable th2) {
            return th2.getMessage();
        }
    }

    public static void a() {
        File file = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/TrackInfo/");
        String[] list = file.list();
        if (list != null && list.length > 5) {
            Arrays.sort(list);
            for (int i11 = 0; i11 < list.length - 5; i11++) {
                com.apm.insight.l.f.a(new File(file, list[i11]));
            }
        }
    }

    public static void a(long j11) throws Throwable {
        if (j11 - f19782a < 30000) {
            return;
        }
        f19782a = j11;
        try {
            if (f19783b == null) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                f19783b = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/TrackInfo/" + ((jCurrentTimeMillis - (jCurrentTimeMillis % 86400000)) / 86400000) + "/" + com.apm.insight.e.f());
            }
            com.apm.insight.l.f.a(f19783b, String.valueOf(System.currentTimeMillis()), false);
        } catch (IOException unused) {
        }
    }
}
