package com.transsion.usercenter.profile.viewmodel;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.usercenter.profile.bean.SubscriptionStatus;
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/usercenter/profile/bean/SubscriptionStatus;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/tn/lib/net/bean/BaseDto;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.profile.viewmodel.UserProfileViewModel$fetchSubscriptionStatus$1$dto$1", f = "UserProfileViewModel.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW}, m = "invokeSuspend")
final class UserProfileViewModel$fetchSubscriptionStatus$1$dto$1 extends SuspendLambda implements Function2<n0, Continuation<? super BaseDto<SubscriptionStatus>>, Object> {
    final /* synthetic */ String $targetUID;
    int label;
    final /* synthetic */ UserProfileViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UserProfileViewModel$fetchSubscriptionStatus$1$dto$1(UserProfileViewModel userProfileViewModel, String str, Continuation<? super UserProfileViewModel$fetchSubscriptionStatus$1$dto$1> continuation) {
        super(2, continuation);
        this.this$0 = userProfileViewModel;
        this.$targetUID = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UserProfileViewModel$fetchSubscriptionStatus$1$dto$1(this.this$0, this.$targetUID, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super BaseDto<SubscriptionStatus>> continuation) {
        return ((UserProfileViewModel$fetchSubscriptionStatus$1$dto$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            com.transsion.usercenter.profile.c cVarM = this.this$0.m();
            String str = this.$targetUID;
            this.label = 1;
            obj = com.transsion.usercenter.profile.c.a.a(cVarM, null, str, this, 1, null);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }
}
