package com.cloud.hisavana.sdk.manager;

import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.e4;
import com.hisavana.common.tracking.TrackingKey;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f22711a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile int f22712b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile long f22713c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicBoolean f22714d = new AtomicBoolean(false);

    private b() {
    }

    public final long a() {
        return f22713c;
    }

    public final int b() {
        return f22712b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [j7.a] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    public final void c() {
        Long subExpId;
        Boolean boolM1;
        Map<String, String> info;
        ?? r11 = 0;
        boolean zBooleanValue = true;
        if (f22714d.compareAndSet(false, true)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                ABTest aBTestData = CustomConfigManager.getABTestData(ClientABTestDTOKt.MEDIATION_EW_STRATEGY);
                long jLongValue = 0;
                Unit unit = null;
                str = null;
                String str = null;
                if (aBTestData != null) {
                    ABVariantState aBTestVariant = ABTestKit.getABTestVariant(aBTestData.getLayerId(), aBTestData.getReqInterval(), aBTestData.getSwitch());
                    if (aBTestVariant.isOpen()) {
                        ABVariantState.Open open = aBTestVariant instanceof ABVariantState.Open ? (ABVariantState.Open) aBTestVariant : null;
                        ABVariant variant = open != null ? open.getVariant() : null;
                        if (variant != null && (info = variant.getInfo()) != null) {
                            str = info.get("isChangeEwRequestStrategy");
                        }
                        zBooleanValue = (str == null || (boolM1 = StringsKt.m1(str)) == null) ? false : boolM1.booleanValue();
                        if (variant != null && (subExpId = variant.getSubExpId()) != null) {
                            jLongValue = subExpId.longValue();
                        }
                        e4.b().d("RequestStrategyABManager", "ew Strategy abtest is open, isChangeEwRequestStrategy is " + zBooleanValue + ", varid is " + jLongValue);
                    } else {
                        if (aBTestVariant.isClosed()) {
                            e4.b().d("RequestStrategyABManager", "ew Strategy abtest is closed");
                        } else if (aBTestVariant.isPushAll()) {
                            e4.b().d("RequestStrategyABManager", "ew Strategy abtest is push all");
                        }
                        zBooleanValue = false;
                    }
                    unit = Unit.f67061a;
                } else {
                    zBooleanValue = false;
                }
                if (unit == null) {
                    e4.b().d("RequestStrategyABManager", "ew Strategy abtest config data is null");
                } else {
                    r11 = zBooleanValue;
                }
                j7.a.e().p("request_strategy_status", r11);
                j7.a.e().q(TrackingKey.EW_STRATEGY_VAR_ID, jLongValue);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public final void d() {
        if (f22712b == -1) {
            f22712b = j7.a.e().g("request_strategy_status", 0);
        }
        if (f22713c == -1) {
            f22713c = j7.a.e().i(TrackingKey.EW_STRATEGY_VAR_ID, 0L);
        }
    }
}
