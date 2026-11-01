package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
final class FlowKt__ErrorsKt$catchImpl$2 implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f67728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef f67729b;

    FlowKt__ErrorsKt$catchImpl$2(c cVar, Ref.ObjectRef objectRef) {
        this.f67728a = cVar;
        this.f67729b = objectRef;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Throwable] */
    @Override // kotlinx.coroutines.flow.c
    public final Object emit(Object obj, Continuation continuation) throws Throwable {
        FlowKt__ErrorsKt$catchImpl$2$emit$1 flowKt__ErrorsKt$catchImpl$2$emit$1;
        FlowKt__ErrorsKt$catchImpl$2 flowKt__ErrorsKt$catchImpl$2;
        if (continuation instanceof FlowKt__ErrorsKt$catchImpl$2$emit$1) {
            flowKt__ErrorsKt$catchImpl$2$emit$1 = (FlowKt__ErrorsKt$catchImpl$2$emit$1) continuation;
            int i11 = flowKt__ErrorsKt$catchImpl$2$emit$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                flowKt__ErrorsKt$catchImpl$2$emit$1.label = i11 - Integer.MIN_VALUE;
            } else {
                flowKt__ErrorsKt$catchImpl$2$emit$1 = new FlowKt__ErrorsKt$catchImpl$2$emit$1(this, continuation);
            }
        } else {
            flowKt__ErrorsKt$catchImpl$2$emit$1 = new FlowKt__ErrorsKt$catchImpl$2$emit$1(this, continuation);
        }
        Object obj2 = flowKt__ErrorsKt$catchImpl$2$emit$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = flowKt__ErrorsKt$catchImpl$2$emit$1.label;
        if (i12 != 0) {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            flowKt__ErrorsKt$catchImpl$2 = (FlowKt__ErrorsKt$catchImpl$2) flowKt__ErrorsKt$catchImpl$2$emit$1.L$0;
            try {
                ResultKt.b(obj2);
                return Unit.f67061a;
            } catch (Throwable th2) {
                th = th2;
                flowKt__ErrorsKt$catchImpl$2.f67729b.element = th;
                throw th;
            }
        }
        ResultKt.b(obj2);
        try {
            c cVar = this.f67728a;
            flowKt__ErrorsKt$catchImpl$2$emit$1.L$0 = this;
            flowKt__ErrorsKt$catchImpl$2$emit$1.label = 1;
            if (cVar.emit(obj, flowKt__ErrorsKt$catchImpl$2$emit$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        } catch (Throwable th3) {
            th = th3;
            flowKt__ErrorsKt$catchImpl$2 = this;
            flowKt__ErrorsKt$catchImpl$2.f67729b.element = th;
            throw th;
        }
    }
}
