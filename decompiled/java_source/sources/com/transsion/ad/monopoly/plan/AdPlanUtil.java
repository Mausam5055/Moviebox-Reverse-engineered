package com.transsion.ad.monopoly.plan;

import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.ps.model.RecommendInfo;
import java.util.Comparator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class AdPlanUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AdPlanUtil f42167a = new AdPlanUtil();

    private AdPlanUtil() {
    }

    public final AdMaterialList a(AdPlans adPlans) {
        List<AdMaterialList> adMaterialList;
        List<AdMaterialList> adMaterialList2;
        if (adPlans == null || (adMaterialList = adPlans.getAdMaterialList()) == null || !(!adMaterialList.isEmpty()) || (adMaterialList2 = adPlans.getAdMaterialList()) == null) {
            return null;
        }
        return (AdMaterialList) CollectionsKt.k0(adMaterialList2);
    }

    public final AdPlans b(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return null;
        }
        final Comparator comparator = new Comparator() { // from class: com.transsion.ad.monopoly.plan.AdPlanUtil$getHighestEcpmAdPlan$$inlined$compareByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(((AdPlans) t12).getEcpmCent(), ((AdPlans) t11).getEcpmCent());
            }
        };
        return (AdPlans) CollectionsKt.x0(list, new Comparator() { // from class: com.transsion.ad.monopoly.plan.AdPlanUtil$getHighestEcpmAdPlan$$inlined$thenBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                int iCompare = comparator.compare(t11, t12);
                return iCompare != 0 ? iCompare : ComparisonsKt.d(((AdPlans) t11).getSort(), ((AdPlans) t12).getSort());
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0012  */
    public final RecommendInfo c(AdPlans adPlans) {
        Object objM454constructorimpl;
        RecommendInfo psRecommendInfo;
        try {
            Result.Companion companion = Result.INSTANCE;
            AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f42166a;
            if (adPlanSourceManager.j(adPlans) || adPlanSourceManager.l(adPlans)) {
                List<AdMaterialList> adMaterialList = adPlans != null ? adPlans.getAdMaterialList() : null;
                List<AdMaterialList> list = adMaterialList;
                if (list == null || list.isEmpty()) {
                    psRecommendInfo = null;
                } else {
                    psRecommendInfo = adMaterialList.get(0).getPsRecommendInfo();
                }
            } else {
                psRecommendInfo = null;
            }
            objM454constructorimpl = Result.m454constructorimpl(psRecommendInfo);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (RecommendInfo) (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null ? objM454constructorimpl : null);
    }
}
