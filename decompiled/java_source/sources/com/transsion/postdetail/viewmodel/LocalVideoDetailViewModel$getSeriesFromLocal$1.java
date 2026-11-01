package com.transsion.postdetail.viewmodel;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.ArrayList;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.LocalVideoDetailViewModel$getSeriesFromLocal$1", f = "LocalVideoDetailViewModel.kt", l = {44}, m = "invokeSuspend")
@SourceDebugExtension
final class LocalVideoDetailViewModel$getSeriesFromLocal$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $curBean;
    int label;
    final /* synthetic */ LocalVideoDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalVideoDetailViewModel$getSeriesFromLocal$1(DownloadBean downloadBean, LocalVideoDetailViewModel localVideoDetailViewModel, Continuation<? super LocalVideoDetailViewModel$getSeriesFromLocal$1> continuation) {
        super(2, continuation);
        this.$curBean = downloadBean;
        this.this$0 = localVideoDetailViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalVideoDetailViewModel$getSeriesFromLocal$1(this.$curBean, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalVideoDetailViewModel$getSeriesFromLocal$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String subjectId;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            DownloadBean downloadBean = this.$curBean;
            if (downloadBean == null || (subjectId = downloadBean.getSubjectId()) == null) {
                subjectId = "";
            }
            this.label = 1;
            obj = downloadEsHelperA.H(subjectId, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        List list = (List) obj;
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            LocalVideoDetailViewModel localVideoDetailViewModel = this.this$0;
            DownloadBean downloadBean2 = this.$curBean;
            int i12 = 0;
            for (Object obj2 : list) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                DownloadBean downloadBean3 = (DownloadBean) obj2;
                lg.a.C0828a.f(lg.a.f68839a, localVideoDetailViewModel.f50200a, "on get series, episode = " + downloadBean3.getEpse() + ", cur epse = " + (downloadBean2 != null ? downloadBean2.getEpse() : -1) + ", index = " + i12, false, 4, null);
                if (downloadBean3.isSeries()) {
                    if (!Intrinsics.c(downloadBean2 != null ? downloadBean2.getResourceId() : null, downloadBean3.getResourceId())) {
                        downloadBean3.setPlaying(false);
                    }
                    arrayList.add(downloadBean3);
                }
                i12 = i13;
            }
        }
        this.this$0.i().n(arrayList);
        return Unit.f67061a;
    }
}
