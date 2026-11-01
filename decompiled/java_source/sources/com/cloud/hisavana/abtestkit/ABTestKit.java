package com.cloud.hisavana.abtestkit;

import android.content.Context;
import android.util.Log;
import com.cloud.config.utils.XLogUtil;
import com.cloud.hisavana.abtestkit.bean.ABLayerInfo;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.abtestkit.bean.OnlineABLayerDTO;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import v6.e;
import v6.g;
import v6.i;
import v6.l;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0014\u001a\u00020\u00132\b\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0016\u0010\u0003¨\u0006\u0017"}, d2 = {"Lcom/cloud/hisavana/abtestkit/ABTestKit;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;", XLogUtil.TAG, "", "init", "(Landroid/content/Context;Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V", "", "interval", "updateHttpRequestTimeInterval", "(J)V", "layerId", "localRequestInterval", "", "layerSwitchStatus", "Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;", "getABTestVariant", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;", "deleteTable", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ABTestKit {
    public static final ABTestKit INSTANCE = new ABTestKit();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ABTestKitConfig f21311a;

    @JvmStatic
    public static final void deleteTable() {
        e.a();
    }

    @JvmStatic
    public static final ABVariantState getABTestVariant(Long layerId, Long localRequestInterval, String layerSwitchStatus) {
        ConcurrentHashMap concurrentHashMap;
        ABLayerInfo aBLayerInfo;
        ABTestKitConfig aBTestKitConfig = f21311a;
        if (layerId == null) {
            return new ABVariantState.Closed(8);
        }
        if (layerSwitchStatus == null || layerSwitchStatus.length() == 0) {
            return new ABVariantState.Closed(1);
        }
        if (!StringsKt.H(layerSwitchStatus, "OPEN", true)) {
            if (StringsKt.H(layerSwitchStatus, "PUSH_ALL", true)) {
                return ABVariantState.PushAll.INSTANCE;
            }
            return StringsKt.H(layerSwitchStatus, "CLOSED", true) ? new ABVariantState.Closed(7) : new ABVariantState.Closed(9);
        }
        i.a(layerId.longValue(), ((localRequestInterval == null && (aBTestKitConfig == null || (localRequestInterval = aBTestKitConfig.getHttpRequestTimeInterval()) == null)) ? 259200L : localRequestInterval.longValue()) * ((long) 1000), aBTestKitConfig);
        AtomicBoolean atomicBoolean = e.f77055a;
        OnlineABLayerDTO onlineABLayerDTO = (OnlineABLayerDTO) l.f77065a.get(layerId);
        String info = onlineABLayerDTO != null ? onlineABLayerDTO.getInfo() : null;
        if ((info == null || info.length() == 0) && (concurrentHashMap = l.f77066b) != null && (aBLayerInfo = (ABLayerInfo) concurrentHashMap.get(layerId)) != null) {
            onlineABLayerDTO = new OnlineABLayerDTO(null, 1, null);
            onlineABLayerDTO.setLayerId(layerId.longValue());
            onlineABLayerDTO.setRequestTime(System.currentTimeMillis());
            onlineABLayerDTO.setAbLayerInfo(aBLayerInfo);
        }
        if (Log.isLoggable("ADSDK", 3)) {
            com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "ABMemoryCache queryMemoryCacheForLayerId, result = " + onlineABLayerDTO);
        }
        ABVariantState aBVariantStateA = g.a(onlineABLayerDTO != null ? onlineABLayerDTO.getAbLayerInfo() : null);
        if (Log.isLoggable("ADSDK", 3)) {
            com.cloud.sdk.commonutil.util.c.Log().i("ABTEST", "ABChecker check, state = " + aBVariantStateA);
        }
        return aBVariantStateA;
    }

    @JvmStatic
    public static final void init(Context context, ABTestKitConfig config) {
        Intrinsics.h(context, "context");
        com.cloud.sdk.commonutil.util.e.g(context);
        INSTANCE.getClass();
        if (f21311a != null || config == null) {
            return;
        }
        f21311a = config;
        AtomicBoolean atomicBoolean = e.f77055a;
        e.g(config.getInitCompleteListener());
    }

    @JvmStatic
    public static final void updateHttpRequestTimeInterval(long interval) {
        ABTestKitConfig aBTestKitConfig = f21311a;
        if (aBTestKitConfig == null) {
            return;
        }
        aBTestKitConfig.setHttpRequestTimeInterval(Long.valueOf(Math.max(1L, interval)));
    }
}
