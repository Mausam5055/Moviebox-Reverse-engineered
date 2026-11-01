package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010R\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lcom/cloud/tmc/integration/model/ScopeModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "()V", "apis", "", "", "getApis", "()Ljava/util/List;", "setApis", "(Ljava/util/List;)V", "defaultAuthorization", "", "getDefaultAuthorization", "()Z", "setDefaultAuthorization", "(Z)V", TmcConstants.KEY_LANGUAGE, "Lcom/google/gson/JsonObject;", "getLanguage", "()Lcom/google/gson/JsonObject;", "setLanguage", "(Lcom/google/gson/JsonObject;)V", "scopeName", "getScopeName", "()Ljava/lang/String;", "setScopeName", "(Ljava/lang/String;)V", "userAuthorization", "getUserAuthorization", "setUserAuthorization", "validityTime", "", "getValidityTime", "()J", "setValidityTime", "(J)V", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ScopeModel extends BaseBean implements Serializable {
    private List<String> apis;
    private boolean defaultAuthorization;
    private JsonObject language;
    private String scopeName;
    private boolean userAuthorization;
    private long validityTime;

    public final List<String> getApis() {
        return this.apis;
    }

    public final boolean getDefaultAuthorization() {
        return this.defaultAuthorization;
    }

    public final JsonObject getLanguage() {
        return this.language;
    }

    public final String getScopeName() {
        return this.scopeName;
    }

    public final boolean getUserAuthorization() {
        return this.userAuthorization;
    }

    public final long getValidityTime() {
        return this.validityTime;
    }

    public final void setApis(List<String> list) {
        this.apis = list;
    }

    public final void setDefaultAuthorization(boolean z10) {
        this.defaultAuthorization = z10;
    }

    public final void setLanguage(JsonObject jsonObject) {
        this.language = jsonObject;
    }

    public final void setScopeName(String str) {
        this.scopeName = str;
    }

    public final void setUserAuthorization(boolean z10) {
        this.userAuthorization = z10;
    }

    public final void setValidityTime(long j11) {
        this.validityTime = j11;
    }
}
