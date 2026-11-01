package com.transsion.ad.bidding.base;

import android.os.Handler;
import android.os.SystemClock;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/Object;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.bidding.base.AbsAdBidding$innerLoadAd$2", f = "AbsAdBidding.kt", l = {818, 879}, m = "invokeSuspend")
@SourceDebugExtension
final class AbsAdBidding$innerLoadAd$2 extends SuspendLambda implements Function2<n0, Continuation<? super Object>, Object> {
    final /* synthetic */ int $fetchCount;
    final /* synthetic */ boolean $onlyHi;
    long J$0;
    int label;
    final /* synthetic */ AbsAdBidding this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsAdBidding$innerLoadAd$2(AbsAdBidding absAdBidding, boolean z10, int i11, Continuation<? super AbsAdBidding$innerLoadAd$2> continuation) {
        super(2, continuation);
        this.this$0 = absAdBidding;
        this.$onlyHi = z10;
        this.$fetchCount = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(AbsAdBidding absAdBidding) {
        kotlinx.coroutines.k.d(absAdBidding.f41813u, null, null, new AbsAdBidding$innerLoadAd$2$2$1(absAdBidding, null), 3, null);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AbsAdBidding$innerLoadAd$2(this.this$0, this.$onlyHi, this.$fetchCount, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<Object> continuation) {
        return ((AbsAdBidding$innerLoadAd$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        long j11;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                j11 = this.J$0;
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        AbsAdBidding absAdBidding = this.this$0;
        this.J$0 = jElapsedRealtime;
        this.label = 1;
        obj = absAdBidding.b0(this);
        if (obj == objF) {
            return objF;
        }
        j11 = jElapsedRealtime;
        List listU0 = (List) obj;
        oi.b.a.c(this.this$0, 3, "innerLoadAd() --> 获取计划耗时 = " + (SystemClock.elapsedRealtime() - j11) + " --> availablePlanList = " + listU0.size(), null, false, 4, null);
        if (listU0.isEmpty()) {
            this.this$0.i(new TAdErrorCode(1101, "there are currently no plans available"));
            return Unit.f67061a;
        }
        boolean zQ0 = this.this$0.q0(listU0);
        AbsAdBidding absAdBidding2 = this.this$0;
        if (this.$onlyHi) {
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : listU0) {
                if (Intrinsics.c(((AdPlans) obj2).getAdSource(), AdPlanSourceManager.AdPlanEnum.AD_PLAN_AD_SOURCE_HI.getValue())) {
                    arrayList.add(obj2);
                }
            }
            listU0 = CollectionsKt.U0(arrayList);
        }
        absAdBidding2.f41808p = TypeIntrinsics.c(listU0);
        AbsAdBidding absAdBidding3 = this.this$0;
        String mSceneId = absAdBidding3.getMSceneId();
        Map mapG0 = this.this$0.g0();
        List list = this.this$0.f41808p;
        oi.b.a.c(absAdBidding3, 3, "innerLoadAd() --> 开始加载广告 --> sceneId = " + mSceneId + " --> ctxMap = " + mapG0 + " --> 可用广告计划 availablePlanList?.size = " + (list != null ? Boxing.d(list.size()) : null) + " --> hasHiAdPlan = " + zQ0, null, false, 4, null);
        this.this$0.f41803k = this.$fetchCount;
        this.this$0.f41807o.set(false);
        if (zQ0) {
            String mSceneId2 = this.this$0.getMSceneId();
            if (!com.transsion.ad.scene.c.b(com.transsion.ad.scene.c.f42203a, mSceneId2, false, 2, null)) {
                this.this$0.x0(mSceneId2);
            }
        } else if (this.$onlyHi) {
            this.this$0.i(new TAdErrorCode(1101, "onlyHi == true ，但是没有Hi广告计划，不展示广告"));
            return Unit.f67061a;
        }
        if (zQ0) {
            Handler handler = this.this$0.f41806n;
            final AbsAdBidding absAdBidding4 = this.this$0;
            return Boxing.a(handler.postDelayed(new Runnable() { // from class: com.transsion.ad.bidding.base.k
                @Override // java.lang.Runnable
                public final void run() {
                    AbsAdBidding$innerLoadAd$2.d(absAdBidding4);
                }
            }, this.this$0.e0()));
        }
        AbsAdBidding absAdBidding5 = this.this$0;
        this.label = 2;
        if (absAdBidding5.Y("仅有包断，直接开始竞价", this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
