package com.transsion.postdetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.postdetailapi.CommentTopicType;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$deleteComment$1", f = "CommentViewModel.kt", l = {144}, m = "invokeSuspend")
final class CommentViewModel$deleteComment$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $commentId;
    final /* synthetic */ String $topicType;
    int label;
    final /* synthetic */ CommentViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.postdetail.viewmodel.CommentViewModel$deleteComment$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/tn/lib/net/bean/BaseDto;", "", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$deleteComment$1$1", f = "CommentViewModel.kt", l = {134, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 139}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $commentId;
        final /* synthetic */ String $topicType;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ CommentViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, CommentViewModel commentViewModel, String str2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$topicType = str;
            this.this$0 = commentViewModel;
            this.$commentId = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$topicType, this.this$0, this.$commentId, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x007d  */
        /* JADX WARN: Code duplicated, block: B:26:0x008d A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            BaseDto baseDto;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                if (Intrinsics.c(this.$topicType, CommentTopicType.POST.getValue())) {
                    xo.a aVarI = this.this$0.i();
                    String strA = vg.a.f77324a.a();
                    String str = this.$commentId;
                    this.L$0 = cVar;
                    this.label = 1;
                    obj = aVarI.c(strA, str, this);
                    if (obj == objF) {
                        return objF;
                    }
                    baseDto = (BaseDto) obj;
                    if (baseDto != null) {
                        baseDto.setData(this.$commentId);
                    }
                    this.L$0 = null;
                    this.label = 3;
                    if (cVar.emit(baseDto, this) == objF) {
                        return objF;
                    }
                } else {
                    xo.a aVarI2 = this.this$0.i();
                    String strA2 = vg.a.f77324a.a();
                    String str2 = this.$commentId;
                    this.L$0 = cVar;
                    this.label = 2;
                    obj = aVarI2.d(strA2, str2, this);
                    if (obj == objF) {
                        return objF;
                    }
                    baseDto = (BaseDto) obj;
                    if (baseDto != null) {
                        baseDto.setData(this.$commentId);
                    }
                    this.L$0 = null;
                    this.label = 3;
                    if (cVar.emit(baseDto, this) == objF) {
                        return objF;
                    }
                }
            } else if (i11 == 1) {
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                ResultKt.b(obj);
                baseDto = (BaseDto) obj;
                if (baseDto != null) {
                    baseDto.setData(this.$commentId);
                }
                this.L$0 = null;
                this.label = 3;
                if (cVar.emit(baseDto, this) == objF) {
                    return objF;
                }
            } else if (i11 == 2) {
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                ResultKt.b(obj);
                baseDto = (BaseDto) obj;
                if (baseDto != null) {
                    baseDto.setData(this.$commentId);
                }
                this.L$0 = null;
                this.label = 3;
                if (cVar.emit(baseDto, this) == objF) {
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

    /* JADX INFO: renamed from: com.transsion.postdetail.viewmodel.CommentViewModel$deleteComment$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005*\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/tn/lib/net/bean/BaseDto;", "", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$deleteComment$1$2", f = "CommentViewModel.kt", l = {143}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ CommentViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(CommentViewModel commentViewModel, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.this$0 = commentViewModel;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
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
                this.this$0.r("delete comment error");
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
        final /* synthetic */ CommentViewModel f50194a;

        a(CommentViewModel commentViewModel) {
            this.f50194a = commentViewModel;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(BaseDto baseDto, Continuation continuation) {
            this.f50194a.j().q(baseDto);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CommentViewModel$deleteComment$1(String str, CommentViewModel commentViewModel, String str2, Continuation<? super CommentViewModel$deleteComment$1> continuation) {
        super(2, continuation);
        this.$topicType = str;
        this.this$0 = commentViewModel;
        this.$commentId = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CommentViewModel$deleteComment$1(this.$topicType, this.this$0, this.$commentId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CommentViewModel$deleteComment$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.$topicType, this.this$0, this.$commentId, null)), y0.b()), new AnonymousClass2(this.this$0, null));
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
