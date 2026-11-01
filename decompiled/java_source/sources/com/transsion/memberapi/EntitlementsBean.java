package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/transsion/memberapi/EntitlementsBean;", "Ljava/io/Serializable;", "entitlementKey", "", "properties", "", "Lcom/transsion/memberapi/PropertiesBean;", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "getEntitlementKey", "()Ljava/lang/String;", "setEntitlementKey", "(Ljava/lang/String;)V", "getProperties", "()Ljava/util/List;", "setProperties", "(Ljava/util/List;)V", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class EntitlementsBean implements Serializable {
    private String entitlementKey;
    private List<PropertiesBean> properties;

    public EntitlementsBean(String str, List<PropertiesBean> list) {
        this.entitlementKey = str;
        this.properties = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EntitlementsBean copy$default(EntitlementsBean entitlementsBean, String str, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = entitlementsBean.entitlementKey;
        }
        if ((i11 & 2) != 0) {
            list = entitlementsBean.properties;
        }
        return entitlementsBean.copy(str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEntitlementKey() {
        return this.entitlementKey;
    }

    public final List<PropertiesBean> component2() {
        return this.properties;
    }

    public final EntitlementsBean copy(String entitlementKey, List<PropertiesBean> properties) {
        return new EntitlementsBean(entitlementKey, properties);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EntitlementsBean)) {
            return false;
        }
        EntitlementsBean entitlementsBean = (EntitlementsBean) other;
        return Intrinsics.c(this.entitlementKey, entitlementsBean.entitlementKey) && Intrinsics.c(this.properties, entitlementsBean.properties);
    }

    public final String getEntitlementKey() {
        return this.entitlementKey;
    }

    public final List<PropertiesBean> getProperties() {
        return this.properties;
    }

    public int hashCode() {
        String str = this.entitlementKey;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<PropertiesBean> list = this.properties;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final void setEntitlementKey(String str) {
        this.entitlementKey = str;
    }

    public final void setProperties(List<PropertiesBean> list) {
        this.properties = list;
    }

    public String toString() {
        return "EntitlementsBean(entitlementKey=" + this.entitlementKey + ", properties=" + this.properties + ")";
    }
}
