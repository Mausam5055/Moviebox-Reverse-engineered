package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
abstract /* synthetic */ class FlowKt__CollectKt {
    public static final Object a(b bVar, Continuation continuation) {
        Object objA = bVar.a(kotlinx.coroutines.flow.internal.l.f67812a, continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
    }

    public static final Object b(b bVar, Function2 function2, Continuation continuation) {
        Object objH = d.h(r.b(d.w(bVar, function2), 0, null, 2, null), continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f67061a;
    }

    public static final Object c(c cVar, b bVar, Continuation continuation) {
        d.o(cVar);
        Object objA = bVar.a(cVar, continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
    }

    public static final t1 d(b bVar, kotlinx.coroutines.n0 n0Var) {
        return kotlinx.coroutines.k.d(n0Var, null, null, new FlowKt__CollectKt$launchIn$1(bVar, null), 3, null);
    }
}
