package com.transsion.home.tv.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B¯\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\f¢\u0006\u0004\b\u0014\u0010\u0015J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010A\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u000b\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0011\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fHÆ\u0003J\u0010\u0010G\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u000b\u0010H\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010L\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\fHÆ\u0003J¶\u0001\u0010M\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010NJ\u0006\u0010O\u001a\u00020\u0005J\u0013\u0010P\u001a\u00020:2\b\u0010Q\u001a\u0004\u0018\u00010RHÖ\u0003J\t\u0010S\u001a\u00020\u0005HÖ\u0001J\t\u0010T\u001a\u00020\u0003HÖ\u0001J\u0016\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0017\"\u0004\b \u0010\u0019R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0017\"\u0004\b\"\u0010\u0019R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0017\"\u0004\b$\u0010\u0019R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001e\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b-\u0010\u001b\"\u0004\b.\u0010\u001dR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0017\"\u0004\b0\u0010\u0019R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0017\"\u0004\b2\u0010\u0019R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0017\"\u0004\b4\u0010\u0019R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0017\"\u0004\b6\u0010\u0019R\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010*\"\u0004\b8\u0010,R \u00109\u001a\u00020:X\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b;\u0010<\u001a\u0004\b9\u0010=\"\u0004\b>\u0010?¨\u0006Z"}, d2 = {"Lcom/transsion/home/tv/bean/TvChannelItem;", "Landroid/os/Parcelable;", TmcStartParams.KEY_CHANNEL_ID, "", NotificationCompat.CATEGORY_STATUS, "", CampaignEx.JSON_KEY_TITLE, "countryCode", "countryFlag", "countryFlagImage", "Lcom/transsion/home/tv/bean/ImageInfo;", "languageCodes", "", "sort", "nanoId", "createTimeUnix", "updateTimeUnix", "countryName", "streams", "Lcom/transsion/home/tv/bean/StreamItem;", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/tv/bean/ImageInfo;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getChannelId", "()Ljava/lang/String;", "setChannelId", "(Ljava/lang/String;)V", "getStatus", "()Ljava/lang/Integer;", "setStatus", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getTitle", "setTitle", "getCountryCode", "setCountryCode", "getCountryFlag", "setCountryFlag", "getCountryFlagImage", "()Lcom/transsion/home/tv/bean/ImageInfo;", "setCountryFlagImage", "(Lcom/transsion/home/tv/bean/ImageInfo;)V", "getLanguageCodes", "()Ljava/util/List;", "setLanguageCodes", "(Ljava/util/List;)V", "getSort", "setSort", "getNanoId", "setNanoId", "getCreateTimeUnix", "setCreateTimeUnix", "getUpdateTimeUnix", "setUpdateTimeUnix", "getCountryName", "setCountryName", "getStreams", "setStreams", "isSelected", "", "isSelected$annotations", "()V", "()Z", "setSelected", "(Z)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/tv/bean/ImageInfo;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/transsion/home/tv/bean/TvChannelItem;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TvChannelItem implements Parcelable {
    private String channelId;
    private String countryCode;
    private String countryFlag;
    private ImageInfo countryFlagImage;
    private String countryName;
    private String createTimeUnix;
    private transient boolean isSelected;
    private List<String> languageCodes;
    private String nanoId;
    private Integer sort;
    private Integer status;
    private List<StreamItem> streams;
    private String title;
    private String updateTimeUnix;
    public static final Parcelable.Creator<TvChannelItem> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TvChannelItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            ArrayList arrayList = null;
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            ImageInfo imageInfoCreateFromParcel = parcel.readInt() == 0 ? null : ImageInfo.CREATOR.createFromParcel(parcel);
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            Integer numValueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            String string8 = parcel.readString();
            if (parcel.readInt() != 0) {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                int i12 = 0;
                while (i12 != i11) {
                    arrayList.add(StreamItem.CREATOR.createFromParcel(parcel));
                    i12++;
                    i11 = i11;
                }
            }
            return new TvChannelItem(string, numValueOf, string2, string3, string4, imageInfoCreateFromParcel, arrayListCreateStringArrayList, numValueOf2, string5, string6, string7, string8, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final TvChannelItem[] newArray(int i11) {
            return new TvChannelItem[i11];
        }
    }

    public TvChannelItem() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, 8191, null);
    }

    public TvChannelItem(String str, Integer num, String str2, String str3, String str4, ImageInfo imageInfo, List<String> list, Integer num2, String str5, String str6, String str7, String str8, List<StreamItem> list2) {
        this.channelId = str;
        this.status = num;
        this.title = str2;
        this.countryCode = str3;
        this.countryFlag = str4;
        this.countryFlagImage = imageInfo;
        this.languageCodes = list;
        this.sort = num2;
        this.nanoId = str5;
        this.createTimeUnix = str6;
        this.updateTimeUnix = str7;
        this.countryName = str8;
        this.streams = list2;
    }

    public /* synthetic */ TvChannelItem(String str, Integer num, String str2, String str3, String str4, ImageInfo imageInfo, List list, Integer num2, String str5, String str6, String str7, String str8, List list2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : num, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : imageInfo, (i11 & 64) != 0 ? null : list, (i11 & 128) != 0 ? null : num2, (i11 & 256) != 0 ? null : str5, (i11 & 512) != 0 ? null : str6, (i11 & 1024) != 0 ? null : str7, (i11 & 2048) != 0 ? null : str8, (i11 & 4096) == 0 ? list2 : null);
    }

    public static /* synthetic */ void isSelected$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getChannelId() {
        return this.channelId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getCreateTimeUnix() {
        return this.createTimeUnix;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getUpdateTimeUnix() {
        return this.updateTimeUnix;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getCountryName() {
        return this.countryName;
    }

    public final List<StreamItem> component13() {
        return this.streams;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCountryFlag() {
        return this.countryFlag;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final ImageInfo getCountryFlagImage() {
        return this.countryFlagImage;
    }

    public final List<String> component7() {
        return this.languageCodes;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getSort() {
        return this.sort;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getNanoId() {
        return this.nanoId;
    }

    public final TvChannelItem copy(String channelId, Integer status, String title, String countryCode, String countryFlag, ImageInfo countryFlagImage, List<String> languageCodes, Integer sort, String nanoId, String createTimeUnix, String updateTimeUnix, String countryName, List<StreamItem> streams) {
        return new TvChannelItem(channelId, status, title, countryCode, countryFlag, countryFlagImage, languageCodes, sort, nanoId, createTimeUnix, updateTimeUnix, countryName, streams);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TvChannelItem)) {
            return false;
        }
        TvChannelItem tvChannelItem = (TvChannelItem) other;
        return Intrinsics.c(this.channelId, tvChannelItem.channelId) && Intrinsics.c(this.status, tvChannelItem.status) && Intrinsics.c(this.title, tvChannelItem.title) && Intrinsics.c(this.countryCode, tvChannelItem.countryCode) && Intrinsics.c(this.countryFlag, tvChannelItem.countryFlag) && Intrinsics.c(this.countryFlagImage, tvChannelItem.countryFlagImage) && Intrinsics.c(this.languageCodes, tvChannelItem.languageCodes) && Intrinsics.c(this.sort, tvChannelItem.sort) && Intrinsics.c(this.nanoId, tvChannelItem.nanoId) && Intrinsics.c(this.createTimeUnix, tvChannelItem.createTimeUnix) && Intrinsics.c(this.updateTimeUnix, tvChannelItem.updateTimeUnix) && Intrinsics.c(this.countryName, tvChannelItem.countryName) && Intrinsics.c(this.streams, tvChannelItem.streams);
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getCountryFlag() {
        return this.countryFlag;
    }

    public final ImageInfo getCountryFlagImage() {
        return this.countryFlagImage;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final String getCreateTimeUnix() {
        return this.createTimeUnix;
    }

    public final List<String> getLanguageCodes() {
        return this.languageCodes;
    }

    public final String getNanoId() {
        return this.nanoId;
    }

    public final Integer getSort() {
        return this.sort;
    }

    public final Integer getStatus() {
        return this.status;
    }

    public final List<StreamItem> getStreams() {
        return this.streams;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUpdateTimeUnix() {
        return this.updateTimeUnix;
    }

    public int hashCode() {
        String str = this.channelId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.status;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.title;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.countryCode;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.countryFlag;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        ImageInfo imageInfo = this.countryFlagImage;
        int iHashCode6 = (iHashCode5 + (imageInfo == null ? 0 : imageInfo.hashCode())) * 31;
        List<String> list = this.languageCodes;
        int iHashCode7 = (iHashCode6 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num2 = this.sort;
        int iHashCode8 = (iHashCode7 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str5 = this.nanoId;
        int iHashCode9 = (iHashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.createTimeUnix;
        int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.updateTimeUnix;
        int iHashCode11 = (iHashCode10 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.countryName;
        int iHashCode12 = (iHashCode11 + (str8 == null ? 0 : str8.hashCode())) * 31;
        List<StreamItem> list2 = this.streams;
        return iHashCode12 + (list2 != null ? list2.hashCode() : 0);
    }

    /* JADX INFO: renamed from: isSelected, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    public final void setChannelId(String str) {
        this.channelId = str;
    }

    public final void setCountryCode(String str) {
        this.countryCode = str;
    }

    public final void setCountryFlag(String str) {
        this.countryFlag = str;
    }

    public final void setCountryFlagImage(ImageInfo imageInfo) {
        this.countryFlagImage = imageInfo;
    }

    public final void setCountryName(String str) {
        this.countryName = str;
    }

    public final void setCreateTimeUnix(String str) {
        this.createTimeUnix = str;
    }

    public final void setLanguageCodes(List<String> list) {
        this.languageCodes = list;
    }

    public final void setNanoId(String str) {
        this.nanoId = str;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public final void setSort(Integer num) {
        this.sort = num;
    }

    public final void setStatus(Integer num) {
        this.status = num;
    }

    public final void setStreams(List<StreamItem> list) {
        this.streams = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setUpdateTimeUnix(String str) {
        this.updateTimeUnix = str;
    }

    public String toString() {
        return "TvChannelItem(channelId=" + this.channelId + ", status=" + this.status + ", title=" + this.title + ", countryCode=" + this.countryCode + ", countryFlag=" + this.countryFlag + ", countryFlagImage=" + this.countryFlagImage + ", languageCodes=" + this.languageCodes + ", sort=" + this.sort + ", nanoId=" + this.nanoId + ", createTimeUnix=" + this.createTimeUnix + ", updateTimeUnix=" + this.updateTimeUnix + ", countryName=" + this.countryName + ", streams=" + this.streams + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.channelId);
        Integer num = this.status;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.title);
        dest.writeString(this.countryCode);
        dest.writeString(this.countryFlag);
        ImageInfo imageInfo = this.countryFlagImage;
        if (imageInfo == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            imageInfo.writeToParcel(dest, flags);
        }
        dest.writeStringList(this.languageCodes);
        Integer num2 = this.sort;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        dest.writeString(this.nanoId);
        dest.writeString(this.createTimeUnix);
        dest.writeString(this.updateTimeUnix);
        dest.writeString(this.countryName);
        List<StreamItem> list = this.streams;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<StreamItem> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
