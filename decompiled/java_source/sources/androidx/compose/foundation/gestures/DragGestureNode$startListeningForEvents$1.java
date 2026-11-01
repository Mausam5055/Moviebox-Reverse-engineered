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
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1", f = "Draggable.kt", l = {431, 433, 435, 442, 444, 447}, m = "invokeSuspend")
final class DragGestureNode$startListeningForEvents$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ DragGestureNode this$0;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0007\u001a\u00020\u00052!\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00020\u00050\u0000H\u008a@¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lkotlin/Function1;", "Landroidx/compose/foundation/gestures/e$b;", "Lkotlin/ParameterName;", "name", "dragDelta", "", "processDelta", "<anonymous>", "(Lkotlin/jvm/functions/Function1;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1$1", f = "Draggable.kt", l = {438}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<Function1<? super e.b, ? extends Unit>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<e> $event;
        /* synthetic */ Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ DragGestureNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<e> objectRef, DragGestureNode dragGestureNode, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$event = objectRef;
            this.this$0 = dragGestureNode;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$event, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Function1<? super e.b, Unit> function1, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(function1, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x002f  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0049 -> B:25:0x005b). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0055 -> B:24:0x0058). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Function1 function1;
            e eVar;
            T t11;
            Ref.ObjectRef<e> objectRef;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                function1 = (Function1) this.L$0;
                eVar = this.$event.element;
                if (!(eVar instanceof e.d) || (eVar instanceof e.a)) {
                    return Unit.f67061a;
                }
                t11 = 0;
                e.b bVar = eVar instanceof e.b ? (e.b) eVar : null;
                if (bVar != null) {
                    function1.invoke(bVar);
                }
                objectRef = this.$event;
                kotlinx.coroutines.channels.d dVar = this.this$0.f2667u;
                if (dVar != null) {
                    this.L$0 = function1;
                    this.L$1 = objectRef;
                    this.label = 1;
                    obj = dVar.g(this);
                    if (obj == objF) {
                        return objF;
                    }
                }
                objectRef.element = t11;
                eVar = this.$event.element;
                if (eVar instanceof e.d) {
                }
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) this.L$1;
            function1 = (Function1) this.L$0;
            ResultKt.b(obj);
            t11 = (e) obj;
            objectRef.element = t11;
            eVar = this.$event.element;
            if (eVar instanceof e.d) {
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DragGestureNode$startListeningForEvents$1(DragGestureNode dragGestureNode, Continuation<? super DragGestureNode$startListeningForEvents$1> continuation) {
        super(2, continuation);
        this.this$0 = dragGestureNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DragGestureNode$startListeningForEvents$1 dragGestureNode$startListeningForEvents$1 = new DragGestureNode$startListeningForEvents$1(this.this$0, continuation);
        dragGestureNode$startListeningForEvents$1.L$0 = obj;
        return dragGestureNode$startListeningForEvents$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DragGestureNode$startListeningForEvents$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005e A[PHI: r4
  0x005e: PHI (r4v7 kotlinx.coroutines.n0) = 
  (r4v0 kotlinx.coroutines.n0)
  (r4v3 kotlinx.coroutines.n0)
  (r4v3 kotlinx.coroutines.n0)
  (r4v3 kotlinx.coroutines.n0)
  (r4v5 kotlinx.coroutines.n0)
  (r4v8 kotlinx.coroutines.n0)
 binds: [B:18:0x0056, B:45:0x00db, B:47:0x00ea, B:41:0x00d4, B:30:0x008d, B:11:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
    /* JADX WARN: Code duplicated, block: B:23:0x0071  */
    /* JADX WARN: Code duplicated, block: B:25:0x0080 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x0081  */
    /* JADX WARN: Code duplicated, block: B:28:0x0085  */
    /* JADX WARN: Code duplicated, block: B:31:0x008f  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c0 A[Catch: CancellationException -> 0x00d7, TryCatch #1 {CancellationException -> 0x00d7, blocks: (B:38:0x00ba, B:40:0x00c0, B:44:0x00d9, B:46:0x00dd), top: B:57:0x00ba }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00d6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d9 A[Catch: CancellationException -> 0x00d7, TryCatch #1 {CancellationException -> 0x00d7, blocks: (B:38:0x00ba, B:40:0x00c0, B:44:0x00d9, B:46:0x00dd), top: B:57:0x00ba }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00dd A[Catch: CancellationException -> 0x00d7, TRY_LEAVE, TryCatch #1 {CancellationException -> 0x00d7, blocks: (B:38:0x00ba, B:40:0x00c0, B:44:0x00d9, B:46:0x00dd), top: B:57:0x00ba }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00ec A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:52:0x00fd  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x008d -> B:19:0x005e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d4 -> B:19:0x005e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00db -> B:19:0x005e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00ea -> B:19:0x005e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00fa -> B:11:0x0027). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:34:0x00a3
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            Method dump skipped, instruction units count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
