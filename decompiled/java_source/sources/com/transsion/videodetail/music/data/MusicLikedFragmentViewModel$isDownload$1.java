package com.transsion.videodetail.music.data;

import com.transsion.baselib.db.download.DownloadBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$isDownload$1", f = "MusicLikedFragmentViewModel.kt", l = {Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE}, m = "invokeSuspend")
final class MusicLikedFragmentViewModel$isDownload$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<String, Unit> $callback;
    final /* synthetic */ String $subjectId;
    int label;
    final /* synthetic */ MusicLikedFragmentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    MusicLikedFragmentViewModel$isDownload$1(MusicLikedFragmentViewModel musicLikedFragmentViewModel, String str, Function1<? super String, Unit> function1, Continuation<? super MusicLikedFragmentViewModel$isDownload$1> continuation) {
        super(2, continuation);
        this.this$0 = musicLikedFragmentViewModel;
        this.$subjectId = str;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MusicLikedFragmentViewModel$isDownload$1(this.this$0, this.$subjectId, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MusicLikedFragmentViewModel$isDownload$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            lj.c cVarU = this.this$0.u();
            String str = this.$subjectId;
            if (str == null) {
                str = "";
            }
            this.label = 1;
            obj = cVarU.E(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        DownloadBean downloadBean = (DownloadBean) obj;
        if (downloadBean == null || !downloadBean.isCompleted()) {
            this.$callback.invoke("");
        } else {
            Function1<String, Unit> function1 = this.$callback;
            String path = downloadBean.getPath();
            function1.invoke(path != null ? path : "");
        }
        return Unit.f67061a;
    }
}
