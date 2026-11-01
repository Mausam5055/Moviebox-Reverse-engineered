package com.transsion.ad.monopoly.plan;

import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f42169a = new b();

    private b() {
    }

    public final MbAdImage a(AdPlans plan) {
        Intrinsics.h(plan, "plan");
        return plan.getExtImage();
    }

    public final MbAdImage b(AdPlans plan) {
        Intrinsics.h(plan, "plan");
        AdMaterialList adMaterialListC = c(plan);
        if (adMaterialListC != null) {
            return adMaterialListC.getImage();
        }
        return null;
    }

    public final AdMaterialList c(AdPlans plan) {
        Intrinsics.h(plan, "plan");
        List<AdMaterialList> adMaterialList = plan.getAdMaterialList();
        if (adMaterialList == null || !(!adMaterialList.isEmpty())) {
            return null;
        }
        return adMaterialList.get(0);
    }
}
