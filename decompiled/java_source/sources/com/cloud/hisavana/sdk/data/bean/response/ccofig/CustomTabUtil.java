package com.cloud.hisavana.sdk.data.bean.response.ccofig;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\f\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0007J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0007J\n\u0010\u000f\u001a\u0004\u0018\u00010\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabUtil;", "", "()V", "TAG", "", "cctConfig", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;", "commmonConfig", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;", "formatCCTConfig", "", "customTabConfig", "formatCommonConfig", CustomConfigsKt.COMMON_CONFIG, "getCCTConfig", "getCommonConfig", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CustomTabUtil {
    public static final CustomTabUtil INSTANCE = new CustomTabUtil();
    public static final String TAG = "CustomTabUtil";
    private static volatile CustomTabConfigDTO cctConfig;
    private static volatile CommonConfigDTO commmonConfig;

    private CustomTabUtil() {
    }

    @JvmStatic
    public static final void formatCCTConfig(String customTabConfig) {
        if (TextUtils.isEmpty(customTabConfig)) {
            cctConfig = null;
            return;
        }
        try {
            cctConfig = (CustomTabConfigDTO) GsonUtil.a(customTabConfig, CustomTabConfigDTO.class);
        } catch (Throwable th2) {
            Log.e(TAG, "formatCCTConfig: ", th2);
        }
    }

    @JvmStatic
    public static final void formatCommonConfig(String commonConfig) {
        if (TextUtils.isEmpty(commonConfig)) {
            commmonConfig = null;
            return;
        }
        try {
            commmonConfig = (CommonConfigDTO) GsonUtil.a(commonConfig, CommonConfigDTO.class);
        } catch (Throwable th2) {
            Log.e(TAG, "formatCommonConfig: ", th2);
        }
    }

    @JvmStatic
    public static final CustomTabConfigDTO getCCTConfig() {
        return cctConfig;
    }

    @JvmStatic
    public static final CommonConfigDTO getCommonConfig() {
        return commmonConfig;
    }
}
