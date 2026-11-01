package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
final class FlowKt__LimitKt$dropWhile$1$1 implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Ref.BooleanRef f67734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f67735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Function2 f67736c;

    FlowKt__LimitKt$dropWhile$1$1(Ref.BooleanRef booleanRef, c cVar, Function2 function2) {
        this.f67734a = booleanRef;
        this.f67735b = cVar;
        this.f67736c = function2;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0074  */
    /* JADX WARN: Code duplicated, block: B:33:0x0087 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x008b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.c
    public final Object emit(Object obj, Continuation continuation) throws Throwable {
        FlowKt__LimitKt$dropWhile$1$1$emit$1 flowKt__LimitKt$dropWhile$1$1$emit$1;
        FlowKt__LimitKt$dropWhile$1$1 flowKt__LimitKt$dropWhile$1$1;
        c cVar;
        if (continuation instanceof FlowKt__LimitKt$dropWhile$1$1$emit$1) {
            flowKt__LimitKt$dropWhile$1$1$emit$1 = (FlowKt__LimitKt$dropWhile$1$1$emit$1) continuation;
            int i11 = flowKt__LimitKt$dropWhile$1$1$emit$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = i11 - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$dropWhile$1$1$emit$1 = new FlowKt__LimitKt$dropWhile$1$1$emit$1(this, continuation);
            }
        } else {
            flowKt__LimitKt$dropWhile$1$1$emit$1 = new FlowKt__LimitKt$dropWhile$1$1$emit$1(this, continuation);
        }
        Object objInvoke = flowKt__LimitKt$dropWhile$1$1$emit$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = flowKt__LimitKt$dropWhile$1$1$emit$1.label;
        if (i12 == 0) {
            ResultKt.b(objInvoke);
            if (this.f67734a.element) {
                c cVar2 = this.f67735b;
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = 1;
                if (cVar2.emit(obj, flowKt__LimitKt$dropWhile$1$1$emit$1) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            }
            Function2 function2 = this.f67736c;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = this;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = obj;
            flowKt__LimitKt$dropWhile$1$1$emit$1.label = 2;
            objInvoke = function2.invoke(obj, flowKt__LimitKt$dropWhile$1$1$emit$1);
            if (objInvoke == objF) {
                return objF;
            }
            flowKt__LimitKt$dropWhile$1$1 = this;
            if (!((Boolean) objInvoke).booleanValue()) {
                return Unit.f67061a;
            }
            flowKt__LimitKt$dropWhile$1$1.f67734a.element = true;
            cVar = flowKt__LimitKt$dropWhile$1$1.f67735b;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = null;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = null;
            flowKt__LimitKt$dropWhile$1$1$emit$1.label = 3;
            if (cVar.emit(obj, flowKt__LimitKt$dropWhile$1$1$emit$1) == objF) {
                return objF;
            }
        } else {
            if (i12 == 1) {
                ResultKt.b(objInvoke);
                return Unit.f67061a;
            }
            if (i12 == 2) {
                obj = flowKt__LimitKt$dropWhile$1$1$emit$1.L$1;
                flowKt__LimitKt$dropWhile$1$1 = (FlowKt__LimitKt$dropWhile$1$1) flowKt__LimitKt$dropWhile$1$1$emit$1.L$0;
                ResultKt.b(objInvoke);
                if (!((Boolean) objInvoke).booleanValue()) {
                    return Unit.f67061a;
                }
                flowKt__LimitKt$dropWhile$1$1.f67734a.element = true;
                cVar = flowKt__LimitKt$dropWhile$1$1.f67735b;
                flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = null;
                flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = null;
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = 3;
                if (cVar.emit(obj, flowKt__LimitKt$dropWhile$1$1$emit$1) == objF) {
                    return objF;
                }
            } else {
                if (i12 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objInvoke);
            }
        }
        return Unit.f67061a;
    }
}
