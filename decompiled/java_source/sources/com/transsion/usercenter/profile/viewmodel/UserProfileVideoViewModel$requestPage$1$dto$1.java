package com.transsion.usercenter.profile.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/tn/lib/net/bean/BaseDto;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.profile.viewmodel.UserProfileVideoViewModel$requestPage$1$dto$1", f = "UserProfileVideoViewModel.kt", l = {Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, 138}, m = "invokeSuspend")
final class UserProfileVideoViewModel$requestPage$1$dto$1 extends SuspendLambda implements Function2<n0, Continuation<? super BaseDto<UGCVideoList>>, Object> {
    final /* synthetic */ boolean $isSelf;
    final /* synthetic */ String $pageToken;
    final /* synthetic */ String $uid;
    int label;
    final /* synthetic */ UserProfileVideoViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UserProfileVideoViewModel$requestPage$1$dto$1(boolean z10, UserProfileVideoViewModel userProfileVideoViewModel, String str, String str2, Continuation<? super UserProfileVideoViewModel$requestPage$1$dto$1> continuation) {
        super(2, continuation);
        this.$isSelf = z10;
        this.this$0 = userProfileVideoViewModel;
        this.$pageToken = str;
        this.$uid = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UserProfileVideoViewModel$requestPage$1$dto$1(this.$isSelf, this.this$0, this.$pageToken, this.$uid, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super BaseDto<UGCVideoList>> continuation) {
        return ((UserProfileVideoViewModel$requestPage$1$dto$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
                return (BaseDto) obj;
            }
            if (i11 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return (BaseDto) obj;
        }
        ResultKt.b(obj);
        if (this.$isSelf) {
            tw.c cVarO = this.this$0.o();
            String str = this.$pageToken;
            Integer numD = Boxing.d(this.this$0.f57300e);
            this.label = 1;
            obj = tw.c.a.a(cVarO, str, numD, null, this, 4, null);
            if (obj == objF) {
                return objF;
            }
            return (BaseDto) obj;
        }
        tw.c cVarO2 = this.this$0.o();
        String str2 = this.$uid;
        String str3 = this.$pageToken;
        Integer numD2 = Boxing.d(this.this$0.f57300e);
        this.label = 2;
        obj = tw.c.a.b(cVarO2, str2, str3, numD2, null, this, 8, null);
        if (obj == objF) {
            return objF;
        }
        return (BaseDto) obj;
    }
}
