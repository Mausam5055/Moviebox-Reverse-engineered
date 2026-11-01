package com.transsion.lib_web.download_render.data.config;

import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u0012"}, d2 = {"Lcom/transsion/lib_web/download_render/data/config/ConfigData;", "", "maxCacheSize", "", "maxUsedTime", "maxUpgradeTime", "htmlUseRemote", "", "requestMinInterval", "<init>", "(JJJZJ)V", "getMaxCacheSize", "()J", "getMaxUsedTime", "getMaxUpgradeTime", "getHtmlUseRemote", "()Z", "getRequestMinInterval", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ConfigData {
    private final boolean htmlUseRemote;
    private final long maxCacheSize;
    private final long maxUpgradeTime;
    private final long maxUsedTime;
    private final long requestMinInterval;

    public ConfigData() {
        this(0L, 0L, 0L, false, 0L, 31, null);
    }

    public ConfigData(long j11, long j12, long j13, boolean z10, long j14) {
        this.maxCacheSize = j11;
        this.maxUsedTime = j12;
        this.maxUpgradeTime = j13;
        this.htmlUseRemote = z10;
        this.requestMinInterval = j14;
    }

    public /* synthetic */ ConfigData(long j11, long j12, long j13, boolean z10, long j14, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 104857600L : j11, (i11 & 2) != 0 ? 2592000000L : j12, (i11 & 4) == 0 ? j13 : 2592000000L, (i11 & 8) != 0 ? false : z10, (i11 & 16) != 0 ? 3600000L : j14);
    }

    public final boolean getHtmlUseRemote() {
        return this.htmlUseRemote;
    }

    public final long getMaxCacheSize() {
        return this.maxCacheSize;
    }

    public final long getMaxUpgradeTime() {
        return this.maxUpgradeTime;
    }

    public final long getMaxUsedTime() {
        return this.maxUsedTime;
    }

    public final long getRequestMinInterval() {
        return this.requestMinInterval;
    }
}
