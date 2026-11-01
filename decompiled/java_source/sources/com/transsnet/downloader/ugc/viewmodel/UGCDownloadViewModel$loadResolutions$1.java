package com.transsnet.downloader.ugc.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadResolutions;
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
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel$loadResolutions$1", f = "UGCDownloadViewModel.kt", l = {178}, m = "invokeSuspend")
final class UGCDownloadViewModel$loadResolutions$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $collectionId;
    int label;
    final /* synthetic */ UGCDownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCDownloadViewModel$loadResolutions$1(UGCDownloadViewModel uGCDownloadViewModel, String str, Continuation<? super UGCDownloadViewModel$loadResolutions$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCDownloadViewModel;
        this.$collectionId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCDownloadViewModel$loadResolutions$1(this.this$0, this.$collectionId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCDownloadViewModel$loadResolutions$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List<Integer> listL;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                i0 i0VarB = y0.b();
                UGCDownloadViewModel$loadResolutions$1$dto$1 uGCDownloadViewModel$loadResolutions$1$dto$1 = new UGCDownloadViewModel$loadResolutions$1$dto$1(this.this$0, this.$collectionId, null);
                this.label = 1;
                obj = i.g(i0VarB, uGCDownloadViewModel$loadResolutions$1$dto$1, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            UGCVideoDownloadResolutions uGCVideoDownloadResolutions = (UGCVideoDownloadResolutions) ((BaseDto) obj).getData();
            if (uGCVideoDownloadResolutions == null || (listL = uGCVideoDownloadResolutions.getResolutions()) == null) {
                listL = CollectionsKt.l();
            }
            this.this$0.f59862m.q(listL);
        } catch (Throwable unused) {
        }
        return Unit.f67061a;
    }
}
