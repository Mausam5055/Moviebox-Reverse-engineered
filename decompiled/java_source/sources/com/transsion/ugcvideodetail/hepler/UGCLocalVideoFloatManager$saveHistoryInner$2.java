package com.transsion.ugcvideodetail.hepler;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import kotlin.Metadata;
import kotlin.Result;
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
@DebugMetadata(c = "com.transsion.ugcvideodetail.hepler.UGCLocalVideoFloatManager$saveHistoryInner$2", f = "UGCLocalVideoFloatManager.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BACK_SHOW}, m = "invokeSuspend")
final class UGCLocalVideoFloatManager$saveHistoryInner$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ px.a $floatBean;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCLocalVideoFloatManager$saveHistoryInner$2(px.a aVar, Continuation<? super UGCLocalVideoFloatManager$saveHistoryInner$2> continuation) {
        super(2, continuation);
        this.$floatBean = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        UGCLocalVideoFloatManager$saveHistoryInner$2 uGCLocalVideoFloatManager$saveHistoryInner$2 = new UGCLocalVideoFloatManager$saveHistoryInner$2(this.$floatBean, continuation);
        uGCLocalVideoFloatManager$saveHistoryInner$2.L$0 = obj;
        return uGCLocalVideoFloatManager$saveHistoryInner$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCLocalVideoFloatManager$saveHistoryInner$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String ugcVideoId;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                px.a aVar = this.$floatBean;
                if (aVar != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    lg.a.f68839a.c("VideoFloat", "local-----saveHistory, subjectId:" + aVar.r() + " time:" + jCurrentTimeMillis + ",se:" + aVar.q() + " ep:" + aVar.c() + ", progress:" + aVar.n(), true);
                    Result.Companion companion = Result.INSTANCE;
                    DownloadBean downloadBeanB = aVar.b();
                    if (downloadBeanB != null && (ugcVideoId = downloadBeanB.getUgcVideoId()) != null) {
                        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoG = UGCLocalVideoFloatManager.f56287b.g();
                        String strR = aVar.r();
                        long jN = aVar.n();
                        this.label = 1;
                        if (uGCVideoDetailPlayDaoG.k(strR, ugcVideoId, jCurrentTimeMillis, jN, this) == objF) {
                            return objF;
                        }
                    }
                }
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "saveHistory--end", false, 4, null);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        return Unit.f67061a;
    }
}
