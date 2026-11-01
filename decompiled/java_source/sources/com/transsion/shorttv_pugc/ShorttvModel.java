package com.transsion.shorttv_pugc;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.search.bean.HotRankItem;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv_pugc.bean.Cover;
import com.transsion.shorttv_pugc.bean.GifBean;
import com.transsion.shorttv_pugc.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class ShorttvModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ShorttvModel f53724a = new ShorttvModel();

    @Keep
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u000bHÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003Jc\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u0003HÆ\u0001J\u0006\u0010&\u001a\u00020\u0005J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\u0005HÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001J\u0016\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0011R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011¨\u00062"}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;", "Landroid/os/Parcelable;", "url", "", "width", "", "height", "size", "format", "thumbnail", "gif", "Lcom/transsion/shorttv_pugc/bean/GifBean;", "averageHueLight", "averageHueDark", "<init>", "(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/GifBean;Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getWidth", "()I", "getHeight", "getSize", "getFormat", "getThumbnail", "getGif", "()Lcom/transsion/shorttv_pugc/bean/GifBean;", "getAverageHueLight", "getAverageHueDark", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class FirstImage implements Parcelable {
        public static final Parcelable.Creator<FirstImage> CREATOR = new a();
        private final String averageHueDark;
        private final String averageHueLight;
        private final String format;
        private final GifBean gif;
        private final int height;
        private final int size;
        private final String thumbnail;
        private final String url;
        private final int width;

        public static final class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final FirstImage createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new FirstImage(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), (GifBean) parcel.readSerializable(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final FirstImage[] newArray(int i11) {
                return new FirstImage[i11];
            }
        }

        public FirstImage(String url, int i11, int i12, int i13, String format, String thumbnail, GifBean gif, String averageHueLight, String averageHueDark) {
            Intrinsics.h(url, "url");
            Intrinsics.h(format, "format");
            Intrinsics.h(thumbnail, "thumbnail");
            Intrinsics.h(gif, "gif");
            Intrinsics.h(averageHueLight, "averageHueLight");
            Intrinsics.h(averageHueDark, "averageHueDark");
            this.url = url;
            this.width = i11;
            this.height = i12;
            this.size = i13;
            this.format = format;
            this.thumbnail = thumbnail;
            this.gif = gif;
            this.averageHueLight = averageHueLight;
            this.averageHueDark = averageHueDark;
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getWidth() {
            return this.width;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getHeight() {
            return this.height;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final int getSize() {
            return this.size;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getFormat() {
            return this.format;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getThumbnail() {
            return this.thumbnail;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final GifBean getGif() {
            return this.gif;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final String getAverageHueLight() {
            return this.averageHueLight;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final String getAverageHueDark() {
            return this.averageHueDark;
        }

        public final FirstImage copy(String url, int width, int height, int size, String format, String thumbnail, GifBean gif, String averageHueLight, String averageHueDark) {
            Intrinsics.h(url, "url");
            Intrinsics.h(format, "format");
            Intrinsics.h(thumbnail, "thumbnail");
            Intrinsics.h(gif, "gif");
            Intrinsics.h(averageHueLight, "averageHueLight");
            Intrinsics.h(averageHueDark, "averageHueDark");
            return new FirstImage(url, width, height, size, format, thumbnail, gif, averageHueLight, averageHueDark);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof FirstImage)) {
                return false;
            }
            FirstImage firstImage = (FirstImage) other;
            return Intrinsics.c(this.url, firstImage.url) && this.width == firstImage.width && this.height == firstImage.height && this.size == firstImage.size && Intrinsics.c(this.format, firstImage.format) && Intrinsics.c(this.thumbnail, firstImage.thumbnail) && Intrinsics.c(this.gif, firstImage.gif) && Intrinsics.c(this.averageHueLight, firstImage.averageHueLight) && Intrinsics.c(this.averageHueDark, firstImage.averageHueDark);
        }

        public final String getAverageHueDark() {
            return this.averageHueDark;
        }

        public final String getAverageHueLight() {
            return this.averageHueLight;
        }

        public final String getFormat() {
            return this.format;
        }

        public final GifBean getGif() {
            return this.gif;
        }

        public final int getHeight() {
            return this.height;
        }

        public final int getSize() {
            return this.size;
        }

        public final String getThumbnail() {
            return this.thumbnail;
        }

        public final String getUrl() {
            return this.url;
        }

        public final int getWidth() {
            return this.width;
        }

        public int hashCode() {
            return (((((((((((((((this.url.hashCode() * 31) + this.width) * 31) + this.height) * 31) + this.size) * 31) + this.format.hashCode()) * 31) + this.thumbnail.hashCode()) * 31) + this.gif.hashCode()) * 31) + this.averageHueLight.hashCode()) * 31) + this.averageHueDark.hashCode();
        }

        public String toString() {
            return "FirstImage(url=" + this.url + ", width=" + this.width + ", height=" + this.height + ", size=" + this.size + ", format=" + this.format + ", thumbnail=" + this.thumbnail + ", gif=" + this.gif + ", averageHueLight=" + this.averageHueLight + ", averageHueDark=" + this.averageHueDark + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel dest, int flags) {
            Intrinsics.h(dest, "dest");
            dest.writeString(this.url);
            dest.writeInt(this.width);
            dest.writeInt(this.height);
            dest.writeInt(this.size);
            dest.writeString(this.format);
            dest.writeString(this.thumbnail);
            dest.writeSerializable(this.gif);
            dest.writeString(this.averageHueLight);
            dest.writeString(this.averageHueDark);
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0006\u0010\u000b\u001a\u00020\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\fHÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\fR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0019"}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$PlayMultiDto;", "Landroid/os/Parcelable;", "items", "", "Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;", "<init>", "(Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "component1", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class PlayMultiDto implements Parcelable {
        public static final Parcelable.Creator<PlayMultiDto> CREATOR = new a();
        private final List<PlayStreamItem> items;

        public static final class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final PlayMultiDto createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                int i11 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(PlayStreamItem.CREATOR.createFromParcel(parcel));
                }
                return new PlayMultiDto(arrayList);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final PlayMultiDto[] newArray(int i11) {
                return new PlayMultiDto[i11];
            }
        }

        public PlayMultiDto(List<PlayStreamItem> items) {
            Intrinsics.h(items, "items");
            this.items = items;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ PlayMultiDto copy$default(PlayMultiDto playMultiDto, List list, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                list = playMultiDto.items;
            }
            return playMultiDto.copy(list);
        }

        public final List<PlayStreamItem> component1() {
            return this.items;
        }

        public final PlayMultiDto copy(List<PlayStreamItem> items) {
            Intrinsics.h(items, "items");
            return new PlayMultiDto(items);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PlayMultiDto) && Intrinsics.c(this.items, ((PlayMultiDto) other).items);
        }

        public final List<PlayStreamItem> getItems() {
            return this.items;
        }

        public int hashCode() {
            return this.items.hashCode();
        }

        public String toString() {
            return "PlayMultiDto(items=" + this.items + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel dest, int flags) {
            Intrinsics.h(dest, "dest");
            List<PlayStreamItem> list = this.items;
            dest.writeInt(list.size());
            Iterator<PlayStreamItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\bHÆ\u0003J-\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0006\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0016HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\""}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;", "Landroid/os/Parcelable;", "ugcVideoId", "", "resources", "", "Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;", "firstImage", "Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;)V", "getUgcVideoId", "()Ljava/lang/String;", "getResources", "()Ljava/util/List;", "getFirstImage", "()Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class PlayStreamItem implements Parcelable {
        public static final Parcelable.Creator<PlayStreamItem> CREATOR = new a();
        private final FirstImage firstImage;
        private final List<StreamInfo> resources;
        private final String ugcVideoId;

        public static final class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final PlayStreamItem createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                String string = parcel.readString();
                int i11 = parcel.readInt();
                ArrayList arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(StreamInfo.CREATOR.createFromParcel(parcel));
                }
                return new PlayStreamItem(string, arrayList, FirstImage.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final PlayStreamItem[] newArray(int i11) {
                return new PlayStreamItem[i11];
            }
        }

        public PlayStreamItem(String ugcVideoId, List<StreamInfo> resources, FirstImage firstImage) {
            Intrinsics.h(ugcVideoId, "ugcVideoId");
            Intrinsics.h(resources, "resources");
            Intrinsics.h(firstImage, "firstImage");
            this.ugcVideoId = ugcVideoId;
            this.resources = resources;
            this.firstImage = firstImage;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ PlayStreamItem copy$default(PlayStreamItem playStreamItem, String str, List list, FirstImage firstImage, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = playStreamItem.ugcVideoId;
            }
            if ((i11 & 2) != 0) {
                list = playStreamItem.resources;
            }
            if ((i11 & 4) != 0) {
                firstImage = playStreamItem.firstImage;
            }
            return playStreamItem.copy(str, list, firstImage);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUgcVideoId() {
            return this.ugcVideoId;
        }

        public final List<StreamInfo> component2() {
            return this.resources;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final FirstImage getFirstImage() {
            return this.firstImage;
        }

        public final PlayStreamItem copy(String ugcVideoId, List<StreamInfo> resources, FirstImage firstImage) {
            Intrinsics.h(ugcVideoId, "ugcVideoId");
            Intrinsics.h(resources, "resources");
            Intrinsics.h(firstImage, "firstImage");
            return new PlayStreamItem(ugcVideoId, resources, firstImage);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PlayStreamItem)) {
                return false;
            }
            PlayStreamItem playStreamItem = (PlayStreamItem) other;
            return Intrinsics.c(this.ugcVideoId, playStreamItem.ugcVideoId) && Intrinsics.c(this.resources, playStreamItem.resources) && Intrinsics.c(this.firstImage, playStreamItem.firstImage);
        }

        public final FirstImage getFirstImage() {
            return this.firstImage;
        }

        public final List<StreamInfo> getResources() {
            return this.resources;
        }

        public final String getUgcVideoId() {
            return this.ugcVideoId;
        }

        public int hashCode() {
            return (((this.ugcVideoId.hashCode() * 31) + this.resources.hashCode()) * 31) + this.firstImage.hashCode();
        }

        public String toString() {
            return "PlayStreamItem(ugcVideoId=" + this.ugcVideoId + ", resources=" + this.resources + ", firstImage=" + this.firstImage + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel dest, int flags) {
            Intrinsics.h(dest, "dest");
            dest.writeString(this.ugcVideoId);
            List<StreamInfo> list = this.resources;
            dest.writeInt(list.size());
            Iterator<StreamInfo> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
            this.firstImage.writeToParcel(dest, flags);
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u001f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jz\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010'J\u0006\u0010(\u001a\u00020)J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020)HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\u0016\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020)R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0010\"\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0010R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0010R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0010¨\u00065"}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;", "Landroid/os/Parcelable;", "format", "", "id", "url", "resolutions", "size", "duration", "", "codecName", "signCookie", "idType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getFormat", "()Ljava/lang/String;", "getId", "getUrl", "setUrl", "(Ljava/lang/String;)V", "getResolutions", "getSize", "getDuration", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getCodecName", "getSignCookie", "getIdType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class StreamInfo implements Parcelable {
        public static final Parcelable.Creator<StreamInfo> CREATOR = new a();
        private final String codecName;
        private final Long duration;
        private final String format;
        private final String id;
        private final String idType;
        private final String resolutions;
        private final String signCookie;
        private final String size;
        private String url;

        public static final class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final StreamInfo createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new StreamInfo(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final StreamInfo[] newArray(int i11) {
                return new StreamInfo[i11];
            }
        }

        public StreamInfo(String str, String str2, String str3, String str4, String str5, Long l11, String str6, String str7, String str8) {
            this.format = str;
            this.id = str2;
            this.url = str3;
            this.resolutions = str4;
            this.size = str5;
            this.duration = l11;
            this.codecName = str6;
            this.signCookie = str7;
            this.idType = str8;
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getFormat() {
            return this.format;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getResolutions() {
            return this.resolutions;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getSize() {
            return this.size;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final Long getDuration() {
            return this.duration;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final String getCodecName() {
            return this.codecName;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final String getSignCookie() {
            return this.signCookie;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final String getIdType() {
            return this.idType;
        }

        public final StreamInfo copy(String format, String id2, String url, String resolutions, String size, Long duration, String codecName, String signCookie, String idType) {
            return new StreamInfo(format, id2, url, resolutions, size, duration, codecName, signCookie, idType);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof StreamInfo)) {
                return false;
            }
            StreamInfo streamInfo = (StreamInfo) other;
            return Intrinsics.c(this.format, streamInfo.format) && Intrinsics.c(this.id, streamInfo.id) && Intrinsics.c(this.url, streamInfo.url) && Intrinsics.c(this.resolutions, streamInfo.resolutions) && Intrinsics.c(this.size, streamInfo.size) && Intrinsics.c(this.duration, streamInfo.duration) && Intrinsics.c(this.codecName, streamInfo.codecName) && Intrinsics.c(this.signCookie, streamInfo.signCookie) && Intrinsics.c(this.idType, streamInfo.idType);
        }

        public final String getCodecName() {
            return this.codecName;
        }

        public final Long getDuration() {
            return this.duration;
        }

        public final String getFormat() {
            return this.format;
        }

        public final String getId() {
            return this.id;
        }

        public final String getIdType() {
            return this.idType;
        }

        public final String getResolutions() {
            return this.resolutions;
        }

        public final String getSignCookie() {
            return this.signCookie;
        }

        public final String getSize() {
            return this.size;
        }

        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            String str = this.format;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.id;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.url;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.resolutions;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.size;
            int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
            Long l11 = this.duration;
            int iHashCode6 = (iHashCode5 + (l11 == null ? 0 : l11.hashCode())) * 31;
            String str6 = this.codecName;
            int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.signCookie;
            int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
            String str8 = this.idType;
            return iHashCode8 + (str8 != null ? str8.hashCode() : 0);
        }

        public final void setUrl(String str) {
            this.url = str;
        }

        public String toString() {
            return "StreamInfo(format=" + this.format + ", id=" + this.id + ", url=" + this.url + ", resolutions=" + this.resolutions + ", size=" + this.size + ", duration=" + this.duration + ", codecName=" + this.codecName + ", signCookie=" + this.signCookie + ", idType=" + this.idType + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel dest, int flags) {
            Intrinsics.h(dest, "dest");
            dest.writeString(this.format);
            dest.writeString(this.id);
            dest.writeString(this.url);
            dest.writeString(this.resolutions);
            dest.writeString(this.size);
            Long l11 = this.duration;
            if (l11 == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                dest.writeLong(l11.longValue());
            }
            dest.writeString(this.codecName);
            dest.writeString(this.signCookie);
            dest.writeString(this.idType);
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b{\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B¹\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010!\u001a\u00020 \u0012\b\b\u0002\u0010#\u001a\u00020\"\u0012\u0010\b\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$\u0012\b\b\u0002\u0010'\u001a\u00020\"¢\u0006\u0004\b(\u0010)J\u0011\u0010*\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b*\u0010+J\u0011\u0010,\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b,\u0010+J\u0011\u0010-\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b-\u0010+J\u0011\u0010.\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b.\u0010+J\u0011\u0010/\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b/\u00100J\u0011\u00101\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b1\u0010+J\u0011\u00102\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b2\u0010+J\u000f\u00103\u001a\u00020 H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\"H\u0016¢\u0006\u0004\b5\u00106J\u0017\u00109\u001a\u0002082\u0006\u00107\u001a\u00020\"H\u0016¢\u0006\u0004\b9\u0010:J\r\u0010;\u001a\u00020\"¢\u0006\u0004\b;\u00106J\u0017\u0010>\u001a\u0002082\b\u0010=\u001a\u0004\u0018\u00010<¢\u0006\u0004\b>\u0010?J\u001d\u0010C\u001a\u0002082\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020 ¢\u0006\u0004\bC\u0010DJ\r\u0010E\u001a\u00020 ¢\u0006\u0004\bE\u00104J\u0012\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\bF\u0010+J\u0012\u0010G\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\bG\u0010+J\u0012\u0010H\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\bH\u0010+J\u0018\u0010I\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\bI\u0010JJ\u0012\u0010K\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\bK\u0010LJ\u0012\u0010M\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\bM\u0010+J\u0012\u0010N\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0004\bN\u00100J\u0012\u0010O\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\bO\u0010+J\u0012\u0010P\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\bP\u0010+J\u0012\u0010Q\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0004\bQ\u00100J\u0012\u0010R\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\bR\u0010+J\u0018\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\bS\u0010JJ\u0012\u0010T\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0004\bT\u0010UJ\u0012\u0010V\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0004\bV\u0010WJ\u0012\u0010X\u001a\u0004\u0018\u00010\u0018HÆ\u0003¢\u0006\u0004\bX\u0010YJ\u0012\u0010Z\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\bZ\u0010+J\u0018\u0010[\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b[\u0010JJ\u0012\u0010\\\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b\\\u0010+J\u0012\u0010]\u001a\u0004\u0018\u00010\u001dHÆ\u0003¢\u0006\u0004\b]\u0010^J\u0012\u0010_\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b_\u0010+J\u0010\u0010`\u001a\u00020 HÆ\u0003¢\u0006\u0004\b`\u00104J\u0010\u0010a\u001a\u00020\"HÆ\u0003¢\u0006\u0004\ba\u00106J\u0018\u0010b\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$HÆ\u0003¢\u0006\u0004\bb\u0010JJ\u0010\u0010c\u001a\u00020\"HÆ\u0003¢\u0006\u0004\bc\u00106JÂ\u0002\u0010d\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010!\u001a\u00020 2\b\b\u0002\u0010#\u001a\u00020\"2\u0010\b\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$2\b\b\u0002\u0010'\u001a\u00020\"HÆ\u0001¢\u0006\u0004\bd\u0010eJ\u0010\u0010f\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\bf\u0010+J\u0010\u0010g\u001a\u00020 HÖ\u0001¢\u0006\u0004\bg\u00104J\u001a\u0010i\u001a\u00020\"2\b\u0010h\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\bi\u0010jR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010k\u001a\u0004\bl\u0010+\"\u0004\bm\u0010nR$\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010k\u001a\u0004\bo\u0010+\"\u0004\bp\u0010nR$\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010k\u001a\u0004\bq\u0010+\"\u0004\br\u0010nR*\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010s\u001a\u0004\bt\u0010J\"\u0004\bu\u0010vR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010w\u001a\u0004\bx\u0010L\"\u0004\by\u0010zR$\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010k\u001a\u0004\b{\u0010+\"\u0004\b|\u0010nR%\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0013\n\u0004\b\u000e\u0010}\u001a\u0004\b~\u00100\"\u0005\b\u007f\u0010\u0080\u0001R&\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u000f\u0010k\u001a\u0005\b\u0081\u0001\u0010+\"\u0005\b\u0082\u0001\u0010nR&\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u0010\u0010k\u001a\u0005\b\u0083\u0001\u0010+\"\u0005\b\u0084\u0001\u0010nR'\u0010\u0011\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0004\b\u0011\u0010}\u001a\u0005\b\u0085\u0001\u00100\"\u0006\b\u0086\u0001\u0010\u0080\u0001R&\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u0012\u0010k\u001a\u0005\b\u0087\u0001\u0010+\"\u0005\b\u0088\u0001\u0010nR,\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u0013\u0010s\u001a\u0005\b\u0089\u0001\u0010J\"\u0005\b\u008a\u0001\u0010vR(\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u0015\u0010\u008b\u0001\u001a\u0005\b\u008c\u0001\u0010U\"\u0006\b\u008d\u0001\u0010\u008e\u0001R(\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u0017\u0010\u008f\u0001\u001a\u0005\b\u0090\u0001\u0010W\"\u0006\b\u0091\u0001\u0010\u0092\u0001R(\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u0019\u0010\u0093\u0001\u001a\u0005\b\u0094\u0001\u0010Y\"\u0006\b\u0095\u0001\u0010\u0096\u0001R&\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001a\u0010k\u001a\u0005\b\u0097\u0001\u0010+\"\u0005\b\u0098\u0001\u0010nR,\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001b\u0010s\u001a\u0005\b\u0099\u0001\u0010J\"\u0005\b\u009a\u0001\u0010vR&\u0010\u001c\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001c\u0010k\u001a\u0005\b\u009b\u0001\u0010+\"\u0005\b\u009c\u0001\u0010nR(\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u001e\u0010\u009d\u0001\u001a\u0005\b\u009e\u0001\u0010^\"\u0006\b\u009f\u0001\u0010 \u0001R&\u0010\u001f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001f\u0010k\u001a\u0005\b¡\u0001\u0010+\"\u0005\b¢\u0001\u0010nR&\u0010!\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b!\u0010£\u0001\u001a\u0005\b¤\u0001\u00104\"\u0006\b¥\u0001\u0010¦\u0001R%\u0010#\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b#\u0010§\u0001\u001a\u0005\b¨\u0001\u00106\"\u0005\b©\u0001\u0010:R,\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b&\u0010s\u001a\u0005\bª\u0001\u0010J\"\u0005\b«\u0001\u0010vR$\u0010'\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0005\b'\u0010§\u0001\u001a\u0004\b'\u00106\"\u0005\b¬\u0001\u0010:R(\u0010\u00ad\u0001\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u00ad\u0001\u0010£\u0001\u001a\u0005\b®\u0001\u00104\"\u0006\b¯\u0001\u0010¦\u0001R(\u0010°\u0001\u001a\u0004\u0018\u00010\u00038F@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b°\u0001\u0010k\u001a\u0005\b±\u0001\u0010+\"\u0005\b²\u0001\u0010nR)\u0010³\u0001\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b³\u0001\u0010´\u0001\u001a\u0006\bµ\u0001\u0010¶\u0001\"\u0006\b·\u0001\u0010¸\u0001R\u0013\u0010º\u0001\u001a\u00020 8F¢\u0006\u0007\u001a\u0005\b¹\u0001\u00104¨\u0006»\u0001"}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", "", "Landroid/os/Parcelable;", "", "ugcVideoId", CampaignEx.JSON_KEY_TITLE, TrackingKey.DESCRIPTION, "", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;", "hashTags", "Lcom/transsion/shorttv_pugc/bean/Cover;", "cover", "corner", "", "duration", "watchNum", "releaseDate", "publishTime", "category", "genres", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;", "creator", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;", "interactiveInfo", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;", "belongToCollection", "ops", PlaceTypes.COUNTRY, "subjectId", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;", "resourceInfo", "epTitle", "", "restrictKid", "", "builtIn", "", "Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;", "streams", "isSelected", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;Z)V", "videoCoverUrl", "()Ljava/lang/String;", "videoThumbnail", "videoTitle", "videoCorner", "videoDuration", "()Ljava/lang/Long;", "videoUGCId", "videoUGCType", "videoUGCPosition", "()I", "isVideoPlaying", "()Z", "isPlaying", "", "setVideoIsPlaying", "(Z)V", "isDataNotComplete", "Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;", "firstImage", "overrideCoverByFirstImage", "(Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;)V", "Landroid/os/Parcel;", "dest", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "component1", "component2", "component3", "component4", "()Ljava/util/List;", "component5", "()Lcom/transsion/shorttv_pugc/bean/Cover;", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;", "component14", "()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;", "component15", "()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;", "component16", "component17", "component18", "component19", "()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;", "component20", "component21", "component22", "component23", "component24", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;Z)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", "toString", "hashCode", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getUgcVideoId", "setUgcVideoId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getDescription", "setDescription", "Ljava/util/List;", "getHashTags", "setHashTags", "(Ljava/util/List;)V", "Lcom/transsion/shorttv_pugc/bean/Cover;", "getCover", "setCover", "(Lcom/transsion/shorttv_pugc/bean/Cover;)V", "getCorner", "setCorner", "Ljava/lang/Long;", "getDuration", "setDuration", "(Ljava/lang/Long;)V", "getWatchNum", "setWatchNum", "getReleaseDate", "setReleaseDate", "getPublishTime", "setPublishTime", "getCategory", "setCategory", "getGenres", "setGenres", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;", "getCreator", "setCreator", "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;)V", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;", "getInteractiveInfo", "setInteractiveInfo", "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;)V", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;", "getBelongToCollection", "setBelongToCollection", "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;)V", "getOps", "setOps", "getCountry", "setCountry", "getSubjectId", "setSubjectId", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;", "getResourceInfo", "setResourceInfo", "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;)V", "getEpTitle", "setEpTitle", "I", "getRestrictKid", "setRestrictKid", "(I)V", "Z", "getBuiltIn", "setBuiltIn", "getStreams", "setStreams", "setSelected", "playListPosition", "getPlayListPosition", "setPlayListPosition", "playUrl", "getPlayUrl", "setPlayUrl", "durationMillis", "J", "getDurationMillis", "()J", "setDurationMillis", "(J)V", "getEp", "ep", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class UGCVideo implements Parcelable {
        public static final Parcelable.Creator<UGCVideo> CREATOR = new a();
        private UGCVideoCollection belongToCollection;
        private transient boolean builtIn;
        private String category;
        private String corner;
        private List<String> country;
        private Cover cover;
        private UGCVideoCreator creator;
        private String description;
        private Long duration;
        private long durationMillis;
        private String epTitle;
        private List<String> genres;
        private List<UGCVideoHasTag> hashTags;
        private UGCVideoInteractiveInfo interactiveInfo;
        private transient boolean isSelected;
        private String ops;
        private transient int playListPosition;
        private String playUrl;
        private Long publishTime;
        private String releaseDate;
        private UGCVideoResourceInfo resourceInfo;
        private int restrictKid;
        private List<StreamInfo> streams;
        private String subjectId;
        private String title;
        private String ugcVideoId;
        private String watchNum;

        public static final class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final UGCVideo createFromParcel(Parcel parcel) {
                ArrayList arrayList;
                ArrayList arrayList2;
                Intrinsics.h(parcel, "parcel");
                String string = parcel.readString();
                String string2 = parcel.readString();
                String string3 = parcel.readString();
                if (parcel.readInt() == 0) {
                    arrayList = null;
                } else {
                    int i11 = parcel.readInt();
                    arrayList = new ArrayList(i11);
                    for (int i12 = 0; i12 != i11; i12++) {
                        arrayList.add(UGCVideoHasTag.CREATOR.createFromParcel(parcel));
                    }
                }
                Cover cover = (Cover) parcel.readSerializable();
                String string4 = parcel.readString();
                Long lValueOf = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                Long lValueOf2 = parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong());
                String string7 = parcel.readString();
                ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                UGCVideoCreator uGCVideoCreator = (UGCVideoCreator) parcel.readSerializable();
                UGCVideoInteractiveInfo uGCVideoInteractiveInfo = (UGCVideoInteractiveInfo) parcel.readSerializable();
                UGCVideoCollection uGCVideoCollectionCreateFromParcel = parcel.readInt() == 0 ? null : UGCVideoCollection.CREATOR.createFromParcel(parcel);
                String string8 = parcel.readString();
                ArrayList<String> arrayListCreateStringArrayList2 = parcel.createStringArrayList();
                String string9 = parcel.readString();
                UGCVideoResourceInfo uGCVideoResourceInfo = (UGCVideoResourceInfo) parcel.readSerializable();
                String string10 = parcel.readString();
                int i13 = parcel.readInt();
                boolean z10 = parcel.readInt() != 0;
                if (parcel.readInt() == 0) {
                    arrayList2 = null;
                } else {
                    int i14 = parcel.readInt();
                    ArrayList arrayList3 = new ArrayList(i14);
                    int i15 = 0;
                    while (i15 != i14) {
                        arrayList3.add(StreamInfo.CREATOR.createFromParcel(parcel));
                        i15++;
                        i14 = i14;
                    }
                    arrayList2 = arrayList3;
                }
                return new UGCVideo(string, string2, string3, arrayList, cover, string4, lValueOf, string5, string6, lValueOf2, string7, arrayListCreateStringArrayList, uGCVideoCreator, uGCVideoInteractiveInfo, uGCVideoCollectionCreateFromParcel, string8, arrayListCreateStringArrayList2, string9, uGCVideoResourceInfo, string10, i13, z10, arrayList2, parcel.readInt() != 0);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final UGCVideo[] newArray(int i11) {
                return new UGCVideo[i11];
            }
        }

        public UGCVideo() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, false, null, false, 16777215, null);
        }

        public UGCVideo(String str, String str2, String str3, List<UGCVideoHasTag> list, Cover cover, String str4, Long l11, String str5, String str6, Long l12, String str7, List<String> list2, UGCVideoCreator uGCVideoCreator, UGCVideoInteractiveInfo uGCVideoInteractiveInfo, UGCVideoCollection uGCVideoCollection, String str8, List<String> list3, String str9, UGCVideoResourceInfo uGCVideoResourceInfo, String str10, int i11, boolean z10, List<StreamInfo> list4, boolean z11) {
            this.ugcVideoId = str;
            this.title = str2;
            this.description = str3;
            this.hashTags = list;
            this.cover = cover;
            this.corner = str4;
            this.duration = l11;
            this.watchNum = str5;
            this.releaseDate = str6;
            this.publishTime = l12;
            this.category = str7;
            this.genres = list2;
            this.creator = uGCVideoCreator;
            this.interactiveInfo = uGCVideoInteractiveInfo;
            this.belongToCollection = uGCVideoCollection;
            this.ops = str8;
            this.country = list3;
            this.subjectId = str9;
            this.resourceInfo = uGCVideoResourceInfo;
            this.epTitle = str10;
            this.restrictKid = i11;
            this.builtIn = z10;
            this.streams = list4;
            this.isSelected = z11;
            this.playListPosition = -1;
        }

        public /* synthetic */ UGCVideo(String str, String str2, String str3, List list, Cover cover, String str4, Long l11, String str5, String str6, Long l12, String str7, List list2, UGCVideoCreator uGCVideoCreator, UGCVideoInteractiveInfo uGCVideoInteractiveInfo, UGCVideoCollection uGCVideoCollection, String str8, List list3, String str9, UGCVideoResourceInfo uGCVideoResourceInfo, String str10, int i11, boolean z10, List list4, boolean z11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : str2, (i12 & 4) != 0 ? null : str3, (i12 & 8) != 0 ? null : list, (i12 & 16) != 0 ? null : cover, (i12 & 32) != 0 ? null : str4, (i12 & 64) != 0 ? 0L : l11, (i12 & 128) != 0 ? null : str5, (i12 & 256) != 0 ? null : str6, (i12 & 512) != 0 ? 0L : l12, (i12 & 1024) != 0 ? null : str7, (i12 & 2048) != 0 ? null : list2, (i12 & 4096) != 0 ? null : uGCVideoCreator, (i12 & 8192) != 0 ? null : uGCVideoInteractiveInfo, (i12 & 16384) != 0 ? null : uGCVideoCollection, (i12 & 32768) != 0 ? null : str8, (i12 & 65536) != 0 ? null : list3, (i12 & 131072) != 0 ? null : str9, (i12 & 262144) != 0 ? null : uGCVideoResourceInfo, (i12 & 524288) != 0 ? null : str10, (i12 & 1048576) != 0 ? 0 : i11, (i12 & 2097152) != 0 ? false : z10, (i12 & 4194304) != 0 ? null : list4, (i12 & 8388608) == 0 ? z11 : false);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUgcVideoId() {
            return this.ugcVideoId;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final Long getPublishTime() {
            return this.publishTime;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final String getCategory() {
            return this.category;
        }

        public final List<String> component12() {
            return this.genres;
        }

        /* JADX INFO: renamed from: component13, reason: from getter */
        public final UGCVideoCreator getCreator() {
            return this.creator;
        }

        /* JADX INFO: renamed from: component14, reason: from getter */
        public final UGCVideoInteractiveInfo getInteractiveInfo() {
            return this.interactiveInfo;
        }

        /* JADX INFO: renamed from: component15, reason: from getter */
        public final UGCVideoCollection getBelongToCollection() {
            return this.belongToCollection;
        }

        /* JADX INFO: renamed from: component16, reason: from getter */
        public final String getOps() {
            return this.ops;
        }

        public final List<String> component17() {
            return this.country;
        }

        /* JADX INFO: renamed from: component18, reason: from getter */
        public final String getSubjectId() {
            return this.subjectId;
        }

        /* JADX INFO: renamed from: component19, reason: from getter */
        public final UGCVideoResourceInfo getResourceInfo() {
            return this.resourceInfo;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        /* JADX INFO: renamed from: component20, reason: from getter */
        public final String getEpTitle() {
            return this.epTitle;
        }

        /* JADX INFO: renamed from: component21, reason: from getter */
        public final int getRestrictKid() {
            return this.restrictKid;
        }

        /* JADX INFO: renamed from: component22, reason: from getter */
        public final boolean getBuiltIn() {
            return this.builtIn;
        }

        public final List<StreamInfo> component23() {
            return this.streams;
        }

        /* JADX INFO: renamed from: component24, reason: from getter */
        public final boolean getIsSelected() {
            return this.isSelected;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getDescription() {
            return this.description;
        }

        public final List<UGCVideoHasTag> component4() {
            return this.hashTags;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final Cover getCover() {
            return this.cover;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getCorner() {
            return this.corner;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final Long getDuration() {
            return this.duration;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final String getWatchNum() {
            return this.watchNum;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final String getReleaseDate() {
            return this.releaseDate;
        }

        public final UGCVideo copy(String ugcVideoId, String title, String description, List<UGCVideoHasTag> hashTags, Cover cover, String corner, Long duration, String watchNum, String releaseDate, Long publishTime, String category, List<String> genres, UGCVideoCreator creator, UGCVideoInteractiveInfo interactiveInfo, UGCVideoCollection belongToCollection, String ops, List<String> country, String subjectId, UGCVideoResourceInfo resourceInfo, String epTitle, int restrictKid, boolean builtIn, List<StreamInfo> streams, boolean isSelected) {
            return new UGCVideo(ugcVideoId, title, description, hashTags, cover, corner, duration, watchNum, releaseDate, publishTime, category, genres, creator, interactiveInfo, belongToCollection, ops, country, subjectId, resourceInfo, epTitle, restrictKid, builtIn, streams, isSelected);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UGCVideo)) {
                return false;
            }
            UGCVideo uGCVideo = (UGCVideo) other;
            return Intrinsics.c(this.ugcVideoId, uGCVideo.ugcVideoId) && Intrinsics.c(this.title, uGCVideo.title) && Intrinsics.c(this.description, uGCVideo.description) && Intrinsics.c(this.hashTags, uGCVideo.hashTags) && Intrinsics.c(this.cover, uGCVideo.cover) && Intrinsics.c(this.corner, uGCVideo.corner) && Intrinsics.c(this.duration, uGCVideo.duration) && Intrinsics.c(this.watchNum, uGCVideo.watchNum) && Intrinsics.c(this.releaseDate, uGCVideo.releaseDate) && Intrinsics.c(this.publishTime, uGCVideo.publishTime) && Intrinsics.c(this.category, uGCVideo.category) && Intrinsics.c(this.genres, uGCVideo.genres) && Intrinsics.c(this.creator, uGCVideo.creator) && Intrinsics.c(this.interactiveInfo, uGCVideo.interactiveInfo) && Intrinsics.c(this.belongToCollection, uGCVideo.belongToCollection) && Intrinsics.c(this.ops, uGCVideo.ops) && Intrinsics.c(this.country, uGCVideo.country) && Intrinsics.c(this.subjectId, uGCVideo.subjectId) && Intrinsics.c(this.resourceInfo, uGCVideo.resourceInfo) && Intrinsics.c(this.epTitle, uGCVideo.epTitle) && this.restrictKid == uGCVideo.restrictKid && this.builtIn == uGCVideo.builtIn && Intrinsics.c(this.streams, uGCVideo.streams) && this.isSelected == uGCVideo.isSelected;
        }

        public final UGCVideoCollection getBelongToCollection() {
            return this.belongToCollection;
        }

        public final boolean getBuiltIn() {
            return this.builtIn;
        }

        public final String getCategory() {
            return this.category;
        }

        public final String getCorner() {
            return this.corner;
        }

        public final List<String> getCountry() {
            return this.country;
        }

        public final Cover getCover() {
            return this.cover;
        }

        public final UGCVideoCreator getCreator() {
            return this.creator;
        }

        public final String getDescription() {
            return this.description;
        }

        public final Long getDuration() {
            return this.duration;
        }

        public final long getDurationMillis() {
            return this.durationMillis;
        }

        public final int getEp() {
            return videoUGCPosition();
        }

        public final String getEpTitle() {
            return this.epTitle;
        }

        public final List<String> getGenres() {
            return this.genres;
        }

        public final List<UGCVideoHasTag> getHashTags() {
            return this.hashTags;
        }

        public final UGCVideoInteractiveInfo getInteractiveInfo() {
            return this.interactiveInfo;
        }

        public final String getOps() {
            return this.ops;
        }

        public final int getPlayListPosition() {
            return this.playListPosition;
        }

        public final String getPlayUrl() {
            StreamInfo streamInfo;
            if (this.playUrl == null) {
                List<StreamInfo> list = this.streams;
                this.playUrl = (list == null || (streamInfo = (StreamInfo) CollectionsKt.k0(list)) == null) ? null : streamInfo.getUrl();
            }
            return this.playUrl;
        }

        public final Long getPublishTime() {
            return this.publishTime;
        }

        public final String getReleaseDate() {
            return this.releaseDate;
        }

        public final UGCVideoResourceInfo getResourceInfo() {
            return this.resourceInfo;
        }

        public final int getRestrictKid() {
            return this.restrictKid;
        }

        public final List<StreamInfo> getStreams() {
            return this.streams;
        }

        public final String getSubjectId() {
            return this.subjectId;
        }

        public final String getTitle() {
            return this.title;
        }

        public final String getUgcVideoId() {
            return this.ugcVideoId;
        }

        public final String getWatchNum() {
            return this.watchNum;
        }

        public int hashCode() {
            String str = this.ugcVideoId;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.title;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.description;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            List<UGCVideoHasTag> list = this.hashTags;
            int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
            Cover cover = this.cover;
            int iHashCode5 = (iHashCode4 + (cover == null ? 0 : cover.hashCode())) * 31;
            String str4 = this.corner;
            int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Long l11 = this.duration;
            int iHashCode7 = (iHashCode6 + (l11 == null ? 0 : l11.hashCode())) * 31;
            String str5 = this.watchNum;
            int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.releaseDate;
            int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
            Long l12 = this.publishTime;
            int iHashCode10 = (iHashCode9 + (l12 == null ? 0 : l12.hashCode())) * 31;
            String str7 = this.category;
            int iHashCode11 = (iHashCode10 + (str7 == null ? 0 : str7.hashCode())) * 31;
            List<String> list2 = this.genres;
            int iHashCode12 = (iHashCode11 + (list2 == null ? 0 : list2.hashCode())) * 31;
            UGCVideoCreator uGCVideoCreator = this.creator;
            int iHashCode13 = (iHashCode12 + (uGCVideoCreator == null ? 0 : uGCVideoCreator.hashCode())) * 31;
            UGCVideoInteractiveInfo uGCVideoInteractiveInfo = this.interactiveInfo;
            int iHashCode14 = (iHashCode13 + (uGCVideoInteractiveInfo == null ? 0 : uGCVideoInteractiveInfo.hashCode())) * 31;
            UGCVideoCollection uGCVideoCollection = this.belongToCollection;
            int iHashCode15 = (iHashCode14 + (uGCVideoCollection == null ? 0 : uGCVideoCollection.hashCode())) * 31;
            String str8 = this.ops;
            int iHashCode16 = (iHashCode15 + (str8 == null ? 0 : str8.hashCode())) * 31;
            List<String> list3 = this.country;
            int iHashCode17 = (iHashCode16 + (list3 == null ? 0 : list3.hashCode())) * 31;
            String str9 = this.subjectId;
            int iHashCode18 = (iHashCode17 + (str9 == null ? 0 : str9.hashCode())) * 31;
            UGCVideoResourceInfo uGCVideoResourceInfo = this.resourceInfo;
            int iHashCode19 = (iHashCode18 + (uGCVideoResourceInfo == null ? 0 : uGCVideoResourceInfo.hashCode())) * 31;
            String str10 = this.epTitle;
            int iHashCode20 = (((((iHashCode19 + (str10 == null ? 0 : str10.hashCode())) * 31) + this.restrictKid) * 31) + e.a(this.builtIn)) * 31;
            List<StreamInfo> list4 = this.streams;
            return ((iHashCode20 + (list4 != null ? list4.hashCode() : 0)) * 31) + e.a(this.isSelected);
        }

        public final boolean isDataNotComplete() {
            String str = this.ugcVideoId;
            return str == null || str.length() == 0;
        }

        public final boolean isSelected() {
            return this.isSelected;
        }

        public boolean isVideoPlaying() {
            return this.isSelected;
        }

        public final void overrideCoverByFirstImage(FirstImage firstImage) {
            if (firstImage != null) {
                Cover cover = this.cover;
                if (cover != null) {
                    cover.setUrl(firstImage.getUrl());
                }
                Cover cover2 = this.cover;
                if (cover2 != null) {
                    cover2.setThumbnail(firstImage.getThumbnail());
                }
                Cover cover3 = this.cover;
                if (cover3 != null) {
                    cover3.setHeight(Integer.valueOf(firstImage.getHeight()));
                }
                Cover cover4 = this.cover;
                if (cover4 != null) {
                    cover4.setWidth(Integer.valueOf(firstImage.getWidth()));
                }
                Cover cover5 = this.cover;
                if (cover5 != null) {
                    cover5.setFormat(firstImage.getFormat());
                }
                Cover cover6 = this.cover;
                if (cover6 != null) {
                    cover6.setSize(Integer.valueOf(firstImage.getSize()));
                }
                Cover cover7 = this.cover;
                if (cover7 != null) {
                    cover7.setAverageHueDark(firstImage.getAverageHueDark());
                }
                Cover cover8 = this.cover;
                if (cover8 != null) {
                    cover8.setAverageHueLight(firstImage.getAverageHueLight());
                }
                Cover cover9 = this.cover;
                if (cover9 != null) {
                    cover9.setGifBean(firstImage.getGif());
                }
            }
        }

        public final void setBelongToCollection(UGCVideoCollection uGCVideoCollection) {
            this.belongToCollection = uGCVideoCollection;
        }

        public final void setBuiltIn(boolean z10) {
            this.builtIn = z10;
        }

        public final void setCategory(String str) {
            this.category = str;
        }

        public final void setCorner(String str) {
            this.corner = str;
        }

        public final void setCountry(List<String> list) {
            this.country = list;
        }

        public final void setCover(Cover cover) {
            this.cover = cover;
        }

        public final void setCreator(UGCVideoCreator uGCVideoCreator) {
            this.creator = uGCVideoCreator;
        }

        public final void setDescription(String str) {
            this.description = str;
        }

        public final void setDuration(Long l11) {
            this.duration = l11;
        }

        public final void setDurationMillis(long j11) {
            this.durationMillis = j11;
        }

        public final void setEpTitle(String str) {
            this.epTitle = str;
        }

        public final void setGenres(List<String> list) {
            this.genres = list;
        }

        public final void setHashTags(List<UGCVideoHasTag> list) {
            this.hashTags = list;
        }

        public final void setInteractiveInfo(UGCVideoInteractiveInfo uGCVideoInteractiveInfo) {
            this.interactiveInfo = uGCVideoInteractiveInfo;
        }

        public final void setOps(String str) {
            this.ops = str;
        }

        public final void setPlayListPosition(int i11) {
            this.playListPosition = i11;
        }

        public final void setPlayUrl(String str) {
            this.playUrl = str;
        }

        public final void setPublishTime(Long l11) {
            this.publishTime = l11;
        }

        public final void setReleaseDate(String str) {
            this.releaseDate = str;
        }

        public final void setResourceInfo(UGCVideoResourceInfo uGCVideoResourceInfo) {
            this.resourceInfo = uGCVideoResourceInfo;
        }

        public final void setRestrictKid(int i11) {
            this.restrictKid = i11;
        }

        public final void setSelected(boolean z10) {
            this.isSelected = z10;
        }

        public final void setStreams(List<StreamInfo> list) {
            this.streams = list;
        }

        public final void setSubjectId(String str) {
            this.subjectId = str;
        }

        public final void setTitle(String str) {
            this.title = str;
        }

        public final void setUgcVideoId(String str) {
            this.ugcVideoId = str;
        }

        public void setVideoIsPlaying(boolean isPlaying) {
            this.isSelected = isPlaying;
        }

        public final void setWatchNum(String str) {
            this.watchNum = str;
        }

        public String toString() {
            return "UGCVideo(ugcVideoId=" + this.ugcVideoId + ", title=" + this.title + ", description=" + this.description + ", hashTags=" + this.hashTags + ", cover=" + this.cover + ", corner=" + this.corner + ", duration=" + this.duration + ", watchNum=" + this.watchNum + ", releaseDate=" + this.releaseDate + ", publishTime=" + this.publishTime + ", category=" + this.category + ", genres=" + this.genres + ", creator=" + this.creator + ", interactiveInfo=" + this.interactiveInfo + ", belongToCollection=" + this.belongToCollection + ", ops=" + this.ops + ", country=" + this.country + ", subjectId=" + this.subjectId + ", resourceInfo=" + this.resourceInfo + ", epTitle=" + this.epTitle + ", restrictKid=" + this.restrictKid + ", builtIn=" + this.builtIn + ", streams=" + this.streams + ", isSelected=" + this.isSelected + ")";
        }

        public String videoCorner() {
            return this.corner;
        }

        public String videoCoverUrl() {
            Cover cover = this.cover;
            if (cover != null) {
                return cover.getUrl();
            }
            return null;
        }

        public Long videoDuration() {
            return this.duration;
        }

        public String videoThumbnail() {
            Cover cover = this.cover;
            if (cover != null) {
                return cover.getThumbnail();
            }
            return null;
        }

        public String videoTitle() {
            return this.title;
        }

        public String videoUGCId() {
            return this.ugcVideoId;
        }

        public int videoUGCPosition() {
            Integer position;
            UGCVideoCollection uGCVideoCollection = this.belongToCollection;
            return (uGCVideoCollection == null || (position = uGCVideoCollection.getPosition()) == null) ? this.playListPosition : position.intValue();
        }

        public String videoUGCType() {
            return this.category;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel dest, int flags) {
            Intrinsics.h(dest, "dest");
            dest.writeString(this.ugcVideoId);
            dest.writeString(this.title);
            dest.writeString(this.description);
            List<UGCVideoHasTag> list = this.hashTags;
            if (list == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                dest.writeInt(list.size());
                Iterator<UGCVideoHasTag> it = list.iterator();
                while (it.hasNext()) {
                    it.next().writeToParcel(dest, flags);
                }
            }
            dest.writeSerializable(this.cover);
            dest.writeString(this.corner);
            Long l11 = this.duration;
            if (l11 == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                dest.writeLong(l11.longValue());
            }
            dest.writeString(this.watchNum);
            dest.writeString(this.releaseDate);
            Long l12 = this.publishTime;
            if (l12 == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                dest.writeLong(l12.longValue());
            }
            dest.writeString(this.category);
            dest.writeStringList(this.genres);
            dest.writeSerializable(this.creator);
            dest.writeSerializable(this.interactiveInfo);
            UGCVideoCollection uGCVideoCollection = this.belongToCollection;
            if (uGCVideoCollection == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                uGCVideoCollection.writeToParcel(dest, flags);
            }
            dest.writeString(this.ops);
            dest.writeStringList(this.country);
            dest.writeString(this.subjectId);
            dest.writeSerializable(this.resourceInfo);
            dest.writeString(this.epTitle);
            dest.writeInt(this.restrictKid);
            dest.writeInt(this.builtIn ? 1 : 0);
            List<StreamInfo> list2 = this.streams;
            if (list2 == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                dest.writeInt(list2.size());
                Iterator<StreamInfo> it2 = list2.iterator();
                while (it2.hasNext()) {
                    it2.next().writeToParcel(dest, flags);
                }
            }
            dest.writeInt(this.isSelected ? 1 : 0);
        }
    }

    @Keep
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J>\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0006\u0010\u001d\u001a\u00020\u0005J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000b\"\u0004\b\u0016\u0010\r¨\u0006)"}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;", "Landroid/os/Parcelable;", "collectionId", "", "videoNum", "", RequestParameters.POSITION, "collectionName", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getCollectionId", "()Ljava/lang/String;", "setCollectionId", "(Ljava/lang/String;)V", "getVideoNum", "()Ljava/lang/Integer;", "setVideoNum", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getPosition", "setPosition", "getCollectionName", "setCollectionName", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class UGCVideoCollection implements Parcelable {
        public static final Parcelable.Creator<UGCVideoCollection> CREATOR = new a();
        private String collectionId;
        private String collectionName;
        private Integer position;
        private Integer videoNum;

        public static final class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final UGCVideoCollection createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new UGCVideoCollection(parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final UGCVideoCollection[] newArray(int i11) {
                return new UGCVideoCollection[i11];
            }
        }

        public UGCVideoCollection() {
            this(null, null, null, null, 15, null);
        }

        public UGCVideoCollection(String str, Integer num, Integer num2, String str2) {
            this.collectionId = str;
            this.videoNum = num;
            this.position = num2;
            this.collectionName = str2;
        }

        public /* synthetic */ UGCVideoCollection(String str, Integer num, Integer num2, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? 0 : num, (i11 & 4) != 0 ? 0 : num2, (i11 & 8) != 0 ? null : str2);
        }

        public static /* synthetic */ UGCVideoCollection copy$default(UGCVideoCollection uGCVideoCollection, String str, Integer num, Integer num2, String str2, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = uGCVideoCollection.collectionId;
            }
            if ((i11 & 2) != 0) {
                num = uGCVideoCollection.videoNum;
            }
            if ((i11 & 4) != 0) {
                num2 = uGCVideoCollection.position;
            }
            if ((i11 & 8) != 0) {
                str2 = uGCVideoCollection.collectionName;
            }
            return uGCVideoCollection.copy(str, num, num2, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getCollectionId() {
            return this.collectionId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Integer getVideoNum() {
            return this.videoNum;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Integer getPosition() {
            return this.position;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getCollectionName() {
            return this.collectionName;
        }

        public final UGCVideoCollection copy(String collectionId, Integer videoNum, Integer position, String collectionName) {
            return new UGCVideoCollection(collectionId, videoNum, position, collectionName);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UGCVideoCollection)) {
                return false;
            }
            UGCVideoCollection uGCVideoCollection = (UGCVideoCollection) other;
            return Intrinsics.c(this.collectionId, uGCVideoCollection.collectionId) && Intrinsics.c(this.videoNum, uGCVideoCollection.videoNum) && Intrinsics.c(this.position, uGCVideoCollection.position) && Intrinsics.c(this.collectionName, uGCVideoCollection.collectionName);
        }

        public final String getCollectionId() {
            return this.collectionId;
        }

        public final String getCollectionName() {
            return this.collectionName;
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
            Integer num = this.videoNum;
            int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
            Integer num2 = this.position;
            int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
            String str2 = this.collectionName;
            return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
        }

        public final void setCollectionId(String str) {
            this.collectionId = str;
        }

        public final void setCollectionName(String str) {
            this.collectionName = str;
        }

        public final void setPosition(Integer num) {
            this.position = num;
        }

        public final void setVideoNum(Integer num) {
            this.videoNum = num;
        }

        public String toString() {
            return "UGCVideoCollection(collectionId=" + this.collectionId + ", videoNum=" + this.videoNum + ", position=" + this.position + ", collectionName=" + this.collectionName + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel dest, int flags) {
            Intrinsics.h(dest, "dest");
            dest.writeString(this.collectionId);
            Integer num = this.videoNum;
            if (num == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                dest.writeInt(num.intValue());
            }
            Integer num2 = this.position;
            if (num2 == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                dest.writeInt(num2.intValue());
            }
            dest.writeString(this.collectionName);
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0013J>\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006#"}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;", "Ljava/io/Serializable;", CommonUtils.PARAM_UID, "", "nickname", "avatar", "hasSubscribe", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getUid", "()Ljava/lang/String;", "setUid", "(Ljava/lang/String;)V", "getNickname", "setNickname", "getAvatar", "setAvatar", "getHasSubscribe", "()Ljava/lang/Boolean;", "setHasSubscribe", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class UGCVideoCreator implements Serializable {
        private String avatar;
        private Boolean hasSubscribe;
        private String nickname;
        private String uid;

        public UGCVideoCreator() {
            this(null, null, null, null, 15, null);
        }

        public UGCVideoCreator(String str, String str2, String str3, Boolean bool) {
            this.uid = str;
            this.nickname = str2;
            this.avatar = str3;
            this.hasSubscribe = bool;
        }

        public /* synthetic */ UGCVideoCreator(String str, String str2, String str3, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? Boolean.FALSE : bool);
        }

        public static /* synthetic */ UGCVideoCreator copy$default(UGCVideoCreator uGCVideoCreator, String str, String str2, String str3, Boolean bool, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = uGCVideoCreator.uid;
            }
            if ((i11 & 2) != 0) {
                str2 = uGCVideoCreator.nickname;
            }
            if ((i11 & 4) != 0) {
                str3 = uGCVideoCreator.avatar;
            }
            if ((i11 & 8) != 0) {
                bool = uGCVideoCreator.hasSubscribe;
            }
            return uGCVideoCreator.copy(str, str2, str3, bool);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUid() {
            return this.uid;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getNickname() {
            return this.nickname;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getAvatar() {
            return this.avatar;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Boolean getHasSubscribe() {
            return this.hasSubscribe;
        }

        public final UGCVideoCreator copy(String uid, String nickname, String avatar, Boolean hasSubscribe) {
            return new UGCVideoCreator(uid, nickname, avatar, hasSubscribe);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UGCVideoCreator)) {
                return false;
            }
            UGCVideoCreator uGCVideoCreator = (UGCVideoCreator) other;
            return Intrinsics.c(this.uid, uGCVideoCreator.uid) && Intrinsics.c(this.nickname, uGCVideoCreator.nickname) && Intrinsics.c(this.avatar, uGCVideoCreator.avatar) && Intrinsics.c(this.hasSubscribe, uGCVideoCreator.hasSubscribe);
        }

        public final String getAvatar() {
            return this.avatar;
        }

        public final Boolean getHasSubscribe() {
            return this.hasSubscribe;
        }

        public final String getNickname() {
            return this.nickname;
        }

        public final String getUid() {
            return this.uid;
        }

        public int hashCode() {
            String str = this.uid;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.nickname;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.avatar;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            Boolean bool = this.hasSubscribe;
            return iHashCode3 + (bool != null ? bool.hashCode() : 0);
        }

        public final void setAvatar(String str) {
            this.avatar = str;
        }

        public final void setHasSubscribe(Boolean bool) {
            this.hasSubscribe = bool;
        }

        public final void setNickname(String str) {
            this.nickname = str;
        }

        public final void setUid(String str) {
            this.uid = str;
        }

        public String toString() {
            return "UGCVideoCreator(uid=" + this.uid + ", nickname=" + this.nickname + ", avatar=" + this.avatar + ", hasSubscribe=" + this.hasSubscribe + ")";
        }
    }

    @Keep
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J9\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0018\u001a\u00020\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0019R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR \u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\f¨\u0006%"}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;", "Landroid/os/Parcelable;", "tag", "", CampaignEx.JSON_KEY_TITLE, "tagType", "referId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getTag", "()Ljava/lang/String;", "setTag", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getTagType", "setTagType", "getReferId", "setReferId", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class UGCVideoHasTag implements Parcelable {
        public static final Parcelable.Creator<UGCVideoHasTag> CREATOR = new a();

        @SerializedName("referId")
        private String referId;

        @SerializedName("tag")
        private String tag;

        @SerializedName("tagType")
        private String tagType;

        @SerializedName(CampaignEx.JSON_KEY_TITLE)
        private String title;

        public static final class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final UGCVideoHasTag createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new UGCVideoHasTag(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final UGCVideoHasTag[] newArray(int i11) {
                return new UGCVideoHasTag[i11];
            }
        }

        public UGCVideoHasTag() {
            this(null, null, null, null, 15, null);
        }

        public UGCVideoHasTag(String str, String str2, String str3, String str4) {
            this.tag = str;
            this.title = str2;
            this.tagType = str3;
            this.referId = str4;
        }

        public /* synthetic */ UGCVideoHasTag(String str, String str2, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4);
        }

        public static /* synthetic */ UGCVideoHasTag copy$default(UGCVideoHasTag uGCVideoHasTag, String str, String str2, String str3, String str4, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = uGCVideoHasTag.tag;
            }
            if ((i11 & 2) != 0) {
                str2 = uGCVideoHasTag.title;
            }
            if ((i11 & 4) != 0) {
                str3 = uGCVideoHasTag.tagType;
            }
            if ((i11 & 8) != 0) {
                str4 = uGCVideoHasTag.referId;
            }
            return uGCVideoHasTag.copy(str, str2, str3, str4);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getTag() {
            return this.tag;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getTagType() {
            return this.tagType;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getReferId() {
            return this.referId;
        }

        public final UGCVideoHasTag copy(String tag, String title, String tagType, String referId) {
            return new UGCVideoHasTag(tag, title, tagType, referId);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UGCVideoHasTag)) {
                return false;
            }
            UGCVideoHasTag uGCVideoHasTag = (UGCVideoHasTag) other;
            return Intrinsics.c(this.tag, uGCVideoHasTag.tag) && Intrinsics.c(this.title, uGCVideoHasTag.title) && Intrinsics.c(this.tagType, uGCVideoHasTag.tagType) && Intrinsics.c(this.referId, uGCVideoHasTag.referId);
        }

        public final String getReferId() {
            return this.referId;
        }

        public final String getTag() {
            return this.tag;
        }

        public final String getTagType() {
            return this.tagType;
        }

        public final String getTitle() {
            return this.title;
        }

        public int hashCode() {
            String str = this.tag;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.title;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.tagType;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.referId;
            return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        public final void setReferId(String str) {
            this.referId = str;
        }

        public final void setTag(String str) {
            this.tag = str;
        }

        public final void setTagType(String str) {
            this.tagType = str;
        }

        public final void setTitle(String str) {
            this.title = str;
        }

        public String toString() {
            return "UGCVideoHasTag(tag=" + this.tag + ", title=" + this.title + ", tagType=" + this.tagType + ", referId=" + this.referId + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel dest, int flags) {
            Intrinsics.h(dest, "dest");
            dest.writeString(this.tag);
            dest.writeString(this.title);
            dest.writeString(this.tagType);
            dest.writeString(this.referId);
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b#\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0016J\u0010\u0010$\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0016J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jb\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020\u00072\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020-HÖ\u0001J\t\u0010.\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u000e\"\u0004\b\u001d\u0010\u0010R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u000e\"\u0004\b\u001f\u0010\u0010¨\u0006/"}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;", "Ljava/io/Serializable;", "likeNum", "", "favoriteNum", "shareNum", "hasLike", "", "hasFavorite", "viewNum", "commentNum", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V", "getLikeNum", "()Ljava/lang/String;", "setLikeNum", "(Ljava/lang/String;)V", "getFavoriteNum", "setFavoriteNum", "getShareNum", "setShareNum", "getHasLike", "()Ljava/lang/Boolean;", "setHasLike", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getHasFavorite", "setHasFavorite", "getViewNum", "setViewNum", "getCommentNum", "setCommentNum", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class UGCVideoInteractiveInfo implements Serializable {
        private String commentNum;
        private String favoriteNum;
        private Boolean hasFavorite;
        private Boolean hasLike;
        private String likeNum;
        private String shareNum;
        private String viewNum;

        public UGCVideoInteractiveInfo() {
            this(null, null, null, null, null, null, null, 127, null);
        }

        public UGCVideoInteractiveInfo(String str, String str2, String str3, Boolean bool, Boolean bool2, String str4, String str5) {
            this.likeNum = str;
            this.favoriteNum = str2;
            this.shareNum = str3;
            this.hasLike = bool;
            this.hasFavorite = bool2;
            this.viewNum = str4;
            this.commentNum = str5;
        }

        public /* synthetic */ UGCVideoInteractiveInfo(String str, String str2, String str3, Boolean bool, Boolean bool2, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? Boolean.FALSE : bool, (i11 & 16) != 0 ? Boolean.FALSE : bool2, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : str5);
        }

        public static /* synthetic */ UGCVideoInteractiveInfo copy$default(UGCVideoInteractiveInfo uGCVideoInteractiveInfo, String str, String str2, String str3, Boolean bool, Boolean bool2, String str4, String str5, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = uGCVideoInteractiveInfo.likeNum;
            }
            if ((i11 & 2) != 0) {
                str2 = uGCVideoInteractiveInfo.favoriteNum;
            }
            String str6 = str2;
            if ((i11 & 4) != 0) {
                str3 = uGCVideoInteractiveInfo.shareNum;
            }
            String str7 = str3;
            if ((i11 & 8) != 0) {
                bool = uGCVideoInteractiveInfo.hasLike;
            }
            Boolean bool3 = bool;
            if ((i11 & 16) != 0) {
                bool2 = uGCVideoInteractiveInfo.hasFavorite;
            }
            Boolean bool4 = bool2;
            if ((i11 & 32) != 0) {
                str4 = uGCVideoInteractiveInfo.viewNum;
            }
            String str8 = str4;
            if ((i11 & 64) != 0) {
                str5 = uGCVideoInteractiveInfo.commentNum;
            }
            return uGCVideoInteractiveInfo.copy(str, str6, str7, bool3, bool4, str8, str5);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getLikeNum() {
            return this.likeNum;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getFavoriteNum() {
            return this.favoriteNum;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getShareNum() {
            return this.shareNum;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final Boolean getHasLike() {
            return this.hasLike;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final Boolean getHasFavorite() {
            return this.hasFavorite;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getViewNum() {
            return this.viewNum;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final String getCommentNum() {
            return this.commentNum;
        }

        public final UGCVideoInteractiveInfo copy(String likeNum, String favoriteNum, String shareNum, Boolean hasLike, Boolean hasFavorite, String viewNum, String commentNum) {
            return new UGCVideoInteractiveInfo(likeNum, favoriteNum, shareNum, hasLike, hasFavorite, viewNum, commentNum);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UGCVideoInteractiveInfo)) {
                return false;
            }
            UGCVideoInteractiveInfo uGCVideoInteractiveInfo = (UGCVideoInteractiveInfo) other;
            return Intrinsics.c(this.likeNum, uGCVideoInteractiveInfo.likeNum) && Intrinsics.c(this.favoriteNum, uGCVideoInteractiveInfo.favoriteNum) && Intrinsics.c(this.shareNum, uGCVideoInteractiveInfo.shareNum) && Intrinsics.c(this.hasLike, uGCVideoInteractiveInfo.hasLike) && Intrinsics.c(this.hasFavorite, uGCVideoInteractiveInfo.hasFavorite) && Intrinsics.c(this.viewNum, uGCVideoInteractiveInfo.viewNum) && Intrinsics.c(this.commentNum, uGCVideoInteractiveInfo.commentNum);
        }

        public final String getCommentNum() {
            return this.commentNum;
        }

        public final String getFavoriteNum() {
            return this.favoriteNum;
        }

        public final Boolean getHasFavorite() {
            return this.hasFavorite;
        }

        public final Boolean getHasLike() {
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
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.favoriteNum;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.shareNum;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            Boolean bool = this.hasLike;
            int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
            Boolean bool2 = this.hasFavorite;
            int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
            String str4 = this.viewNum;
            int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.commentNum;
            return iHashCode6 + (str5 != null ? str5.hashCode() : 0);
        }

        public final void setCommentNum(String str) {
            this.commentNum = str;
        }

        public final void setFavoriteNum(String str) {
            this.favoriteNum = str;
        }

        public final void setHasFavorite(Boolean bool) {
            this.hasFavorite = bool;
        }

        public final void setHasLike(Boolean bool) {
            this.hasLike = bool;
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
            return "UGCVideoInteractiveInfo(likeNum=" + this.likeNum + ", favoriteNum=" + this.favoriteNum + ", shareNum=" + this.shareNum + ", hasLike=" + this.hasLike + ", hasFavorite=" + this.hasFavorite + ", viewNum=" + this.viewNum + ", commentNum=" + this.commentNum + ")";
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003J?\u0010#\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0006\u0010$\u001a\u00020%J\u0013\u0010&\u001a\u00020\u001b2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020%HÖ\u0001J\t\u0010*\u001a\u00020\bHÖ\u0001J\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020%R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R \u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u00060"}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoList;", "Landroid/os/Parcelable;", "items", "", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", "pager", "Lcom/transsion/shorttv_pugc/bean/Pager;", "ops", "", "corner", "<init>", "(Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Pager;Ljava/lang/String;Ljava/lang/String;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/shorttv_pugc/bean/Pager;", "setPager", "(Lcom/transsion/shorttv_pugc/bean/Pager;)V", "getOps", "()Ljava/lang/String;", "setOps", "(Ljava/lang/String;)V", "getCorner", "setCorner", "isLoadDown", "", "()Z", "setLoadDown", "(Z)V", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class UGCVideoList implements Parcelable {
        public static final Parcelable.Creator<UGCVideoList> CREATOR = new a();

        @SerializedName("corner")
        private String corner;
        private boolean isLoadDown;

        @SerializedName("items")
        private List<UGCVideo> items;

        @SerializedName("ops")
        private String ops;

        @SerializedName("pager")
        private Pager pager;

        public static final class a implements Parcelable.Creator {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final UGCVideoList createFromParcel(Parcel parcel) {
                ArrayList arrayList;
                Intrinsics.h(parcel, "parcel");
                if (parcel.readInt() == 0) {
                    arrayList = null;
                } else {
                    int i11 = parcel.readInt();
                    ArrayList arrayList2 = new ArrayList(i11);
                    for (int i12 = 0; i12 != i11; i12++) {
                        arrayList2.add(UGCVideo.CREATOR.createFromParcel(parcel));
                    }
                    arrayList = arrayList2;
                }
                return new UGCVideoList(arrayList, (Pager) parcel.readSerializable(), parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final UGCVideoList[] newArray(int i11) {
                return new UGCVideoList[i11];
            }
        }

        public UGCVideoList(List<UGCVideo> list, Pager pager, String str, String str2) {
            this.items = list;
            this.pager = pager;
            this.ops = str;
            this.corner = str2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ UGCVideoList copy$default(UGCVideoList uGCVideoList, List list, Pager pager, String str, String str2, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                list = uGCVideoList.items;
            }
            if ((i11 & 2) != 0) {
                pager = uGCVideoList.pager;
            }
            if ((i11 & 4) != 0) {
                str = uGCVideoList.ops;
            }
            if ((i11 & 8) != 0) {
                str2 = uGCVideoList.corner;
            }
            return uGCVideoList.copy(list, pager, str, str2);
        }

        public final List<UGCVideo> component1() {
            return this.items;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Pager getPager() {
            return this.pager;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getOps() {
            return this.ops;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getCorner() {
            return this.corner;
        }

        public final UGCVideoList copy(List<UGCVideo> items, Pager pager, String ops, String corner) {
            return new UGCVideoList(items, pager, ops, corner);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UGCVideoList)) {
                return false;
            }
            UGCVideoList uGCVideoList = (UGCVideoList) other;
            return Intrinsics.c(this.items, uGCVideoList.items) && Intrinsics.c(this.pager, uGCVideoList.pager) && Intrinsics.c(this.ops, uGCVideoList.ops) && Intrinsics.c(this.corner, uGCVideoList.corner);
        }

        public final String getCorner() {
            return this.corner;
        }

        public final List<UGCVideo> getItems() {
            return this.items;
        }

        public final String getOps() {
            return this.ops;
        }

        public final Pager getPager() {
            return this.pager;
        }

        public int hashCode() {
            List<UGCVideo> list = this.items;
            int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
            Pager pager = this.pager;
            int iHashCode2 = (iHashCode + (pager == null ? 0 : pager.hashCode())) * 31;
            String str = this.ops;
            int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.corner;
            return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
        }

        /* JADX INFO: renamed from: isLoadDown, reason: from getter */
        public final boolean getIsLoadDown() {
            return this.isLoadDown;
        }

        public final void setCorner(String str) {
            this.corner = str;
        }

        public final void setItems(List<UGCVideo> list) {
            this.items = list;
        }

        public final void setLoadDown(boolean z10) {
            this.isLoadDown = z10;
        }

        public final void setOps(String str) {
            this.ops = str;
        }

        public final void setPager(Pager pager) {
            this.pager = pager;
        }

        public String toString() {
            return "UGCVideoList(items=" + this.items + ", pager=" + this.pager + ", ops=" + this.ops + ", corner=" + this.corner + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel dest, int flags) {
            Intrinsics.h(dest, "dest");
            List<UGCVideo> list = this.items;
            if (list == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                dest.writeInt(list.size());
                Iterator<UGCVideo> it = list.iterator();
                while (it.hasNext()) {
                    it.next().writeToParcel(dest, flags);
                }
            }
            dest.writeSerializable(this.pager);
            dest.writeString(this.ops);
            dest.writeString(this.corner);
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0017JV\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020\bHÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\t\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019¨\u0006+"}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;", "Ljava/io/Serializable;", "ugcVideoId", "", "videoId", NativeComponentConstants.KEY_COMPONENT_TYPE, "subjectId", "se", "", "ep", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getUgcVideoId", "()Ljava/lang/String;", "setUgcVideoId", "(Ljava/lang/String;)V", "getVideoId", "setVideoId", "getType", "setType", "getSubjectId", "setSubjectId", "getSe", "()Ljava/lang/Integer;", "setSe", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getEp", "setEp", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class UGCVideoResourceInfo implements Serializable {
        private Integer ep;
        private Integer se;
        private String subjectId;
        private String type;
        private String ugcVideoId;
        private String videoId;

        public UGCVideoResourceInfo() {
            this(null, null, null, null, null, null, 63, null);
        }

        public UGCVideoResourceInfo(String str, String str2, String str3, String str4, Integer num, Integer num2) {
            this.ugcVideoId = str;
            this.videoId = str2;
            this.type = str3;
            this.subjectId = str4;
            this.se = num;
            this.ep = num2;
        }

        public /* synthetic */ UGCVideoResourceInfo(String str, String str2, String str3, String str4, Integer num, Integer num2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) == 0 ? str4 : null, (i11 & 16) != 0 ? 0 : num, (i11 & 32) != 0 ? 0 : num2);
        }

        public static /* synthetic */ UGCVideoResourceInfo copy$default(UGCVideoResourceInfo uGCVideoResourceInfo, String str, String str2, String str3, String str4, Integer num, Integer num2, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = uGCVideoResourceInfo.ugcVideoId;
            }
            if ((i11 & 2) != 0) {
                str2 = uGCVideoResourceInfo.videoId;
            }
            String str5 = str2;
            if ((i11 & 4) != 0) {
                str3 = uGCVideoResourceInfo.type;
            }
            String str6 = str3;
            if ((i11 & 8) != 0) {
                str4 = uGCVideoResourceInfo.subjectId;
            }
            String str7 = str4;
            if ((i11 & 16) != 0) {
                num = uGCVideoResourceInfo.se;
            }
            Integer num3 = num;
            if ((i11 & 32) != 0) {
                num2 = uGCVideoResourceInfo.ep;
            }
            return uGCVideoResourceInfo.copy(str, str5, str6, str7, num3, num2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUgcVideoId() {
            return this.ugcVideoId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getVideoId() {
            return this.videoId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getSubjectId() {
            return this.subjectId;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final Integer getSe() {
            return this.se;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final Integer getEp() {
            return this.ep;
        }

        public final UGCVideoResourceInfo copy(String ugcVideoId, String videoId, String type, String subjectId, Integer se2, Integer ep2) {
            return new UGCVideoResourceInfo(ugcVideoId, videoId, type, subjectId, se2, ep2);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UGCVideoResourceInfo)) {
                return false;
            }
            UGCVideoResourceInfo uGCVideoResourceInfo = (UGCVideoResourceInfo) other;
            return Intrinsics.c(this.ugcVideoId, uGCVideoResourceInfo.ugcVideoId) && Intrinsics.c(this.videoId, uGCVideoResourceInfo.videoId) && Intrinsics.c(this.type, uGCVideoResourceInfo.type) && Intrinsics.c(this.subjectId, uGCVideoResourceInfo.subjectId) && Intrinsics.c(this.se, uGCVideoResourceInfo.se) && Intrinsics.c(this.ep, uGCVideoResourceInfo.ep);
        }

        public final Integer getEp() {
            return this.ep;
        }

        public final Integer getSe() {
            return this.se;
        }

        public final String getSubjectId() {
            return this.subjectId;
        }

        public final String getType() {
            return this.type;
        }

        public final String getUgcVideoId() {
            return this.ugcVideoId;
        }

        public final String getVideoId() {
            return this.videoId;
        }

        public int hashCode() {
            String str = this.ugcVideoId;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.videoId;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.type;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.subjectId;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Integer num = this.se;
            int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
            Integer num2 = this.ep;
            return iHashCode5 + (num2 != null ? num2.hashCode() : 0);
        }

        public final void setEp(Integer num) {
            this.ep = num;
        }

        public final void setSe(Integer num) {
            this.se = num;
        }

        public final void setSubjectId(String str) {
            this.subjectId = str;
        }

        public final void setType(String str) {
            this.type = str;
        }

        public final void setUgcVideoId(String str) {
            this.ugcVideoId = str;
        }

        public final void setVideoId(String str) {
            this.videoId = str;
        }

        public String toString() {
            return "UGCVideoResourceInfo(ugcVideoId=" + this.ugcVideoId + ", videoId=" + this.videoId + ", type=" + this.type + ", subjectId=" + this.subjectId + ", se=" + this.se + ", ep=" + this.ep + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoType;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "MOVIE", HotRankItem.CATE_TV, "EDUCATION", BottomTabType.TAB_CODE_MUSIC, "SHORT_TV", "SPORT", "ROOM", BottomTabType.TAB_CODE_NOVEL, "LIVE", "KIDS", "BREAKDOWN", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum UGCVideoType {
        MOVIE("movie"),
        TV("tv"),
        EDUCATION("education"),
        MUSIC("music"),
        SHORT_TV("short_tv"),
        SPORT("sport"),
        ROOM(PlaceTypes.ROOM),
        NOVEL("novel"),
        LIVE("live"),
        KIDS("kids"),
        BREAKDOWN("Breakdown");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
        private final String value;

        UGCVideoType(String str) {
            this.value = str;
        }

        public static EnumEntries<UGCVideoType> getEntries() {
            return $ENTRIES;
        }

        public final String getValue() {
            return this.value;
        }
    }

    private ShorttvModel() {
    }

    public final int a() {
        return R$mipmap.short_tv_ic_short_tv;
    }
}
