package bi;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n f16544a = new n();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String[] f16545b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String[] f16546c = new String[0];

    private n() {
    }

    public static final boolean a(String serverApi) {
        Intrinsics.h(serverApi, "serverApi");
        return ArraysKt.O(f16545b, serverApi);
    }

    public static final boolean b(String serverApi) {
        Intrinsics.h(serverApi, "serverApi");
        return ArraysKt.O(f16546c, serverApi);
    }
}
