package com.transsion.ad.monopoly.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.e;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import com.transsion.ad.ps.model.RecommendInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u001b\n\u0002\u0010\u0000\n\u0002\b'\b\u0087\b\u0018\u0000 \\2\u00020\u0001:\u0001]B¡\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u0019¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010 \u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b \u0010!J\u0012\u0010\"\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\"\u0010!J\u0012\u0010#\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b#\u0010!J\u0012\u0010$\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b$\u0010!J\u0012\u0010%\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b%\u0010!J\u0012\u0010&\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b&\u0010!J\u0012\u0010'\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b'\u0010!J\u0012\u0010(\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b(\u0010)J\u0012\u0010*\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0004\b*\u0010+J\u0010\u0010,\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b,\u0010-J\u0012\u0010.\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0004\b.\u0010/J\u0012\u00100\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0004\b0\u00101J\u0012\u00102\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b2\u0010!Jª\u0001\u00103\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b3\u00104J\u0010\u00105\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b5\u0010!J\u0010\u00106\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b6\u0010\u001fJ\u001a\u00109\u001a\u00020\u000e2\b\u00108\u001a\u0004\u0018\u000107HÖ\u0003¢\u0006\u0004\b9\u0010:R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010;\u001a\u0004\b<\u0010!R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010;\u001a\u0004\b=\u0010!\"\u0004\b>\u0010?R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010;\u001a\u0004\b@\u0010!\"\u0004\bA\u0010?R$\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010;\u001a\u0004\bB\u0010!\"\u0004\bC\u0010?R$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010;\u001a\u0004\bD\u0010!\"\u0004\bE\u0010?R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010;\u001a\u0004\bF\u0010!R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010;\u001a\u0004\bG\u0010!R$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010H\u001a\u0004\bI\u0010)\"\u0004\bJ\u0010KR\u0019\u0010\r\u001a\u0004\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\b\r\u0010L\u001a\u0004\bM\u0010+R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010N\u001a\u0004\bO\u0010-\"\u0004\bP\u0010QR$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010R\u001a\u0004\bS\u0010/\"\u0004\bT\u0010UR$\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010V\u001a\u0004\bW\u00101\"\u0004\bX\u0010YR$\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010;\u001a\u0004\bZ\u0010!\"\u0004\b[\u0010?¨\u0006^"}, d2 = {"Lcom/transsion/ad/monopoly/model/AdMaterialList;", "Landroid/os/Parcelable;", "", "id", NativeComponentConstants.KEY_COMPONENT_TYPE, CampaignEx.JSON_KEY_TITLE, CampaignEx.JSON_KEY_DESC, "buttonText", "h5Link", "deeplink", "Lcom/transsion/ad/monopoly/model/MbAdImage;", "image", "Lcom/transsion/ad/monopoly/model/MbAdVideo;", "video", "", "downloadMaterialSuccess", "Lcom/transsion/ad/ps/model/RecommendInfo;", "psRecommendInfo", "Lcom/transsion/ad/db/pslink/PsLinkAdPlan;", "psLinkAdPlan", "psLink", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Lcom/transsion/ad/monopoly/model/MbAdVideo;ZLcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Ljava/lang/String;)V", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "()Lcom/transsion/ad/monopoly/model/MbAdImage;", "component9", "()Lcom/transsion/ad/monopoly/model/MbAdVideo;", "component10", "()Z", "component11", "()Lcom/transsion/ad/ps/model/RecommendInfo;", "component12", "()Lcom/transsion/ad/db/pslink/PsLinkAdPlan;", "component13", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Lcom/transsion/ad/monopoly/model/MbAdVideo;ZLcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Ljava/lang/String;)Lcom/transsion/ad/monopoly/model/AdMaterialList;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getId", "getType", "setType", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getDesc", "setDesc", "getButtonText", "setButtonText", "getH5Link", "getDeeplink", "Lcom/transsion/ad/monopoly/model/MbAdImage;", "getImage", "setImage", "(Lcom/transsion/ad/monopoly/model/MbAdImage;)V", "Lcom/transsion/ad/monopoly/model/MbAdVideo;", "getVideo", "Z", "getDownloadMaterialSuccess", "setDownloadMaterialSuccess", "(Z)V", "Lcom/transsion/ad/ps/model/RecommendInfo;", "getPsRecommendInfo", "setPsRecommendInfo", "(Lcom/transsion/ad/ps/model/RecommendInfo;)V", "Lcom/transsion/ad/db/pslink/PsLinkAdPlan;", "getPsLinkAdPlan", "setPsLinkAdPlan", "(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V", "getPsLink", "setPsLink", "Companion", "a", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AdMaterialList implements Parcelable {
    public static final String NON_AD_TYPE_TEXT = "TextAdMaterial";
    public static final String NON_AD_TYPE_VIDEO = "VideoAdMaterial";
    private String buttonText;
    private final String deeplink;
    private String desc;
    private boolean downloadMaterialSuccess;
    private final String h5Link;
    private final String id;
    private MbAdImage image;
    private String psLink;
    private PsLinkAdPlan psLinkAdPlan;
    private RecommendInfo psRecommendInfo;
    private String title;
    private String type;
    private final MbAdVideo video;
    public static final Parcelable.Creator<AdMaterialList> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AdMaterialList createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AdMaterialList(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : MbAdImage.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : MbAdVideo.CREATOR.createFromParcel(parcel), parcel.readInt() != 0, parcel.readInt() == 0 ? null : RecommendInfo.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? PsLinkAdPlan.CREATOR.createFromParcel(parcel) : null, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AdMaterialList[] newArray(int i11) {
            return new AdMaterialList[i11];
        }
    }

    public AdMaterialList() {
        this(null, null, null, null, null, null, null, null, null, false, null, null, null, 8191, null);
    }

    public AdMaterialList(String str, String str2, String str3, String str4, String str5, String str6, String str7, MbAdImage mbAdImage, MbAdVideo mbAdVideo, boolean z10, RecommendInfo recommendInfo, PsLinkAdPlan psLinkAdPlan, String str8) {
        this.id = str;
        this.type = str2;
        this.title = str3;
        this.desc = str4;
        this.buttonText = str5;
        this.h5Link = str6;
        this.deeplink = str7;
        this.image = mbAdImage;
        this.video = mbAdVideo;
        this.downloadMaterialSuccess = z10;
        this.psRecommendInfo = recommendInfo;
        this.psLinkAdPlan = psLinkAdPlan;
        this.psLink = str8;
    }

    public /* synthetic */ AdMaterialList(String str, String str2, String str3, String str4, String str5, String str6, String str7, MbAdImage mbAdImage, MbAdVideo mbAdVideo, boolean z10, RecommendInfo recommendInfo, PsLinkAdPlan psLinkAdPlan, String str8, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? null : str7, (i11 & 128) != 0 ? null : mbAdImage, (i11 & 256) != 0 ? null : mbAdVideo, (i11 & 512) != 0 ? false : z10, (i11 & 1024) != 0 ? null : recommendInfo, (i11 & 2048) != 0 ? null : psLinkAdPlan, (i11 & 4096) == 0 ? str8 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final boolean getDownloadMaterialSuccess() {
        return this.downloadMaterialSuccess;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final RecommendInfo getPsRecommendInfo() {
        return this.psRecommendInfo;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final PsLinkAdPlan getPsLinkAdPlan() {
        return this.psLinkAdPlan;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getPsLink() {
        return this.psLink;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDesc() {
        return this.desc;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getButtonText() {
        return this.buttonText;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getH5Link() {
        return this.h5Link;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final MbAdImage getImage() {
        return this.image;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final MbAdVideo getVideo() {
        return this.video;
    }

    public final AdMaterialList copy(String id2, String type, String title, String desc, String buttonText, String h5Link, String deeplink, MbAdImage image, MbAdVideo video, boolean downloadMaterialSuccess, RecommendInfo psRecommendInfo, PsLinkAdPlan psLinkAdPlan, String psLink) {
        return new AdMaterialList(id2, type, title, desc, buttonText, h5Link, deeplink, image, video, downloadMaterialSuccess, psRecommendInfo, psLinkAdPlan, psLink);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdMaterialList)) {
            return false;
        }
        AdMaterialList adMaterialList = (AdMaterialList) other;
        return Intrinsics.c(this.id, adMaterialList.id) && Intrinsics.c(this.type, adMaterialList.type) && Intrinsics.c(this.title, adMaterialList.title) && Intrinsics.c(this.desc, adMaterialList.desc) && Intrinsics.c(this.buttonText, adMaterialList.buttonText) && Intrinsics.c(this.h5Link, adMaterialList.h5Link) && Intrinsics.c(this.deeplink, adMaterialList.deeplink) && Intrinsics.c(this.image, adMaterialList.image) && Intrinsics.c(this.video, adMaterialList.video) && this.downloadMaterialSuccess == adMaterialList.downloadMaterialSuccess && Intrinsics.c(this.psRecommendInfo, adMaterialList.psRecommendInfo) && Intrinsics.c(this.psLinkAdPlan, adMaterialList.psLinkAdPlan) && Intrinsics.c(this.psLink, adMaterialList.psLink);
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final boolean getDownloadMaterialSuccess() {
        return this.downloadMaterialSuccess;
    }

    public final String getH5Link() {
        return this.h5Link;
    }

    public final String getId() {
        return this.id;
    }

    public final MbAdImage getImage() {
        return this.image;
    }

    public final String getPsLink() {
        return this.psLink;
    }

    public final PsLinkAdPlan getPsLinkAdPlan() {
        return this.psLinkAdPlan;
    }

    public final RecommendInfo getPsRecommendInfo() {
        return this.psRecommendInfo;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getType() {
        return this.type;
    }

    public final MbAdVideo getVideo() {
        return this.video;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.type;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.title;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.desc;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.buttonText;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.h5Link;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.deeplink;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        MbAdImage mbAdImage = this.image;
        int iHashCode8 = (iHashCode7 + (mbAdImage == null ? 0 : mbAdImage.hashCode())) * 31;
        MbAdVideo mbAdVideo = this.video;
        int iHashCode9 = (((iHashCode8 + (mbAdVideo == null ? 0 : mbAdVideo.hashCode())) * 31) + e.a(this.downloadMaterialSuccess)) * 31;
        RecommendInfo recommendInfo = this.psRecommendInfo;
        int iHashCode10 = (iHashCode9 + (recommendInfo == null ? 0 : recommendInfo.hashCode())) * 31;
        PsLinkAdPlan psLinkAdPlan = this.psLinkAdPlan;
        int iHashCode11 = (iHashCode10 + (psLinkAdPlan == null ? 0 : psLinkAdPlan.hashCode())) * 31;
        String str8 = this.psLink;
        return iHashCode11 + (str8 != null ? str8.hashCode() : 0);
    }

    public final void setButtonText(String str) {
        this.buttonText = str;
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setDownloadMaterialSuccess(boolean z10) {
        this.downloadMaterialSuccess = z10;
    }

    public final void setImage(MbAdImage mbAdImage) {
        this.image = mbAdImage;
    }

    public final void setPsLink(String str) {
        this.psLink = str;
    }

    public final void setPsLinkAdPlan(PsLinkAdPlan psLinkAdPlan) {
        this.psLinkAdPlan = psLinkAdPlan;
    }

    public final void setPsRecommendInfo(RecommendInfo recommendInfo) {
        this.psRecommendInfo = recommendInfo;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "AdMaterialList(id=" + this.id + ", type=" + this.type + ", title=" + this.title + ", desc=" + this.desc + ", buttonText=" + this.buttonText + ", h5Link=" + this.h5Link + ", deeplink=" + this.deeplink + ", image=" + this.image + ", video=" + this.video + ", downloadMaterialSuccess=" + this.downloadMaterialSuccess + ", psRecommendInfo=" + this.psRecommendInfo + ", psLinkAdPlan=" + this.psLinkAdPlan + ", psLink=" + this.psLink + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.id);
        dest.writeString(this.type);
        dest.writeString(this.title);
        dest.writeString(this.desc);
        dest.writeString(this.buttonText);
        dest.writeString(this.h5Link);
        dest.writeString(this.deeplink);
        MbAdImage mbAdImage = this.image;
        if (mbAdImage == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            mbAdImage.writeToParcel(dest, flags);
        }
        MbAdVideo mbAdVideo = this.video;
        if (mbAdVideo == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            mbAdVideo.writeToParcel(dest, flags);
        }
        dest.writeInt(this.downloadMaterialSuccess ? 1 : 0);
        RecommendInfo recommendInfo = this.psRecommendInfo;
        if (recommendInfo == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            recommendInfo.writeToParcel(dest, flags);
        }
        PsLinkAdPlan psLinkAdPlan = this.psLinkAdPlan;
        if (psLinkAdPlan == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            psLinkAdPlan.writeToParcel(dest, flags);
        }
        dest.writeString(this.psLink);
    }
}
