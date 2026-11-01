package com.transsnet.downloader.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsnet.downloader.bean.DownloadListBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel$getDownloadList$1", f = "DownloadResourcesDetectorViewModel.kt", l = {Sdk$SDKError.Reason.AD_CLOSED_MISSING_HEARTBEAT_VALUE}, m = "invokeSuspend")
final class DownloadResourcesDetectorViewModel$getDownloadList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $endPosition;
    final /* synthetic */ int $epFrom;
    final /* synthetic */ int $epTo;
    final /* synthetic */ String $nextPage;
    final /* synthetic */ int $pagerMode;
    final /* synthetic */ int $perPage;
    final /* synthetic */ int $resolution;
    final /* synthetic */ int $se;
    final /* synthetic */ int $startPosition;
    final /* synthetic */ String $subjectId;
    final /* synthetic */ String $subjectTitle;
    int label;
    final /* synthetic */ DownloadResourcesDetectorViewModel this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel$getDownloadList$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel$getDownloadList$1$1", f = "DownloadResourcesDetectorViewModel.kt", l = {Sdk$SDKError.Reason.AD_EXPIRED_VALUE, Sdk$SDKError.Reason.DEEPLINK_OPEN_FAILED_VALUE, Sdk$SDKError.Reason.LINK_COMMAND_OPEN_FAILED_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $endPosition;
        final /* synthetic */ int $epFrom;
        final /* synthetic */ int $epTo;
        final /* synthetic */ String $nextPage;
        final /* synthetic */ int $pagerMode;
        final /* synthetic */ int $perPage;
        final /* synthetic */ int $resolution;
        final /* synthetic */ int $se;
        final /* synthetic */ int $startPosition;
        final /* synthetic */ String $subjectId;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DownloadResourcesDetectorViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModel, String str, String str2, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = downloadResourcesDetectorViewModel;
            this.$subjectId = str;
            this.$nextPage = str2;
            this.$perPage = i11;
            this.$startPosition = i12;
            this.$endPosition = i13;
            this.$pagerMode = i14;
            this.$resolution = i15;
            this.$se = i16;
            this.$epFrom = i17;
            this.$epTo = i18;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$subjectId, this.$nextPage, this.$perPage, this.$startPosition, this.$endPosition, this.$pagerMode, this.$resolution, this.$se, this.$epFrom, this.$epTo, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objC;
            Object obj2;
            kotlinx.coroutines.flow.c cVar;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    kotlinx.coroutines.flow.c cVar2 = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    cVar = cVar2;
                    obj2 = objF;
                    objC = obj;
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
            qy.a aVarC = this.this$0.C();
            String strA = vg.a.f77324a.a();
            String str = this.$subjectId;
            String str2 = this.$nextPage;
            int i12 = this.$perPage;
            int i13 = this.$startPosition;
            int i14 = this.$endPosition;
            int i15 = this.$pagerMode;
            Integer numD = Boxing.d(this.$resolution);
            int i16 = this.$se;
            int i17 = this.$epFrom;
            int i18 = this.$epTo;
            this.L$0 = cVar3;
            this.label = 1;
            objC = qy.a.C0897a.c(aVarC, strA, str, str2, i12, 0, i13, i14, i15, numD, i16, i17, i18, this, 16, null);
            obj2 = objF;
            if (objC == obj2) {
                return obj2;
            }
            cVar = cVar3;
            BaseDto baseDto = (BaseDto) objC;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                Object data = baseDto.getData();
                this.L$0 = null;
                this.label = 3;
                if (cVar.emit(data, this) == obj2) {
                    return obj2;
                }
            } else {
                this.L$0 = null;
                this.label = 2;
                if (cVar.emit(null, this) == obj2) {
                    return obj2;
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel$getDownloadList$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel$getDownloadList$1$2", f = "DownloadResourcesDetectorViewModel.kt", l = {Sdk$SDKError.Reason.AD_CLOSED_TEMPLATE_ERROR_VALUE}, m = "invokeSuspend")
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

    static final class a implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f60037a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadResourcesDetectorViewModel f60038b;

        a(String str, DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModel) {
            this.f60037a = str;
            this.f60038b = downloadResourcesDetectorViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(DownloadListBean downloadListBean, Continuation continuation) {
            List<DownloadItem> items;
            Integer numD = null;
            String title = downloadListBean != null ? downloadListBean.getTitle() : null;
            if ((title == null || title.length() == 0) && downloadListBean != null) {
                downloadListBean.setTitle(this.f60037a);
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            if (downloadListBean != null && (items = downloadListBean.getItems()) != null) {
                numD = Boxing.d(items.size());
            }
            lg.a.C0828a.f(c0828a, "DownloadReDetector", "getBottomList, on get data , size= " + numD, false, 4, null);
            this.f60038b.s().n(downloadListBean);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadResourcesDetectorViewModel$getDownloadList$1(int i11, String str, int i12, int i13, int i14, DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModel, String str2, int i15, int i16, int i17, int i18, String str3, Continuation<? super DownloadResourcesDetectorViewModel$getDownloadList$1> continuation) {
        super(2, continuation);
        this.$resolution = i11;
        this.$subjectId = str;
        this.$startPosition = i12;
        this.$endPosition = i13;
        this.$pagerMode = i14;
        this.this$0 = downloadResourcesDetectorViewModel;
        this.$nextPage = str2;
        this.$perPage = i15;
        this.$se = i16;
        this.$epFrom = i17;
        this.$epTo = i18;
        this.$subjectTitle = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadResourcesDetectorViewModel$getDownloadList$1(this.$resolution, this.$subjectId, this.$startPosition, this.$endPosition, this.$pagerMode, this.this$0, this.$nextPage, this.$perPage, this.$se, this.$epFrom, this.$epTo, this.$subjectTitle, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadResourcesDetectorViewModel$getDownloadList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            lg.a.C0828a.v(lg.a.f68839a, "DownloadReDetector", "getBottomList, resolution：" + this.$resolution + ",subjectId:" + this.$subjectId + ", start:" + this.$startPosition + ", end:" + this.$endPosition + ", pagerMode:" + this.$pagerMode + " ", false, 4, null);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.this$0, this.$subjectId, this.$nextPage, this.$perPage, this.$startPosition, this.$endPosition, this.$pagerMode, this.$resolution, this.$se, this.$epFrom, this.$epTo, null)), new AnonymousClass2(null));
            a aVar = new a(this.$subjectTitle, this.this$0);
            this.label = 1;
            if (bVarF.a(aVar, this) == objF) {
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
