package com.cloud.hisavana.sdk.data.bean.response.ccofig;

import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import j7.a;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0007J\n\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0012H\u0007J\b\u0010\u0014\u001a\u00020\u0012H\u0007J\u0012\u0010\u0015\u001a\u00020\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J!\u0010\u0018\u001a\u00020\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\u0010\u001aR\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;", "", "()V", "enableUseDefaultABDataMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "", "getEnableUseDefaultABDataMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "getABTestData", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;", "abName", "getCommonConfigData", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;", "getCustomTabData", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;", "getDefaultAbTestData", "parseABTestData", "", "parseCommonConfigData", "parseCustomTabData", "saveCustomConfigs", "customConfigs", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;", "setUseABTestDefaultData", "defaultValue", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CustomConfigManager {
    public static final CustomConfigManager INSTANCE = new CustomConfigManager();
    private static final ConcurrentHashMap<String, Boolean> enableUseDefaultABDataMap = new ConcurrentHashMap<>();

    private CustomConfigManager() {
    }

    @JvmStatic
    public static final ABTest getABTestData(String abName) {
        try {
            ABTest currentABTest = ClientABTestUtil.getCurrentABTest(abName);
            return currentABTest != null ? currentABTest : INSTANCE.getDefaultAbTestData(abName);
        } catch (Throwable unused) {
            return null;
        }
    }

    @JvmStatic
    public static final CommonConfigDTO getCommonConfigData() {
        return CustomTabUtil.getCommonConfig();
    }

    @JvmStatic
    public static final CustomTabConfigDTO getCustomTabData() {
        return CustomTabUtil.getCCTConfig();
    }

    private final ABTest getDefaultAbTestData(String abName) {
        try {
            Boolean bool = enableUseDefaultABDataMap.get(abName);
            if (!(bool != null ? bool.booleanValue() : true)) {
                e4.b().d("AbTestData", "getDefaultAbTestData disableDefaultABDataMap");
                return null;
            }
        } catch (Throwable unused) {
        }
        if (abName == null) {
            return null;
        }
        int iHashCode = abName.hashCode();
        if (iHashCode == -1581360697) {
            if (!abName.equals(ClientABTestDTOKt.AB_CUSTOM_TAB)) {
                return null;
            }
            try {
                e4.b().d("AbTestData", "getDefaultAbTestData AB_CUSTOM_TAB");
                return (ABTest) GsonUtil.a("{\"ab_name\":\"custom_tab\",\"layer_id\":503,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ssp_landing_page_tracking\",\"ssp_chrome_landing_page\",\"ssp_chrome_stay_landing_page\",\"ssp_cliclk_link_tracking\"]}", ABTest.class);
            } catch (Throwable unused2) {
                return null;
            }
        }
        if (iHashCode == -656735996) {
            if (!abName.equals(ClientABTestDTOKt.AB_NETWORK)) {
                return null;
            }
            try {
                e4.b().d("AbTestData", "getDefaultAbTestData AB_NETWORK");
                return (ABTest) GsonUtil.a("{\"ab_name\":\"client_ab_network\",\"layer_id\":523,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ad_ssp_request\",\"ad_ssp_return\"]}", ABTest.class);
            } catch (Throwable unused3) {
                return null;
            }
        }
        if (iHashCode != 1518914457 || !abName.equals(ClientABTestDTOKt.MEDIATION_EW_STRATEGY)) {
            return null;
        }
        try {
            e4.b().d("AbTestData", "getDefaultAbTestData MEDIATION_EW_STRATEGY");
            return (ABTest) GsonUtil.a("{\"ab_name\":\"mediation_ew_strategy\",\"layer_id\":539,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ad_request\",\"ad_return\"]}", ABTest.class);
        } catch (Throwable unused4) {
            return null;
        }
    }

    @JvmStatic
    public static final void parseABTestData() {
        ClientABTestUtil.convertABJsonToMap(a.e().j(CustomConfigsKt.AB_TEST));
    }

    @JvmStatic
    public static final void parseCommonConfigData() {
        CustomTabUtil.formatCommonConfig(a.e().j(CustomConfigsKt.COMMON_CONFIG));
    }

    @JvmStatic
    public static final void parseCustomTabData() {
        CustomTabUtil.formatCCTConfig(a.e().j(CustomConfigsKt.CUSTOM_TAB));
    }

    @JvmStatic
    public static final void saveCustomConfigs(CustomConfigs customConfigs) {
        if (customConfigs != null) {
            String abTest = customConfigs.getAbTest();
            String customTab = customConfigs.getCustomTab();
            String commonConfig = customConfigs.getCommonConfig();
            String dcdnUrl = customConfigs.getDcdnUrl();
            ClientABTestUtil.convertABJsonToMap(abTest);
            CustomTabUtil.formatCCTConfig(customTab);
            CustomTabUtil.formatCommonConfig(commonConfig);
            a.e().r(CustomConfigsKt.AB_TEST, abTest);
            a.e().r(CustomConfigsKt.CUSTOM_TAB, customTab);
            a.e().r(CustomConfigsKt.COMMON_CONFIG, commonConfig);
            a.e().r(CustomConfigsKt.DCDN_URL, dcdnUrl);
        }
    }

    @JvmStatic
    public static final void setUseABTestDefaultData(String abName, Boolean defaultValue) {
        if (abName != null) {
            try {
                if (abName.length() == 0 || defaultValue == null) {
                    return;
                }
                enableUseDefaultABDataMap.put(abName, defaultValue);
            } catch (Throwable unused) {
            }
        }
    }

    public final ConcurrentHashMap<String, Boolean> getEnableUseDefaultABDataMap() {
        return enableUseDefaultABDataMap;
    }
}
