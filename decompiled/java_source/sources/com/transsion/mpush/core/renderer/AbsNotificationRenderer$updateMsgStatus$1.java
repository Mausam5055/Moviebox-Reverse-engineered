package com.transsion.mpush.core.renderer;

import android.content.Context;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.db.PushDatabase;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.mpush.core.renderer.AbsNotificationRenderer$updateMsgStatus$1", f = "AbsNotificationRenderer.kt", l = {266, 276}, m = "invokeSuspend")
final class AbsNotificationRenderer$updateMsgStatus$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ LocalPushMessage $msgBean;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsNotificationRenderer$updateMsgStatus$1(LocalPushMessage localPushMessage, Context context, Continuation<? super AbsNotificationRenderer$updateMsgStatus$1> continuation) {
        super(2, continuation);
        this.$msgBean = localPushMessage;
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AbsNotificationRenderer$updateMsgStatus$1(this.$msgBean, this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AbsNotificationRenderer$updateMsgStatus$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        mn.a aVarJ0;
        LocalPushMessage localPushMessage;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                aVarJ0 = (mn.a) this.L$1;
                localPushMessage = (LocalPushMessage) this.L$0;
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "updateMsgStatus: updating status for " + this.$msgBean.getMessageId(), false, 4, null);
        aVarJ0 = PushDatabase.INSTANCE.b(this.$context).j0();
        localPushMessage = this.$msgBean;
        String messageId = localPushMessage.getMessageId();
        if (messageId == null) {
            messageId = "";
        }
        this.L$0 = localPushMessage;
        this.L$1 = aVarJ0;
        this.label = 1;
        obj = aVarJ0.g(messageId, this);
        if (obj == objF) {
            return objF;
        }
        LocalPushMessage localPushMessage2 = (LocalPushMessage) obj;
        if (localPushMessage2 != null) {
            localPushMessage2.setMsgStatus(1);
            localPushMessage2.setShowTime(System.currentTimeMillis());
            if (localPushMessage.getTriggerSource() == 1) {
                localPushMessage2.setHasScreenOn(true);
            }
            if (localPushMessage.getTriggerSource() == 2) {
                localPushMessage2.setForceShow(true);
            }
            this.L$0 = null;
            this.L$1 = null;
            this.label = 2;
            if (aVarJ0.f(localPushMessage2, this) == objF) {
                return objF;
            }
        }
        return Unit.f67061a;
    }
}
