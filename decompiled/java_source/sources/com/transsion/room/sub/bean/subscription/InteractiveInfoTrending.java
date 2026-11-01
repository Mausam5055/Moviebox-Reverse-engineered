package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\"\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003JY\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010'\u001a\u00020(J\u0013\u0010)\u001a\u00020\u00052\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020(HÖ\u0001J\t\u0010-\u001a\u00020\u0003HÖ\u0001J\u0016\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020(R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u000e\"\u0004\b\u001a\u0010\u0010R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010¨\u00063"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/InteractiveInfoTrending;", "Landroid/os/Parcelable;", "likeNum", "", "hasLike", "", "favoriteNum", "hasFavorite", "shareNum", "viewNum", "commentNum", "<init>", "(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getLikeNum", "()Ljava/lang/String;", "setLikeNum", "(Ljava/lang/String;)V", "getHasLike", "()Z", "setHasLike", "(Z)V", "getFavoriteNum", "setFavoriteNum", "getHasFavorite", "setHasFavorite", "getShareNum", "setShareNum", "getViewNum", "setViewNum", "getCommentNum", "setCommentNum", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class InteractiveInfoTrending implements Parcelable {
    public static final Parcelable.Creator<InteractiveInfoTrending> CREATOR = new a();
    private String commentNum;
    private String favoriteNum;
    private boolean hasFavorite;
    private boolean hasLike;
    private String likeNum;
    private String shareNum;
    private String viewNum;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InteractiveInfoTrending createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new InteractiveInfoTrending(parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final InteractiveInfoTrending[] newArray(int i11) {
            return new InteractiveInfoTrending[i11];
        }
    }

    public InteractiveInfoTrending() {
        this(null, false, null, false, null, null, null, 127, null);
    }

    public InteractiveInfoTrending(String str, boolean z10, String str2, boolean z11, String str3, String str4, String str5) {
        this.likeNum = str;
        this.hasLike = z10;
        this.favoriteNum = str2;
        this.hasFavorite = z11;
        this.shareNum = str3;
        this.viewNum = str4;
        this.commentNum = str5;
    }

    public /* synthetic */ InteractiveInfoTrending(String str, boolean z10, String str2, boolean z11, String str3, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? null : str2, (i11 & 8) == 0 ? z11 : false, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : str5);
    }

    public static /* synthetic */ InteractiveInfoTrending copy$default(InteractiveInfoTrending interactiveInfoTrending, String str, boolean z10, String str2, boolean z11, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = interactiveInfoTrending.likeNum;
        }
        if ((i11 & 2) != 0) {
            z10 = interactiveInfoTrending.hasLike;
        }
        boolean z12 = z10;
        if ((i11 & 4) != 0) {
            str2 = interactiveInfoTrending.favoriteNum;
        }
        String str6 = str2;
        if ((i11 & 8) != 0) {
            z11 = interactiveInfoTrending.hasFavorite;
        }
        boolean z13 = z11;
        if ((i11 & 16) != 0) {
            str3 = interactiveInfoTrending.shareNum;
        }
        String str7 = str3;
        if ((i11 & 32) != 0) {
            str4 = interactiveInfoTrending.viewNum;
        }
        String str8 = str4;
        if ((i11 & 64) != 0) {
            str5 = interactiveInfoTrending.commentNum;
        }
        return interactiveInfoTrending.copy(str, z12, str6, z13, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLikeNum() {
        return this.likeNum;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getHasLike() {
        return this.hasLike;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getFavoriteNum() {
        return this.favoriteNum;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getHasFavorite() {
        return this.hasFavorite;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getShareNum() {
        return this.shareNum;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getViewNum() {
        return this.viewNum;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getCommentNum() {
        return this.commentNum;
    }

    public final InteractiveInfoTrending copy(String likeNum, boolean hasLike, String favoriteNum, boolean hasFavorite, String shareNum, String viewNum, String commentNum) {
        return new InteractiveInfoTrending(likeNum, hasLike, favoriteNum, hasFavorite, shareNum, viewNum, commentNum);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InteractiveInfoTrending)) {
            return false;
        }
        InteractiveInfoTrending interactiveInfoTrending = (InteractiveInfoTrending) other;
        return Intrinsics.c(this.likeNum, interactiveInfoTrending.likeNum) && this.hasLike == interactiveInfoTrending.hasLike && Intrinsics.c(this.favoriteNum, interactiveInfoTrending.favoriteNum) && this.hasFavorite == interactiveInfoTrending.hasFavorite && Intrinsics.c(this.shareNum, interactiveInfoTrending.shareNum) && Intrinsics.c(this.viewNum, interactiveInfoTrending.viewNum) && Intrinsics.c(this.commentNum, interactiveInfoTrending.commentNum);
    }

    public final String getCommentNum() {
        return this.commentNum;
    }

    public final String getFavoriteNum() {
        return this.favoriteNum;
    }

    public final boolean getHasFavorite() {
        return this.hasFavorite;
    }

    public final boolean getHasLike() {
        return this.hasLike;
    }

    public final String getLikeNum() {
        return this.likeNum;
    }

    public final String getShareNum() {
        return this.shareNum;
    }

    public final String getViewNum() {
        return this.viewNum;
    }

    public int hashCode() {
        String str = this.likeNum;
        int iHashCode = (((str == null ? 0 : str.hashCode()) * 31) + e.a(this.hasLike)) * 31;
        String str2 = this.favoriteNum;
        int iHashCode2 = (((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + e.a(this.hasFavorite)) * 31;
        String str3 = this.shareNum;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.viewNum;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.commentNum;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setCommentNum(String str) {
        this.commentNum = str;
    }

    public final void setFavoriteNum(String str) {
        this.favoriteNum = str;
    }

    public final void setHasFavorite(boolean z10) {
        this.hasFavorite = z10;
    }

    public final void setHasLike(boolean z10) {
        this.hasLike = z10;
    }

    public final void setLikeNum(String str) {
        this.likeNum = str;
    }

    public final void setShareNum(String str) {
        this.shareNum = str;
    }

    public final void setViewNum(String str) {
        this.viewNum = str;
    }

    public String toString() {
        return "InteractiveInfoTrending(likeNum=" + this.likeNum + ", hasLike=" + this.hasLike + ", favoriteNum=" + this.favoriteNum + ", hasFavorite=" + this.hasFavorite + ", shareNum=" + this.shareNum + ", viewNum=" + this.viewNum + ", commentNum=" + this.commentNum + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.likeNum);
        dest.writeInt(this.hasLike ? 1 : 0);
        dest.writeString(this.favoriteNum);
        dest.writeInt(this.hasFavorite ? 1 : 0);
        dest.writeString(this.shareNum);
        dest.writeString(this.viewNum);
        dest.writeString(this.commentNum);
    }
}
