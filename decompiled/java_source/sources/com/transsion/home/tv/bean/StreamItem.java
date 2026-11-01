package com.transsion.home.tv.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b0\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u007f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0017J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010/\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u00100\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0017J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0086\u0001\u00103\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00104J\u0006\u00105\u001a\u00020\u0006J\u0013\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u000109HÖ\u0003J\t\u0010:\u001a\u00020\u0006HÖ\u0001J\t\u0010;\u001a\u00020\u0003HÖ\u0001J\u0016\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0006R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0011\"\u0004\b\u001e\u0010\u0013R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0011\"\u0004\b \u0010\u0013R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b!\u0010\u0017\"\u0004\b\"\u0010\u0019R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b#\u0010\u0017\"\u0004\b$\u0010\u0019R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0011\"\u0004\b&\u0010\u0013R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0011\"\u0004\b(\u0010\u0013¨\u0006A"}, d2 = {"Lcom/transsion/home/tv/bean/StreamItem;", "Landroid/os/Parcelable;", "streamId", "", TmcStartParams.KEY_CHANNEL_ID, NotificationCompat.CATEGORY_STATUS, "", "name", "url", "urlType", "streamType", "sort", "createTimeUnix", "updateTimeUnix", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getStreamId", "()Ljava/lang/String;", "setStreamId", "(Ljava/lang/String;)V", "getChannelId", "setChannelId", "getStatus", "()Ljava/lang/Integer;", "setStatus", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getName", "setName", "getUrl", "setUrl", "getUrlType", "setUrlType", "getStreamType", "setStreamType", "getSort", "setSort", "getCreateTimeUnix", "setCreateTimeUnix", "getUpdateTimeUnix", "setUpdateTimeUnix", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/home/tv/bean/StreamItem;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class StreamItem implements Parcelable {
    private String channelId;
    private String createTimeUnix;
    private String name;
    private Integer sort;
    private Integer status;
    private String streamId;
    private Integer streamType;
    private String updateTimeUnix;
    private String url;
    private String urlType;
    public static final Parcelable.Creator<StreamItem> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StreamItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new StreamItem(parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final StreamItem[] newArray(int i11) {
            return new StreamItem[i11];
        }
    }

    public StreamItem() {
        this(null, null, null, null, null, null, null, null, null, null, 1023, null);
    }

    public StreamItem(String str, String str2, Integer num, String str3, String str4, String str5, Integer num2, Integer num3, String str6, String str7) {
        this.streamId = str;
        this.channelId = str2;
        this.status = num;
        this.name = str3;
        this.url = str4;
        this.urlType = str5;
        this.streamType = num2;
        this.sort = num3;
        this.createTimeUnix = str6;
        this.updateTimeUnix = str7;
    }

    public /* synthetic */ StreamItem(String str, String str2, Integer num, String str3, String str4, String str5, Integer num2, Integer num3, String str6, String str7, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : num, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? null : num2, (i11 & 128) != 0 ? null : num3, (i11 & 256) != 0 ? null : str6, (i11 & 512) == 0 ? str7 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getStreamId() {
        return this.streamId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getUpdateTimeUnix() {
        return this.updateTimeUnix;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getChannelId() {
        return this.channelId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getUrlType() {
        return this.urlType;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getStreamType() {
        return this.streamType;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getSort() {
        return this.sort;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCreateTimeUnix() {
        return this.createTimeUnix;
    }

    public final StreamItem copy(String streamId, String channelId, Integer status, String name, String url, String urlType, Integer streamType, Integer sort, String createTimeUnix, String updateTimeUnix) {
        return new StreamItem(streamId, channelId, status, name, url, urlType, streamType, sort, createTimeUnix, updateTimeUnix);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StreamItem)) {
            return false;
        }
        StreamItem streamItem = (StreamItem) other;
        return Intrinsics.c(this.streamId, streamItem.streamId) && Intrinsics.c(this.channelId, streamItem.channelId) && Intrinsics.c(this.status, streamItem.status) && Intrinsics.c(this.name, streamItem.name) && Intrinsics.c(this.url, streamItem.url) && Intrinsics.c(this.urlType, streamItem.urlType) && Intrinsics.c(this.streamType, streamItem.streamType) && Intrinsics.c(this.sort, streamItem.sort) && Intrinsics.c(this.createTimeUnix, streamItem.createTimeUnix) && Intrinsics.c(this.updateTimeUnix, streamItem.updateTimeUnix);
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getCreateTimeUnix() {
        return this.createTimeUnix;
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getSort() {
        return this.sort;
    }

    public final Integer getStatus() {
        return this.status;
    }

    public final String getStreamId() {
        return this.streamId;
    }

    public final Integer getStreamType() {
        return this.streamType;
    }

    public final String getUpdateTimeUnix() {
        return this.updateTimeUnix;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getUrlType() {
        return this.urlType;
    }

    public int hashCode() {
        String str = this.streamId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.channelId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.status;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.name;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.url;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.urlType;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num2 = this.streamType;
        int iHashCode7 = (iHashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.sort;
        int iHashCode8 = (iHashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str6 = this.createTimeUnix;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.updateTimeUnix;
        return iHashCode9 + (str7 != null ? str7.hashCode() : 0);
    }

    public final void setChannelId(String str) {
        this.channelId = str;
    }

    public final void setCreateTimeUnix(String str) {
        this.createTimeUnix = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setSort(Integer num) {
        this.sort = num;
    }

    public final void setStatus(Integer num) {
        this.status = num;
    }

    public final void setStreamId(String str) {
        this.streamId = str;
    }

    public final void setStreamType(Integer num) {
        this.streamType = num;
    }

    public final void setUpdateTimeUnix(String str) {
        this.updateTimeUnix = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setUrlType(String str) {
        this.urlType = str;
    }

    public String toString() {
        return "StreamItem(streamId=" + this.streamId + ", channelId=" + this.channelId + ", status=" + this.status + ", name=" + this.name + ", url=" + this.url + ", urlType=" + this.urlType + ", streamType=" + this.streamType + ", sort=" + this.sort + ", createTimeUnix=" + this.createTimeUnix + ", updateTimeUnix=" + this.updateTimeUnix + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.streamId);
        dest.writeString(this.channelId);
        Integer num = this.status;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.name);
        dest.writeString(this.url);
        dest.writeString(this.urlType);
        Integer num2 = this.streamType;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        Integer num3 = this.sort;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
        dest.writeString(this.createTimeUnix);
        dest.writeString(this.updateTimeUnix);
    }
}
