package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\bR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0006\"\u0004\b\u0019\u0010\b¨\u0006\u001a"}, d2 = {"Lcom/cloud/tmc/integration/model/NavigateData;", "", "()V", "actionName", "", "getActionName", "()Ljava/lang/String;", "setActionName", "(Ljava/lang/String;)V", FrameworkConstants.GLOBAL_DATA_KEY_DELTA, "", "getDelta", "()I", "setDelta", "(I)V", "isAutoExit", "", "()Z", "setAutoExit", "(Z)V", "params", "getParams", "setParams", "url", "getUrl", "setUrl", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NavigateData {
    private String actionName;
    private int delta;
    private boolean isAutoExit = true;
    private String params;
    private String url;

    public final String getActionName() {
        return this.actionName;
    }

    public final int getDelta() {
        return this.delta;
    }

    public final String getParams() {
        return this.params;
    }

    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: isAutoExit, reason: from getter */
    public final boolean getIsAutoExit() {
        return this.isAutoExit;
    }

    public final void setActionName(String str) {
        this.actionName = str;
    }

    public final void setAutoExit(boolean z10) {
        this.isAutoExit = z10;
    }

    public final void setDelta(int i11) {
        this.delta = i11;
    }

    public final void setParams(String str) {
        this.params = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }
}
