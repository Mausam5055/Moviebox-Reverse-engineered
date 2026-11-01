package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bm\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0005HÆ\u0003J\t\u0010*\u001a\u00020\u0005HÆ\u0003J\t\u0010+\u001a\u00020\u0005HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jo\u00101\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u00102\u001a\u00020\u0005J\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u000106HÖ\u0003J\t\u00107\u001a\u00020\u0005HÖ\u0001J\t\u00108\u001a\u00020\u0003HÖ\u0001J\u0016\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0011\"\u0004\b\u001d\u0010\u0013R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0011\"\u0004\b\u001f\u0010\u0013R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0011\"\u0004\b%\u0010\u0013R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0011\"\u0004\b'\u0010\u0013¨\u0006>"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/CoverInfoFeed;", "Landroid/os/Parcelable;", "url", "", "width", "", "height", "size", "format", "thumbnail", "gif", "Lcom/transsion/room/sub/bean/subscription/GifInfoFeed;", "averageHueLight", "averageHueDark", "<init>", "(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/GifInfoFeed;Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "getWidth", "()I", "setWidth", "(I)V", "getHeight", "setHeight", "getSize", "setSize", "getFormat", "setFormat", "getThumbnail", "setThumbnail", "getGif", "()Lcom/transsion/room/sub/bean/subscription/GifInfoFeed;", "setGif", "(Lcom/transsion/room/sub/bean/subscription/GifInfoFeed;)V", "getAverageHueLight", "setAverageHueLight", "getAverageHueDark", "setAverageHueDark", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CoverInfoFeed implements Parcelable {
    public static final Parcelable.Creator<CoverInfoFeed> CREATOR = new a();
    private String averageHueDark;
    private String averageHueLight;
    private String format;
    private GifInfoFeed gif;
    private int height;
    private int size;
    private String thumbnail;
    private String url;
    private int width;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoverInfoFeed createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CoverInfoFeed(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : GifInfoFeed.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CoverInfoFeed[] newArray(int i11) {
            return new CoverInfoFeed[i11];
        }
    }

    public CoverInfoFeed() {
        this(null, 0, 0, 0, null, null, null, null, null, 511, null);
    }

    public CoverInfoFeed(String str, int i11, int i12, int i13, String str2, String str3, GifInfoFeed gifInfoFeed, String str4, String str5) {
        this.url = str;
        this.width = i11;
        this.height = i12;
        this.size = i13;
        this.format = str2;
        this.thumbnail = str3;
        this.gif = gifInfoFeed;
        this.averageHueLight = str4;
        this.averageHueDark = str5;
    }

    public /* synthetic */ CoverInfoFeed(String str, int i11, int i12, int i13, String str2, String str3, GifInfoFeed gifInfoFeed, String str4, String str5, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? null : str, (i14 & 2) != 0 ? 0 : i11, (i14 & 4) != 0 ? 0 : i12, (i14 & 8) == 0 ? i13 : 0, (i14 & 16) != 0 ? null : str2, (i14 & 32) != 0 ? null : str3, (i14 & 64) != 0 ? null : gifInfoFeed, (i14 & 128) != 0 ? null : str4, (i14 & 256) == 0 ? str5 : null);
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
    public final GifInfoFeed getGif() {
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

    public final CoverInfoFeed copy(String url, int width, int height, int size, String format, String thumbnail, GifInfoFeed gif, String averageHueLight, String averageHueDark) {
        return new CoverInfoFeed(url, width, height, size, format, thumbnail, gif, averageHueLight, averageHueDark);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CoverInfoFeed)) {
            return false;
        }
        CoverInfoFeed coverInfoFeed = (CoverInfoFeed) other;
        return Intrinsics.c(this.url, coverInfoFeed.url) && this.width == coverInfoFeed.width && this.height == coverInfoFeed.height && this.size == coverInfoFeed.size && Intrinsics.c(this.format, coverInfoFeed.format) && Intrinsics.c(this.thumbnail, coverInfoFeed.thumbnail) && Intrinsics.c(this.gif, coverInfoFeed.gif) && Intrinsics.c(this.averageHueLight, coverInfoFeed.averageHueLight) && Intrinsics.c(this.averageHueDark, coverInfoFeed.averageHueDark);
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

    public final GifInfoFeed getGif() {
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
        String str = this.url;
        int iHashCode = (((((((str == null ? 0 : str.hashCode()) * 31) + this.width) * 31) + this.height) * 31) + this.size) * 31;
        String str2 = this.format;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.thumbnail;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        GifInfoFeed gifInfoFeed = this.gif;
        int iHashCode4 = (iHashCode3 + (gifInfoFeed == null ? 0 : gifInfoFeed.hashCode())) * 31;
        String str4 = this.averageHueLight;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.averageHueDark;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setAverageHueDark(String str) {
        this.averageHueDark = str;
    }

    public final void setAverageHueLight(String str) {
        this.averageHueLight = str;
    }

    public final void setFormat(String str) {
        this.format = str;
    }

    public final void setGif(GifInfoFeed gifInfoFeed) {
        this.gif = gifInfoFeed;
    }

    public final void setHeight(int i11) {
        this.height = i11;
    }

    public final void setSize(int i11) {
        this.size = i11;
    }

    public final void setThumbnail(String str) {
        this.thumbnail = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setWidth(int i11) {
        this.width = i11;
    }

    public String toString() {
        return "CoverInfoFeed(url=" + this.url + ", width=" + this.width + ", height=" + this.height + ", size=" + this.size + ", format=" + this.format + ", thumbnail=" + this.thumbnail + ", gif=" + this.gif + ", averageHueLight=" + this.averageHueLight + ", averageHueDark=" + this.averageHueDark + ")";
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
        GifInfoFeed gifInfoFeed = this.gif;
        if (gifInfoFeed == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            gifInfoFeed.writeToParcel(dest, flags);
        }
        dest.writeString(this.averageHueLight);
        dest.writeString(this.averageHueDark);
    }
}
