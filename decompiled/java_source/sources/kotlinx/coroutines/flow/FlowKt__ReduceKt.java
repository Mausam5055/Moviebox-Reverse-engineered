package kotlinx.coroutines.flow;

import java.util.NoSuchElementException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: loaded from: classes7.dex */
abstract /* synthetic */ class FlowKt__ReduceKt {

    public static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f67742a;

        public a(Ref.ObjectRef objectRef) {
            this.f67742a = objectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlinx.coroutines.flow.c
        public Object emit(Object obj, Continuation continuation) {
            this.f67742a.element = obj;
            throw new AbortFlowException(this);
        }
    }

    public static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f67743a;

        public b(Ref.ObjectRef objectRef) {
            this.f67743a = objectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlinx.coroutines.flow.c
        public Object emit(Object obj, Continuation continuation) {
            this.f67743a.element = obj;
            throw new AbortFlowException(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.internal.z] */
    public static final Object a(kotlinx.coroutines.flow.b bVar, Continuation continuation) throws Throwable {
        FlowKt__ReduceKt$first$1 flowKt__ReduceKt$first$1;
        Ref.ObjectRef objectRef;
        AbortFlowException e11;
        c cVar;
        if (continuation instanceof FlowKt__ReduceKt$first$1) {
            flowKt__ReduceKt$first$1 = (FlowKt__ReduceKt$first$1) continuation;
            int i11 = flowKt__ReduceKt$first$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$1.label = i11 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(continuation);
            }
        } else {
            flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(continuation);
        }
        Object obj = flowKt__ReduceKt$first$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = flowKt__ReduceKt$first$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = kotlinx.coroutines.flow.internal.m.f67813a;
            c aVar = new a(objectRef2);
            try {
                flowKt__ReduceKt$first$1.L$0 = objectRef2;
                flowKt__ReduceKt$first$1.L$1 = aVar;
                flowKt__ReduceKt$first$1.label = 1;
                if (bVar.a(aVar, flowKt__ReduceKt$first$1) == objF) {
                    return objF;
                }
                objectRef = objectRef2;
            } catch (AbortFlowException e12) {
                objectRef = objectRef2;
                e11 = e12;
                cVar = aVar;
                kotlinx.coroutines.flow.internal.i.a(e11, cVar);
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            cVar = (a) flowKt__ReduceKt$first$1.L$1;
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$first$1.L$0;
            try {
                ResultKt.b(obj);
            } catch (AbortFlowException e13) {
                e11 = e13;
                kotlinx.coroutines.flow.internal.i.a(e11, cVar);
            }
        }
        T t11 = objectRef.element;
        if (t11 != kotlinx.coroutines.flow.internal.m.f67813a) {
            return t11;
        }
        throw new NoSuchElementException("Expected at least one element");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.internal.z] */
    public static final Object b(kotlinx.coroutines.flow.b bVar, Function2 function2, Continuation continuation) throws Throwable {
        FlowKt__ReduceKt$first$3 flowKt__ReduceKt$first$3;
        Function2 function3;
        Ref.ObjectRef objectRef;
        AbortFlowException e11;
        c cVar;
        if (continuation instanceof FlowKt__ReduceKt$first$3) {
            flowKt__ReduceKt$first$3 = (FlowKt__ReduceKt$first$3) continuation;
            int i11 = flowKt__ReduceKt$first$3.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$3.label = i11 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(continuation);
            }
        } else {
            flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(continuation);
        }
        Object obj = flowKt__ReduceKt$first$3.result;
        Object objF = IntrinsicsKt.f();
        int i12 = flowKt__ReduceKt$first$3.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = kotlinx.coroutines.flow.internal.m.f67813a;
            c flowKt__ReduceKt$first$$inlined$collectWhile$2 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2(function2, objectRef2);
            try {
                flowKt__ReduceKt$first$3.L$0 = function2;
                flowKt__ReduceKt$first$3.L$1 = objectRef2;
                flowKt__ReduceKt$first$3.L$2 = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                flowKt__ReduceKt$first$3.label = 1;
                if (bVar.a(flowKt__ReduceKt$first$$inlined$collectWhile$2, flowKt__ReduceKt$first$3) == objF) {
                    return objF;
                }
                function3 = function2;
                objectRef = objectRef2;
            } catch (AbortFlowException e12) {
                function3 = function2;
                objectRef = objectRef2;
                e11 = e12;
                cVar = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                kotlinx.coroutines.flow.internal.i.a(e11, cVar);
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            cVar = (FlowKt__ReduceKt$first$$inlined$collectWhile$2) flowKt__ReduceKt$first$3.L$2;
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$first$3.L$1;
            function3 = (Function2) flowKt__ReduceKt$first$3.L$0;
            try {
                ResultKt.b(obj);
            } catch (AbortFlowException e13) {
                e11 = e13;
                kotlinx.coroutines.flow.internal.i.a(e11, cVar);
            }
        }
        T t11 = objectRef.element;
        if (t11 != kotlinx.coroutines.flow.internal.m.f67813a) {
            return t11;
        }
        throw new NoSuchElementException("Expected at least one element matching the predicate " + function3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object c(kotlinx.coroutines.flow.b bVar, Continuation continuation) throws Throwable {
        FlowKt__ReduceKt$firstOrNull$1 flowKt__ReduceKt$firstOrNull$1;
        Ref.ObjectRef objectRef;
        AbortFlowException e11;
        c cVar;
        if (continuation instanceof FlowKt__ReduceKt$firstOrNull$1) {
            flowKt__ReduceKt$firstOrNull$1 = (FlowKt__ReduceKt$firstOrNull$1) continuation;
            int i11 = flowKt__ReduceKt$firstOrNull$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$firstOrNull$1.label = i11 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(continuation);
            }
        } else {
            flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(continuation);
        }
        Object obj = flowKt__ReduceKt$firstOrNull$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = flowKt__ReduceKt$firstOrNull$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            c bVar2 = new b(objectRef2);
            try {
                flowKt__ReduceKt$firstOrNull$1.L$0 = objectRef2;
                flowKt__ReduceKt$firstOrNull$1.L$1 = bVar2;
                flowKt__ReduceKt$firstOrNull$1.label = 1;
                if (bVar.a(bVar2, flowKt__ReduceKt$firstOrNull$1) == objF) {
                    return objF;
                }
                objectRef = objectRef2;
            } catch (AbortFlowException e12) {
                objectRef = objectRef2;
                e11 = e12;
                cVar = bVar2;
                kotlinx.coroutines.flow.internal.i.a(e11, cVar);
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            cVar = (b) flowKt__ReduceKt$firstOrNull$1.L$1;
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$firstOrNull$1.L$0;
            try {
                ResultKt.b(obj);
            } catch (AbortFlowException e13) {
                e11 = e13;
                kotlinx.coroutines.flow.internal.i.a(e11, cVar);
            }
        }
        return objectRef.element;
    }
}
