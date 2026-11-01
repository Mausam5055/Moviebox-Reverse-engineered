package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
final class DistinctFlowImpl$collect$2 implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ DistinctFlowImpl f67717a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef f67718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ c f67719c;

    DistinctFlowImpl$collect$2(DistinctFlowImpl distinctFlowImpl, Ref.ObjectRef objectRef, c cVar) {
        this.f67717a = distinctFlowImpl;
        this.f67718b = objectRef;
        this.f67719c = cVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v4, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlinx.coroutines.flow.c
    public final Object emit(Object obj, Continuation continuation) throws Throwable {
        DistinctFlowImpl$collect$2$emit$1 distinctFlowImpl$collect$2$emit$1;
        if (continuation instanceof DistinctFlowImpl$collect$2$emit$1) {
            distinctFlowImpl$collect$2$emit$1 = (DistinctFlowImpl$collect$2$emit$1) continuation;
            int i11 = distinctFlowImpl$collect$2$emit$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                distinctFlowImpl$collect$2$emit$1.label = i11 - Integer.MIN_VALUE;
            } else {
                distinctFlowImpl$collect$2$emit$1 = new DistinctFlowImpl$collect$2$emit$1(this, continuation);
            }
        } else {
            distinctFlowImpl$collect$2$emit$1 = new DistinctFlowImpl$collect$2$emit$1(this, continuation);
        }
        Object obj2 = distinctFlowImpl$collect$2$emit$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = distinctFlowImpl$collect$2$emit$1.label;
        if (i12 == 0) {
            ResultKt.b(obj2);
            ?? Invoke = this.f67717a.f67715b.invoke(obj);
            T t11 = this.f67718b.element;
            if (t11 != kotlinx.coroutines.flow.internal.m.f67813a && ((Boolean) this.f67717a.f67716c.invoke(t11, Invoke)).booleanValue()) {
                return Unit.f67061a;
            }
            this.f67718b.element = Invoke;
            c cVar = this.f67719c;
            distinctFlowImpl$collect$2$emit$1.label = 1;
            if (cVar.emit(obj, distinctFlowImpl$collect$2$emit$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj2);
        }
        return Unit.f67061a;
    }
}
