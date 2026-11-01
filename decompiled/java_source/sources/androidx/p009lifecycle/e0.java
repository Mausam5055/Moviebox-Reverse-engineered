package androidx.p009lifecycle;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class e0 extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f9587a = new i();

    @Override // kotlinx.coroutines.i0
    public void dispatch(CoroutineContext context, Runnable block) {
        Intrinsics.h(context, "context");
        Intrinsics.h(block, "block");
        this.f9587a.c(context, block);
    }

    @Override // kotlinx.coroutines.i0
    public boolean isDispatchNeeded(CoroutineContext context) {
        Intrinsics.h(context, "context");
        if (y0.c().q().isDispatchNeeded(context)) {
            return true;
        }
        return !this.f9587a.b();
    }
}
