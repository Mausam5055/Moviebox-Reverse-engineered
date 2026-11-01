package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
final class DistinctFlowImpl implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f67714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f67715b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function2 f67716c;

    public DistinctFlowImpl(b bVar, Function1 function1, Function2 function2) {
        this.f67714a = bVar;
        this.f67715b = function1;
        this.f67716c = function2;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, kotlinx.coroutines.internal.z] */
    @Override // kotlinx.coroutines.flow.b
    public Object a(c cVar, Continuation continuation) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = kotlinx.coroutines.flow.internal.m.f67813a;
        Object objA = this.f67714a.a(new DistinctFlowImpl$collect$2(this, objectRef, cVar), continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
    }
}
