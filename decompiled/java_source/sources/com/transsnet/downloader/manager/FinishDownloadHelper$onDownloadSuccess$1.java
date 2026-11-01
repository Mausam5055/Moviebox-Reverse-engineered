package com.transsnet.downloader.manager;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.bean.StartRequestBean;
import com.transsnet.downloader.bean.StartlDownloadBean;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.manager.FinishDownloadHelper$onDownloadSuccess$1", f = "FinishDownloadHelper.kt", l = {57, 68}, m = "invokeSuspend")
final class FinishDownloadHelper$onDownloadSuccess$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $bean;
    int label;
    final /* synthetic */ FinishDownloadHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FinishDownloadHelper$onDownloadSuccess$1(DownloadBean downloadBean, FinishDownloadHelper finishDownloadHelper, Continuation<? super FinishDownloadHelper$onDownloadSuccess$1> continuation) {
        super(2, continuation);
        this.$bean = downloadBean;
        this.this$0 = finishDownloadHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FinishDownloadHelper$onDownloadSuccess$1(this.$bean, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((FinishDownloadHelper$onDownloadSuccess$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String resourceId;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                if (this.$bean.isUGCVideo()) {
                    String ugcVideoId = this.$bean.getUgcVideoId();
                    if (ugcVideoId != null && ugcVideoId.length() != 0 && (resourceId = this.$bean.getResourceId()) != null && resourceId.length() != 0) {
                        List listSingletonList = Collections.singletonList(new UGCStartDownloadBean(this.$bean.getUgcVideoId(), this.$bean.getResourceId(), this.$bean.getSubtitleIdType()));
                        lg.a.C0828a.f(lg.a.f68839a, this.this$0.f59471a, "onDownloadSuccess UGC, name = " + this.$bean.getName() + ", ugcVideoId = " + this.$bean.getUgcVideoId() + ", resourceId = " + this.$bean.getResourceId() + ", idType = " + this.$bean.getSubtitleIdType(), false, 4, null);
                        qy.a aVarN = this.this$0.n();
                        String strA = vg.a.f77324a.a();
                        bh.b.a aVar = bh.b.f16471a;
                        String strJ = com.blankj.utilcode.util.o.j(new UGCStartRequestBean(listSingletonList));
                        Intrinsics.g(strJ, "toJson(...)");
                        RequestBody requestBodyA = aVar.a(strJ);
                        this.label = 1;
                        obj = aVarN.j(strA, requestBodyA, this);
                        if (obj == objF) {
                            return objF;
                        }
                    }
                    lg.a.C0828a.f(lg.a.f68839a, this.this$0.f59471a, "onDownloadSuccess UGC fail, has no ugcVideoId or resourceId, name = " + this.$bean.getName(), false, 4, null);
                    return Unit.f67061a;
                }
                List listSingletonList2 = Collections.singletonList(new StartlDownloadBean(this.$bean.getSubjectId(), this.$bean.getResourceId(), Boxing.d(this.$bean.getEpse())));
                lg.a.C0828a.f(lg.a.f68839a, this.this$0.f59471a, "onDownloadSuccess, name = " + this.$bean.getName() + ", subjectId = " + this.$bean.getSubjectId() + ", resourceId = " + this.$bean.getResourceId() + ", episode = " + this.$bean.getEpse(), false, 4, null);
                qy.a aVarN2 = this.this$0.n();
                bh.b.a aVar2 = bh.b.f16471a;
                String strJ2 = com.blankj.utilcode.util.o.j(new StartRequestBean(listSingletonList2));
                Intrinsics.g(strJ2, "toJson(...)");
                RequestBody requestBodyA2 = aVar2.a(strJ2);
                this.label = 2;
                obj = qy.a.C0897a.b(aVarN2, null, requestBodyA2, this, 1, null);
                if (obj == objF) {
                    return objF;
                }
            } else if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
        } catch (Exception e11) {
            lg.a.C0828a.k(lg.a.f68839a, this.this$0.f59471a, "onDownloadSuccess error", e11, false, 8, null);
            e11.printStackTrace();
        }
        return Unit.f67061a;
    }
}
