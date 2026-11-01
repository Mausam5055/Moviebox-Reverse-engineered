package com.transsion.ugcvideodetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getVideoDetailBySubject$1", f = "UGCVideoDetailViewModel.kt", l = {Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 229}, m = "invokeSuspend")
final class UGCVideoDetailViewModel$getVideoDetailBySubject$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $subjectId;
    Object L$0;
    int label;
    final /* synthetic */ UGCVideoDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCVideoDetailViewModel$getVideoDetailBySubject$1(UGCVideoDetailViewModel uGCVideoDetailViewModel, String str, Continuation<? super UGCVideoDetailViewModel$getVideoDetailBySubject$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCVideoDetailViewModel;
        this.$subjectId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCVideoDetailViewModel$getVideoDetailBySubject$1(this.this$0, this.$subjectId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCVideoDetailViewModel$getVideoDetailBySubject$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00e9 A[PHI: r1
  0x00e9: PHI (r1v10 java.lang.String) = (r1v9 java.lang.String), (r1v13 java.lang.String) binds: [B:50:0x00e0, B:52:0x00e6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:60:0x0103  */
    /* JADX WARN: Code duplicated, block: B:61:0x0107  */
    /* JADX WARN: Instruction removed from duplicated block: B:61:0x0107, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        UGCVideo uGCVideo;
        String ugcVideoId;
        UGCVideo uGCVideo2;
        Object th2;
        UGCVideoBelongToCollection belongToCollection;
        UGCVideoDetailViewModel uGCVideoDetailViewModel;
        String collectionId;
        Integer position;
        int iIntValue;
        int iMax;
        int i11;
        Object objF = IntrinsicsKt.f();
        int i12 = this.label;
        UGCVideoPlayInfo uGCVideoPlayInfo = null;
        try {
            if (i12 == 0) {
                ResultKt.b(obj);
                rv.a aVarF = this.this$0.F();
                String str = this.$subjectId;
                this.label = 1;
                obj = rv.a.C0910a.e(aVarF, str, null, this, 2, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    uGCVideo2 = (UGCVideo) this.L$0;
                    try {
                        ResultKt.b(obj);
                        uGCVideoPlayInfo = (UGCVideoPlayInfo) obj;
                        uGCVideo = uGCVideo2;
                        uGCVideo2 = uGCVideo;
                    } catch (Throwable th3) {
                        th2 = th3;
                        lg.a.C0828a.l(lg.a.f68839a, "UGCVideoDetailViewModel", "getVideoPlayInfoBySubject error:" + th2, false, 4, null);
                    }
                    this.this$0.f56452n.q(uGCVideo2);
                    this.this$0.f56454p.q(uGCVideoPlayInfo);
                    if (uGCVideo2 != null && (belongToCollection = uGCVideo2.getBelongToCollection()) != null) {
                        uGCVideoDetailViewModel = this.this$0;
                        collectionId = (String) uGCVideoDetailViewModel.B().f();
                        if (collectionId == null || (collectionId = belongToCollection.getCollectionId()) != null) {
                            position = belongToCollection.getPosition();
                            if (position != null) {
                                iIntValue = position.intValue();
                            } else {
                                iIntValue = 1;
                            }
                            iMax = Math.max(iIntValue - 5, 1);
                            i11 = iIntValue + 5;
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
            }
            BaseDto baseDto = (BaseDto) obj;
            uGCVideo = !Intrinsics.c(baseDto.getCode(), "0") ? null : (UGCVideo) baseDto.getData();
        } catch (Throwable th4) {
            lg.a.C0828a.l(lg.a.f68839a, "UGCVideoDetailViewModel", "getVideoDetailBySubject error:" + th4, false, 4, null);
        }
        if (uGCVideo != null) {
            try {
                ugcVideoId = uGCVideo.getUgcVideoId();
            } catch (Throwable th5) {
                uGCVideo2 = uGCVideo;
                th2 = th5;
                lg.a.C0828a.l(lg.a.f68839a, "UGCVideoDetailViewModel", "getVideoPlayInfoBySubject error:" + th2, false, 4, null);
            }
        } else {
            ugcVideoId = null;
        }
        if (ugcVideoId != null && ugcVideoId.length() != 0) {
            UGCVideoDetailViewModel uGCVideoDetailViewModel2 = this.this$0;
            this.L$0 = uGCVideo;
            this.label = 2;
            Object objY = uGCVideoDetailViewModel2.y(ugcVideoId, this);
            if (objY == objF) {
                return objF;
            }
            uGCVideo2 = uGCVideo;
            obj = objY;
            uGCVideoPlayInfo = (UGCVideoPlayInfo) obj;
            uGCVideo = uGCVideo2;
        }
        uGCVideo2 = uGCVideo;
        this.this$0.f56452n.q(uGCVideo2);
        this.this$0.f56454p.q(uGCVideoPlayInfo);
        if (uGCVideo2 != null) {
            uGCVideoDetailViewModel = this.this$0;
            collectionId = (String) uGCVideoDetailViewModel.B().f();
            if (collectionId == null) {
                position = belongToCollection.getPosition();
                if (position != null) {
                    iIntValue = position.intValue();
                } else {
                    iIntValue = 1;
                }
                iMax = Math.max(iIntValue - 5, 1);
                i11 = iIntValue + 5;
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
                iMax = Math.max(iIntValue - 5, 1);
                i11 = iIntValue + 5;
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
