package com.transsion.ad.bidding.icon;

import com.transsion.ad.monopoly.manager.AdPlansStorageManager;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.bidding.icon.BiddingIconAdManager$loadIconAd$2", f = "BiddingIconAdManager.kt", l = {368, 386}, m = "invokeSuspend")
@SourceDebugExtension
final class BiddingIconAdManager$loadIconAd$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Map<String, Object> $ctxMap;
    final /* synthetic */ boolean $isFilteringInstalled;
    final /* synthetic */ di.a $listener;
    final /* synthetic */ String $sceneId;
    int label;
    final /* synthetic */ BiddingIconAdManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BiddingIconAdManager$loadIconAd$2(String str, Map<String, ? extends Object> map, BiddingIconAdManager biddingIconAdManager, di.a aVar, boolean z10, Continuation<? super BiddingIconAdManager$loadIconAd$2> continuation) {
        super(2, continuation);
        this.$sceneId = str;
        this.$ctxMap = map;
        this.this$0 = biddingIconAdManager;
        this.$listener = aVar;
        this.$isFilteringInstalled = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BiddingIconAdManager$loadIconAd$2(this.$sceneId, this.$ctxMap, this.this$0, this.$listener, this.$isFilteringInstalled, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BiddingIconAdManager$loadIconAd$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
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
        AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f42153a;
        String str = this.$sceneId;
        Map mapA = this.$ctxMap;
        if (mapA == null) {
            mapA = com.transsion.ad.strategy.d.f42231a.a(null);
        }
        this.label = 1;
        obj = AdPlansStorageManager.i(adPlansStorageManager, str, mapA, null, new AdPlanSourceManager.AdPlanEnum[0], this, 4, null);
        if (obj == objF) {
            return objF;
        }
        List list = (List) obj;
        oi.a aVar = oi.a.f71022a;
        String classTag = this.this$0.getClassTag();
        String sceneId = this.this$0.getSceneId();
        Map<String, Object> map = this.$ctxMap;
        int size = list.size();
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AdPlans) it.next()).getName());
        }
        oi.a.i(aVar, classTag + " --> sceneId = " + sceneId + " --> ctxMap: " + map + ", 可用广告计划：" + size + " --> " + arrayList, 0, false, 2, null);
        if (!list.isEmpty()) {
            BiddingIconAdManager biddingIconAdManager = this.this$0;
            String str2 = this.$sceneId;
            boolean z10 = this.$isFilteringInstalled;
            this.label = 2;
            if (biddingIconAdManager.P(str2, z10, list, this) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
        BiddingIconAdManager biddingIconAdManager2 = this.this$0;
        biddingIconAdManager2.U(this.$listener, biddingIconAdManager2.getClassTag() + " --> sceneId = " + this.$sceneId + " --> there are currently no plans available");
        return Unit.f67061a;
    }
}
