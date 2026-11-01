package com.transsion.moviedetailapi;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.LikeBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
import kotlinx.coroutines.y0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.moviedetailapi.AbsSubjectListViewModel$like$1", f = "AbsSubjectListViewModel.kt", l = {129}, m = "invokeSuspend")
final class AbsSubjectListViewModel$like$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $postId;
    final /* synthetic */ int $reqType;
    int label;
    final /* synthetic */ AbsSubjectListViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.moviedetailapi.AbsSubjectListViewModel$like$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/moviedetailapi/bean/LikeBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.moviedetailapi.AbsSubjectListViewModel$like$1$1", f = "AbsSubjectListViewModel.kt", l = {Sdk$SDKError.Reason.TPAT_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $postId;
        final /* synthetic */ int $reqType;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ AbsSubjectListViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, int i11, AbsSubjectListViewModel absSubjectListViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$postId = str;
            this.$reqType = i11;
            this.this$0 = absSubjectListViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$postId, this.$reqType, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x008f  */
        /* JADX WARN: Code duplicated, block: B:24:0x00a3 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            String str;
            LikeBean likeBean;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar2 = (kotlinx.coroutines.flow.c) this.L$0;
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("postId", this.$postId);
                jsonObject.addProperty("reqType", Boxing.d(this.$reqType));
                if (this.$postId != null) {
                    ty.b.f76417a.a().g(this.$reqType, this.$postId);
                }
                bh.b.a aVar = bh.b.f16471a;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA != null) {
                    AbsSubjectListViewModel absSubjectListViewModel = this.this$0;
                    String str2 = this.$postId;
                    kn.a aVarZ = absSubjectListViewModel.z();
                    String strA = vg.a.f77324a.a();
                    this.L$0 = cVar2;
                    this.L$1 = str2;
                    this.label = 1;
                    Object objC = aVarZ.c(strA, requestBodyA, this);
                    if (objC == objF) {
                        return objF;
                    }
                    cVar = cVar2;
                    obj = objC;
                    str = str2;
                    BaseDto baseDto = (BaseDto) obj;
                    likeBean = (LikeBean) baseDto.getData();
                    if (likeBean != null) {
                        likeBean.setPostId(str);
                    }
                    data = baseDto.getData();
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 2;
                    if (cVar.emit(data, this) == objF) {
                        return objF;
                    }
                }
            } else if (i11 == 1) {
                str = (String) this.L$1;
                cVar = (kotlinx.coroutines.flow.c) this.L$0;
                ResultKt.b(obj);
                BaseDto baseDto2 = (BaseDto) obj;
                likeBean = (LikeBean) baseDto2.getData();
                if (likeBean != null) {
                    likeBean.setPostId(str);
                }
                data = baseDto2.getData();
                this.L$0 = null;
                this.L$1 = null;
                this.label = 2;
                if (cVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.moviedetailapi.AbsSubjectListViewModel$like$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lcom/transsion/moviedetailapi/bean/LikeBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.moviedetailapi.AbsSubjectListViewModel$like$1$2", f = "AbsSubjectListViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            return new AnonymousClass2(continuation).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            lg.a.C0828a.g(lg.a.f68839a, "like error", false, 2, null);
            return Unit.f67061a;
        }
    }

    static final class a implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f47462a = new a();

        a() {
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(LikeBean likeBean, Continuation continuation) {
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsSubjectListViewModel$like$1(String str, int i11, AbsSubjectListViewModel absSubjectListViewModel, Continuation<? super AbsSubjectListViewModel$like$1> continuation) {
        super(2, continuation);
        this.$postId = str;
        this.$reqType = i11;
        this.this$0 = absSubjectListViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AbsSubjectListViewModel$like$1(this.$postId, this.$reqType, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AbsSubjectListViewModel$like$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.$postId, this.$reqType, this.this$0, null)), y0.b()), new AnonymousClass2(null));
            a aVar = a.f47462a;
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
