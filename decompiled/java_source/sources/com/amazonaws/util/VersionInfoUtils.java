package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;

/* JADX INFO: loaded from: classes2.dex */
public class VersionInfoUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile String f19018a = "2.22.5";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile String f19019b = "android";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile String f19020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Log f19021d = LogFactory.b(VersionInfoUtils.class);

    public static String a() {
        return f19019b;
    }

    public static String b() {
        if (f19020c == null) {
            synchronized (VersionInfoUtils.class) {
                try {
                    if (f19020c == null) {
                        d();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19020c;
    }

    public static String c() {
        return f19018a;
    }

    private static void d() {
        f19020c = f();
    }

    private static String e(String str) {
        return str.replace(' ', '_');
    }

    static String f() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("aws-sdk-");
        sb2.append(StringUtils.b(a()));
        sb2.append("/");
        sb2.append(c());
        sb2.append(" ");
        sb2.append(e(System.getProperty("os.name")));
        sb2.append("/");
        sb2.append(e(System.getProperty("os.version")));
        sb2.append(" ");
        sb2.append(e(System.getProperty("java.vm.name")));
        sb2.append("/");
        sb2.append(e(System.getProperty("java.vm.version")));
        sb2.append("/");
        sb2.append(e(System.getProperty("java.version")));
        String property = System.getProperty("user.language");
        String property2 = System.getProperty("user.region");
        if (property != null && property2 != null) {
            sb2.append(" ");
            sb2.append(e(property));
            sb2.append("_");
            sb2.append(e(property2));
        }
        return sb2.toString();
    }
}
