package androidx.p009lifecycle;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public abstract class PausingDispatcherKt {
    public static final Object a(Lifecycle lifecycle, Function2 function2, Continuation continuation) {
        return b(lifecycle, Lifecycle.State.RESUMED, function2, continuation);
    }

    public static final Object b(Lifecycle lifecycle, Lifecycle.State state, Function2 function2, Continuation continuation) {
        return i.g(y0.c().q(), new PausingDispatcherKt$whenStateAtLeast$2(lifecycle, state, function2, null), continuation);
    }
}
