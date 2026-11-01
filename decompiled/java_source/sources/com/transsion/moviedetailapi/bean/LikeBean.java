package com.transsion.moviedetailapi.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00032\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001J\t\u0010 \u001a\u00020\u0007HÖ\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0002\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006!"}, d2 = {"Lcom/transsion/moviedetailapi/bean/LikeBean;", "Ljava/io/Serializable;", "isAffected", "", "likes", "", "postId", "", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V", "()Ljava/lang/Boolean;", "setAffected", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getLikes", "()Ljava/lang/Integer;", "setLikes", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getPostId", "()Ljava/lang/String;", "setPostId", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/moviedetailapi/bean/LikeBean;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LikeBean implements Serializable {

    @SerializedName("isAffected")
    private Boolean isAffected;

    @SerializedName("likes")
    private Integer likes;
    private String postId;

    public LikeBean(Boolean bool, Integer num, String str) {
        this.isAffected = bool;
        this.likes = num;
        this.postId = str;
    }

    public static /* synthetic */ LikeBean copy$default(LikeBean likeBean, Boolean bool, Integer num, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = likeBean.isAffected;
        }
        if ((i11 & 2) != 0) {
            num = likeBean.likes;
        }
        if ((i11 & 4) != 0) {
            str = likeBean.postId;
        }
        return likeBean.copy(bool, num, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getIsAffected() {
        return this.isAffected;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getLikes() {
        return this.likes;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPostId() {
        return this.postId;
    }

    public final LikeBean copy(Boolean isAffected, Integer likes, String postId) {
        return new LikeBean(isAffected, likes, postId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LikeBean)) {
            return false;
        }
        LikeBean likeBean = (LikeBean) other;
        return Intrinsics.c(this.isAffected, likeBean.isAffected) && Intrinsics.c(this.likes, likeBean.likes) && Intrinsics.c(this.postId, likeBean.postId);
    }

    public final Integer getLikes() {
        return this.likes;
    }

    public final String getPostId() {
        return this.postId;
    }

    public int hashCode() {
        Boolean bool = this.isAffected;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Integer num = this.likes;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.postId;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final Boolean isAffected() {
        return this.isAffected;
    }

    public final void setAffected(Boolean bool) {
        this.isAffected = bool;
    }

    public final void setLikes(Integer num) {
        this.likes = num;
    }

    public final void setPostId(String str) {
        this.postId = str;
    }

    public String toString() {
        return "LikeBean(isAffected=" + this.isAffected + ", likes=" + this.likes + ", postId=" + this.postId + ")";
    }
}
