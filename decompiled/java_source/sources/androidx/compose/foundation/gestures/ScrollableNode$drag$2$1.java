package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/h;", "", "<anonymous>", "(Landroidx/compose/foundation/gestures/h;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollableNode$drag$2$1", f = "Scrollable.kt", l = {344}, m = "invokeSuspend")
final class ScrollableNode$drag$2$1 extends SuspendLambda implements Function2<h, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<Function1<? super e.b, Unit>, Continuation<? super Unit>, Object> $forEachDelta;
    final /* synthetic */ ScrollingLogic $this_with;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ScrollableNode$drag$2$1(Function2<? super Function1<? super e.b, Unit>, ? super Continuation<? super Unit>, ? extends Object> function2, ScrollingLogic scrollingLogic, Continuation<? super ScrollableNode$drag$2$1> continuation) {
        super(2, continuation);
        this.$forEachDelta = function2;
        this.$this_with = scrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ScrollableNode$drag$2$1 scrollableNode$drag$2$1 = new ScrollableNode$drag$2$1(this.$forEachDelta, this.$this_with, continuation);
        scrollableNode$drag$2$1.L$0 = obj;
        return scrollableNode$drag$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(h hVar, Continuation<? super Unit> continuation) {
        return ((ScrollableNode$drag$2$1) create(hVar, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            final h hVar = (h) this.L$0;
            Function2<Function1<? super e.b, Unit>, Continuation<? super Unit>, Object> function2 = this.$forEachDelta;
            final ScrollingLogic scrollingLogic = this.$this_with;
            Function1<e.b, Unit> function1 = new Function1<e.b, Unit>() { // from class: androidx.compose.foundation.gestures.ScrollableNode$drag$2$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((e.b) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(e.b bVar) {
                    hVar.a(scrollingLogic.x(bVar.a()), androidx.compose.ui.input.nestedscroll.e.f4939a.b());
                }
            };
            this.label = 1;
            if (function2.invoke(function1, this) == objF) {
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
