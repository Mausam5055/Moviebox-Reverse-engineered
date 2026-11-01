package com.transsnet.downloader.ugc.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadResolutions;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResolutions;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/tn/lib/net/bean/BaseDto;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadResolutions$1$dto$1", f = "UGCDownloadViewModel.kt", l = {178}, m = "invokeSuspend")
final class UGCDownloadViewModel$loadResolutions$1$dto$1 extends SuspendLambda implements Function2<n0, Continuation<? super BaseDto<UGCVideoDownloadResolutions>>, Object> {
    final /* synthetic */ String $collectionId;
    int label;
    final /* synthetic */ UGCDownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCDownloadViewModel$loadResolutions$1$dto$1(UGCDownloadViewModel uGCDownloadViewModel, String str, Continuation<? super UGCDownloadViewModel$loadResolutions$1$dto$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCDownloadViewModel;
        this.$collectionId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCDownloadViewModel$loadResolutions$1$dto$1(this.this$0, this.$collectionId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super BaseDto<UGCVideoDownloadResolutions>> continuation) {
        return ((UGCDownloadViewModel$loadResolutions$1$dto$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            sy.a aVarR = this.this$0.r();
            String str = this.$collectionId;
            this.label = 1;
            obj = sy.a.C0919a.d(aVarR, str, null, this, 2, null);
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
