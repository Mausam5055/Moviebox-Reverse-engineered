package androidx.p009lifecycle;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
public abstract class LifecycleCoroutineScope implements n0 {
    public abstract Lifecycle a();

    public final t1 b(Function2 block) {
        Intrinsics.h(block, "block");
        return k.d(this, null, null, new LifecycleCoroutineScope$launchWhenResumed$1(this, block, null), 3, null);
    }
}
