package com.transsion.ugcvideodetail.viewmodel;

import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$playInfoDeferred$1", f = "UGCImmVideoDetailViewModel.kt", l = {Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE}, m = "invokeSuspend")
final class UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$playInfoDeferred$1 extends SuspendLambda implements Function2<n0, Continuation<? super UGCVideoPlayInfo>, Object> {
    final /* synthetic */ String $ugcVideoId;
    int label;
    final /* synthetic */ UGCImmVideoDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$playInfoDeferred$1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, Continuation<? super UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$playInfoDeferred$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoDetailViewModel;
        this.$ugcVideoId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$playInfoDeferred$1(this.this$0, this.$ugcVideoId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super UGCVideoPlayInfo> continuation) {
        return ((UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$playInfoDeferred$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.this$0;
                String str = this.$ugcVideoId;
                this.label = 1;
                obj = uGCImmVideoDetailViewModel.y(str, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return (UGCVideoPlayInfo) obj;
        } catch (Throwable th2) {
            lg.a.C0828a.l(lg.a.f68839a, "UGCImmVideoDetailViewModel", "getVideoPlayInfo error:" + th2, false, 4, null);
            return null;
        }
    }
}
