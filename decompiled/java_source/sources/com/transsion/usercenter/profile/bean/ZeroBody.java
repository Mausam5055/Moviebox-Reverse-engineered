package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010$\u001a\u00020\tHÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003JW\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u0003HÆ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\tHÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010¨\u0006-"}, d2 = {"Lcom/transsion/usercenter/profile/bean/ZeroBody;", "Ljava/io/Serializable;", "countryIso", "", "mobile", "mvboxId", UrlKt.KEY_MINI_GAID, "timezone", "limit", "", "utmSource", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "getCountryIso", "()Ljava/lang/String;", "setCountryIso", "(Ljava/lang/String;)V", "getMobile", "setMobile", "getMvboxId", "setMvboxId", LauncherMiniAppConfigHelper.KEY_MINI_GET_GAID, "setGaid", "getTimezone", "setTimezone", "getLimit", "()I", "setLimit", "(I)V", "getUtmSource", "setUtmSource", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ZeroBody implements Serializable {
    private String countryIso;
    private String gaid;
    private int limit;
    private String mobile;
    private String mvboxId;
    private String timezone;
    private String utmSource;

    public ZeroBody(String countryIso, String str, String str2, String str3, String str4, int i11, String utmSource) {
        Intrinsics.h(countryIso, "countryIso");
        Intrinsics.h(utmSource, "utmSource");
        this.countryIso = countryIso;
        this.mobile = str;
        this.mvboxId = str2;
        this.gaid = str3;
        this.timezone = str4;
        this.limit = i11;
        this.utmSource = utmSource;
    }

    public /* synthetic */ ZeroBody(String str, String str2, String str3, String str4, String str5, int i11, String str6, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, (i12 & 32) != 0 ? 1 : i11, (i12 & 64) != 0 ? "mb" : str6);
    }

    public static /* synthetic */ ZeroBody copy$default(ZeroBody zeroBody, String str, String str2, String str3, String str4, String str5, int i11, String str6, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = zeroBody.countryIso;
        }
        if ((i12 & 2) != 0) {
            str2 = zeroBody.mobile;
        }
        String str7 = str2;
        if ((i12 & 4) != 0) {
            str3 = zeroBody.mvboxId;
        }
        String str8 = str3;
        if ((i12 & 8) != 0) {
            str4 = zeroBody.gaid;
        }
        String str9 = str4;
        if ((i12 & 16) != 0) {
            str5 = zeroBody.timezone;
        }
        String str10 = str5;
        if ((i12 & 32) != 0) {
            i11 = zeroBody.limit;
        }
        int i13 = i11;
        if ((i12 & 64) != 0) {
            str6 = zeroBody.utmSource;
        }
        return zeroBody.copy(str, str7, str8, str9, str10, i13, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCountryIso() {
        return this.countryIso;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMobile() {
        return this.mobile;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMvboxId() {
        return this.mvboxId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getGaid() {
        return this.gaid;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTimezone() {
        return this.timezone;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getLimit() {
        return this.limit;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getUtmSource() {
        return this.utmSource;
    }

    public final ZeroBody copy(String countryIso, String mobile, String mvboxId, String gaid, String timezone, int limit, String utmSource) {
        Intrinsics.h(countryIso, "countryIso");
        Intrinsics.h(utmSource, "utmSource");
        return new ZeroBody(countryIso, mobile, mvboxId, gaid, timezone, limit, utmSource);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ZeroBody)) {
            return false;
        }
        ZeroBody zeroBody = (ZeroBody) other;
        return Intrinsics.c(this.countryIso, zeroBody.countryIso) && Intrinsics.c(this.mobile, zeroBody.mobile) && Intrinsics.c(this.mvboxId, zeroBody.mvboxId) && Intrinsics.c(this.gaid, zeroBody.gaid) && Intrinsics.c(this.timezone, zeroBody.timezone) && this.limit == zeroBody.limit && Intrinsics.c(this.utmSource, zeroBody.utmSource);
    }

    public final String getCountryIso() {
        return this.countryIso;
    }

    public final String getGaid() {
        return this.gaid;
    }

    public final int getLimit() {
        return this.limit;
    }

    public final String getMobile() {
        return this.mobile;
    }

    public final String getMvboxId() {
        return this.mvboxId;
    }

    public final String getTimezone() {
        return this.timezone;
    }

    public final String getUtmSource() {
        return this.utmSource;
    }

    public int hashCode() {
        int iHashCode = this.countryIso.hashCode() * 31;
        String str = this.mobile;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.mvboxId;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.gaid;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.timezone;
        return ((((iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.limit) * 31) + this.utmSource.hashCode();
    }

    public final void setCountryIso(String str) {
        Intrinsics.h(str, "<set-?>");
        this.countryIso = str;
    }

    public final void setGaid(String str) {
        this.gaid = str;
    }

    public final void setLimit(int i11) {
        this.limit = i11;
    }

    public final void setMobile(String str) {
        this.mobile = str;
    }

    public final void setMvboxId(String str) {
        this.mvboxId = str;
    }

    public final void setTimezone(String str) {
        this.timezone = str;
    }

    public final void setUtmSource(String str) {
        Intrinsics.h(str, "<set-?>");
        this.utmSource = str;
    }

    public String toString() {
        return "ZeroBody(countryIso=" + this.countryIso + ", mobile=" + this.mobile + ", mvboxId=" + this.mvboxId + ", gaid=" + this.gaid + ", timezone=" + this.timezone + ", limit=" + this.limit + ", utmSource=" + this.utmSource + ")";
    }
}
