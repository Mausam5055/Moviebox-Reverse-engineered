package com.transsion.videodetail;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.VideoDetailViewModel$fetchSeason$1", f = "VideoDetailViewModel.kt", l = {Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class VideoDetailViewModel$fetchSeason$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $subjectId;
    int label;
    final /* synthetic */ VideoDetailViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.videodetail.VideoDetailViewModel$fetchSeason$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.videodetail.VideoDetailViewModel$fetchSeason$1$2", f = "VideoDetailViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ VideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(VideoDetailViewModel videoDetailViewModel, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.this$0 = videoDetailViewModel;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            return new AnonymousClass2(this.this$0, continuation).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.this$0.f57641b.q(null);
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.videodetail.VideoDetailViewModel$fetchSeason$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;"}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.transsion.videodetail.VideoDetailViewModel$fetchSeason$1$3", f = "VideoDetailViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<BaseDto<ResourcesSeasonList>, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $subjectId;
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ VideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(VideoDetailViewModel videoDetailViewModel, String str, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.this$0 = videoDetailViewModel;
            this.$subjectId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, this.$subjectId, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(BaseDto<ResourcesSeasonList> baseDto, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(baseDto, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            BaseDto baseDto = (BaseDto) this.L$0;
            this.this$0.f57641b.q(baseDto.getData());
            VideoDetailViewModel videoDetailViewModel = this.this$0;
            String str = this.$subjectId;
            ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) baseDto.getData();
            videoDetailViewModel.p(str, resourcesSeasonList != null ? resourcesSeasonList.getSeasons() : null);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoDetailViewModel$fetchSeason$1(String str, VideoDetailViewModel videoDetailViewModel, Continuation<? super VideoDetailViewModel$fetchSeason$1> continuation) {
        super(2, continuation);
        this.$subjectId = str;
        this.this$0 = videoDetailViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoDetailViewModel$fetchSeason$1(this.$subjectId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoDetailViewModel$fetchSeason$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            final kotlinx.coroutines.flow.b bVarT = kotlinx.coroutines.flow.d.t(this.$subjectId);
            final VideoDetailViewModel videoDetailViewModel = this.this$0;
            final String str = this.$subjectId;
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(FlowKt__ErrorsKt.f(new kotlinx.coroutines.flow.b() { // from class: com.transsion.videodetail.VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1

                /* JADX INFO: renamed from: com.transsion.videodetail.VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                public static final class AnonymousClass2 implements kotlinx.coroutines.flow.c {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    final /* synthetic */ kotlinx.coroutines.flow.c f57655a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    final /* synthetic */ VideoDetailViewModel f57656b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    final /* synthetic */ String f57657c;

                    /* JADX INFO: renamed from: com.transsion.videodetail.VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                    @DebugMetadata(c = "com.transsion.videodetail.VideoDetailViewModel$fetchSeason$1$invokeSuspend$$inlined$map$1$2", f = "VideoDetailViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE, 50}, m = "emit")
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(kotlinx.coroutines.flow.c cVar, VideoDetailViewModel videoDetailViewModel, String str) {
                        this.f57655a = cVar;
                        this.f57656b = videoDetailViewModel;
                        this.f57657c = str;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.c
                    public final Object emit(Object obj, Continuation continuation) throws Throwable {
                        AnonymousClass1 anonymousClass1;
                        kotlinx.coroutines.flow.c cVar;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i11 = anonymousClass1.label;
                            if ((i11 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.label = i11 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.result;
                        Object objF = IntrinsicsKt.f();
                        int i12 = anonymousClass1.label;
                        if (i12 != 0) {
                            if (i12 == 1) {
                                cVar = (kotlinx.coroutines.flow.c) anonymousClass1.L$0;
                                ResultKt.b(obj2);
                            } else {
                                if (i12 != 2) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.b(obj2);
                            }
                            return Unit.f67061a;
                        }
                        ResultKt.b(obj2);
                        kotlinx.coroutines.flow.c cVar2 = this.f57655a;
                        b bVarA = this.f57656b.A();
                        String str = this.f57657c;
                        anonymousClass1.L$0 = cVar2;
                        anonymousClass1.label = 1;
                        Object objB = b.a.b(bVarA, str, null, anonymousClass1, 2, null);
                        if (objB == objF) {
                            return objF;
                        }
                        obj2 = objB;
                        cVar = cVar2;
                        anonymousClass1.L$0 = null;
                        anonymousClass1.label = 2;
                        if (cVar.emit(obj2, anonymousClass1) == objF) {
                            return objF;
                        }
                        return Unit.f67061a;
                    }
                }

                @Override // kotlinx.coroutines.flow.b
                public Object a(kotlinx.coroutines.flow.c cVar, Continuation continuation) {
                    Object objA = bVarT.a(new AnonymousClass2(cVar, videoDetailViewModel, str), continuation);
                    return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
                }
            }, 1L, null, 2, null), new AnonymousClass2(this.this$0, null));
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, this.$subjectId, null);
            this.label = 1;
            if (kotlinx.coroutines.flow.d.i(bVarF, anonymousClass3, this) == objF) {
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
