package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b=\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0093\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010C\u001a\u00020\bHÆ\u0003J\u0010\u0010D\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010%J\u0010\u0010E\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010*J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010H\u001a\u00020\u000bHÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u009a\u0001\u0010L\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÆ\u0001¢\u0006\u0002\u0010MJ\u0006\u0010N\u001a\u00020\u000bJ\u0013\u0010O\u001a\u00020\b2\b\u0010P\u001a\u0004\u0018\u00010QHÖ\u0003J\t\u0010R\u001a\u00020\u000bHÖ\u0001J\t\u0010S\u001a\u00020\u0003HÖ\u0001J\u0016\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020\u000bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001e\u0010\t\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010(\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010-\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0017\"\u0004\b/\u0010\u0019R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0017\"\u0004\b1\u0010\u0019R\u001a\u0010\u000e\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0017\"\u0004\b;\u0010\u0019R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?¨\u0006Y"}, d2 = {"Lcom/transsion/home/bean/BannerData;", "Landroid/os/Parcelable;", "content", "", "deepLink", "image", "Lcom/transsion/moviedetailapi/bean/Image;", "builtIn", "", "hasResource", "seenStatus", "", "ops", "subjectId", "subjectType", "subject", "Lcom/transsion/moviedetailapi/bean/Subject;", "objId", "biddingAdData", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Image;ZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "getDeepLink", "setDeepLink", "getImage", "()Lcom/transsion/moviedetailapi/bean/Image;", "setImage", "(Lcom/transsion/moviedetailapi/bean/Image;)V", "getBuiltIn", "()Z", "setBuiltIn", "(Z)V", "getHasResource", "()Ljava/lang/Boolean;", "setHasResource", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getSeenStatus", "()Ljava/lang/Integer;", "setSeenStatus", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getOps", "setOps", "getSubjectId", "setSubjectId", "getSubjectType", "()I", "setSubjectType", "(I)V", "getSubject", "()Lcom/transsion/moviedetailapi/bean/Subject;", "setSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "getObjId", "setObjId", "getBiddingAdData", "()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "setBiddingAdData", "(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Image;ZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Lcom/transsion/home/bean/BannerData;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BannerData implements Parcelable {
    private transient BiddingIntermediateMaterialBean biddingAdData;
    private boolean builtIn;
    private String content;
    private String deepLink;
    private Boolean hasResource;
    private Image image;
    private String objId;
    private String ops;
    private Integer seenStatus;
    private Subject subject;
    private String subjectId;
    private int subjectType;
    public static final Parcelable.Creator<BannerData> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BannerData createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            Image image = (Image) parcel.readSerializable();
            boolean z10 = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new BannerData(string, string2, image, z10, boolValueOf, parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readString(), parcel.readString(), parcel.readInt(), (Subject) parcel.readSerializable(), parcel.readString(), (BiddingIntermediateMaterialBean) parcel.readParcelable(BannerData.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final BannerData[] newArray(int i11) {
            return new BannerData[i11];
        }
    }

    public BannerData() {
        this(null, null, null, false, null, null, null, null, 0, null, null, null, UnixStat.PERM_MASK, null);
    }

    public BannerData(String str, String str2, Image image, boolean z10, Boolean bool, Integer num, String str3, String str4, int i11, Subject subject, String str5, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        this.content = str;
        this.deepLink = str2;
        this.image = image;
        this.builtIn = z10;
        this.hasResource = bool;
        this.seenStatus = num;
        this.ops = str3;
        this.subjectId = str4;
        this.subjectType = i11;
        this.subject = subject;
        this.objId = str5;
        this.biddingAdData = biddingIntermediateMaterialBean;
    }

    public /* synthetic */ BannerData(String str, String str2, Image image, boolean z10, Boolean bool, Integer num, String str3, String str4, int i11, Subject subject, String str5, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : str2, (i12 & 4) != 0 ? null : image, (i12 & 8) != 0 ? false : z10, (i12 & 16) != 0 ? null : bool, (i12 & 32) != 0 ? 0 : num, (i12 & 64) != 0 ? null : str3, (i12 & 128) != 0 ? null : str4, (i12 & 256) == 0 ? i11 : 0, (i12 & 512) != 0 ? null : subject, (i12 & 1024) != 0 ? null : str5, (i12 & 2048) == 0 ? biddingIntermediateMaterialBean : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Subject getSubject() {
        return this.subject;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getObjId() {
        return this.objId;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final BiddingIntermediateMaterialBean getBiddingAdData() {
        return this.biddingAdData;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDeepLink() {
        return this.deepLink;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Image getImage() {
        return this.image;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Boolean getHasResource() {
        return this.hasResource;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getSeenStatus() {
        return this.seenStatus;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final int getSubjectType() {
        return this.subjectType;
    }

    public final BannerData copy(String content, String deepLink, Image image, boolean builtIn, Boolean hasResource, Integer seenStatus, String ops, String subjectId, int subjectType, Subject subject, String objId, BiddingIntermediateMaterialBean biddingAdData) {
        return new BannerData(content, deepLink, image, builtIn, hasResource, seenStatus, ops, subjectId, subjectType, subject, objId, biddingAdData);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BannerData)) {
            return false;
        }
        BannerData bannerData = (BannerData) other;
        return Intrinsics.c(this.content, bannerData.content) && Intrinsics.c(this.deepLink, bannerData.deepLink) && Intrinsics.c(this.image, bannerData.image) && this.builtIn == bannerData.builtIn && Intrinsics.c(this.hasResource, bannerData.hasResource) && Intrinsics.c(this.seenStatus, bannerData.seenStatus) && Intrinsics.c(this.ops, bannerData.ops) && Intrinsics.c(this.subjectId, bannerData.subjectId) && this.subjectType == bannerData.subjectType && Intrinsics.c(this.subject, bannerData.subject) && Intrinsics.c(this.objId, bannerData.objId) && Intrinsics.c(this.biddingAdData, bannerData.biddingAdData);
    }

    public final BiddingIntermediateMaterialBean getBiddingAdData() {
        return this.biddingAdData;
    }

    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    public final String getContent() {
        return this.content;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final Boolean getHasResource() {
        return this.hasResource;
    }

    public final Image getImage() {
        return this.image;
    }

    public final String getObjId() {
        return this.objId;
    }

    public final String getOps() {
        return this.ops;
    }

    public final Integer getSeenStatus() {
        return this.seenStatus;
    }

    public final Subject getSubject() {
        return this.subject;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final int getSubjectType() {
        return this.subjectType;
    }

    public int hashCode() {
        String str = this.content;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.deepLink;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Image image = this.image;
        int iHashCode3 = (((iHashCode2 + (image == null ? 0 : image.hashCode())) * 31) + e.a(this.builtIn)) * 31;
        Boolean bool = this.hasResource;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num = this.seenStatus;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.ops;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.subjectId;
        int iHashCode7 = (((iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.subjectType) * 31;
        Subject subject = this.subject;
        int iHashCode8 = (iHashCode7 + (subject == null ? 0 : subject.hashCode())) * 31;
        String str5 = this.objId;
        int iHashCode9 = (iHashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = this.biddingAdData;
        return iHashCode9 + (biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.hashCode() : 0);
    }

    public final void setBiddingAdData(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        this.biddingAdData = biddingIntermediateMaterialBean;
    }

    public final void setBuiltIn(boolean z10) {
        this.builtIn = z10;
    }

    public final void setContent(String str) {
        this.content = str;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setHasResource(Boolean bool) {
        this.hasResource = bool;
    }

    public final void setImage(Image image) {
        this.image = image;
    }

    public final void setObjId(String str) {
        this.objId = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setSeenStatus(Integer num) {
        this.seenStatus = num;
    }

    public final void setSubject(Subject subject) {
        this.subject = subject;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setSubjectType(int i11) {
        this.subjectType = i11;
    }

    public String toString() {
        return "BannerData(content=" + this.content + ", deepLink=" + this.deepLink + ", image=" + this.image + ", builtIn=" + this.builtIn + ", hasResource=" + this.hasResource + ", seenStatus=" + this.seenStatus + ", ops=" + this.ops + ", subjectId=" + this.subjectId + ", subjectType=" + this.subjectType + ", subject=" + this.subject + ", objId=" + this.objId + ", biddingAdData=" + this.biddingAdData + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.content);
        dest.writeString(this.deepLink);
        dest.writeSerializable(this.image);
        dest.writeInt(this.builtIn ? 1 : 0);
        Boolean bool = this.hasResource;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        Integer num = this.seenStatus;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.ops);
        dest.writeString(this.subjectId);
        dest.writeInt(this.subjectType);
        dest.writeSerializable(this.subject);
        dest.writeString(this.objId);
        dest.writeParcelable(this.biddingAdData, flags);
    }
}
