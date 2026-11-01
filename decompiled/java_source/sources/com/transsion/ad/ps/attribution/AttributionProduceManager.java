package com.transsion.ad.ps.attribution;

import com.transsion.ad.db.pslink.AttributionPoint;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.ps.model.RecommendInfo;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class AttributionProduceManager extends BaseAttributionProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AttributionProduceManager f42180c = new AttributionProduceManager();

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f42181a;

        static {
            int[] iArr = new int[AttributionPoint.AttributionType.values().length];
            try {
                iArr[AttributionPoint.AttributionType.DISPLAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AttributionPoint.AttributionType.CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AttributionPoint.AttributionType.GP_CLICK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f42181a = iArr;
        }
    }

    private AttributionProduceManager() {
    }

    /* JADX WARN: Code duplicated, block: B:22:0x003f A[PHI: r0
  0x003f: PHI (r0v10 java.lang.String) = (r0v8 java.lang.String), (r0v11 java.lang.String), (r0v12 java.lang.String) binds: [B:31:0x0056, B:27:0x004d, B:20:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    private final void k(AdPlans adPlans, AttributionPoint.AttributionType attributionType) {
        String showAttributionLink;
        try {
            Result.Companion companion = Result.INSTANCE;
            List<AdMaterialList> adMaterialList = adPlans != null ? adPlans.getAdMaterialList() : null;
            if (adMaterialList != null && (!adMaterialList.isEmpty())) {
                RecommendInfo psRecommendInfo = adMaterialList.get(0).getPsRecommendInfo();
                int i11 = a.f42181a[attributionType.ordinal()];
                String str = "";
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        if (psRecommendInfo != null && (showAttributionLink = psRecommendInfo.getGpAttributionLink()) != null) {
                            str = showAttributionLink;
                        }
                    } else if (psRecommendInfo != null && (showAttributionLink = psRecommendInfo.getAttributionLink()) != null) {
                        str = showAttributionLink;
                    }
                } else if (psRecommendInfo != null && (showAttributionLink = psRecommendInfo.getShowAttributionLink()) != null) {
                    str = showAttributionLink;
                }
                f42180c.n(psRecommendInfo, attributionType, str);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void n(RecommendInfo recommendInfo, AttributionPoint.AttributionType attributionType, String str) {
        k.d(o0.a(y0.b()), null, null, new AttributionProduceManager$reportUrl$1(str, recommendInfo, attributionType, null), 3, null);
    }

    public final void l(AdPlans adPlans, AttributionPoint.AttributionType type) {
        Intrinsics.h(type, "type");
        AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f42166a;
        if (adPlanSourceManager.j(adPlans) || adPlanSourceManager.l(adPlans)) {
            k(adPlans, type);
        }
    }

    public final void m(AdPlans adPlans) {
        AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f42166a;
        if (adPlanSourceManager.j(adPlans) || adPlanSourceManager.l(adPlans)) {
            k(adPlans, AttributionPoint.AttributionType.DISPLAY);
        }
    }
}
