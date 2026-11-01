package bi;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f16474a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String[] f16475b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String[] f16476c = new String[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String[] f16477d = new String[0];

    private d() {
    }

    public static final boolean a(String host) {
        Intrinsics.h(host, "host");
        return ArraysKt.O(f16477d, host);
    }

    public static final boolean b(String host) {
        Intrinsics.h(host, "host");
        return ArraysKt.O(f16475b, host);
    }

    public static final boolean c(String host) {
        Intrinsics.h(host, "host");
        return ArraysKt.O(f16476c, host);
    }

    public static final boolean d() {
        return f16477d.length == 0;
    }

    public final void e(String[] hosts) {
        Intrinsics.h(hosts, "hosts");
        f16477d = hosts;
    }
}
