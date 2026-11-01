package com.tn.lib.net.cache;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R(\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/tn/lib/net/cache/CacheResult;", "Ljava/io/Serializable;", "<init>", "()V", "cacheTime", "", "getCacheTime", "()I", "setCacheTime", "(I)V", "canCache", "", "getCanCache", "()Z", "setCanCache", "(Z)V", "startTimestamp", "", "getStartTimestamp", "()Ljava/lang/Long;", "setStartTimestamp", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "paramsMap", "", "", "getParamsMap", "()Ljava/util/Map;", "setParamsMap", "(Ljava/util/Map;)V", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CacheResult implements Serializable {
    private int cacheTime;
    private boolean canCache;
    private Map<String, String> paramsMap;
    private Long startTimestamp;

    public final int getCacheTime() {
        return this.cacheTime;
    }

    public final boolean getCanCache() {
        return this.canCache;
    }

    public final Map<String, String> getParamsMap() {
        return this.paramsMap;
    }

    public final Long getStartTimestamp() {
        return this.startTimestamp;
    }

    public final void setCacheTime(int i11) {
        this.cacheTime = i11;
    }

    public final void setCanCache(boolean z10) {
        this.canCache = z10;
    }

    public final void setParamsMap(Map<String, String> map) {
        this.paramsMap = map;
    }

    public final void setStartTimestamp(Long l11) {
        this.startTimestamp = l11;
    }
}
