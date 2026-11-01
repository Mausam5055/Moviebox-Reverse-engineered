package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00032\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/transsion/usercenter/profile/bean/ZeroConfig;", "Ljava/io/Serializable;", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "urlPath", "", "<init>", "(ZLjava/lang/String;)V", "getEnable", "()Z", "setEnable", "(Z)V", "getUrlPath", "()Ljava/lang/String;", "setUrlPath", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ZeroConfig implements Serializable {
    private boolean enable;
    private String urlPath;

    public ZeroConfig(boolean z10, String str) {
        this.enable = z10;
        this.urlPath = str;
    }

    public /* synthetic */ ZeroConfig(boolean z10, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, str);
    }

    public static /* synthetic */ ZeroConfig copy$default(ZeroConfig zeroConfig, boolean z10, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = zeroConfig.enable;
        }
        if ((i11 & 2) != 0) {
            str = zeroConfig.urlPath;
        }
        return zeroConfig.copy(z10, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnable() {
        return this.enable;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUrlPath() {
        return this.urlPath;
    }

    public final ZeroConfig copy(boolean enable, String urlPath) {
        return new ZeroConfig(enable, urlPath);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ZeroConfig)) {
            return false;
        }
        ZeroConfig zeroConfig = (ZeroConfig) other;
        return this.enable == zeroConfig.enable && Intrinsics.c(this.urlPath, zeroConfig.urlPath);
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final String getUrlPath() {
        return this.urlPath;
    }

    public int hashCode() {
        int iA = e.a(this.enable) * 31;
        String str = this.urlPath;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public final void setEnable(boolean z10) {
        this.enable = z10;
    }

    public final void setUrlPath(String str) {
        this.urlPath = str;
    }

    public String toString() {
        return "ZeroConfig(enable=" + this.enable + ", urlPath=" + this.urlPath + ")";
    }
}
