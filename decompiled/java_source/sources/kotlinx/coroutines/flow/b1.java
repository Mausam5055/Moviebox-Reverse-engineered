package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
final class b1 extends AbstractFlow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function2 f67775a;

    public b1(Function2 function2) {
        this.f67775a = function2;
    }

    @Override // kotlinx.coroutines.flow.AbstractFlow
    public Object g(c cVar, Continuation continuation) {
        Object objInvoke = this.f67775a.invoke(cVar, continuation);
        return objInvoke == IntrinsicsKt.f() ? objInvoke : Unit.f67061a;
    }
}
