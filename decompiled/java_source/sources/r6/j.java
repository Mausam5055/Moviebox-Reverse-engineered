package r6;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f74168a = new j();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static q6.a f74169b = new q6.b();

    private j() {
    }

    public static final q6.a a() {
        return f74169b;
    }

    public static final void b(q6.a aVar) {
        Intrinsics.h(aVar, "<set-?>");
        f74169b = aVar;
    }
}
