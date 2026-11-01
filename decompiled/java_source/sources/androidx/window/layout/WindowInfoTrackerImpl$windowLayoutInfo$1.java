package androidx.window.layout;

import android.app.Activity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Landroidx/window/layout/a0;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1", f = "WindowInfoTrackerImpl.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION_VALUE, Sdk$SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION_VALUE}, m = "invokeSuspend")
final class WindowInfoTrackerImpl$windowLayoutInfo$1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ WindowInfoTrackerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WindowInfoTrackerImpl$windowLayoutInfo$1(WindowInfoTrackerImpl windowInfoTrackerImpl, Activity activity, Continuation<? super WindowInfoTrackerImpl$windowLayoutInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = windowInfoTrackerImpl;
        this.$activity = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(kotlinx.coroutines.channels.d dVar, a0 info) {
        Intrinsics.g(info, "info");
        dVar.c(info);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        WindowInfoTrackerImpl$windowLayoutInfo$1 windowInfoTrackerImpl$windowLayoutInfo$1 = new WindowInfoTrackerImpl$windowLayoutInfo$1(this.this$0, this.$activity, continuation);
        windowInfoTrackerImpl$windowLayoutInfo$1.L$0 = obj;
        return windowInfoTrackerImpl$windowLayoutInfo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
        return ((WindowInfoTrackerImpl$windowLayoutInfo$1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0072 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x0073  */
    /* JADX WARN: Code duplicated, block: B:24:0x007e A[Catch: all -> 0x001f, TRY_LEAVE, TryCatch #0 {all -> 0x001f, blocks: (B:7:0x001a, B:18:0x0064, B:22:0x0076, B:24:0x007e, B:14:0x0036, B:17:0x0060), top: B:31:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0092 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x0093  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0090 -> B:8:0x001d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r1 = r9.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L3a
            if (r1 == r3) goto L2a
            if (r1 != r2) goto L22
            java.lang.Object r1 = r9.L$2
            kotlinx.coroutines.channels.f r1 = (kotlinx.coroutines.channels.f) r1
            java.lang.Object r4 = r9.L$1
            androidx.core.util.a r4 = (androidx.core.util.a) r4
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.flow.c r5 = (kotlinx.coroutines.flow.c) r5
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L1f
        L1d:
            r10 = r5
            goto L64
        L1f:
            r10 = move-exception
            goto L9f
        L22:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L2a:
            java.lang.Object r1 = r9.L$2
            kotlinx.coroutines.channels.f r1 = (kotlinx.coroutines.channels.f) r1
            java.lang.Object r4 = r9.L$1
            androidx.core.util.a r4 = (androidx.core.util.a) r4
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.flow.c r5 = (kotlinx.coroutines.flow.c) r5
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L1f
            goto L76
        L3a:
            kotlin.ResultKt.b(r10)
            java.lang.Object r10 = r9.L$0
            kotlinx.coroutines.flow.c r10 = (kotlinx.coroutines.flow.c) r10
            kotlinx.coroutines.channels.BufferOverflow r1 = kotlinx.coroutines.channels.BufferOverflow.DROP_OLDEST
            r4 = 4
            r5 = 10
            r6 = 0
            kotlinx.coroutines.channels.d r1 = kotlinx.coroutines.channels.g.b(r5, r1, r6, r4, r6)
            androidx.window.layout.z r4 = new androidx.window.layout.z
            r4.<init>()
            androidx.window.layout.WindowInfoTrackerImpl r5 = r9.this$0
            androidx.window.layout.v r5 = androidx.window.layout.WindowInfoTrackerImpl.b(r5)
            android.app.Activity r6 = r9.$activity
            w3.m r7 = new w3.m
            r7.<init>()
            r5.a(r6, r7, r4)
            kotlinx.coroutines.channels.f r1 = r1.iterator()     // Catch: java.lang.Throwable -> L1f
        L64:
            r9.L$0 = r10     // Catch: java.lang.Throwable -> L1f
            r9.L$1 = r4     // Catch: java.lang.Throwable -> L1f
            r9.L$2 = r1     // Catch: java.lang.Throwable -> L1f
            r9.label = r3     // Catch: java.lang.Throwable -> L1f
            java.lang.Object r5 = r1.a(r9)     // Catch: java.lang.Throwable -> L1f
            if (r5 != r0) goto L73
            return r0
        L73:
            r8 = r5
            r5 = r10
            r10 = r8
        L76:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L1f
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L1f
            if (r10 == 0) goto L93
            java.lang.Object r10 = r1.next()     // Catch: java.lang.Throwable -> L1f
            androidx.window.layout.a0 r10 = (androidx.window.layout.a0) r10     // Catch: java.lang.Throwable -> L1f
            r9.L$0 = r5     // Catch: java.lang.Throwable -> L1f
            r9.L$1 = r4     // Catch: java.lang.Throwable -> L1f
            r9.L$2 = r1     // Catch: java.lang.Throwable -> L1f
            r9.label = r2     // Catch: java.lang.Throwable -> L1f
            java.lang.Object r10 = r5.emit(r10, r9)     // Catch: java.lang.Throwable -> L1f
            if (r10 != r0) goto L1d
            return r0
        L93:
            androidx.window.layout.WindowInfoTrackerImpl r10 = r9.this$0
            androidx.window.layout.v r10 = androidx.window.layout.WindowInfoTrackerImpl.b(r10)
            r10.b(r4)
            kotlin.Unit r10 = kotlin.Unit.f67061a
            return r10
        L9f:
            androidx.window.layout.WindowInfoTrackerImpl r0 = r9.this$0
            androidx.window.layout.v r0 = androidx.window.layout.WindowInfoTrackerImpl.b(r0)
            r0.b(r4)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
