package com.transsion.postdetail.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ&\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\b\u0002\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/transsion/postdetail/bean/CommentLikeBean;", "Ljava/io/Serializable;", "isAffected", "", "likes", "", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Integer;)V", "()Ljava/lang/Boolean;", "setAffected", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getLikes", "()Ljava/lang/Integer;", "setLikes", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/transsion/postdetail/bean/CommentLikeBean;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CommentLikeBean implements Serializable {

    @SerializedName("isAffected")
    private Boolean isAffected;

    @SerializedName("likes")
    private Integer likes;

    public CommentLikeBean(Boolean bool, Integer num) {
        this.isAffected = bool;
        this.likes = num;
    }

    public static /* synthetic */ CommentLikeBean copy$default(CommentLikeBean commentLikeBean, Boolean bool, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = commentLikeBean.isAffected;
        }
        if ((i11 & 2) != 0) {
            num = commentLikeBean.likes;
        }
        return commentLikeBean.copy(bool, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getIsAffected() {
        return this.isAffected;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getLikes() {
        return this.likes;
    }

    public final CommentLikeBean copy(Boolean isAffected, Integer likes) {
        return new CommentLikeBean(isAffected, likes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CommentLikeBean)) {
            return false;
        }
        CommentLikeBean commentLikeBean = (CommentLikeBean) other;
        return Intrinsics.c(this.isAffected, commentLikeBean.isAffected) && Intrinsics.c(this.likes, commentLikeBean.likes);
    }

    public final Integer getLikes() {
        return this.likes;
    }

    public int hashCode() {
        Boolean bool = this.isAffected;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Integer num = this.likes;
        return iHashCode + (num != null ? num.hashCode() : 0);
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

    public String toString() {
        return "CommentLikeBean(isAffected=" + this.isAffected + ", likes=" + this.likes + ")";
    }
}
