package com.transsion.shorttv.db;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J5\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\r¨\u0006 "}, d2 = {"Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;", "", "subjectId", "", "favoriteNum", "hasFavorite", "", "favoriteTime", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "getSubjectId", "()Ljava/lang/String;", "setSubjectId", "(Ljava/lang/String;)V", "getFavoriteNum", "setFavoriteNum", "getHasFavorite", "()Z", "setHasFavorite", "(Z)V", "getFavoriteTime", "setFavoriteTime", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTvFavoriteStateBean {
    private String favoriteNum;
    private String favoriteTime;
    private boolean hasFavorite;
    private String subjectId;

    public ShortTvFavoriteStateBean() {
        this(null, null, false, null, 15, null);
    }

    public ShortTvFavoriteStateBean(String subjectId, String str, boolean z10, String str2) {
        Intrinsics.h(subjectId, "subjectId");
        this.subjectId = subjectId;
        this.favoriteNum = str;
        this.hasFavorite = z10;
        this.favoriteTime = str2;
    }

    public /* synthetic */ ShortTvFavoriteStateBean(String str, String str2, boolean z10, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? null : str3);
    }

    public static /* synthetic */ ShortTvFavoriteStateBean copy$default(ShortTvFavoriteStateBean shortTvFavoriteStateBean, String str, String str2, boolean z10, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = shortTvFavoriteStateBean.subjectId;
        }
        if ((i11 & 2) != 0) {
            str2 = shortTvFavoriteStateBean.favoriteNum;
        }
        if ((i11 & 4) != 0) {
            z10 = shortTvFavoriteStateBean.hasFavorite;
        }
        if ((i11 & 8) != 0) {
            str3 = shortTvFavoriteStateBean.favoriteTime;
        }
        return shortTvFavoriteStateBean.copy(str, str2, z10, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFavoriteNum() {
        return this.favoriteNum;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getHasFavorite() {
        return this.hasFavorite;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getFavoriteTime() {
        return this.favoriteTime;
    }

    public final ShortTvFavoriteStateBean copy(String subjectId, String favoriteNum, boolean hasFavorite, String favoriteTime) {
        Intrinsics.h(subjectId, "subjectId");
        return new ShortTvFavoriteStateBean(subjectId, favoriteNum, hasFavorite, favoriteTime);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShortTvFavoriteStateBean)) {
            return false;
        }
        ShortTvFavoriteStateBean shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) other;
        return Intrinsics.c(this.subjectId, shortTvFavoriteStateBean.subjectId) && Intrinsics.c(this.favoriteNum, shortTvFavoriteStateBean.favoriteNum) && this.hasFavorite == shortTvFavoriteStateBean.hasFavorite && Intrinsics.c(this.favoriteTime, shortTvFavoriteStateBean.favoriteTime);
    }

    public final String getFavoriteNum() {
        return this.favoriteNum;
    }

    public final String getFavoriteTime() {
        return this.favoriteTime;
    }

    public final boolean getHasFavorite() {
        return this.hasFavorite;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public int hashCode() {
        int iHashCode = this.subjectId.hashCode() * 31;
        String str = this.favoriteNum;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + androidx.compose.foundation.e.a(this.hasFavorite)) * 31;
        String str2 = this.favoriteTime;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setFavoriteNum(String str) {
        this.favoriteNum = str;
    }

    public final void setFavoriteTime(String str) {
        this.favoriteTime = str;
    }

    public final void setHasFavorite(boolean z10) {
        this.hasFavorite = z10;
    }

    public final void setSubjectId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.subjectId = str;
    }

    public String toString() {
        return "ShortTvFavoriteStateBean(subjectId=" + this.subjectId + ", favoriteNum=" + this.favoriteNum + ", hasFavorite=" + this.hasFavorite + ", favoriteTime=" + this.favoriteTime + ")";
    }
}
