package com.cloud.hisavana.sdk.internal.agentpage.bean;

import a7.c;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g7.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J'\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010'\u001a\u00020\u00182\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0012HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\t\"\u0004\b\u0010\u0010\u000bR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\t\"\u0004\b\u001d\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\t\"\u0004\b\u001f\u0010\u000bR\u001a\u0010 \u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0014\"\u0004\b\"\u0010\u0016¨\u0006+"}, d2 = {"Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;", "", "url", "", "codeSeatId", "triggerId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "appId", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getCodeSeatId", "setCodeSeatId", UrlKt.KEY_MINI_GAID, LauncherMiniAppConfigHelper.KEY_MINI_GET_GAID, "setGaid", "height", "", "getHeight", "()I", "setHeight", "(I)V", "isMonkey", "", "()Z", "setMonkey", "(Z)V", "getTriggerId", "setTriggerId", "getUrl", "setUrl", "width", "getWidth", "setWidth", "component1", "component2", "component3", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AgentPageCurrentAd {
    private String appId;
    private String codeSeatId;
    private String gaid;
    private int height;
    private boolean isMonkey;
    private String triggerId;
    private String url;
    private int width;

    public AgentPageCurrentAd(String url, String codeSeatId, String triggerId) {
        Intrinsics.h(url, "url");
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(triggerId, "triggerId");
        this.url = url;
        this.codeSeatId = codeSeatId;
        this.triggerId = triggerId;
        String strE = DeviceUtil.e();
        this.gaid = strE == null ? "" : strE;
        String str = c.f365b;
        this.appId = str != null ? str : "";
        this.isMonkey = a.k();
    }

    public static /* synthetic */ AgentPageCurrentAd copy$default(AgentPageCurrentAd agentPageCurrentAd, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = agentPageCurrentAd.url;
        }
        if ((i11 & 2) != 0) {
            str2 = agentPageCurrentAd.codeSeatId;
        }
        if ((i11 & 4) != 0) {
            str3 = agentPageCurrentAd.triggerId;
        }
        return agentPageCurrentAd.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCodeSeatId() {
        return this.codeSeatId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTriggerId() {
        return this.triggerId;
    }

    public final AgentPageCurrentAd copy(String url, String codeSeatId, String triggerId) {
        Intrinsics.h(url, "url");
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(triggerId, "triggerId");
        return new AgentPageCurrentAd(url, codeSeatId, triggerId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AgentPageCurrentAd)) {
            return false;
        }
        AgentPageCurrentAd agentPageCurrentAd = (AgentPageCurrentAd) other;
        return Intrinsics.c(this.url, agentPageCurrentAd.url) && Intrinsics.c(this.codeSeatId, agentPageCurrentAd.codeSeatId) && Intrinsics.c(this.triggerId, agentPageCurrentAd.triggerId);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getCodeSeatId() {
        return this.codeSeatId;
    }

    public final String getGaid() {
        return this.gaid;
    }

    public final int getHeight() {
        return this.height;
    }

    public final String getTriggerId() {
        return this.triggerId;
    }

    public final String getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (((this.url.hashCode() * 31) + this.codeSeatId.hashCode()) * 31) + this.triggerId.hashCode();
    }

    /* JADX INFO: renamed from: isMonkey, reason: from getter */
    public final boolean getIsMonkey() {
        return this.isMonkey;
    }

    public final void setAppId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appId = str;
    }

    public final void setCodeSeatId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.codeSeatId = str;
    }

    public final void setGaid(String str) {
        Intrinsics.h(str, "<set-?>");
        this.gaid = str;
    }

    public final void setHeight(int i11) {
        this.height = i11;
    }

    public final void setMonkey(boolean z10) {
        this.isMonkey = z10;
    }

    public final void setTriggerId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.triggerId = str;
    }

    public final void setUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.url = str;
    }

    public final void setWidth(int i11) {
        this.width = i11;
    }

    public String toString() {
        return "AgentPageCurrentAd(url=" + this.url + ", codeSeatId=" + this.codeSeatId + ", triggerId=" + this.triggerId + ')';
    }
}
