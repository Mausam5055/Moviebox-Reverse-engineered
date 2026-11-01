package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Image;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J9\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u001cHÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001cR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011¨\u0006("}, d2 = {"Lcom/transsion/home/bean/SingleImagePage;", "Landroid/os/Parcelable;", "image", "Lcom/transsion/moviedetailapi/bean/Image;", "content", "", "opItemId", "deepLink", "<init>", "(Lcom/transsion/moviedetailapi/bean/Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getImage", "()Lcom/transsion/moviedetailapi/bean/Image;", "setImage", "(Lcom/transsion/moviedetailapi/bean/Image;)V", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "getOpItemId", "setOpItemId", "getDeepLink", "setDeepLink", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SingleImagePage implements Parcelable {
    private String content;
    private String deepLink;
    private Image image;
    private String opItemId;
    public static final Parcelable.Creator<SingleImagePage> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SingleImagePage createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SingleImagePage((Image) parcel.readSerializable(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SingleImagePage[] newArray(int i11) {
            return new SingleImagePage[i11];
        }
    }

    public SingleImagePage() {
        this(null, null, null, null, 15, null);
    }

    public SingleImagePage(Image image, String str, String str2, String str3) {
        this.image = image;
        this.content = str;
        this.opItemId = str2;
        this.deepLink = str3;
    }

    public /* synthetic */ SingleImagePage(Image image, String str, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : image, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3);
    }

    public static /* synthetic */ SingleImagePage copy$default(SingleImagePage singleImagePage, Image image, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            image = singleImagePage.image;
        }
        if ((i11 & 2) != 0) {
            str = singleImagePage.content;
        }
        if ((i11 & 4) != 0) {
            str2 = singleImagePage.opItemId;
        }
        if ((i11 & 8) != 0) {
            str3 = singleImagePage.deepLink;
        }
        return singleImagePage.copy(image, str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Image getImage() {
        return this.image;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOpItemId() {
        return this.opItemId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDeepLink() {
        return this.deepLink;
    }

    public final SingleImagePage copy(Image image, String content, String opItemId, String deepLink) {
        return new SingleImagePage(image, content, opItemId, deepLink);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SingleImagePage)) {
            return false;
        }
        SingleImagePage singleImagePage = (SingleImagePage) other;
        return Intrinsics.c(this.image, singleImagePage.image) && Intrinsics.c(this.content, singleImagePage.content) && Intrinsics.c(this.opItemId, singleImagePage.opItemId) && Intrinsics.c(this.deepLink, singleImagePage.deepLink);
    }

    public final String getContent() {
        return this.content;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final Image getImage() {
        return this.image;
    }

    public final String getOpItemId() {
        return this.opItemId;
    }

    public int hashCode() {
        Image image = this.image;
        int iHashCode = (image == null ? 0 : image.hashCode()) * 31;
        String str = this.content;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.opItemId;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.deepLink;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setImage(Image image) {
        this.image = image;
    }

    public final void setOpItemId(String str) {
        this.opItemId = str;
    }

    public String toString() {
        return "SingleImagePage(image=" + this.image + ", content=" + this.content + ", opItemId=" + this.opItemId + ", deepLink=" + this.deepLink + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeSerializable(this.image);
        dest.writeString(this.content);
        dest.writeString(this.opItemId);
        dest.writeString(this.deepLink);
    }
}
