package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.e0;
import androidx.compose.ui.input.pointer.w;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.o2;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import o0.a0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/e0;", "", "<anonymous>", "(Landroidx/compose/ui/input/pointer/e0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1", f = "Draggable.kt", l = {524}, m = "invokeSuspend")
final class DragGestureNode$initializePointerInputNode$1 extends SuspendLambda implements Function2<e0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DragGestureNode this$0;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$1", f = "Draggable.kt", l = {526}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ e0 $$this$SuspendingPointerInputModifierNode;
        final /* synthetic */ Function2<w, y.g, Unit> $onDrag;
        final /* synthetic */ Function0<Unit> $onDragCancel;
        final /* synthetic */ Function1<w, Unit> $onDragEnd;
        final /* synthetic */ Function3<w, w, y.g, Unit> $onDragStart;
        final /* synthetic */ Function0<Boolean> $shouldAwaitTouchSlop;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DragGestureNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(DragGestureNode dragGestureNode, e0 e0Var, Function3<? super w, ? super w, ? super y.g, Unit> function3, Function1<? super w, Unit> function1, Function0<Unit> function0, Function0<Boolean> function2, Function2<? super w, ? super y.g, Unit> function4, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = dragGestureNode;
            this.$$this$SuspendingPointerInputModifierNode = e0Var;
            this.$onDragStart = function3;
            this.$onDragEnd = function1;
            this.$onDragCancel = function0;
            this.$shouldAwaitTouchSlop = function2;
            this.$onDrag = function4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$$this$SuspendingPointerInputModifierNode, this.$onDragStart, this.$onDragEnd, this.$onDragCancel, this.$shouldAwaitTouchSlop, this.$onDrag, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x004e  */
        /* JADX WARN: Code duplicated, block: B:25:0x0060  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            n0 n0Var;
            CancellationException e11;
            kotlinx.coroutines.channels.d dVar;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                n0 n0Var2 = (n0) this.L$0;
                try {
                    Orientation orientation = this.this$0.f2662p;
                    e0 e0Var = this.$$this$SuspendingPointerInputModifierNode;
                    Function3<w, w, y.g, Unit> function3 = this.$onDragStart;
                    Function1<w, Unit> function1 = this.$onDragEnd;
                    Function0<Unit> function0 = this.$onDragCancel;
                    Function0<Boolean> function2 = this.$shouldAwaitTouchSlop;
                    Function2<w, y.g, Unit> function4 = this.$onDrag;
                    this.L$0 = n0Var2;
                    this.label = 1;
                    if (DragGestureDetectorKt.b(e0Var, function3, function1, function0, function2, orientation, function4, this) == objF) {
                        return objF;
                    }
                } catch (CancellationException e12) {
                    n0Var = n0Var2;
                    e11 = e12;
                    dVar = this.this$0.f2667u;
                    if (dVar != null) {
                        kotlinx.coroutines.channels.h.b(dVar.c(e.a.f2720a));
                    }
                    if (!o0.g(n0Var)) {
                        throw e11;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                n0Var = (n0) this.L$0;
                try {
                    ResultKt.b(obj);
                } catch (CancellationException e13) {
                    e11 = e13;
                    dVar = this.this$0.f2667u;
                    if (dVar != null) {
                        kotlinx.coroutines.channels.h.b(dVar.c(e.a.f2720a));
                    }
                    if (!o0.g(n0Var)) {
                        throw e11;
                    }
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DragGestureNode$initializePointerInputNode$1(DragGestureNode dragGestureNode, Continuation<? super DragGestureNode$initializePointerInputNode$1> continuation) {
        super(2, continuation);
        this.this$0 = dragGestureNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DragGestureNode$initializePointerInputNode$1 dragGestureNode$initializePointerInputNode$1 = new DragGestureNode$initializePointerInputNode$1(this.this$0, continuation);
        dragGestureNode$initializePointerInputNode$1.L$0 = obj;
        return dragGestureNode$initializePointerInputNode$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(e0 e0Var, Continuation<? super Unit> continuation) {
        return ((DragGestureNode$initializePointerInputNode$1) create(e0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            e0 e0Var = (e0) this.L$0;
            final androidx.compose.ui.input.pointer.util.a aVar = new androidx.compose.ui.input.pointer.util.a();
            final DragGestureNode dragGestureNode = this.this$0;
            Function3<w, w, y.g, Unit> function3 = new Function3<w, w, y.g, Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$onDragStart$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4) {
                    m31invoke0AR0LA0((w) obj2, (w) obj3, ((y.g) obj4).v());
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke-0AR0LA0, reason: not valid java name */
                public final void m31invoke0AR0LA0(w wVar, w wVar2, long j11) {
                    if (((Boolean) dragGestureNode.T1().invoke(wVar)).booleanValue()) {
                        if (!dragGestureNode.f2669w) {
                            if (dragGestureNode.f2667u == null) {
                                dragGestureNode.f2667u = kotlinx.coroutines.channels.g.b(Integer.MAX_VALUE, null, null, 6, null);
                            }
                            dragGestureNode.c2();
                        }
                        e0.c.c(aVar, wVar);
                        long jQ = y.g.q(wVar2.h(), j11);
                        kotlinx.coroutines.channels.d dVar = dragGestureNode.f2667u;
                        if (dVar != null) {
                            kotlinx.coroutines.channels.h.b(dVar.c(new e.c(jQ, null)));
                        }
                    }
                }
            };
            final DragGestureNode dragGestureNode2 = this.this$0;
            Function1<w, Unit> function1 = new Function1<w, Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$onDragEnd$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((w) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(w wVar) {
                    e0.c.c(aVar, wVar);
                    float fE = ((o2) androidx.compose.ui.node.e.a(dragGestureNode2, CompositionLocalsKt.j())).e();
                    long jB = aVar.b(a0.a(fE, fE));
                    aVar.e();
                    kotlinx.coroutines.channels.d dVar = dragGestureNode2.f2667u;
                    if (dVar != null) {
                        kotlinx.coroutines.channels.h.b(dVar.c(new e.d(DraggableKt.b(jB), null)));
                    }
                }
            };
            final DragGestureNode dragGestureNode3 = this.this$0;
            Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$onDragCancel$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m30invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m30invoke() {
                    kotlinx.coroutines.channels.d dVar = dragGestureNode3.f2667u;
                    if (dVar != null) {
                        kotlinx.coroutines.channels.h.b(dVar.c(e.a.f2720a));
                    }
                }
            };
            final DragGestureNode dragGestureNode4 = this.this$0;
            Function0<Boolean> function2 = new Function0<Boolean>() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$shouldAwaitTouchSlop$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return Boolean.valueOf(!dragGestureNode4.b2());
                }
            };
            final DragGestureNode dragGestureNode5 = this.this$0;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, e0Var, function3, function1, function0, function2, new Function2<w, y.g, Unit>() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$onDrag$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    m29invokeUv8p0NA((w) obj2, ((y.g) obj3).v());
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke-Uv8p0NA, reason: not valid java name */
                public final void m29invokeUv8p0NA(w wVar, long j11) {
                    e0.c.c(aVar, wVar);
                    kotlinx.coroutines.channels.d dVar = dragGestureNode5.f2667u;
                    if (dVar != null) {
                        kotlinx.coroutines.channels.h.b(dVar.c(new e.b(j11, null)));
                    }
                }
            }, null);
            this.label = 1;
            if (o0.e(anonymousClass1, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
