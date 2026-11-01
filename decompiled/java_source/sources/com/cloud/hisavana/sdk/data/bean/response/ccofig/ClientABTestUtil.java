package com.cloud.hisavana.sdk.data.bean.response.ccofig;

import android.util.Log;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00102\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004H\u0002J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ClientABTestUtil;", "", "()V", "TAG", "", "mABMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;", "getMABMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "setMABMap", "(Ljava/util/concurrent/ConcurrentHashMap;)V", "convertABJsonToMap", "", "abTestJson", "convertJsonToABTestList", "", "getCurrentABTest", "abName", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ClientABTestUtil {
    public static final String TAG = "ClientABTestUtil";
    public static final ClientABTestUtil INSTANCE = new ClientABTestUtil();
    private static ConcurrentHashMap<String, ABTest> mABMap = new ConcurrentHashMap<>();

    private ClientABTestUtil() {
    }

    @JvmStatic
    public static final void convertABJsonToMap(String abTestJson) {
        String abName;
        ConcurrentHashMap<String, ABTest> concurrentHashMap;
        ConcurrentHashMap<String, ABTest> concurrentHashMap2 = mABMap;
        if (concurrentHashMap2 != null) {
            concurrentHashMap2.clear();
        }
        if (abTestJson == null || abTestJson.length() == 0) {
            e4.b().d(TAG, "ClientABTestUtil convertABJsonToMap, reason = customConfigs is null");
            return;
        }
        List<ABTest> listConvertJsonToABTestList = INSTANCE.convertJsonToABTestList(abTestJson);
        if (listConvertJsonToABTestList == null || listConvertJsonToABTestList.isEmpty()) {
            e4.b().d(TAG, "ClientABTestUtil convertABJsonToMap, reason = abList is null or empty");
            return;
        }
        for (ABTest aBTest : listConvertJsonToABTestList) {
            if (aBTest != null && (abName = aBTest.getAbName()) != null && abName.length() != 0 && (concurrentHashMap = mABMap) != null) {
                concurrentHashMap.put(aBTest.getAbName(), aBTest);
            }
        }
        if (Log.isLoggable("ADSDK", 3)) {
            e4.b().i(TAG, "ClientABTestUtil convertABJsonToMap, mABMap = " + mABMap);
        }
    }

    private final List<ABTest> convertJsonToABTestList(String abTestJson) {
        if (abTestJson != null && abTestJson.length() != 0) {
            try {
                return (List) GsonUtil.b(abTestJson, new TypeToken<List<? extends ABTest>>() { // from class: com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestUtil$convertJsonToABTestList$type$1
                }.getType());
            } catch (Exception e11) {
                e4.b().w(TAG, "ClientABTestUtil fail, reason = " + e11.getMessage());
            }
        }
        return null;
    }

    @JvmStatic
    public static final ABTest getCurrentABTest(String abName) {
        ConcurrentHashMap<String, ABTest> concurrentHashMap;
        if (abName == null || abName.length() == 0 || (concurrentHashMap = mABMap) == null) {
            return null;
        }
        return concurrentHashMap.get(abName);
    }

    public final ConcurrentHashMap<String, ABTest> getMABMap() {
        return mABMap;
    }

    public final void setMABMap(ConcurrentHashMap<String, ABTest> concurrentHashMap) {
        mABMap = concurrentHashMap;
    }
}
