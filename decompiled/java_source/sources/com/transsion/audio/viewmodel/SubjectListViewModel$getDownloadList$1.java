package com.transsion.audio.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsnet.downloader.bean.DownloadListBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.audio.viewmodel.SubjectListViewModel$getDownloadList$1", f = "SubjectListViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE}, m = "invokeSuspend")
final class SubjectListViewModel$getDownloadList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $endPosition;
    final /* synthetic */ boolean $loadMore;
    final /* synthetic */ String $nextPage;
    final /* synthetic */ int $pagerMode;
    final /* synthetic */ int $perPage;
    final /* synthetic */ int $startPosition;
    final /* synthetic */ String $subjectId;
    int label;
    final /* synthetic */ SubjectListViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.audio.viewmodel.SubjectListViewModel$getDownloadList$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.viewmodel.SubjectListViewModel$getDownloadList$1$1", f = "SubjectListViewModel.kt", l = {35, 45, Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $endPosition;
        final /* synthetic */ boolean $loadMore;
        final /* synthetic */ String $nextPage;
        final /* synthetic */ int $pagerMode;
        final /* synthetic */ int $perPage;
        final /* synthetic */ int $startPosition;
        final /* synthetic */ String $subjectId;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ SubjectListViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SubjectListViewModel subjectListViewModel, String str, String str2, int i11, int i12, int i13, int i14, boolean z10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = subjectListViewModel;
            this.$subjectId = str;
            this.$nextPage = str2;
            this.$perPage = i11;
            this.$startPosition = i12;
            this.$endPosition = i13;
            this.$pagerMode = i14;
            this.$loadMore = z10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$subjectId, this.$nextPage, this.$perPage, this.$startPosition, this.$endPosition, this.$pagerMode, this.$loadMore, continuation);
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
            qy.a aVarI = this.this$0.i();
            String strA = vg.a.f77324a.a();
            String str = this.$subjectId;
            String str2 = this.$nextPage;
            int i12 = this.$perPage;
            int i13 = this.$startPosition;
            int i14 = this.$endPosition;
            int i15 = this.$pagerMode;
            this.L$0 = cVar3;
            this.label = 1;
            objC = qy.a.C0897a.c(aVarI, strA, str, str2, i12, 0, i13, i14, i15, null, 0, 0, 0, this, 3856, null);
            obj2 = objF;
            if (objC == obj2) {
                return obj2;
            }
            cVar = cVar3;
            BaseDto baseDto = (BaseDto) objC;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                DownloadListBean downloadListBean = (DownloadListBean) baseDto.getData();
                if (downloadListBean != null) {
                    downloadListBean.setLoadMore(this.$loadMore);
                }
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

    /* JADX INFO: renamed from: com.transsion.audio.viewmodel.SubjectListViewModel$getDownloadList$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.viewmodel.SubjectListViewModel$getDownloadList$1$2", f = "SubjectListViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE}, m = "invokeSuspend")
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
        final /* synthetic */ SubjectListViewModel f42974a;

        a(SubjectListViewModel subjectListViewModel) {
            this.f42974a = subjectListViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(DownloadListBean downloadListBean, Continuation continuation) {
            this.f42974a.f().n(downloadListBean);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubjectListViewModel$getDownloadList$1(SubjectListViewModel subjectListViewModel, String str, String str2, int i11, int i12, int i13, int i14, boolean z10, Continuation<? super SubjectListViewModel$getDownloadList$1> continuation) {
        super(2, continuation);
        this.this$0 = subjectListViewModel;
        this.$subjectId = str;
        this.$nextPage = str2;
        this.$perPage = i11;
        this.$startPosition = i12;
        this.$endPosition = i13;
        this.$pagerMode = i14;
        this.$loadMore = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubjectListViewModel$getDownloadList$1(this.this$0, this.$subjectId, this.$nextPage, this.$perPage, this.$startPosition, this.$endPosition, this.$pagerMode, this.$loadMore, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubjectListViewModel$getDownloadList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.this$0, this.$subjectId, this.$nextPage, this.$perPage, this.$startPosition, this.$endPosition, this.$pagerMode, this.$loadMore, null)), new AnonymousClass2(null));
            a aVar = new a(this.this$0);
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
