package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u001f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0015J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003JV\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\u00072\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020)HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\r\"\u0004\b\u001c\u0010\u000f¨\u0006+"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;", "Ljava/io/Serializable;", "likeNum", "", "favoriteNum", "shareNum", "hasLike", "", "hasFavorite", "commentNum", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V", "getLikeNum", "()Ljava/lang/String;", "setLikeNum", "(Ljava/lang/String;)V", "getFavoriteNum", "setFavoriteNum", "getShareNum", "setShareNum", "getHasLike", "()Ljava/lang/Boolean;", "setHasLike", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getHasFavorite", "setHasFavorite", "getCommentNum", "setCommentNum", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoInteractiveInfo implements Serializable {
    private String commentNum;
    private String favoriteNum;
    private Boolean hasFavorite;
    private Boolean hasLike;
    private String likeNum;
    private String shareNum;

    public UGCVideoInteractiveInfo() {
        this(null, null, null, null, null, null, 63, null);
    }

    public UGCVideoInteractiveInfo(String str, String str2, String str3, Boolean bool, Boolean bool2, String str4) {
        this.likeNum = str;
        this.favoriteNum = str2;
        this.shareNum = str3;
        this.hasLike = bool;
        this.hasFavorite = bool2;
        this.commentNum = str4;
    }

    public /* synthetic */ UGCVideoInteractiveInfo(String str, String str2, String str3, Boolean bool, Boolean bool2, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? Boolean.FALSE : bool, (i11 & 16) != 0 ? Boolean.FALSE : bool2, (i11 & 32) != 0 ? null : str4);
    }

    public static /* synthetic */ UGCVideoInteractiveInfo copy$default(UGCVideoInteractiveInfo uGCVideoInteractiveInfo, String str, String str2, String str3, Boolean bool, Boolean bool2, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uGCVideoInteractiveInfo.likeNum;
        }
        if ((i11 & 2) != 0) {
            str2 = uGCVideoInteractiveInfo.favoriteNum;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            str3 = uGCVideoInteractiveInfo.shareNum;
        }
        String str6 = str3;
        if ((i11 & 8) != 0) {
            bool = uGCVideoInteractiveInfo.hasLike;
        }
        Boolean bool3 = bool;
        if ((i11 & 16) != 0) {
            bool2 = uGCVideoInteractiveInfo.hasFavorite;
        }
        Boolean bool4 = bool2;
        if ((i11 & 32) != 0) {
            str4 = uGCVideoInteractiveInfo.commentNum;
        }
        return uGCVideoInteractiveInfo.copy(str, str5, str6, bool3, bool4, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLikeNum() {
        return this.likeNum;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFavoriteNum() {
        return this.favoriteNum;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getShareNum() {
        return this.shareNum;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getHasLike() {
        return this.hasLike;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Boolean getHasFavorite() {
        return this.hasFavorite;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCommentNum() {
        return this.commentNum;
    }

    public final UGCVideoInteractiveInfo copy(String likeNum, String favoriteNum, String shareNum, Boolean hasLike, Boolean hasFavorite, String commentNum) {
        return new UGCVideoInteractiveInfo(likeNum, favoriteNum, shareNum, hasLike, hasFavorite, commentNum);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVideoInteractiveInfo)) {
            return false;
        }
        UGCVideoInteractiveInfo uGCVideoInteractiveInfo = (UGCVideoInteractiveInfo) other;
        return Intrinsics.c(this.likeNum, uGCVideoInteractiveInfo.likeNum) && Intrinsics.c(this.favoriteNum, uGCVideoInteractiveInfo.favoriteNum) && Intrinsics.c(this.shareNum, uGCVideoInteractiveInfo.shareNum) && Intrinsics.c(this.hasLike, uGCVideoInteractiveInfo.hasLike) && Intrinsics.c(this.hasFavorite, uGCVideoInteractiveInfo.hasFavorite) && Intrinsics.c(this.commentNum, uGCVideoInteractiveInfo.commentNum);
    }

    public final String getCommentNum() {
        return this.commentNum;
    }

    public final String getFavoriteNum() {
        return this.favoriteNum;
    }

    public final Boolean getHasFavorite() {
        return this.hasFavorite;
    }

    public final Boolean getHasLike() {
        return this.hasLike;
    }

    public final String getLikeNum() {
        return this.likeNum;
    }

    public final String getShareNum() {
        return this.shareNum;
    }

    public int hashCode() {
        String str = this.likeNum;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.favoriteNum;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.shareNum;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.hasLike;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.hasFavorite;
        int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str4 = this.commentNum;
        return iHashCode5 + (str4 != null ? str4.hashCode() : 0);
    }

    public final void setCommentNum(String str) {
        this.commentNum = str;
    }

    public final void setFavoriteNum(String str) {
        this.favoriteNum = str;
    }

    public final void setHasFavorite(Boolean bool) {
        this.hasFavorite = bool;
    }

    public final void setHasLike(Boolean bool) {
        this.hasLike = bool;
    }

    public final void setLikeNum(String str) {
        this.likeNum = str;
    }

    public final void setShareNum(String str) {
        this.shareNum = str;
    }

    public String toString() {
        return "UGCVideoInteractiveInfo(likeNum=" + this.likeNum + ", favoriteNum=" + this.favoriteNum + ", shareNum=" + this.shareNum + ", hasLike=" + this.hasLike + ", hasFavorite=" + this.hasFavorite + ", commentNum=" + this.commentNum + ")";
    }
}
