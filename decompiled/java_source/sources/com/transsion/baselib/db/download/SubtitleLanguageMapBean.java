package com.transsion.baselib.db.download;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J3\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000b¨\u0006\""}, d2 = {"Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;", "", "lan", "", "lanIOS3", "lanName", "inSearch", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getLan", "()Ljava/lang/String;", "setLan", "(Ljava/lang/String;)V", "getLanIOS3", "setLanIOS3", "getLanName", "setLanName", "getInSearch", "()Z", "setInSearch", "(Z)V", "lanAbbr", "getLanAbbr", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubtitleLanguageMapBean {
    private boolean inSearch;
    private String lan;
    private String lanIOS3;
    private String lanName;

    public SubtitleLanguageMapBean(String lan, String str, String lanName, boolean z10) {
        Intrinsics.h(lan, "lan");
        Intrinsics.h(lanName, "lanName");
        this.lan = lan;
        this.lanIOS3 = str;
        this.lanName = lanName;
        this.inSearch = z10;
    }

    public /* synthetic */ SubtitleLanguageMapBean(String str, String str2, String str3, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? "" : str2, str3, (i11 & 8) != 0 ? false : z10);
    }

    public static /* synthetic */ SubtitleLanguageMapBean copy$default(SubtitleLanguageMapBean subtitleLanguageMapBean, String str, String str2, String str3, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = subtitleLanguageMapBean.lan;
        }
        if ((i11 & 2) != 0) {
            str2 = subtitleLanguageMapBean.lanIOS3;
        }
        if ((i11 & 4) != 0) {
            str3 = subtitleLanguageMapBean.lanName;
        }
        if ((i11 & 8) != 0) {
            z10 = subtitleLanguageMapBean.inSearch;
        }
        return subtitleLanguageMapBean.copy(str, str2, str3, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLan() {
        return this.lan;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLanIOS3() {
        return this.lanIOS3;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLanName() {
        return this.lanName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getInSearch() {
        return this.inSearch;
    }

    public final SubtitleLanguageMapBean copy(String lan, String lanIOS3, String lanName, boolean inSearch) {
        Intrinsics.h(lan, "lan");
        Intrinsics.h(lanName, "lanName");
        return new SubtitleLanguageMapBean(lan, lanIOS3, lanName, inSearch);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubtitleLanguageMapBean)) {
            return false;
        }
        SubtitleLanguageMapBean subtitleLanguageMapBean = (SubtitleLanguageMapBean) other;
        return Intrinsics.c(this.lan, subtitleLanguageMapBean.lan) && Intrinsics.c(this.lanIOS3, subtitleLanguageMapBean.lanIOS3) && Intrinsics.c(this.lanName, subtitleLanguageMapBean.lanName) && this.inSearch == subtitleLanguageMapBean.inSearch;
    }

    public final boolean getInSearch() {
        return this.inSearch;
    }

    public final String getLan() {
        return this.lan;
    }

    public final String getLanAbbr() {
        return Intrinsics.c(this.lan, "in_id") ? "in" : this.lan;
    }

    public final String getLanIOS3() {
        return this.lanIOS3;
    }

    public final String getLanName() {
        return this.lanName;
    }

    public int hashCode() {
        int iHashCode = this.lan.hashCode() * 31;
        String str = this.lanIOS3;
        return ((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.lanName.hashCode()) * 31) + e.a(this.inSearch);
    }

    public final void setInSearch(boolean z10) {
        this.inSearch = z10;
    }

    public final void setLan(String str) {
        Intrinsics.h(str, "<set-?>");
        this.lan = str;
    }

    public final void setLanIOS3(String str) {
        this.lanIOS3 = str;
    }

    public final void setLanName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.lanName = str;
    }

    public String toString() {
        return "SubtitleLanguageMapBean(lan=" + this.lan + ", lanIOS3=" + this.lanIOS3 + ", lanName=" + this.lanName + ", inSearch=" + this.inSearch + ")";
    }
}
