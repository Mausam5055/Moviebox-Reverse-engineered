package com.transsion.shorttv_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.ad.monopoly.model.AdPlans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010I\u001a\u00020\bHÆ\u0003J\t\u0010J\u001a\u00020\nHÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010L\u001a\u00020\bHÆ\u0003J\u0010\u0010M\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010-J\u0010\u0010N\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u00102J\u000b\u0010O\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u0098\u0001\u0010R\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\f\u001a\u00020\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÆ\u0001¢\u0006\u0002\u0010SJ\u0006\u0010T\u001a\u00020\bJ\u0013\u0010U\u001a\u00020\n2\b\u0010V\u001a\u0004\u0018\u00010WHÖ\u0003J\t\u0010X\u001a\u00020\bHÖ\u0001J\t\u0010Y\u001a\u00020\u0003HÖ\u0001J\u0016\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020\bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0017\"\u0004\b)\u0010\u0019R\u001a\u0010\f\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010!\"\u0004\b+\u0010#R\u001e\u0010\r\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u00100\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u00105\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u0017\"\u0004\b7\u0010\u0019R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001c\u0010@\u001a\u0004\u0018\u00010AX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010C\"\u0004\bD\u0010E¨\u0006_"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/BannerData;", "Landroid/os/Parcelable;", "content", "", "deepLink", "image", "Lcom/transsion/shorttv_pugc/bean/Image;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "builtIn", "", "subjectId", "subjectType", "hasResource", "seenStatus", "ops", "subject", "Lcom/transsion/shorttv_pugc/bean/Subject;", "adData", "Lcom/transsion/ad/monopoly/model/AdPlans;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)V", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", "getDeepLink", "setDeepLink", "getImage", "()Lcom/transsion/shorttv_pugc/bean/Image;", "setImage", "(Lcom/transsion/shorttv_pugc/bean/Image;)V", "getType", "()I", "setType", "(I)V", "getBuiltIn", "()Z", "setBuiltIn", "(Z)V", "getSubjectId", "setSubjectId", "getSubjectType", "setSubjectType", "getHasResource", "()Ljava/lang/Boolean;", "setHasResource", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getSeenStatus", "()Ljava/lang/Integer;", "setSeenStatus", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getOps", "setOps", "getSubject", "()Lcom/transsion/shorttv_pugc/bean/Subject;", "setSubject", "(Lcom/transsion/shorttv_pugc/bean/Subject;)V", "getAdData", "()Lcom/transsion/ad/monopoly/model/AdPlans;", "setAdData", "(Lcom/transsion/ad/monopoly/model/AdPlans;)V", "adview", "Landroid/view/View;", "getAdview", "()Landroid/view/View;", "setAdview", "(Landroid/view/View;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/shorttv_pugc/bean/BannerData;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BannerData implements Parcelable {
    public static final Parcelable.Creator<BannerData> CREATOR = new a();
    private AdPlans adData;
    private transient View adview;
    private boolean builtIn;
    private String content;
    private String deepLink;
    private Boolean hasResource;
    private Image image;
    private String ops;
    private Integer seenStatus;
    private Subject subject;
    private String subjectId;
    private int subjectType;
    private int type;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BannerData createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            Image image = (Image) parcel.readSerializable();
            int i11 = parcel.readInt();
            boolean z10 = parcel.readInt() != 0;
            String string3 = parcel.readString();
            int i12 = parcel.readInt();
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new BannerData(string, string2, image, i11, z10, string3, i12, boolValueOf, parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readString(), (Subject) parcel.readSerializable(), (AdPlans) parcel.readParcelable(BannerData.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final BannerData[] newArray(int i11) {
            return new BannerData[i11];
        }
    }

    public BannerData() {
        this(null, null, null, 0, false, null, 0, null, null, null, null, null, UnixStat.PERM_MASK, null);
    }

    public BannerData(String str, String str2, Image image, int i11, boolean z10, String str3, int i12, Boolean bool, Integer num, String str4, Subject subject, AdPlans adPlans) {
        this.content = str;
        this.deepLink = str2;
        this.image = image;
        this.type = i11;
        this.builtIn = z10;
        this.subjectId = str3;
        this.subjectType = i12;
        this.hasResource = bool;
        this.seenStatus = num;
        this.ops = str4;
        this.subject = subject;
        this.adData = adPlans;
    }

    public /* synthetic */ BannerData(String str, String str2, Image image, int i11, boolean z10, String str3, int i12, Boolean bool, Integer num, String str4, Subject subject, AdPlans adPlans, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? null : str, (i13 & 2) != 0 ? null : str2, (i13 & 4) != 0 ? null : image, (i13 & 8) != 0 ? 0 : i11, (i13 & 16) != 0 ? false : z10, (i13 & 32) != 0 ? null : str3, (i13 & 64) != 0 ? 0 : i12, (i13 & 128) != 0 ? null : bool, (i13 & 256) != 0 ? 0 : num, (i13 & 512) != 0 ? null : str4, (i13 & 1024) != 0 ? null : subject, (i13 & 2048) == 0 ? adPlans : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Subject getSubject() {
        return this.subject;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final AdPlans getAdData() {
        return this.adData;
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
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getBuiltIn() {
        return this.builtIn;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getSubjectType() {
        return this.subjectType;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Boolean getHasResource() {
        return this.hasResource;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getSeenStatus() {
        return this.seenStatus;
    }

    public final BannerData copy(String content, String deepLink, Image image, int type, boolean builtIn, String subjectId, int subjectType, Boolean hasResource, Integer seenStatus, String ops, Subject subject, AdPlans adData) {
        return new BannerData(content, deepLink, image, type, builtIn, subjectId, subjectType, hasResource, seenStatus, ops, subject, adData);
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
        return Intrinsics.c(this.content, bannerData.content) && Intrinsics.c(this.deepLink, bannerData.deepLink) && Intrinsics.c(this.image, bannerData.image) && this.type == bannerData.type && this.builtIn == bannerData.builtIn && Intrinsics.c(this.subjectId, bannerData.subjectId) && this.subjectType == bannerData.subjectType && Intrinsics.c(this.hasResource, bannerData.hasResource) && Intrinsics.c(this.seenStatus, bannerData.seenStatus) && Intrinsics.c(this.ops, bannerData.ops) && Intrinsics.c(this.subject, bannerData.subject) && Intrinsics.c(this.adData, bannerData.adData);
    }

    public final AdPlans getAdData() {
        return this.adData;
    }

    public final View getAdview() {
        return this.adview;
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

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.content;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.deepLink;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Image image = this.image;
        int iHashCode3 = (((((iHashCode2 + (image == null ? 0 : image.hashCode())) * 31) + this.type) * 31) + e.a(this.builtIn)) * 31;
        String str3 = this.subjectId;
        int iHashCode4 = (((iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.subjectType) * 31;
        Boolean bool = this.hasResource;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num = this.seenStatus;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        String str4 = this.ops;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Subject subject = this.subject;
        int iHashCode8 = (iHashCode7 + (subject == null ? 0 : subject.hashCode())) * 31;
        AdPlans adPlans = this.adData;
        return iHashCode8 + (adPlans != null ? adPlans.hashCode() : 0);
    }

    public final void setAdData(AdPlans adPlans) {
        this.adData = adPlans;
    }

    public final void setAdview(View view) {
        this.adview = view;
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

    public final void setType(int i11) {
        this.type = i11;
    }

    public String toString() {
        return "BannerData(content=" + this.content + ", deepLink=" + this.deepLink + ", image=" + this.image + ", type=" + this.type + ", builtIn=" + this.builtIn + ", subjectId=" + this.subjectId + ", subjectType=" + this.subjectType + ", hasResource=" + this.hasResource + ", seenStatus=" + this.seenStatus + ", ops=" + this.ops + ", subject=" + this.subject + ", adData=" + this.adData + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.content);
        dest.writeString(this.deepLink);
        dest.writeSerializable(this.image);
        dest.writeInt(this.type);
        dest.writeInt(this.builtIn ? 1 : 0);
        dest.writeString(this.subjectId);
        dest.writeInt(this.subjectType);
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
        dest.writeSerializable(this.subject);
        dest.writeParcelable(this.adData, flags);
    }
}
