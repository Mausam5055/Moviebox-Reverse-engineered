package com.transsnet.downloader.manager;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsnet.downloader.bean.DownloadListBean;
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
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$requestNewSource$1", f = "DownloadManagerImpl.kt", l = {1514}, m = "invokeSuspend")
final class DownloadManagerImpl$requestNewSource$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $bean;
    int label;
    final /* synthetic */ DownloadManagerImpl this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.manager.DownloadManagerImpl$requestNewSource$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$requestNewSource$1$1", f = "DownloadManagerImpl.kt", l = {1503, 1508, 1510}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ DownloadBean $bean;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DownloadManagerImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DownloadManagerImpl downloadManagerImpl, DownloadBean downloadBean, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = downloadManagerImpl;
            this.$bean = downloadBean;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$bean, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objD;
            kotlinx.coroutines.flow.c cVar;
            DownloadListBean downloadListBean;
            List<DownloadItem> items;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    kotlinx.coroutines.flow.c cVar2 = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    cVar = cVar2;
                    objD = obj;
                } else {
                    if (i11 != 2 && i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            kotlinx.coroutines.flow.c cVar3 = (kotlinx.coroutines.flow.c) this.L$0;
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = this.this$0.f59435a;
            DownloadException exception = this.$bean.getException();
            c0828a.c(str, "download, resource error~ request new resource， responseCode = " + (exception != null ? Boxing.d(exception.getResponseCode()) : null), true);
            String url = this.$bean.getUrl();
            DownloadException exception2 = this.$bean.getException();
            String strValueOf = String.valueOf(exception2 != null ? Boxing.d(exception2.getResponseCode()) : null);
            qy.a aVarS0 = this.this$0.s0();
            String strA = vg.a.f77324a.a();
            String subjectId = this.$bean.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            String resourceId = this.$bean.getResourceId();
            String str2 = resourceId != null ? resourceId : "";
            this.L$0 = cVar3;
            this.label = 1;
            objD = qy.a.C0897a.d(aVarS0, strA, subjectId, str2, url, strValueOf, 0, this, 32, null);
            if (objD == objF) {
                return objF;
            }
            cVar = cVar3;
            BaseDto baseDto = (BaseDto) objD;
            if (Intrinsics.c(baseDto.getCode(), "0") && ((downloadListBean = (DownloadListBean) baseDto.getData()) == null || (items = downloadListBean.getItems()) == null || !items.isEmpty())) {
                Object data = baseDto.getData();
                this.L$0 = null;
                this.label = 3;
                if (cVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                this.L$0 = null;
                this.label = 2;
                if (cVar.emit(null, this) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.manager.DownloadManagerImpl$requestNewSource$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$requestNewSource$1$2", f = "DownloadManagerImpl.kt", l = {1513}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = cVar;
            return anonymousClass2.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
                this.label = 1;
                if (cVar.emit(null, this) == objF) {
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

    /* JADX INFO: renamed from: com.transsnet.downloader.manager.DownloadManagerImpl$requestNewSource$1$3, reason: invalid class name */
    static final class AnonymousClass3 implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DownloadManagerImpl f59460a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadBean f59461b;

        AnonymousClass3(DownloadManagerImpl downloadManagerImpl, DownloadBean downloadBean) {
            this.f59460a = downloadManagerImpl;
            this.f59461b = downloadBean;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(DownloadListBean downloadListBean, Continuation continuation) throws Throwable {
            DownloadManagerImpl$requestNewSource$1$3$emit$1 downloadManagerImpl$requestNewSource$1$3$emit$1;
            List<DownloadItem> items;
            String url;
            if (continuation instanceof DownloadManagerImpl$requestNewSource$1$3$emit$1) {
                downloadManagerImpl$requestNewSource$1$3$emit$1 = (DownloadManagerImpl$requestNewSource$1$3$emit$1) continuation;
                int i11 = downloadManagerImpl$requestNewSource$1$3$emit$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    downloadManagerImpl$requestNewSource$1$3$emit$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    downloadManagerImpl$requestNewSource$1$3$emit$1 = new DownloadManagerImpl$requestNewSource$1$3$emit$1(this, continuation);
                }
            } else {
                downloadManagerImpl$requestNewSource$1$3$emit$1 = new DownloadManagerImpl$requestNewSource$1$3$emit$1(this, continuation);
            }
            Object obj = downloadManagerImpl$requestNewSource$1$3$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = downloadManagerImpl$requestNewSource$1$3$emit$1.label;
            if (i12 != 0) {
                if (i12 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                this.f59460a.V0(this.f59461b);
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            if (downloadListBean == null || ((items = downloadListBean.getItems()) != null && items.isEmpty())) {
                lg.a.f68839a.x("download", "get new resource failed~~", true);
                this.f59460a.U0(this.f59461b);
            } else {
                List<DownloadItem> items2 = downloadListBean.getItems();
                DownloadItem downloadItem = items2 != null ? items2.get(0) : null;
                String url2 = this.f59461b.getUrl();
                if (Intrinsics.c(url2, downloadItem != null ? downloadItem.getUrl() : null)) {
                    lg.a.f68839a.x("download", "get new resource success, but url is same, download next task~~", true);
                    this.f59460a.U0(this.f59461b);
                    return Unit.f67061a;
                }
                DownloadBean downloadBean = this.f59461b;
                if (downloadItem == null || (url = downloadItem.getUrl()) == null) {
                    url = url2;
                }
                downloadBean.setUrl(url);
                this.f59461b.setUrlCreateAt(System.currentTimeMillis());
                DownloadBean downloadBean2 = this.f59461b;
                downloadBean2.setRequestNewSourceCount(downloadBean2.getRequestNewSourceCount() + 1);
                lg.a.f68839a.u("download", "get new resource success!!!, update url, lastUrl = " + url2 + ", newUrl = " + this.f59461b.getUrl(), true);
                DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
                String resourceId = this.f59461b.getResourceId();
                if (resourceId == null) {
                    resourceId = url2;
                }
                downloadManagerImpl$requestNewSource$1$3$emit$1.label = 1;
                if (downloadEsHelperA.k(url2, resourceId, downloadManagerImpl$requestNewSource$1$3$emit$1) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
            DownloadEsHelper downloadEsHelperA2 = DownloadEsHelper.f59419m.a();
            DownloadBean downloadBean3 = this.f59461b;
            downloadManagerImpl$requestNewSource$1$3$emit$1.label = 2;
            if (downloadEsHelperA2.T(downloadBean3, downloadManagerImpl$requestNewSource$1$3$emit$1) == objF) {
                return objF;
            }
            this.f59460a.V0(this.f59461b);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerImpl$requestNewSource$1(DownloadManagerImpl downloadManagerImpl, DownloadBean downloadBean, Continuation<? super DownloadManagerImpl$requestNewSource$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadManagerImpl;
        this.$bean = downloadBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerImpl$requestNewSource$1(this.this$0, this.$bean, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadManagerImpl$requestNewSource$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.this$0, this.$bean, null)), new AnonymousClass2(null));
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, this.$bean);
            this.label = 1;
            if (bVarF.a(anonymousClass3, this) == objF) {
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
