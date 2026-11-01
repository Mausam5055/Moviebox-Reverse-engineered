package com.transsion.ugcvideodetail.viewmodel;

import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getFirstVideoDetail$1", f = "UGCImmVideoDetailViewModel.kt", l = {303}, m = "invokeSuspend")
final class UGCImmVideoDetailViewModel$getFirstVideoDetail$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ String $ugcVideoId;
    int label;
    final /* synthetic */ UGCImmVideoDetailViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1", f = "UGCImmVideoDetailViewModel.kt", l = {327, 328, 330}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $collectionId;
        final /* synthetic */ String $ugcVideoId;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ UGCImmVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, String str2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCImmVideoDetailViewModel;
            this.$ugcVideoId = str;
            this.$collectionId = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$ugcVideoId, this.$collectionId, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x008c A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            r0 r0Var;
            UGCVideo uGCVideo;
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    r0Var = (r0) this.L$0;
                    ResultKt.b(obj);
                } else if (i11 == 2) {
                    uGCVideo = (UGCVideo) this.L$0;
                    ResultKt.b(obj);
                    uGCImmVideoDetailViewModel = this.this$0;
                    this.L$0 = null;
                    this.label = 3;
                    if (uGCImmVideoDetailViewModel.a1(uGCVideo, (UGCVideoPlayInfo) obj, this) == objF) {
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
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            r0 r0VarB = k.b(n0Var, y0.b(), null, new UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$detailDeferred$1(this.this$0, this.$ugcVideoId, this.$collectionId, null), 2, null);
            r0 r0VarB2 = k.b(n0Var, y0.b(), null, new UGCImmVideoDetailViewModel$getFirstVideoDetail$1$1$playInfoDeferred$1(this.this$0, this.$ugcVideoId, null), 2, null);
            this.L$0 = r0VarB2;
            this.label = 1;
            Object objI = r0VarB.i(this);
            if (objI == objF) {
                return objF;
            }
            r0Var = r0VarB2;
            obj = objI;
            UGCVideo uGCVideo2 = (UGCVideo) obj;
            this.L$0 = uGCVideo2;
            this.label = 2;
            Object objI2 = r0Var.i(this);
            if (objI2 == objF) {
                return objF;
            }
            uGCVideo = uGCVideo2;
            obj = objI2;
            uGCImmVideoDetailViewModel = this.this$0;
            this.L$0 = null;
            this.label = 3;
            if (uGCImmVideoDetailViewModel.a1(uGCVideo, (UGCVideoPlayInfo) obj, this) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$getFirstVideoDetail$1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, String str2, Continuation<? super UGCImmVideoDetailViewModel$getFirstVideoDetail$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoDetailViewModel;
        this.$ugcVideoId = str;
        this.$collectionId = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoDetailViewModel$getFirstVideoDetail$1(this.this$0, this.$ugcVideoId, this.$collectionId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoDetailViewModel$getFirstVideoDetail$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$ugcVideoId, this.$collectionId, null);
            this.label = 1;
            if (o0.e(anonymousClass1, this) == objF) {
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
