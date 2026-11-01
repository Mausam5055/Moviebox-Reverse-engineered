package bi;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f16540a = new l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String[] f16541b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String[] f16542c = new String[0];

    private l() {
    }

    public static final boolean a(String path) {
        Intrinsics.h(path, "path");
        return ArraysKt.O(f16541b, path);
    }

    public static final boolean b(String path) {
        Intrinsics.h(path, "path");
        return ArraysKt.O(f16542c, path);
    }
}
