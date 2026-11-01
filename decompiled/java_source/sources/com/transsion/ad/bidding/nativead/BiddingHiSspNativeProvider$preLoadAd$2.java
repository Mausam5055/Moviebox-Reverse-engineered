package com.transsion.ad.bidding.nativead;

import com.transsion.ad.monopoly.manager.AdPlansStorageManager;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import java.util.ArrayList;
import java.util.Collection;
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
@DebugMetadata(c = "com.transsion.ad.bidding.nativead.BiddingHiSspNativeProvider$preLoadAd$2", f = "BiddingHiSspNativeProvider.kt", l = {261}, m = "invokeSuspend")
@SourceDebugExtension
final class BiddingHiSspNativeProvider$preLoadAd$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Map<String, Object> $ctxMap;
    final /* synthetic */ int $reqCount;
    final /* synthetic */ String $sceneId;
    int label;
    final /* synthetic */ BiddingHiSspNativeProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BiddingHiSspNativeProvider$preLoadAd$2(String str, BiddingHiSspNativeProvider biddingHiSspNativeProvider, Map<String, ? extends Object> map, int i11, Continuation<? super BiddingHiSspNativeProvider$preLoadAd$2> continuation) {
        super(2, continuation);
        this.$sceneId = str;
        this.this$0 = biddingHiSspNativeProvider;
        this.$ctxMap = map;
        this.$reqCount = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BiddingHiSspNativeProvider$preLoadAd$2(this.$sceneId, this.this$0, this.$ctxMap, this.$reqCount, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BiddingHiSspNativeProvider$preLoadAd$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            this.label = 1;
            obj = AdPlansStorageManager.i(AdPlansStorageManager.f42153a, this.$sceneId, com.transsion.ad.strategy.d.f42231a.a(null), null, new AdPlanSourceManager.AdPlanEnum[0], this, 4, null);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        List list = (List) obj;
        oi.a aVar = oi.a.f71022a;
        String strJ = this.this$0.j();
        String strJ2 = this.this$0.j();
        String str = this.$sceneId;
        Map<String, Object> map = this.$ctxMap;
        int size = list.size();
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((AdPlans) it.next()).getName());
        }
        oi.a.o(aVar, strJ, strJ2 + " --> sceneId = " + str + " preload --> ctxMap: " + map + ", 可用广告计划：" + size + " --> " + arrayList, 0, false, 4, null);
        if (list.isEmpty()) {
            return Unit.f67061a;
        }
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                if (AdPlanSourceManager.f42166a.e((AdPlans) it2.next())) {
                    if (this.$reqCount > this.this$0.f41998g) {
                        this.this$0.f41998g = this.$reqCount;
                    }
                    oi.a.o(oi.a.f71022a, "ad_n", this.this$0.j() + " --> preLoadAd(" + this.$reqCount + ") --> " + this.this$0.l(), 0, false, 4, null);
                    this.this$0.n();
                    return Unit.f67061a;
                }
            }
        }
        return Unit.f67061a;
    }
}
