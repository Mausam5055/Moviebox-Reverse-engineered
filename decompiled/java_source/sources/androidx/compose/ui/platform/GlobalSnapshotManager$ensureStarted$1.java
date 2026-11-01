package androidx.compose.ui.platform;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1", f = "GlobalSnapshotManager.android.kt", l = {67}, m = "invokeSuspend")
@SourceDebugExtension
final class GlobalSnapshotManager$ensureStarted$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ kotlinx.coroutines.channels.d $channel;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GlobalSnapshotManager$ensureStarted$1(kotlinx.coroutines.channels.d dVar, Continuation<? super GlobalSnapshotManager$ensureStarted$1> continuation) {
        super(2, continuation);
        this.$channel = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new GlobalSnapshotManager$ensureStarted$1(this.$channel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((GlobalSnapshotManager$ensureStarted$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0037 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:19:0x0040 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:6:0x0013, B:17:0x0038, B:19:0x0040, B:14:0x002b, B:20:0x0054, B:13:0x0026), top: B:27:0x0007 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0035 -> B:17:0x0038). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L21
            if (r1 != r2) goto L19
            java.lang.Object r1 = r5.L$1
            kotlinx.coroutines.channels.f r1 = (kotlinx.coroutines.channels.f) r1
            java.lang.Object r3 = r5.L$0
            kotlinx.coroutines.channels.q r3 = (kotlinx.coroutines.channels.q) r3
            kotlin.ResultKt.b(r6)     // Catch: java.lang.Throwable -> L17
            goto L38
        L17:
            r6 = move-exception
            goto L5d
        L19:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L21:
            kotlin.ResultKt.b(r6)
            kotlinx.coroutines.channels.d r3 = r5.$channel
            kotlinx.coroutines.channels.f r6 = r3.iterator()     // Catch: java.lang.Throwable -> L17
            r1 = r6
        L2b:
            r5.L$0 = r3     // Catch: java.lang.Throwable -> L17
            r5.L$1 = r1     // Catch: java.lang.Throwable -> L17
            r5.label = r2     // Catch: java.lang.Throwable -> L17
            java.lang.Object r6 = r1.a(r5)     // Catch: java.lang.Throwable -> L17
            if (r6 != r0) goto L38
            return r0
        L38:
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch: java.lang.Throwable -> L17
            boolean r6 = r6.booleanValue()     // Catch: java.lang.Throwable -> L17
            if (r6 == 0) goto L54
            java.lang.Object r6 = r1.next()     // Catch: java.lang.Throwable -> L17
            kotlin.Unit r6 = (kotlin.Unit) r6     // Catch: java.lang.Throwable -> L17
            java.util.concurrent.atomic.AtomicBoolean r6 = androidx.compose.ui.platform.GlobalSnapshotManager.a()     // Catch: java.lang.Throwable -> L17
            r4 = 0
            r6.set(r4)     // Catch: java.lang.Throwable -> L17
            androidx.compose.runtime.snapshots.j$a r6 = androidx.compose.runtime.snapshots.j.f4004e     // Catch: java.lang.Throwable -> L17
            r6.n()     // Catch: java.lang.Throwable -> L17
            goto L2b
        L54:
            kotlin.Unit r6 = kotlin.Unit.f67061a     // Catch: java.lang.Throwable -> L17
            r6 = 0
            kotlinx.coroutines.channels.k.a(r3, r6)
            kotlin.Unit r6 = kotlin.Unit.f67061a
            return r6
        L5d:
            throw r6     // Catch: java.lang.Throwable -> L5e
        L5e:
            r0 = move-exception
            kotlinx.coroutines.channels.k.a(r3, r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
