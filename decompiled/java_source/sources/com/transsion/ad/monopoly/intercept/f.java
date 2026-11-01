package com.transsion.ad.monopoly.intercept;

import com.transsion.ad.db.plan.MbAdDbPlans;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends BaseAdSceneCtxExprHandler {
    @Override // com.transsion.ad.monopoly.intercept.BaseAdSceneCtxExprHandler
    public String j(String sceneId, MbAdDbPlans mbAdDbPlans, Map ctxMap) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(ctxMap, "ctxMap");
        if (mbAdDbPlans != null) {
            return mbAdDbPlans.getCtxDisableExpr();
        }
        return null;
    }

    @Override // com.transsion.ad.monopoly.intercept.BaseAdSceneCtxExprHandler
    public String k() {
        return "命中 黑名单,当前广告计划 不满足展示条件";
    }

    @Override // com.transsion.ad.monopoly.intercept.BaseAdSceneCtxExprHandler
    public String l() {
        return "未命中 黑名单,当前广告计划 满足展示条件";
    }

    @Override // com.transsion.ad.monopoly.intercept.BaseAdSceneCtxExprHandler
    public boolean m(boolean z10) {
        return !z10;
    }
}
