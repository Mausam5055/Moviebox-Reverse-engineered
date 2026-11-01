package com.transsnet.downloader.ugc.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
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
import kotlinx.coroutines.flow.d;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCForYouViewModel$getUGCDownloadForYouList$1", f = "UGCForYouViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION_VALUE}, m = "invokeSuspend")
final class UGCForYouViewModel$getUGCDownloadForYouList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isRefresh;
    int label;
    final /* synthetic */ UGCForYouViewModel this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.viewmodel.UGCForYouViewModel$getUGCDownloadForYouList$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCForYouViewModel$getUGCDownloadForYouList$1$1", f = "UGCForYouViewModel.kt", l = {41, 46, Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isRefresh;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ UGCForYouViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, UGCForYouViewModel uGCForYouViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$isRefresh = z10;
            this.this$0 = uGCForYouViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$isRefresh, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2 && i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            cVar = (kotlinx.coroutines.flow.c) this.L$0;
            if (this.$isRefresh) {
                this.this$0.k(null);
            }
            sy.a aVarF = this.this$0.f();
            String strI = this.this$0.i();
            if (strI == null) {
                strI = "";
            }
            this.L$0 = cVar;
            this.label = 1;
            obj = sy.a.C0919a.b(aVarF, strI, 8, null, this, 4, null);
            if (obj == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) obj;
            if (Intrinsics.c(baseDto.getCode(), "0")) {
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

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.viewmodel.UGCForYouViewModel$getUGCDownloadForYouList$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;", "", "e", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.ugc.viewmodel.UGCForYouViewModel$getUGCDownloadForYouList$1$2", f = "UGCForYouViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;
        final /* synthetic */ UGCForYouViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(UGCForYouViewModel uGCForYouViewModel, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.this$0 = uGCForYouViewModel;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
            anonymousClass2.L$0 = cVar;
            anonymousClass2.L$1 = th2;
            return anonymousClass2.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
                Throwable th2 = (Throwable) this.L$1;
                lg.a.C0828a c0828a = lg.a.f68839a;
                String str = this.this$0.f59877a;
                Intrinsics.g(str, "access$getTAG$p(...)");
                lg.a.C0828a.l(c0828a, str, "getUGCDownloadForYouList error: " + th2.getMessage(), false, 4, null);
                this.L$0 = null;
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
        final /* synthetic */ UGCForYouViewModel f59881a;

        a(UGCForYouViewModel uGCForYouViewModel) {
            this.f59881a = uGCForYouViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(UGCContentList uGCContentList, Continuation continuation) {
            Pager pager;
            String nextPage;
            if (uGCContentList != null && (pager = uGCContentList.getPager()) != null && (nextPage = pager.getNextPage()) != null) {
                this.f59881a.k(nextPage);
            }
            this.f59881a.f59880d.q(uGCContentList);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCForYouViewModel$getUGCDownloadForYouList$1(boolean z10, UGCForYouViewModel uGCForYouViewModel, Continuation<? super UGCForYouViewModel$getUGCDownloadForYouList$1> continuation) {
        super(2, continuation);
        this.$isRefresh = z10;
        this.this$0 = uGCForYouViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCForYouViewModel$getUGCDownloadForYouList$1(this.$isRefresh, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCForYouViewModel$getUGCDownloadForYouList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = d.f(d.u(d.s(new AnonymousClass1(this.$isRefresh, this.this$0, null)), y0.b()), new AnonymousClass2(this.this$0, null));
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
