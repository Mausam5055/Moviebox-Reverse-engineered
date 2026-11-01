package com.transsion.ugcvideodetail.viewmodel;

import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
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
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoDetail$1", f = "UGCVideoDetailViewModel.kt", l = {264}, m = "invokeSuspend")
final class UGCVideoDetailViewModel$getVideoDetail$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ String $ugcVideoId;
    int label;
    final /* synthetic */ UGCVideoDetailViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoDetail$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoDetail$1$1", f = "UGCVideoDetailViewModel.kt", l = {288, 289}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $collectionId;
        final /* synthetic */ String $ugcVideoId;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ UGCVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, String str2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = uGCVideoDetailViewModel;
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

        /* JADX WARN: Code duplicated, block: B:27:0x00a6 A[PHI: r1
  0x00a6: PHI (r1v14 java.lang.String) = (r1v13 java.lang.String), (r1v16 java.lang.String) binds: [B:23:0x009d, B:25:0x00a3] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:29:0x00ac  */
        /* JADX WARN: Code duplicated, block: B:30:0x00b1  */
        /* JADX WARN: Code duplicated, block: B:33:0x00c0  */
        /* JADX WARN: Code duplicated, block: B:34:0x00c4  */
        /* JADX WARN: Instruction removed from duplicated block: B:34:0x00c4, please report this as an issue */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            r0 r0Var;
            UGCVideo uGCVideo;
            UGCVideoBelongToCollection belongToCollection;
            UGCVideoDetailViewModel uGCVideoDetailViewModel;
            String collectionId;
            Integer position;
            int iIntValue;
            int iMax;
            int i11;
            Object objF = IntrinsicsKt.f();
            int i12 = this.label;
            if (i12 != 0) {
                if (i12 == 1) {
                    r0Var = (r0) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    uGCVideo = (UGCVideo) this.L$0;
                    ResultKt.b(obj);
                }
                this.this$0.f56452n.q(uGCVideo);
                this.this$0.f56454p.q((UGCVideoPlayInfo) obj);
                if (uGCVideo != null && (belongToCollection = uGCVideo.getBelongToCollection()) != null) {
                    uGCVideoDetailViewModel = this.this$0;
                    collectionId = (String) uGCVideoDetailViewModel.B().f();
                    if (collectionId == null || (collectionId = belongToCollection.getCollectionId()) != null) {
                        position = belongToCollection.getPosition();
                        if (position != null) {
                            iIntValue = position.intValue();
                        } else {
                            iIntValue = 1;
                        }
                        iMax = Math.max(iIntValue - 4, 1);
                        i11 = iMax + 7;
                        if (uGCVideoDetailViewModel.k0(collectionId, iMax, i11)) {
                            uGCVideoDetailViewModel.X(collectionId, iMax, i11, true);
                        } else {
                            lg.a.C0828a.f(lg.a.f68839a, "UGCVideoDetailViewModel", "Skip duplicate playList request: collectionId=" + collectionId + ", start=" + iMax + ", end=" + i11, false, 4, null);
                        }
                    }
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            r0 r0VarB = k.b(n0Var, y0.b(), null, new UGCVideoDetailViewModel$getVideoDetail$1$1$detailDeferred$1(this.this$0, this.$ugcVideoId, this.$collectionId, null), 2, null);
            r0 r0VarB2 = k.b(n0Var, y0.b(), null, new UGCVideoDetailViewModel$getVideoDetail$1$1$playInfoDeferred$1(this.this$0, this.$ugcVideoId, null), 2, null);
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
            this.this$0.f56452n.q(uGCVideo);
            this.this$0.f56454p.q((UGCVideoPlayInfo) obj);
            if (uGCVideo != null) {
                uGCVideoDetailViewModel = this.this$0;
                collectionId = (String) uGCVideoDetailViewModel.B().f();
                if (collectionId == null) {
                    position = belongToCollection.getPosition();
                    if (position != null) {
                        iIntValue = position.intValue();
                    } else {
                        iIntValue = 1;
                    }
                    iMax = Math.max(iIntValue - 4, 1);
                    i11 = iMax + 7;
                    if (uGCVideoDetailViewModel.k0(collectionId, iMax, i11)) {
                        uGCVideoDetailViewModel.X(collectionId, iMax, i11, true);
                    } else {
                        lg.a.C0828a.f(lg.a.f68839a, "UGCVideoDetailViewModel", "Skip duplicate playList request: collectionId=" + collectionId + ", start=" + iMax + ", end=" + i11, false, 4, null);
                    }
                } else {
                    position = belongToCollection.getPosition();
                    if (position != null) {
                        iIntValue = position.intValue();
                    } else {
                        iIntValue = 1;
                    }
                    iMax = Math.max(iIntValue - 4, 1);
                    i11 = iMax + 7;
                    if (uGCVideoDetailViewModel.k0(collectionId, iMax, i11)) {
                        uGCVideoDetailViewModel.X(collectionId, iMax, i11, true);
                    } else {
                        lg.a.C0828a.f(lg.a.f68839a, "UGCVideoDetailViewModel", "Skip duplicate playList request: collectionId=" + collectionId + ", start=" + iMax + ", end=" + i11, false, 4, null);
                    }
                }
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoDetailViewModel$getVideoDetail$1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, String str2, Continuation<? super UGCVideoDetailViewModel$getVideoDetail$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCVideoDetailViewModel;
        this.$ugcVideoId = str;
        this.$collectionId = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCVideoDetailViewModel$getVideoDetail$1(this.this$0, this.$ugcVideoId, this.$collectionId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCVideoDetailViewModel$getVideoDetail$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
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
