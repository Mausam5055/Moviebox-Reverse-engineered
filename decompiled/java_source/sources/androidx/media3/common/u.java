package androidx.media3.common;

import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public abstract class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashSet f10343a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f10344b = "media3.common";

    public static synchronized void a(String str) {
        if (f10343a.add(str)) {
            f10344b += ", " + str;
        }
    }

    public static synchronized String b() {
        return f10344b;
    }
}
