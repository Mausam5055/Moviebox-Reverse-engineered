package com.cloud.tmc.ad.bean.request;

import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b'\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fJ\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010+\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010,\u001a\u0004\u0018\u00010\tHÂ\u0003¢\u0006\u0002\u0010-J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00100\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u00101\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010\u0019Jz\u00102\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eHÆ\u0001¢\u0006\u0002\u00103J\u0013\u00104\u001a\u00020\u000e2\b\u00105\u001a\u0004\u0018\u000106HÖ\u0003J\u0006\u00107\u001a\u00020\tJ\t\u00108\u001a\u00020\u0005HÖ\u0001J\b\u00109\u001a\u00020\u0003H\u0016R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\f\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001e\"\u0004\b\"\u0010 R\u0012\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010#R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b$\u0010\u0011\"\u0004\b%\u0010\u0013R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001e\"\u0004\b'\u0010 ¨\u0006:"}, d2 = {"Lcom/cloud/tmc/ad/bean/request/AdxImpBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "pmid", "", "adt", "", "mAdCount", "requestType", "requestTs", "", "requestId", "triggerId", "isTimeOut", "offlineAd", "", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "getAdt", "()Ljava/lang/Integer;", "setAdt", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "setTimeOut", "getMAdCount", "setMAdCount", "getOfflineAd", "()Ljava/lang/Boolean;", "setOfflineAd", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getPmid", "()Ljava/lang/String;", "setPmid", "(Ljava/lang/String;)V", "getRequestId", "setRequestId", "Ljava/lang/Long;", "getRequestType", "setRequestType", "getTriggerId", "setTriggerId", "component1", "component2", "component3", "component4", "component5", "()Ljava/lang/Long;", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/cloud/tmc/ad/bean/request/AdxImpBean;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "getRequestTs", "hashCode", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AdxImpBean extends BaseBean {
    private Integer adt;
    private Integer isTimeOut;
    private Integer mAdCount;
    private Boolean offlineAd;
    private String pmid;
    private String requestId;
    private Long requestTs;
    private Integer requestType;
    private String triggerId;

    public AdxImpBean() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public AdxImpBean(String str, Integer num, Integer num2, Integer num3, Long l11, String str2, String str3, Integer num4, Boolean bool) {
        this.pmid = str;
        this.adt = num;
        this.mAdCount = num2;
        this.requestType = num3;
        this.requestTs = l11;
        this.requestId = str2;
        this.triggerId = str3;
        this.isTimeOut = num4;
        this.offlineAd = bool;
    }

    public /* synthetic */ AdxImpBean(String str, Integer num, Integer num2, Integer num3, Long l11, String str2, String str3, Integer num4, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? 0 : num, (i11 & 4) != 0 ? 1 : num2, (i11 & 8) != 0 ? 0 : num3, (i11 & 16) != 0 ? 0L : l11, (i11 & 32) != 0 ? null : str2, (i11 & 64) == 0 ? str3 : null, (i11 & 128) != 0 ? 0 : num4, (i11 & 256) != 0 ? Boolean.FALSE : bool);
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    private final Long getRequestTs() {
        return this.requestTs;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPmid() {
        return this.pmid;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getAdt() {
        return this.adt;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getMAdCount() {
        return this.mAdCount;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getRequestType() {
        return this.requestType;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getRequestId() {
        return this.requestId;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getTriggerId() {
        return this.triggerId;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getIsTimeOut() {
        return this.isTimeOut;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Boolean getOfflineAd() {
        return this.offlineAd;
    }

    public final AdxImpBean copy(String pmid, Integer adt, Integer mAdCount, Integer requestType, Long requestTs, String requestId, String triggerId, Integer isTimeOut, Boolean offlineAd) {
        return new AdxImpBean(pmid, adt, mAdCount, requestType, requestTs, requestId, triggerId, isTimeOut, offlineAd);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdxImpBean)) {
            return false;
        }
        AdxImpBean adxImpBean = (AdxImpBean) other;
        return Intrinsics.c(this.pmid, adxImpBean.pmid) && Intrinsics.c(this.adt, adxImpBean.adt) && Intrinsics.c(this.mAdCount, adxImpBean.mAdCount) && Intrinsics.c(this.requestType, adxImpBean.requestType) && Intrinsics.c(this.requestTs, adxImpBean.requestTs) && Intrinsics.c(this.requestId, adxImpBean.requestId) && Intrinsics.c(this.triggerId, adxImpBean.triggerId) && Intrinsics.c(this.isTimeOut, adxImpBean.isTimeOut) && Intrinsics.c(this.offlineAd, adxImpBean.offlineAd);
    }

    public final Integer getAdt() {
        return this.adt;
    }

    public final Integer getMAdCount() {
        return this.mAdCount;
    }

    public final Boolean getOfflineAd() {
        return this.offlineAd;
    }

    public final String getPmid() {
        return this.pmid;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final long getRequestTs() {
        Long l11 = this.requestTs;
        if (l11 != null) {
            return l11.longValue();
        }
        return 0L;
    }

    public final Integer getRequestType() {
        return this.requestType;
    }

    public final String getTriggerId() {
        return this.triggerId;
    }

    public int hashCode() {
        String str = this.pmid;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.adt;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.mAdCount;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.requestType;
        int iHashCode4 = (iHashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Long l11 = this.requestTs;
        int iHashCode5 = (iHashCode4 + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str2 = this.requestId;
        int iHashCode6 = (iHashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.triggerId;
        int iHashCode7 = (iHashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num4 = this.isTimeOut;
        int iHashCode8 = (iHashCode7 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Boolean bool = this.offlineAd;
        return iHashCode8 + (bool != null ? bool.hashCode() : 0);
    }

    public final Integer isTimeOut() {
        return this.isTimeOut;
    }

    public final void setAdt(Integer num) {
        this.adt = num;
    }

    public final void setMAdCount(Integer num) {
        this.mAdCount = num;
    }

    public final void setOfflineAd(Boolean bool) {
        this.offlineAd = bool;
    }

    public final void setPmid(String str) {
        this.pmid = str;
    }

    public final void setRequestId(String str) {
        this.requestId = str;
    }

    public final void setRequestType(Integer num) {
        this.requestType = num;
    }

    public final void setTimeOut(Integer num) {
        this.isTimeOut = num;
    }

    public final void setTriggerId(String str) {
        this.triggerId = str;
    }

    public String toString() {
        return "AdxImpBean{, pmid='" + this.pmid + "', adt=" + this.adt + ", mAdCount=" + this.mAdCount + "}";
    }
}
