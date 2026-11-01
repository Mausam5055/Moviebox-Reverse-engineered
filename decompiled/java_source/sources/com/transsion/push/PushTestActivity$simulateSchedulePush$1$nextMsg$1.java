package com.transsion.push;

import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.db.PushDatabase;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/transsion/mpush/api/LocalPushMessage;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/transsion/mpush/api/LocalPushMessage;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.PushTestActivity$simulateSchedulePush$1$nextMsg$1", f = "PushTestActivity.kt", l = {128}, m = "invokeSuspend")
final class PushTestActivity$simulateSchedulePush$1$nextMsg$1 extends SuspendLambda implements Function2<n0, Continuation<? super LocalPushMessage>, Object> {
    int label;

    PushTestActivity$simulateSchedulePush$1$nextMsg$1(Continuation<? super PushTestActivity$simulateSchedulePush$1$nextMsg$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PushTestActivity$simulateSchedulePush$1$nextMsg$1(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super LocalPushMessage> continuation) {
        return ((PushTestActivity$simulateSchedulePush$1$nextMsg$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        mn.a aVarJ0;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PushDatabase pushDatabaseD = ln.a.f68978a.d();
            if (pushDatabaseD != null && (aVarJ0 = pushDatabaseD.j0()) != null) {
                this.label = 1;
                obj = aVarJ0.e(this);
                if (obj == objF) {
                    return objF;
                }
            }
            return null;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        List list = (List) obj;
        if (list != null) {
            return (LocalPushMessage) CollectionsKt.k0(list);
        }
        return null;
    }
}
