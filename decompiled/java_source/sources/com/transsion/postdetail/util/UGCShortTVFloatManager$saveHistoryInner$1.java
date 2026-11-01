package com.transsion.postdetail.util;

import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.util.UGCShortTVFloatManager$saveHistoryInner$1", f = "UGCShortTVFloatManager.kt", l = {59, 63}, m = "invokeSuspend")
final class UGCShortTVFloatManager$saveHistoryInner$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $callback;
    final /* synthetic */ px.a $floatBean;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCShortTVFloatManager$saveHistoryInner$1(px.a aVar, Function0<Unit> function0, Continuation<? super UGCShortTVFloatManager$saveHistoryInner$1> continuation) {
        super(2, continuation);
        this.$floatBean = aVar;
        this.$callback = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        UGCShortTVFloatManager$saveHistoryInner$1 uGCShortTVFloatManager$saveHistoryInner$1 = new UGCShortTVFloatManager$saveHistoryInner$1(this.$floatBean, this.$callback, continuation);
        uGCShortTVFloatManager$saveHistoryInner$1.L$0 = obj;
        return uGCShortTVFloatManager$saveHistoryInner$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCShortTVFloatManager$saveHistoryInner$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00d0 A[RETURN] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ?? r11;
        a2 a2VarC;
        UGCShortTVFloatManager$saveHistoryInner$1$1$2 uGCShortTVFloatManager$saveHistoryInner$1$1$2;
        String strR;
        String ugcVideoId;
        UGCVideoBelongToCollection belongToCollection;
        Object objF = IntrinsicsKt.f();
        ?? r12 = this.label;
        try {
            if (r12 == 0) {
                ResultKt.b(obj);
                px.a aVar = this.$floatBean;
                if (aVar != null) {
                    Function0<Unit> function0 = this.$callback;
                    lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "shorttv-----saveHistory, ep:" + aVar.c() + ", progress:" + aVar.n(), false, 4, null);
                    Result.Companion companion = Result.INSTANCE;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    UGCVideo uGCVideoV = aVar.v();
                    if (uGCVideoV == null || (belongToCollection = uGCVideoV.getBelongToCollection()) == null || (strR = belongToCollection.getCollectionId()) == null) {
                        strR = aVar.r();
                    }
                    String str = strR;
                    UGCVideo uGCVideoV2 = aVar.v();
                    r12 = function0;
                    if (uGCVideoV2 != null && (ugcVideoId = uGCVideoV2.getUgcVideoId()) != null) {
                        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoI = UGCShortTVFloatManager.f50153b.i();
                        long jN = aVar.n();
                        this.L$0 = function0;
                        this.label = 1;
                        if (uGCVideoDetailPlayDaoI.k(str, ugcVideoId, jCurrentTimeMillis, jN, this) == objF) {
                            r12 = function0;
                            r12 = function0;
                            return objF;
                        }
                    }
                    r12 = function0;
                    r12 = function0;
                    r12 = function0;
                    lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "shorttv--saveHistory--end", false, 4, null);
                    Result.m454constructorimpl(Unit.f67061a);
                    r11 = r12;
                    a2VarC = y0.c();
                    uGCShortTVFloatManager$saveHistoryInner$1$1$2 = new UGCShortTVFloatManager$saveHistoryInner$1$1$2(r11, null);
                    this.L$0 = null;
                    this.label = 2;
                    if (kotlinx.coroutines.i.g(a2VarC, uGCShortTVFloatManager$saveHistoryInner$1$1$2, this) == objF) {
                        return objF;
                    }
                }
            } else if (r12 == 1) {
                Function0 function1 = (Function0) this.L$0;
                ResultKt.b(obj);
                r12 = function1;
                r12 = function0;
                r12 = function0;
                r12 = function0;
                lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "shorttv--saveHistory--end", false, 4, null);
                Result.m454constructorimpl(Unit.f67061a);
                r11 = r12;
                a2VarC = y0.c();
                uGCShortTVFloatManager$saveHistoryInner$1$1$2 = new UGCShortTVFloatManager$saveHistoryInner$1$1$2(r11, null);
                this.L$0 = null;
                this.label = 2;
                if (kotlinx.coroutines.i.g(a2VarC, uGCShortTVFloatManager$saveHistoryInner$1$1$2, this) == objF) {
                    return objF;
                }
            } else {
                if (r12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
            r11 = r12;
        }
        return Unit.f67061a;
    }
}
