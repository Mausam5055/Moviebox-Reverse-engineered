package com.transsion.ugcvideodetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getFirstVideoDetailBySubject$1", f = "UGCImmVideoDetailViewModel.kt", l = {141, 157, 163}, m = "invokeSuspend")
final class UGCImmVideoDetailViewModel$getFirstVideoDetailBySubject$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $subjectId;
    Object L$0;
    int label;
    final /* synthetic */ UGCImmVideoDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$getFirstVideoDetailBySubject$1(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, Continuation<? super UGCImmVideoDetailViewModel$getFirstVideoDetailBySubject$1> continuation) {
        super(2, continuation);
        this.this$0 = uGCImmVideoDetailViewModel;
        this.$subjectId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoDetailViewModel$getFirstVideoDetailBySubject$1(this.this$0, this.$subjectId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoDetailViewModel$getFirstVideoDetailBySubject$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00c6 A[RETURN] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.transsion.ugcvideodetail.api.bean.UGCVideo, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.transsion.ugcvideodetail.api.bean.UGCVideo] */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        UGCVideoPlayInfo uGCVideoPlayInfo;
        ?? r11;
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel;
        Object objF = IntrinsicsKt.f();
        ?? r12 = this.label;
        try {
            try {
                if (r12 != 0) {
                    if (r12 == 1) {
                        ResultKt.b(obj);
                    } else if (r12 == 2) {
                        UGCVideo uGCVideo = (UGCVideo) this.L$0;
                        ResultKt.b(obj);
                        r12 = uGCVideo;
                        r12 = r12;
                        uGCVideoPlayInfo = (UGCVideoPlayInfo) obj;
                        r11 = r12;
                        uGCImmVideoDetailViewModel = this.this$0;
                        this.L$0 = null;
                        this.label = 3;
                        if (uGCImmVideoDetailViewModel.a1(r11, uGCVideoPlayInfo, this) == objF) {
                            return objF;
                        }
                    } else {
                        if (r12 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f67061a;
                }
                ResultKt.b(obj);
                rv.a aVarF = this.this$0.F();
                String str = this.$subjectId;
                this.label = 1;
                obj = rv.a.C0910a.e(aVarF, str, null, this, 2, null);
                if (obj == objF) {
                    return objF;
                }
                BaseDto baseDto = (BaseDto) obj;
                r12 = !Intrinsics.c(baseDto.getCode(), "0") ? null : (UGCVideo) baseDto.getData();
            } catch (Throwable th2) {
                lg.a.C0828a.l(lg.a.f68839a, "UGCImmVideoDetailViewModel", "getVideoPlayInfoBySubject error:" + th2, false, 4, null);
            }
        } catch (Throwable th3) {
            lg.a.C0828a.l(lg.a.f68839a, "UGCImmVideoDetailViewModel", "getVideoDetailBySubject error:" + th3, false, 4, null);
            r12 = 0;
        }
        String ugcVideoId = r12 != 0 ? r12.getUgcVideoId() : null;
        if (ugcVideoId == null || ugcVideoId.length() == 0) {
            uGCVideoPlayInfo = null;
            r11 = r12;
        } else {
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel2 = this.this$0;
            this.L$0 = r12;
            this.label = 2;
            obj = uGCImmVideoDetailViewModel2.y(ugcVideoId, this);
            if (obj == objF) {
                r12 = r12;
                return objF;
            }
            r12 = r12;
            uGCVideoPlayInfo = (UGCVideoPlayInfo) obj;
            r11 = r12;
        }
        uGCImmVideoDetailViewModel = this.this$0;
        this.L$0 = null;
        this.label = 3;
        if (uGCImmVideoDetailViewModel.a1(r11, uGCVideoPlayInfo, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
