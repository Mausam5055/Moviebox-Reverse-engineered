package h1;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f64052a = new ArrayList();

    public final void a(b listener) {
        Intrinsics.h(listener, "listener");
        this.f64052a.add(listener);
    }

    public final void b() {
        for (int iN = CollectionsKt.n(this.f64052a); -1 < iN; iN--) {
            ((b) this.f64052a.get(iN)).onRelease();
        }
    }

    public final void c(b listener) {
        Intrinsics.h(listener, "listener");
        this.f64052a.remove(listener);
    }
}
