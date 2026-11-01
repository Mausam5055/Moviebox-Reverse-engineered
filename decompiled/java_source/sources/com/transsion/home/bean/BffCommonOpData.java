package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Cover;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0087\b\u0018\u0000 =2\u00020\u0001:\u0001>B[\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\t¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\t¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u0017J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u0017J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u0017J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001f\u0010\u0017Jd\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b \u0010!J\u0010\u0010\"\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\"\u0010\u0017J\u0010\u0010#\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b#\u0010\u0015J\u001a\u0010'\u001a\u00020&2\b\u0010%\u001a\u0004\u0018\u00010$HÖ\u0003¢\u0006\u0004\b'\u0010(R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010)\u001a\u0004\b*\u0010\u0017\"\u0004\b+\u0010,R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010-\u001a\u0004\b.\u0010\u0019\"\u0004\b/\u00100R$\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010)\u001a\u0004\b1\u0010\u0017\"\u0004\b2\u0010,R$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010)\u001a\u0004\b3\u0010\u0017\"\u0004\b4\u0010,R$\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010)\u001a\u0004\b5\u0010\u0017\"\u0004\b6\u0010,R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u00107\u001a\u0004\b8\u0010\u001e\"\u0004\b9\u0010:R$\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010)\u001a\u0004\b;\u0010\u0017\"\u0004\b<\u0010,¨\u0006?"}, d2 = {"Lcom/transsion/home/bean/BffCommonOpData;", "Landroid/os/Parcelable;", "", "id", "Lcom/transsion/moviedetailapi/bean/Cover;", "image", "content", "deepLink", "opItemId", "", "postType", "ops", "<init>", "(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "Landroid/os/Parcel;", "dest", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "()Lcom/transsion/moviedetailapi/bean/Cover;", "component3", "component4", "component5", "component6", "()Ljava/lang/Integer;", "component7", "copy", "(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/home/bean/BffCommonOpData;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getId", "setId", "(Ljava/lang/String;)V", "Lcom/transsion/moviedetailapi/bean/Cover;", "getImage", "setImage", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getContent", "setContent", "getDeepLink", "setDeepLink", "getOpItemId", "setOpItemId", "Ljava/lang/Integer;", "getPostType", "setPostType", "(Ljava/lang/Integer;)V", "getOps", "setOps", "Companion", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BffCommonOpData implements Parcelable {
    public static final int POST_TYPE_AUDIO = 2;
    public static final int POST_TYPE_IMAGE = 1;
    public static final int POST_TYPE_TEXT = 0;
    public static final int POST_TYPE_VIDEO = 4;
    private String content;
    private String deepLink;
    private String id;
    private Cover image;
    private String opItemId;
    private String ops;
    private Integer postType;
    public static final Parcelable.Creator<BffCommonOpData> CREATOR = new b();
    public static final int $stable = 8;

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BffCommonOpData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new BffCommonOpData(parcel.readString(), (Cover) parcel.readSerializable(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final BffCommonOpData[] newArray(int i11) {
            return new BffCommonOpData[i11];
        }
    }

    public BffCommonOpData() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public BffCommonOpData(String str, Cover cover, String str2, String str3, String str4, Integer num, String str5) {
        this.id = str;
        this.image = cover;
        this.content = str2;
        this.deepLink = str3;
        this.opItemId = str4;
        this.postType = num;
        this.ops = str5;
    }

    public /* synthetic */ BffCommonOpData(String str, Cover cover, String str2, String str3, String str4, Integer num, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : cover, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : num, (i11 & 64) != 0 ? null : str5);
    }

    public static /* synthetic */ BffCommonOpData copy$default(BffCommonOpData bffCommonOpData, String str, Cover cover, String str2, String str3, String str4, Integer num, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = bffCommonOpData.id;
        }
        if ((i11 & 2) != 0) {
            cover = bffCommonOpData.image;
        }
        Cover cover2 = cover;
        if ((i11 & 4) != 0) {
            str2 = bffCommonOpData.content;
        }
        String str6 = str2;
        if ((i11 & 8) != 0) {
            str3 = bffCommonOpData.deepLink;
        }
        String str7 = str3;
        if ((i11 & 16) != 0) {
            str4 = bffCommonOpData.opItemId;
        }
        String str8 = str4;
        if ((i11 & 32) != 0) {
            num = bffCommonOpData.postType;
        }
        Integer num2 = num;
        if ((i11 & 64) != 0) {
            str5 = bffCommonOpData.ops;
        }
        return bffCommonOpData.copy(str, cover2, str6, str7, str8, num2, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Cover getImage() {
        return this.image;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDeepLink() {
        return this.deepLink;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getOpItemId() {
        return this.opItemId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getPostType() {
        return this.postType;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    public final BffCommonOpData copy(String id2, Cover image, String content, String deepLink, String opItemId, Integer postType, String ops) {
        return new BffCommonOpData(id2, image, content, deepLink, opItemId, postType, ops);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BffCommonOpData)) {
            return false;
        }
        BffCommonOpData bffCommonOpData = (BffCommonOpData) other;
        return Intrinsics.c(this.id, bffCommonOpData.id) && Intrinsics.c(this.image, bffCommonOpData.image) && Intrinsics.c(this.content, bffCommonOpData.content) && Intrinsics.c(this.deepLink, bffCommonOpData.deepLink) && Intrinsics.c(this.opItemId, bffCommonOpData.opItemId) && Intrinsics.c(this.postType, bffCommonOpData.postType) && Intrinsics.c(this.ops, bffCommonOpData.ops);
    }

    public final String getContent() {
        return this.content;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final String getId() {
        return this.id;
    }

    public final Cover getImage() {
        return this.image;
    }

    public final String getOpItemId() {
        return this.opItemId;
    }

    public final String getOps() {
        return this.ops;
    }

    public final Integer getPostType() {
        return this.postType;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Cover cover = this.image;
        int iHashCode2 = (iHashCode + (cover == null ? 0 : cover.hashCode())) * 31;
        String str2 = this.content;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.deepLink;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.opItemId;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.postType;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        String str5 = this.ops;
        return iHashCode6 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setImage(Cover cover) {
        this.image = cover;
    }

    public final void setOpItemId(String str) {
        this.opItemId = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setPostType(Integer num) {
        this.postType = num;
    }

    public String toString() {
        return "BffCommonOpData(id=" + this.id + ", image=" + this.image + ", content=" + this.content + ", deepLink=" + this.deepLink + ", opItemId=" + this.opItemId + ", postType=" + this.postType + ", ops=" + this.ops + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeSerializable(this.image);
        dest.writeString(this.content);
        dest.writeString(this.deepLink);
        dest.writeString(this.opItemId);
        Integer num = this.postType;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
        dest.writeString(this.ops);
    }
}
