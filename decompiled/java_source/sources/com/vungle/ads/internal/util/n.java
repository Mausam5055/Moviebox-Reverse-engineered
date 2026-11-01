package com.vungle.ads.internal.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class n {
    private String adSource;
    private String creativeId;
    private String eventId;
    private String mediationName;
    private String placementRefId;
    private String vmVersion;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.c(n.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type com.vungle.ads.internal.util.LogEntry");
        n nVar = (n) obj;
        return Intrinsics.c(this.placementRefId, nVar.placementRefId) && Intrinsics.c(this.creativeId, nVar.creativeId) && Intrinsics.c(this.eventId, nVar.eventId) && Intrinsics.c(this.adSource, nVar.adSource) && Intrinsics.c(this.mediationName, nVar.mediationName) && Intrinsics.c(this.vmVersion, nVar.vmVersion);
    }

    public final String getAdSource$vungle_ads_release() {
        return this.adSource;
    }

    public final String getCreativeId$vungle_ads_release() {
        return this.creativeId;
    }

    public final String getEventId$vungle_ads_release() {
        return this.eventId;
    }

    public final String getMediationName$vungle_ads_release() {
        return this.mediationName;
    }

    public final String getPlacementRefId$vungle_ads_release() {
        return this.placementRefId;
    }

    public final String getVmVersion$vungle_ads_release() {
        return this.vmVersion;
    }

    public int hashCode() {
        String str = this.placementRefId;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.creativeId;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.eventId;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.adSource;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.mediationName;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.vmVersion;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public final void setAdSource$vungle_ads_release(String str) {
        this.adSource = str;
    }

    public final void setCreativeId$vungle_ads_release(String str) {
        this.creativeId = str;
    }

    public final void setEventId$vungle_ads_release(String str) {
        this.eventId = str;
    }

    public final void setMediationName$vungle_ads_release(String str) {
        this.mediationName = str;
    }

    public final void setPlacementRefId$vungle_ads_release(String str) {
        this.placementRefId = str;
    }

    public final void setVmVersion$vungle_ads_release(String str) {
        this.vmVersion = str;
    }

    public String toString() {
        return "LogEntry(placementRefId=" + this.placementRefId + ", creativeId=" + this.creativeId + ", eventId=" + this.eventId + ", adSource=" + this.adSource + ", mediationName=" + this.mediationName + ", vmVersion=" + this.vmVersion + ')';
    }
}
