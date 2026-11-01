package com.cloud.hisavana.sdk;

import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.net.NetGroup;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f22609a = new l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f22610b = -1;

    private l() {
    }

    public final void a() {
        Long subExpId;
        Integer numV;
        Map<String, String> info;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (f22610b != -1) {
                return;
            }
            ABTest aBTestData = CustomConfigManager.getABTestData(ClientABTestDTOKt.AB_NETWORK);
            Unit unit = null;
            str = null;
            String str = null;
            if (aBTestData != null) {
                try {
                    ABVariantState aBTestVariant = ABTestKit.getABTestVariant(aBTestData.getLayerId(), aBTestData.getReqInterval(), aBTestData.getSwitch());
                    int iIntValue = 0;
                    if (aBTestVariant.isOpen()) {
                        ABVariantState.Open open = aBTestVariant instanceof ABVariantState.Open ? (ABVariantState.Open) aBTestVariant : null;
                        ABVariant variant = open != null ? open.getVariant() : null;
                        if (variant != null && (info = variant.getInfo()) != null) {
                            str = info.get("netGroupBucketId");
                        }
                        if (str != null && (numV = StringsKt.v(str)) != null) {
                            iIntValue = numV.intValue();
                        }
                        switch (iIntValue) {
                            case 2013:
                            case 2014:
                            case 2015:
                            case 2016:
                                f22610b = iIntValue;
                                long jLongValue = (variant == null || (subExpId = variant.getSubExpId()) == null) ? 0L : subExpId.longValue();
                                com.cloud.sdk.commonutil.util.c.netLog("NetGroup gets the groupBucketId in the api = " + f22610b + ", save it in the cache");
                                String strQ = k1.o().q();
                                if (!NetGroup.a(strQ)) {
                                    com.cloud.sdk.commonutil.util.c.netLog("url is not in the white list, so it will not save groupBucketId in the cache. url = " + strQ);
                                } else {
                                    j7.a.e().p("bucketV2", f22610b);
                                    j7.a.e().q("bucketVarId", jLongValue);
                                }
                                break;
                        }
                    } else if (aBTestVariant.isClosed()) {
                        f22610b = 0;
                        j7.a.e().p("bucketV2", 0);
                        com.cloud.sdk.commonutil.util.c.netLog("network abtest is closed");
                    } else if (aBTestVariant.isPushAll()) {
                        f22610b = 2016;
                        j7.a.e().p("bucketV2", 2016);
                        com.cloud.sdk.commonutil.util.c.netLog("network abtest is push all");
                    }
                } catch (Throwable unused) {
                }
                unit = Unit.f67061a;
            }
            if (unit == null) {
                com.cloud.sdk.commonutil.util.c.netLog("network abtest config data is null");
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }
}
