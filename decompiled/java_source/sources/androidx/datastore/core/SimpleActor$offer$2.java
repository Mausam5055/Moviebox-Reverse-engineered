package androidx.datastore.core;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", l = {Sdk$SDKError.Reason.TPAT_ERROR_VALUE, Sdk$SDKError.Reason.TPAT_ERROR_VALUE}, m = "invokeSuspend")
final class SimpleActor$offer$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ SimpleActor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SimpleActor$offer$2(SimpleActor simpleActor, Continuation<? super SimpleActor$offer$2> continuation) {
        super(2, continuation);
        this.this$0 = simpleActor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SimpleActor$offer$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SimpleActor$offer$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0050 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:0x005c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0069  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005a -> B:18:0x005d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:0:?
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
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.b(r6)
            goto L5d
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            java.lang.Object r1 = r5.L$0
            kotlin.jvm.functions.Function2 r1 = (kotlin.jvm.functions.Function2) r1
            kotlin.ResultKt.b(r6)
            goto L51
        L22:
            kotlin.ResultKt.b(r6)
            androidx.datastore.core.SimpleActor r6 = r5.this$0
            androidx.datastore.core.a r6 = androidx.datastore.core.SimpleActor.c(r6)
            int r6 = r6.b()
            if (r6 <= 0) goto L6c
        L31:
            androidx.datastore.core.SimpleActor r6 = r5.this$0
            kotlinx.coroutines.n0 r6 = androidx.datastore.core.SimpleActor.d(r6)
            kotlinx.coroutines.o0.f(r6)
            androidx.datastore.core.SimpleActor r6 = r5.this$0
            kotlin.jvm.functions.Function2 r1 = androidx.datastore.core.SimpleActor.a(r6)
            androidx.datastore.core.SimpleActor r6 = r5.this$0
            kotlinx.coroutines.channels.d r6 = androidx.datastore.core.SimpleActor.b(r6)
            r5.L$0 = r1
            r5.label = r3
            java.lang.Object r6 = r6.g(r5)
            if (r6 != r0) goto L51
            return r0
        L51:
            r4 = 0
            r5.L$0 = r4
            r5.label = r2
            java.lang.Object r6 = r1.invoke(r6, r5)
            if (r6 != r0) goto L5d
            return r0
        L5d:
            androidx.datastore.core.SimpleActor r6 = r5.this$0
            androidx.datastore.core.a r6 = androidx.datastore.core.SimpleActor.c(r6)
            int r6 = r6.a()
            if (r6 != 0) goto L31
            kotlin.Unit r6 = kotlin.Unit.f67061a
            return r6
        L6c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Check failed."
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SimpleActor$offer$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
