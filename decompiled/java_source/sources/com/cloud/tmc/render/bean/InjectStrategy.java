package com.cloud.tmc.render.bean;

import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.render.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/cloud/tmc/render/bean/InjectStrategy;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "strategy", "", "script", "(Ljava/lang/String;Ljava/lang/String;)V", "getScript", "()Ljava/lang/String;", "setScript", "(Ljava/lang/String;)V", "getStrategy", "setStrategy", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class InjectStrategy extends BaseBean {
    private String script;
    private String strategy;

    /* JADX WARN: Multi-variable type inference failed */
    public InjectStrategy() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public InjectStrategy(String strategy, String script) {
        Intrinsics.h(strategy, "strategy");
        Intrinsics.h(script, "script");
        this.strategy = strategy;
        this.script = script;
    }

    public /* synthetic */ InjectStrategy(String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2);
    }

    public static /* synthetic */ InjectStrategy copy$default(InjectStrategy injectStrategy, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = injectStrategy.strategy;
        }
        if ((i11 & 2) != 0) {
            str2 = injectStrategy.script;
        }
        return injectStrategy.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getStrategy() {
        return this.strategy;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getScript() {
        return this.script;
    }

    public final InjectStrategy copy(String strategy, String script) {
        Intrinsics.h(strategy, "strategy");
        Intrinsics.h(script, "script");
        return new InjectStrategy(strategy, script);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InjectStrategy)) {
            return false;
        }
        InjectStrategy injectStrategy = (InjectStrategy) other;
        return Intrinsics.c(this.strategy, injectStrategy.strategy) && Intrinsics.c(this.script, injectStrategy.script);
    }

    public final String getScript() {
        return this.script;
    }

    public final String getStrategy() {
        return this.strategy;
    }

    public int hashCode() {
        return (this.strategy.hashCode() * 31) + this.script.hashCode();
    }

    public final void setScript(String str) {
        Intrinsics.h(str, "<set-?>");
        this.script = str;
    }

    public final void setStrategy(String str) {
        Intrinsics.h(str, "<set-?>");
        this.strategy = str;
    }

    public String toString() {
        return "InjectStrategy(strategy=" + this.strategy + ", script=" + this.script + ')';
    }
}
