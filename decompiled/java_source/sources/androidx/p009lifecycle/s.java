package androidx.p009lifecycle;

import androidx.compose.animation.core.j0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public abstract class s {
    public static final LifecycleCoroutineScope a(Lifecycle lifecycle) {
        LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl;
        Intrinsics.h(lifecycle, "<this>");
        do {
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl2 = (LifecycleCoroutineScopeImpl) lifecycle.c().get();
            if (lifecycleCoroutineScopeImpl2 != null) {
                return lifecycleCoroutineScopeImpl2;
            }
            lifecycleCoroutineScopeImpl = new LifecycleCoroutineScopeImpl(lifecycle, l2.b(null, 1, null).plus(y0.c().q()));
        } while (!j0.a(lifecycle.c(), null, lifecycleCoroutineScopeImpl));
        lifecycleCoroutineScopeImpl.c();
        return lifecycleCoroutineScopeImpl;
    }
}
