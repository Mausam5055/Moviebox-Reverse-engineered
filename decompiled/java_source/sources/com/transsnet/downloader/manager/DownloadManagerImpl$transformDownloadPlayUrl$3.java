package com.transsnet.downloader.manager;

import com.transsion.baselib.db.download.DownloadBean;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/String;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$transformDownloadPlayUrl$3", f = "DownloadManagerImpl.kt", l = {1598}, m = "invokeSuspend")
final class DownloadManagerImpl$transformDownloadPlayUrl$3 extends SuspendLambda implements Function2<n0, Continuation<? super String>, Object> {
    final /* synthetic */ int $ep;
    final /* synthetic */ String $subjectId;
    final /* synthetic */ String $url;
    int label;
    final /* synthetic */ DownloadManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerImpl$transformDownloadPlayUrl$3(String str, int i11, String str2, DownloadManagerImpl downloadManagerImpl, Continuation<? super DownloadManagerImpl$transformDownloadPlayUrl$3> continuation) {
        super(2, continuation);
        this.$subjectId = str;
        this.$ep = i11;
        this.$url = str2;
        this.this$0 = downloadManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerImpl$transformDownloadPlayUrl$3(this.$subjectId, this.$ep, this.$url, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super String> continuation) {
        return ((DownloadManagerImpl$transformDownloadPlayUrl$3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0040  */
    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:18:0x0049  */
    /* JADX WARN: Code duplicated, block: B:25:0x005e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        DownloadBean downloadBeanX;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            DownloadEsHelper.a aVar = DownloadEsHelper.f59419m;
            downloadBeanX = aVar.a().x(this.$subjectId, this.$ep);
            if (downloadBeanX == null) {
                DownloadEsHelper downloadEsHelperA = aVar.a();
                String str = this.$subjectId;
                int i12 = this.$ep;
                this.label = 1;
                obj = downloadEsHelperA.w(str, i12, this);
                if (obj == objF) {
                    return objF;
                }
            }
            if (downloadBeanX == null) {
                return this.$url;
            }
            if (downloadBeanX.isCompleted()) {
                String path = downloadBeanX.getPath();
                return (path != null || path.length() == 0) ? this.$url : downloadBeanX.getPath();
            }
            this.this$0.k(downloadBeanX);
            return this.$url;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        downloadBeanX = (DownloadBean) obj;
        if (downloadBeanX == null) {
            return this.$url;
        }
        if (downloadBeanX.isCompleted()) {
            String path2 = downloadBeanX.getPath();
            if (path2 != null) {
            }
        }
        this.this$0.k(downloadBeanX);
        return this.$url;
    }
}
