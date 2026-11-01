package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b!\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010%\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010&\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0018Jb\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020\bHÖ\u0001J\t\u0010.\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001e\u0010\t\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u001e\u0010\n\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u001e\u0010\u0018\"\u0004\b\u001f\u0010\u001a¨\u0006/"}, d2 = {"Lcom/transsion/memberapi/PropertiesBean;", "Ljava/io/Serializable;", "key", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, NativeComponentConstants.KEY_COMPONENT_TYPE, "compare", "total", "", "used", "remaining", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getKey", "()Ljava/lang/String;", "setKey", "(Ljava/lang/String;)V", "getValue", "setValue", "getType", "setType", "getCompare", "setCompare", "getTotal", "()Ljava/lang/Integer;", "setTotal", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getUsed", "setUsed", "getRemaining", "setRemaining", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/memberapi/PropertiesBean;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PropertiesBean implements Serializable {
    private String compare;
    private String key;
    private Integer remaining;
    private Integer total;
    private String type;
    private Integer used;
    private String value;

    public PropertiesBean(String str, String str2, String str3, String str4, Integer num, Integer num2, Integer num3) {
        this.key = str;
        this.value = str2;
        this.type = str3;
        this.compare = str4;
        this.total = num;
        this.used = num2;
        this.remaining = num3;
    }

    public static /* synthetic */ PropertiesBean copy$default(PropertiesBean propertiesBean, String str, String str2, String str3, String str4, Integer num, Integer num2, Integer num3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = propertiesBean.key;
        }
        if ((i11 & 2) != 0) {
            str2 = propertiesBean.value;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = propertiesBean.type;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            str4 = propertiesBean.compare;
        }
        String str7 = str4;
        if ((i11 & 16) != 0) {
            num = propertiesBean.total;
        }
        Integer num4 = num;
        if ((i11 & 32) != 0) {
            num2 = propertiesBean.used;
        }
        Integer num5 = num2;
        if ((i11 & 64) != 0) {
            num3 = propertiesBean.remaining;
        }
        return propertiesBean.copy(str, str5, str6, str7, num4, num5, num3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getValue() {
        return this.value;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCompare() {
        return this.compare;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getTotal() {
        return this.total;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getUsed() {
        return this.used;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getRemaining() {
        return this.remaining;
    }

    public final PropertiesBean copy(String key, String value, String type, String compare, Integer total, Integer used, Integer remaining) {
        return new PropertiesBean(key, value, type, compare, total, used, remaining);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PropertiesBean)) {
            return false;
        }
        PropertiesBean propertiesBean = (PropertiesBean) other;
        return Intrinsics.c(this.key, propertiesBean.key) && Intrinsics.c(this.value, propertiesBean.value) && Intrinsics.c(this.type, propertiesBean.type) && Intrinsics.c(this.compare, propertiesBean.compare) && Intrinsics.c(this.total, propertiesBean.total) && Intrinsics.c(this.used, propertiesBean.used) && Intrinsics.c(this.remaining, propertiesBean.remaining);
    }

    public final String getCompare() {
        return this.compare;
    }

    public final String getKey() {
        return this.key;
    }

    public final Integer getRemaining() {
        return this.remaining;
    }

    public final Integer getTotal() {
        return this.total;
    }

    public final String getType() {
        return this.type;
    }

    public final Integer getUsed() {
        return this.used;
    }

    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        String str = this.key;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.value;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.type;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.compare;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.total;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.used;
        int iHashCode6 = (iHashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.remaining;
        return iHashCode6 + (num3 != null ? num3.hashCode() : 0);
    }

    public final void setCompare(String str) {
        this.compare = str;
    }

    public final void setKey(String str) {
        this.key = str;
    }

    public final void setRemaining(Integer num) {
        this.remaining = num;
    }

    public final void setTotal(Integer num) {
        this.total = num;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public final void setUsed(Integer num) {
        this.used = num;
    }

    public final void setValue(String str) {
        this.value = str;
    }

    public String toString() {
        return "PropertiesBean(key=" + this.key + ", value=" + this.value + ", type=" + this.type + ", compare=" + this.compare + ", total=" + this.total + ", used=" + this.used + ", remaining=" + this.remaining + ")";
    }
}
