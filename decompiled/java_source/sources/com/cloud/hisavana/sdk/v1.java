package com.cloud.hisavana.sdk;

import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class v1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v1 f23023a = new v1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile int f23024b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile long f23025c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicBoolean f23026d = new AtomicBoolean(false);

    private v1() {
    }

    public final long a() {
        return f23025c;
    }

    public final int b() {
        return f23024b;
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
        if (f23026d.compareAndSet(false, true)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                ABTest aBTestData = CustomConfigManager.getABTestData(ClientABTestDTOKt.DCDN_NET);
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
                            str = info.get("isSupportDcdn");
                        }
                        zBooleanValue = (str == null || (boolM1 = StringsKt.m1(str)) == null) ? false : boolM1.booleanValue();
                        if (variant != null && (subExpId = variant.getSubExpId()) != null) {
                            jLongValue = subExpId.longValue();
                        }
                        e4.b().d("DCDNManager", "dcdn abtest is open, isSupportDcdn is " + zBooleanValue + ", varid is " + jLongValue);
                    } else {
                        if (aBTestVariant.isClosed()) {
                            e4.b().d("DCDNManager", "dcdn abtest is closed");
                        } else if (aBTestVariant.isPushAll()) {
                            e4.b().d("DCDNManager", "dcdn abtest is push all");
                        }
                        zBooleanValue = false;
                    }
                    unit = Unit.f67061a;
                } else {
                    zBooleanValue = false;
                }
                if (unit == null) {
                    e4.b().d("DCDNManager", "dcdn abtest config data is null");
                } else {
                    r11 = zBooleanValue;
                }
                j7.a.e().p("support_dcdn_status", r11);
                j7.a.e().q("dcdn_var_id", jLongValue);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public final void d() {
        if (f23024b == -1) {
            f23024b = j7.a.e().g("support_dcdn_status", 0);
        }
        if (f23025c == -1) {
            f23025c = j7.a.e().i("dcdn_var_id", 0L);
        }
    }
}
