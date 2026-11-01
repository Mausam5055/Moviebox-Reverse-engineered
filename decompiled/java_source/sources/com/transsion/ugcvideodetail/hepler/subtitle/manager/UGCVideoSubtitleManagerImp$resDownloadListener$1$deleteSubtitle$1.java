package com.transsion.ugcvideodetail.hepler.subtitle.manager;

import com.transsion.subtitle_download.SubtitleDownloadManager;
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
@DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.subtitle.manager.UGCVideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1", f = "UGCVideoSubtitleManagerImp.kt", l = {111}, m = "invokeSuspend")
final class UGCVideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $subtitleResId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1(String str, Continuation<? super UGCVideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1> continuation) {
        super(2, continuation);
        this.$subtitleResId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCVideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1(this.$subtitleResId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCVideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            SubtitleDownloadManager subtitleDownloadManager = SubtitleDownloadManager.f54998a;
            String str = this.$subtitleResId;
            this.label = 1;
            if (subtitleDownloadManager.c(str, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
