package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlansHitResponse;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
public final class AdPlanIntercept {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AdPlanIntercept f42126a = new AdPlanIntercept();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f42127b = LazyKt.b(new Function0() { // from class: com.transsion.ad.monopoly.intercept.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AdPlanIntercept.c();
        }
    });

    private AdPlanIntercept() {
    }

    private final a b() {
        return (a) f42127b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a c() {
        a aVarB = new a.C0598a().a(new ShowOnNetworkStateHandler()).a(new SceneInWhitelistHandler()).a(new CountryInWhitelistHandler()).a(new InDenyBrandHandler()).a(new BrandInWhitelistHandler()).a(new InDenyModelHandler()).a(new ModelInWhitelistHandler()).a(new ValidTimeHandler()).a(new ValidDispatchTimeHandler()).a(new ValidTimesHandler()).a(new g()).a(new f()).a(new AdResourceDownloadedHandler()).b();
        if (aVarB != null) {
            return aVarB;
        }
        throw new IllegalStateException("AdPlanIntercept: handler chain build failed");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(String str, MbAdDbPlans mbAdDbPlans, Map map, Continuation continuation) {
        AdPlanIntercept$isHit$1 adPlanIntercept$isHit$1;
        Object objM454constructorimpl;
        if (continuation instanceof AdPlanIntercept$isHit$1) {
            adPlanIntercept$isHit$1 = (AdPlanIntercept$isHit$1) continuation;
            int i11 = adPlanIntercept$isHit$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                adPlanIntercept$isHit$1.label = i11 - Integer.MIN_VALUE;
            } else {
                adPlanIntercept$isHit$1 = new AdPlanIntercept$isHit$1(this, continuation);
            }
        } else {
            adPlanIntercept$isHit$1 = new AdPlanIntercept$isHit$1(this, continuation);
        }
        Object objB = adPlanIntercept$isHit$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = adPlanIntercept$isHit$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objB);
                Result.Companion companion = Result.INSTANCE;
                a aVarB = b();
                adPlanIntercept$isHit$1.label = 1;
                objB = aVarB.b(str, mbAdDbPlans, map, adPlanIntercept$isHit$1);
                if (objB == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objB);
            }
            objM454constructorimpl = Result.m454constructorimpl((AdPlansHitResponse) objB);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        return thM457exceptionOrNullimpl == null ? objM454constructorimpl : new AdPlansHitResponse(false, thM457exceptionOrNullimpl.getMessage());
    }
}
