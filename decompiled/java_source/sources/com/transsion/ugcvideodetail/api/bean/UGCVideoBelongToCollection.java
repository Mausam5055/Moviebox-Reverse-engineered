package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010!\u001a\u0004\u0018\u00010\tHÆ\u0003JJ\u0010\"\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020\u0006HÖ\u0001J\t\u0010)\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006*"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;", "Ljava/io/Serializable;", "collectionId", "", "collectionName", "videoNum", "", RequestParameters.POSITION, "descImage", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;)V", "getCollectionId", "()Ljava/lang/String;", "setCollectionId", "(Ljava/lang/String;)V", "getCollectionName", "setCollectionName", "getVideoNum", "()Ljava/lang/Integer;", "setVideoNum", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getPosition", "setPosition", "getDescImage", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;", "setDescImage", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;)V", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoBelongToCollection implements Serializable {
    private String collectionId;
    private String collectionName;
    private UGCVideoDescImage descImage;
    private Integer position;
    private Integer videoNum;

    public UGCVideoBelongToCollection() {
        this(null, null, null, null, null, 31, null);
    }

    public UGCVideoBelongToCollection(String str, String str2, Integer num, Integer num2, UGCVideoDescImage uGCVideoDescImage) {
        this.collectionId = str;
        this.collectionName = str2;
        this.videoNum = num;
        this.position = num2;
        this.descImage = uGCVideoDescImage;
    }

    public /* synthetic */ UGCVideoBelongToCollection(String str, String str2, Integer num, Integer num2, UGCVideoDescImage uGCVideoDescImage, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? 0 : num, (i11 & 8) != 0 ? 0 : num2, (i11 & 16) != 0 ? null : uGCVideoDescImage);
    }

    public static /* synthetic */ UGCVideoBelongToCollection copy$default(UGCVideoBelongToCollection uGCVideoBelongToCollection, String str, String str2, Integer num, Integer num2, UGCVideoDescImage uGCVideoDescImage, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uGCVideoBelongToCollection.collectionId;
        }
        if ((i11 & 2) != 0) {
            str2 = uGCVideoBelongToCollection.collectionName;
        }
        String str3 = str2;
        if ((i11 & 4) != 0) {
            num = uGCVideoBelongToCollection.videoNum;
        }
        Integer num3 = num;
        if ((i11 & 8) != 0) {
            num2 = uGCVideoBelongToCollection.position;
        }
        Integer num4 = num2;
        if ((i11 & 16) != 0) {
            uGCVideoDescImage = uGCVideoBelongToCollection.descImage;
        }
        return uGCVideoBelongToCollection.copy(str, str3, num3, num4, uGCVideoDescImage);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCollectionId() {
        return this.collectionId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCollectionName() {
        return this.collectionName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getVideoNum() {
        return this.videoNum;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getPosition() {
        return this.position;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final UGCVideoDescImage getDescImage() {
        return this.descImage;
    }

    public final UGCVideoBelongToCollection copy(String collectionId, String collectionName, Integer videoNum, Integer position, UGCVideoDescImage descImage) {
        return new UGCVideoBelongToCollection(collectionId, collectionName, videoNum, position, descImage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVideoBelongToCollection)) {
            return false;
        }
        UGCVideoBelongToCollection uGCVideoBelongToCollection = (UGCVideoBelongToCollection) other;
        return Intrinsics.c(this.collectionId, uGCVideoBelongToCollection.collectionId) && Intrinsics.c(this.collectionName, uGCVideoBelongToCollection.collectionName) && Intrinsics.c(this.videoNum, uGCVideoBelongToCollection.videoNum) && Intrinsics.c(this.position, uGCVideoBelongToCollection.position) && Intrinsics.c(this.descImage, uGCVideoBelongToCollection.descImage);
    }

    public final String getCollectionId() {
        return this.collectionId;
    }

    public final String getCollectionName() {
        return this.collectionName;
    }

    public final UGCVideoDescImage getDescImage() {
        return this.descImage;
    }

    public final Integer getPosition() {
        return this.position;
    }

    public final Integer getVideoNum() {
        return this.videoNum;
    }

    public int hashCode() {
        String str = this.collectionId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.collectionName;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.videoNum;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.position;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        UGCVideoDescImage uGCVideoDescImage = this.descImage;
        return iHashCode4 + (uGCVideoDescImage != null ? uGCVideoDescImage.hashCode() : 0);
    }

    public final void setCollectionId(String str) {
        this.collectionId = str;
    }

    public final void setCollectionName(String str) {
        this.collectionName = str;
    }

    public final void setDescImage(UGCVideoDescImage uGCVideoDescImage) {
        this.descImage = uGCVideoDescImage;
    }

    public final void setPosition(Integer num) {
        this.position = num;
    }

    public final void setVideoNum(Integer num) {
        this.videoNum = num;
    }

    public String toString() {
        return "UGCVideoBelongToCollection(collectionId=" + this.collectionId + ", collectionName=" + this.collectionName + ", videoNum=" + this.videoNum + ", position=" + this.position + ", descImage=" + this.descImage + ")";
    }
}
