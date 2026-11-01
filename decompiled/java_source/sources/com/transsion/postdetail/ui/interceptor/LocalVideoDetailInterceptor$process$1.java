package com.transsion.postdetail.ui.interceptor;

import com.therouter.router.RouteItem;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.DownloadUtil;
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
@DebugMetadata(c = "com.transsion.postdetail.ui.interceptor.LocalVideoDetailInterceptor$process$1", f = "LocalVideoDetailInterceptor.kt", l = {99}, m = "invokeSuspend")
final class LocalVideoDetailInterceptor$process$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ bg.b $callback;
    final /* synthetic */ RouteItem $postcard;
    final /* synthetic */ String $resourceId;
    final /* synthetic */ String $subjectId;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ LocalVideoDetailInterceptor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalVideoDetailInterceptor$process$1(String str, LocalVideoDetailInterceptor localVideoDetailInterceptor, RouteItem routeItem, bg.b bVar, String str2, Continuation<? super LocalVideoDetailInterceptor$process$1> continuation) {
        super(2, continuation);
        this.$resourceId = str;
        this.this$0 = localVideoDetailInterceptor;
        this.$postcard = routeItem;
        this.$callback = bVar;
        this.$subjectId = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalVideoDetailInterceptor$process$1(this.$resourceId, this.this$0, this.$postcard, this.$callback, this.$subjectId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalVideoDetailInterceptor$process$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String str;
        String str2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            str = this.$resourceId;
            if (str != null) {
                String str3 = this.$subjectId;
                DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
                this.L$0 = str;
                this.L$1 = str3;
                this.label = 1;
                Object objP = downloadEsHelperA.p(str, this);
                if (objP == objF) {
                    return objF;
                }
                str2 = str3;
                obj = objP;
            }
            this.this$0.h(this.$postcard, this.$callback);
            return Unit.f67061a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        str2 = (String) this.L$1;
        str = (String) this.L$0;
        ResultKt.b(obj);
        DownloadBean downloadBean = (DownloadBean) obj;
        if (downloadBean != null && DownloadUtil.f59900a.i(downloadBean)) {
            lg.a.f68839a.c("Download_LocalVideoDetailInterceptor", "---文件不存在或者下载进度相差10M的重新下载,resourceId:" + str + ", subjectId:" + str2, true);
            downloadBean.setReDownload(true);
        }
        this.this$0.h(this.$postcard, this.$callback);
        return Unit.f67061a;
    }
}
