package androidx.p009lifecycle;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes.dex */
public abstract class RepeatOnLifecycleKt {
    public static final Object a(Lifecycle lifecycle, Lifecycle.State state, Function2 function2, Continuation continuation) {
        Object objE;
        if (state != Lifecycle.State.INITIALIZED) {
            return (lifecycle.b() != Lifecycle.State.DESTROYED && (objE = o0.e(new RepeatOnLifecycleKt$repeatOnLifecycle$3(lifecycle, state, function2, null), continuation)) == IntrinsicsKt.f()) ? objE : Unit.f67061a;
        }
        throw new IllegalArgumentException("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
    }

    public static final Object b(u uVar, Lifecycle.State state, Function2 function2, Continuation continuation) {
        Object objA = a(uVar.getLifecycle(), state, function2, continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
    }
}
