package com.cloud.tmc.integration.defaultImpl;

import android.text.TextUtils;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.render.bean.InjectStrategy;
import com.cloud.tmc.render.bean.JSConfig;
import com.cloud.tmc.render.proxy.InjectJSProxy;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J,\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0002J\u0018\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010H\u0002J\u001c\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00142\u0006\u0010\u0012\u001a\u00020\tH\u0016¨\u0006\u0016"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/InjectJSProxyImp;", "Lcom/cloud/tmc/render/proxy/InjectJSProxy;", "()V", "createScriptId", "", "createStrategy", "", "injectStrategyMap", "", "", "Lcom/cloud/tmc/render/bean/InjectStrategy;", "strategy", "script", "getInjectJSConfig", "Ljava/util/ArrayList;", "Lcom/cloud/tmc/render/bean/JSConfig;", "Lkotlin/collections/ArrayList;", "getInjectStrategy", "appId", "getTartgetInjectJSData", "", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class InjectJSProxyImp implements InjectJSProxy {
    public static final String STRATEGY_INJECT_JS_IN_PAGEFINISHED = "pageFinished";
    public static final String STRATEGY_INJECT_JS_IN_PAGESTAET = "pageStart";
    public static final String STRATEGY_INJECT_JS_IN_PRELOADURL = "preLoadurl";
    public static final String TAG = "InjectJS";
    private static final AtomicInteger scriptId = new AtomicInteger(1);

    private final int createScriptId() {
        AtomicInteger atomicInteger = scriptId;
        int iIncrementAndGet = atomicInteger.incrementAndGet();
        return iIncrementAndGet > 5000 ? atomicInteger.getAndSet(1) : iIncrementAndGet;
    }

    private final void createStrategy(Map<String, InjectStrategy> injectStrategyMap, String strategy, String script) {
        if (!injectStrategyMap.containsKey(strategy)) {
            injectStrategyMap.put(strategy, new InjectStrategy(strategy, script));
            return;
        }
        InjectStrategy injectStrategy = injectStrategyMap.get(strategy);
        if (injectStrategy == null) {
            return;
        }
        injectStrategy.setScript(injectStrategy.getScript() + script);
    }

    private final ArrayList<JSConfig> getInjectJSConfig() {
        Object objFromJson = GsonUtils.fromJson(((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_INJECT_JS_CONFIG_V3, MiniAppConfigHelper.DEFAULT_INJECT_JS_CONFIG), new TypeToken<ArrayList<JSConfig>>() { // from class: com.cloud.tmc.integration.defaultImpl.InjectJSProxyImp.getInjectJSConfig.1
        }.getType());
        Intrinsics.g(objFromJson, "fromJson(injectJSConfigS…ist<JSConfig>>() {}.type)");
        return (ArrayList) objFromJson;
    }

    @Override // com.cloud.tmc.render.proxy.InjectJSProxy
    public Map<String, InjectStrategy> getInjectStrategy(String appId) {
        Intrinsics.h(appId, "appId");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i11 = 0;
        for (Object obj : getTartgetInjectJSData(appId)) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            JSConfig jSConfig = (JSConfig) obj;
            StringBuffer stringBuffer = new StringBuffer();
            int iCreateScriptId = createScriptId();
            stringBuffer.append("var scriptElement" + iCreateScriptId + " = document.createElement('script');\n");
            stringBuffer.append("scriptElement" + iCreateScriptId + ".src = '" + jSConfig.getJsPath() + "';\n");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("document.head.appendChild(scriptElement");
            sb2.append(iCreateScriptId);
            sb2.append(");\n");
            stringBuffer.append(sb2.toString());
            for (String str : jSConfig.getInjectStrategy()) {
                String string = stringBuffer.toString();
                Intrinsics.g(string, "script.toString()");
                createStrategy(linkedHashMap, str, string);
            }
            i11 = i12;
        }
        return linkedHashMap;
    }

    @Override // com.cloud.tmc.render.proxy.InjectJSProxy
    public List<JSConfig> getTartgetInjectJSData(String appId) {
        Intrinsics.h(appId, "appId");
        ArrayList arrayList = new ArrayList();
        for (JSConfig jSConfig : getInjectJSConfig()) {
            if (!TextUtils.isEmpty(appId)) {
                boolean z10 = true;
                if (!jSConfig.getAppIdWhiteList().contains(appId)) {
                    ArrayList<String> appIdWhiteList = jSConfig.getAppIdWhiteList();
                    String strSubstring = appId.substring(0, 1);
                    Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    if (!appIdWhiteList.contains(strSubstring + "*")) {
                        z10 = false;
                    }
                }
                if (jSConfig.getAppIdBlackList().contains(appId) ? false : z10) {
                    arrayList.add(jSConfig);
                }
            }
        }
        return arrayList;
    }
}
