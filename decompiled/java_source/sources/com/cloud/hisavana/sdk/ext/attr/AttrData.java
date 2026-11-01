package com.cloud.hisavana.sdk.ext.attr;

import androidx.collection.s;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b%\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\rJ\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\bHÆ\u0003J\t\u0010(\u001a\u00020\u0005HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0005HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003JY\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001J\u0013\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00100\u001a\u00020\u0003HÖ\u0001J\t\u00101\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0013\"\u0004\b\u0019\u0010\u0015R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u000f\"\u0004\b\u001f\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0013\"\u0004\b!\u0010\u0015R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011¨\u00062"}, d2 = {"Lcom/cloud/hisavana/sdk/ext/attr/AttrData;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "linkId", "", "count", "eventTs", "", "creatives", "failCount", "errorList", "errorCode", "(ILjava/lang/String;IJLjava/lang/String;ILjava/lang/String;I)V", "getCount", "()I", "setCount", "(I)V", "getCreatives", "()Ljava/lang/String;", "setCreatives", "(Ljava/lang/String;)V", "getErrorCode", "setErrorCode", "getErrorList", "setErrorList", "getEventTs", "()J", "setEventTs", "(J)V", "getFailCount", "setFailCount", "getLinkId", "setLinkId", "getType", "setType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AttrData {
    private int count;
    private String creatives;
    private int errorCode;
    private String errorList;
    private long eventTs;
    private int failCount;
    private String linkId;
    private int type;

    public AttrData() {
        this(0, null, 0, 0L, null, 0, null, 0, 255, null);
    }

    public AttrData(int i11, String linkId, int i12, long j11, String creatives, int i13, String errorList, int i14) {
        Intrinsics.h(linkId, "linkId");
        Intrinsics.h(creatives, "creatives");
        Intrinsics.h(errorList, "errorList");
        this.type = i11;
        this.linkId = linkId;
        this.count = i12;
        this.eventTs = j11;
        this.creatives = creatives;
        this.failCount = i13;
        this.errorList = errorList;
        this.errorCode = i14;
    }

    public /* synthetic */ AttrData(int i11, String str, int i12, long j11, String str2, int i13, String str3, int i14, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? 0 : i11, (i15 & 2) != 0 ? "" : str, (i15 & 4) != 0 ? 0 : i12, (i15 & 8) != 0 ? 0L : j11, (i15 & 16) != 0 ? "" : str2, (i15 & 32) != 0 ? 0 : i13, (i15 & 64) == 0 ? str3 : "", (i15 & 128) == 0 ? i14 : 0);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLinkId() {
        return this.linkId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getCount() {
        return this.count;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getEventTs() {
        return this.eventTs;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCreatives() {
        return this.creatives;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getFailCount() {
        return this.failCount;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getErrorList() {
        return this.errorList;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final int getErrorCode() {
        return this.errorCode;
    }

    public final AttrData copy(int type, String linkId, int count, long eventTs, String creatives, int failCount, String errorList, int errorCode) {
        Intrinsics.h(linkId, "linkId");
        Intrinsics.h(creatives, "creatives");
        Intrinsics.h(errorList, "errorList");
        return new AttrData(type, linkId, count, eventTs, creatives, failCount, errorList, errorCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AttrData)) {
            return false;
        }
        AttrData attrData = (AttrData) other;
        return this.type == attrData.type && Intrinsics.c(this.linkId, attrData.linkId) && this.count == attrData.count && this.eventTs == attrData.eventTs && Intrinsics.c(this.creatives, attrData.creatives) && this.failCount == attrData.failCount && Intrinsics.c(this.errorList, attrData.errorList) && this.errorCode == attrData.errorCode;
    }

    public final int getCount() {
        return this.count;
    }

    public final String getCreatives() {
        return this.creatives;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final String getErrorList() {
        return this.errorList;
    }

    public final long getEventTs() {
        return this.eventTs;
    }

    public final int getFailCount() {
        return this.failCount;
    }

    public final String getLinkId() {
        return this.linkId;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (((((((((((((this.type * 31) + this.linkId.hashCode()) * 31) + this.count) * 31) + s.a(this.eventTs)) * 31) + this.creatives.hashCode()) * 31) + this.failCount) * 31) + this.errorList.hashCode()) * 31) + this.errorCode;
    }

    public final void setCount(int i11) {
        this.count = i11;
    }

    public final void setCreatives(String str) {
        Intrinsics.h(str, "<set-?>");
        this.creatives = str;
    }

    public final void setErrorCode(int i11) {
        this.errorCode = i11;
    }

    public final void setErrorList(String str) {
        Intrinsics.h(str, "<set-?>");
        this.errorList = str;
    }

    public final void setEventTs(long j11) {
        this.eventTs = j11;
    }

    public final void setFailCount(int i11) {
        this.failCount = i11;
    }

    public final void setLinkId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.linkId = str;
    }

    public final void setType(int i11) {
        this.type = i11;
    }

    public String toString() {
        return "AttrData(type=" + this.type + ", linkId=" + this.linkId + ", count=" + this.count + ", eventTs=" + this.eventTs + ", creatives=" + this.creatives + ", failCount=" + this.failCount + ", errorList=" + this.errorList + ", errorCode=" + this.errorCode + ')';
    }
}
