package androidx.compose.foundation.gestures;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/c;", "", "<anonymous>", "(Landroidx/compose/ui/input/pointer/c;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.ForEachGestureKt$awaitEachGesture$2", f = "ForEachGesture.kt", l = {104, 107, 112}, m = "invokeSuspend")
final class ForEachGestureKt$awaitEachGesture$2 extends RestrictedSuspendLambda implements Function2<androidx.compose.ui.input.pointer.c, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<androidx.compose.ui.input.pointer.c, Continuation<? super Unit>, Object> $block;
    final /* synthetic */ CoroutineContext $currentContext;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ForEachGestureKt$awaitEachGesture$2(CoroutineContext coroutineContext, Function2<? super androidx.compose.ui.input.pointer.c, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super ForEachGestureKt$awaitEachGesture$2> continuation) {
        super(2, continuation);
        this.$currentContext = coroutineContext;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ForEachGestureKt$awaitEachGesture$2 forEachGestureKt$awaitEachGesture$2 = new ForEachGestureKt$awaitEachGesture$2(this.$currentContext, this.$block, continuation);
        forEachGestureKt$awaitEachGesture$2.L$0 = obj;
        return forEachGestureKt$awaitEachGesture$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(androidx.compose.ui.input.pointer.c cVar, Continuation<? super Unit> continuation) {
        return ((ForEachGestureKt$awaitEachGesture$2) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0050  */
    /* JADX WARN: Code duplicated, block: B:27:0x005b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.ui.input.pointer.c, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.compose.ui.input.pointer.c, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0059 -> B:12:0x0028). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0070 -> B:12:0x0028). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r1 = r7.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L34
            if (r1 == r4) goto L2c
            if (r1 == r3) goto L21
            if (r1 != r2) goto L19
            java.lang.Object r1 = r7.L$0
            androidx.compose.ui.input.pointer.c r1 = (androidx.compose.ui.input.pointer.c) r1
            kotlin.ResultKt.b(r8)
            goto L28
        L19:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L21:
            java.lang.Object r1 = r7.L$0
            androidx.compose.ui.input.pointer.c r1 = (androidx.compose.ui.input.pointer.c) r1
            kotlin.ResultKt.b(r8)     // Catch: java.util.concurrent.CancellationException -> L2a
        L28:
            r8 = r1
            goto L3b
        L2a:
            r8 = move-exception
            goto L60
        L2c:
            java.lang.Object r1 = r7.L$0
            androidx.compose.ui.input.pointer.c r1 = (androidx.compose.ui.input.pointer.c) r1
            kotlin.ResultKt.b(r8)     // Catch: java.util.concurrent.CancellationException -> L2a
            goto L51
        L34:
            kotlin.ResultKt.b(r8)
            java.lang.Object r8 = r7.L$0
            androidx.compose.ui.input.pointer.c r8 = (androidx.compose.ui.input.pointer.c) r8
        L3b:
            kotlin.coroutines.CoroutineContext r1 = r7.$currentContext
            boolean r1 = kotlinx.coroutines.v1.n(r1)
            if (r1 == 0) goto L74
            kotlin.jvm.functions.Function2<androidx.compose.ui.input.pointer.c, kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r1 = r7.$block     // Catch: java.util.concurrent.CancellationException -> L5c
            r7.L$0 = r8     // Catch: java.util.concurrent.CancellationException -> L5c
            r7.label = r4     // Catch: java.util.concurrent.CancellationException -> L5c
            java.lang.Object r1 = r1.invoke(r8, r7)     // Catch: java.util.concurrent.CancellationException -> L5c
            if (r1 != r0) goto L50
            return r0
        L50:
            r1 = r8
        L51:
            r7.L$0 = r1     // Catch: java.util.concurrent.CancellationException -> L2a
            r7.label = r3     // Catch: java.util.concurrent.CancellationException -> L2a
            java.lang.Object r8 = androidx.compose.foundation.gestures.ForEachGestureKt.b(r1, r7)     // Catch: java.util.concurrent.CancellationException -> L2a
            if (r8 != r0) goto L28
            return r0
        L5c:
            r1 = move-exception
            r6 = r1
            r1 = r8
            r8 = r6
        L60:
            kotlin.coroutines.CoroutineContext r5 = r7.$currentContext
            boolean r5 = kotlinx.coroutines.v1.n(r5)
            if (r5 == 0) goto L73
            r7.L$0 = r1
            r7.label = r2
            java.lang.Object r8 = androidx.compose.foundation.gestures.ForEachGestureKt.b(r1, r7)
            if (r8 != r0) goto L28
            return r0
        L73:
            throw r8
        L74:
            kotlin.Unit r8 = kotlin.Unit.f67061a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ForEachGestureKt$awaitEachGesture$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
