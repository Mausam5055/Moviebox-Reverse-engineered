package com.transsion.ugcvideodetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1", f = "UGCImmVideoDetailViewModel.kt", l = {306}, m = "invokeSuspend")
final class UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1 extends SuspendLambda implements Function2<n0, Continuation<? super UGCVideo>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ String $ugcVideoId;
    int label;
    final /* synthetic */ UGCImmVideoDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, String str2, Continuation<? super UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoDetailViewModel;
        this.$ugcVideoId = str;
        this.$collectionId = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1(this.this$0, this.$ugcVideoId, this.$collectionId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super UGCVideo> continuation) {
        return ((UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                rv.a aVarF = this.this$0.F();
                String str = this.$ugcVideoId;
                String str2 = this.$collectionId;
                this.label = 1;
                obj = rv.a.C0910a.d(aVarF, str, str2, null, this, 4, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                return (UGCVideo) baseDto.getData();
            }
            return null;
        } catch (Throwable th2) {
            lg.a.C0828a.l(lg.a.f68839a, "UGCImmVideoDetailViewModel", "getVideoDetail error:" + th2, false, 4, null);
            return null;
        }
    }
}
