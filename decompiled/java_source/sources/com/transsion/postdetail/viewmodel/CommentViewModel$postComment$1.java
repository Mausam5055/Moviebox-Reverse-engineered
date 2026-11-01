package com.transsion.postdetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.postdetail.bean.CommentBody;
import com.transsion.postdetailapi.CommentTopicType;
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
import kotlinx.coroutines.y0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$postComment$1", f = "CommentViewModel.kt", l = {60}, m = "invokeSuspend")
final class CommentViewModel$postComment$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ CommentBody $commentBody;
    final /* synthetic */ String $topicType;
    int label;
    final /* synthetic */ CommentViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.postdetail.viewmodel.CommentViewModel$postComment$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$postComment$1$1", f = "CommentViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE, Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE, Sdk$SDKMetric.SDKMetricType.AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ CommentBody $commentBody;
        final /* synthetic */ String $topicType;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ CommentViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CommentBody commentBody, String str, CommentViewModel commentViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$commentBody = commentBody;
            this.$topicType = str;
            this.this$0 = commentViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$commentBody, this.$topicType, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:28:0x00af A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            RequestBody requestBodyA;
            kotlinx.coroutines.flow.c cVar;
            BaseDto baseDto;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar2 = (kotlinx.coroutines.flow.c) this.L$0;
                bh.b.a aVar = bh.b.f16471a;
                String strJ = com.blankj.utilcode.util.o.j(this.$commentBody);
                Intrinsics.g(strJ, "toJson(...)");
                requestBodyA = aVar.a(strJ);
                if (requestBodyA != null) {
                    String str = this.$topicType;
                    CommentViewModel commentViewModel = this.this$0;
                    if (Intrinsics.c(str, CommentTopicType.POST.getValue())) {
                        xo.a aVarI = commentViewModel.i();
                        String strA = vg.a.f77324a.a();
                        this.L$0 = cVar2;
                        this.L$1 = requestBodyA;
                        this.label = 1;
                        Object objB = aVarI.b(strA, requestBodyA, this);
                        if (objB == objF) {
                            return objF;
                        }
                        cVar = cVar2;
                        obj = objB;
                        baseDto = (BaseDto) obj;
                        data = baseDto.getData();
                        this.L$0 = requestBodyA;
                        this.L$1 = null;
                        this.label = 3;
                        if (cVar.emit(data, this) == objF) {
                            return objF;
                        }
                    } else {
                        xo.a aVarI2 = commentViewModel.i();
                        String strA2 = vg.a.f77324a.a();
                        this.L$0 = cVar2;
                        this.L$1 = requestBodyA;
                        this.label = 2;
                        Object objE = aVarI2.e(strA2, requestBodyA, this);
                        if (objE == objF) {
                            return objF;
                        }
                        cVar = cVar2;
                        obj = objE;
                        baseDto = (BaseDto) obj;
                        data = baseDto.getData();
                        this.L$0 = requestBodyA;
                        this.L$1 = null;
                        this.label = 3;
                        if (cVar.emit(data, this) == objF) {
                            return objF;
                        }
                    }
                }
            } else if (i11 == 1) {
                requestBodyA = (RequestBody) this.L$1;
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                ResultKt.b(obj);
                baseDto = (BaseDto) obj;
                data = baseDto.getData();
                this.L$0 = requestBodyA;
                this.L$1 = null;
                this.label = 3;
                if (cVar.emit(data, this) == objF) {
                    return objF;
                }
            } else if (i11 == 2) {
                requestBodyA = (RequestBody) this.L$1;
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                ResultKt.b(obj);
                baseDto = (BaseDto) obj;
                data = baseDto.getData();
                this.L$0 = requestBodyA;
                this.L$1 = null;
                this.label = 3;
                if (cVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.postdetail.viewmodel.CommentViewModel$postComment$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$postComment$1$2", f = "CommentViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE}, m = "invokeSuspend")
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
                lg.a.C0828a.f(lg.a.f68839a, "CommentViewModel", "post comment error", false, 4, null);
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
        final /* synthetic */ CommentViewModel f50199a;

        a(CommentViewModel commentViewModel) {
            this.f50199a = commentViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(CommentBean commentBean, Continuation continuation) {
            this.f50199a.n().q(commentBean);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CommentViewModel$postComment$1(CommentBody commentBody, String str, CommentViewModel commentViewModel, Continuation<? super CommentViewModel$postComment$1> continuation) {
        super(2, continuation);
        this.$commentBody = commentBody;
        this.$topicType = str;
        this.this$0 = commentViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CommentViewModel$postComment$1(this.$commentBody, this.$topicType, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CommentViewModel$postComment$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.$commentBody, this.$topicType, this.this$0, null)), y0.b()), new AnonymousClass2(null));
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
