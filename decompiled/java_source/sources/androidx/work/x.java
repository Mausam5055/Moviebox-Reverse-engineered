package androidx.work;

import androidx.p009lifecycle.LiveData;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class x implements w {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LiveData f16061c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.common.util.concurrent.r f16062d;

    public x(LiveData state, com.google.common.util.concurrent.r future) {
        Intrinsics.h(state, "state");
        Intrinsics.h(future, "future");
        this.f16061c = state;
        this.f16062d = future;
    }

    @Override // androidx.work.w
    public com.google.common.util.concurrent.r a() {
        return this.f16062d;
    }
}
