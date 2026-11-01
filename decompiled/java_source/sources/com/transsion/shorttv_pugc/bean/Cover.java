package com.transsion.shorttv_pugc.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b)\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001Bs\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010,\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0007HÆ\u0003Jz\u00102\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u00103J\u0013\u00104\u001a\u0002052\b\u00106\u001a\u0004\u0018\u000107HÖ\u0003J\t\u00108\u001a\u00020\u0003HÖ\u0001J\t\u00109\u001a\u00020\u0007HÖ\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0017\u0010\u0011\"\u0004\b\u0018\u0010\u0013R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR \u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001a\"\u0004\b\u001e\u0010\u001cR \u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R \u0010\f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001a\"\u0004\b&\u0010\u001cR \u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u001a\"\u0004\b(\u0010\u001c¨\u0006:"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/Cover;", "Ljava/io/Serializable;", "width", "", "height", "size", "url", "", "format", "thumbnail", "gifBean", "Lcom/transsion/shorttv_pugc/bean/GifBean;", "averageHueLight", "averageHueDark", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/GifBean;Ljava/lang/String;Ljava/lang/String;)V", "getWidth", "()Ljava/lang/Integer;", "setWidth", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getHeight", "setHeight", "getSize", "setSize", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "getFormat", "setFormat", "getThumbnail", "setThumbnail", "getGifBean", "()Lcom/transsion/shorttv_pugc/bean/GifBean;", "setGifBean", "(Lcom/transsion/shorttv_pugc/bean/GifBean;)V", "getAverageHueLight", "setAverageHueLight", "getAverageHueDark", "setAverageHueDark", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/GifBean;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv_pugc/bean/Cover;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Cover implements Serializable {

    @SerializedName("averageHueDark")
    private String averageHueDark;

    @SerializedName("averageHueLight")
    private String averageHueLight;

    @SerializedName("format")
    private String format;

    @SerializedName("gif")
    private GifBean gifBean;

    @SerializedName("height")
    private Integer height;

    @SerializedName("size")
    private Integer size;

    @SerializedName(alternate = {"blurHash"}, value = "thumbnail")
    private String thumbnail;

    @SerializedName("url")
    private String url;

    @SerializedName("width")
    private Integer width;

    public Cover() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public Cover(Integer num, Integer num2, Integer num3, String str, String str2, String str3, GifBean gifBean, String str4, String str5) {
        this.width = num;
        this.height = num2;
        this.size = num3;
        this.url = str;
        this.format = str2;
        this.thumbnail = str3;
        this.gifBean = gifBean;
        this.averageHueLight = str4;
        this.averageHueDark = str5;
    }

    public /* synthetic */ Cover(Integer num, Integer num2, Integer num3, String str, String str2, String str3, GifBean gifBean, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : num, (i11 & 2) != 0 ? null : num2, (i11 & 4) != 0 ? null : num3, (i11 & 8) != 0 ? null : str, (i11 & 16) != 0 ? null : str2, (i11 & 32) != 0 ? null : str3, (i11 & 64) != 0 ? null : gifBean, (i11 & 128) != 0 ? null : str4, (i11 & 256) == 0 ? str5 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getHeight() {
        return this.height;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUrl() {
        return this.url;
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
    public final GifBean getGifBean() {
        return this.gifBean;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getAverageHueLight() {
        return this.averageHueLight;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getAverageHueDark() {
        return this.averageHueDark;
    }

    public final Cover copy(Integer width, Integer height, Integer size, String url, String format, String thumbnail, GifBean gifBean, String averageHueLight, String averageHueDark) {
        return new Cover(width, height, size, url, format, thumbnail, gifBean, averageHueLight, averageHueDark);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Cover)) {
            return false;
        }
        Cover cover = (Cover) other;
        return Intrinsics.c(this.width, cover.width) && Intrinsics.c(this.height, cover.height) && Intrinsics.c(this.size, cover.size) && Intrinsics.c(this.url, cover.url) && Intrinsics.c(this.format, cover.format) && Intrinsics.c(this.thumbnail, cover.thumbnail) && Intrinsics.c(this.gifBean, cover.gifBean) && Intrinsics.c(this.averageHueLight, cover.averageHueLight) && Intrinsics.c(this.averageHueDark, cover.averageHueDark);
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

    public final GifBean getGifBean() {
        return this.gifBean;
    }

    public final Integer getHeight() {
        return this.height;
    }

    public final Integer getSize() {
        return this.size;
    }

    public final String getThumbnail() {
        return this.thumbnail;
    }

    public final String getUrl() {
        return this.url;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        Integer num = this.width;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.height;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.size;
        int iHashCode3 = (iHashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str = this.url;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.format;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.thumbnail;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        GifBean gifBean = this.gifBean;
        int iHashCode7 = (iHashCode6 + (gifBean == null ? 0 : gifBean.hashCode())) * 31;
        String str4 = this.averageHueLight;
        int iHashCode8 = (iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.averageHueDark;
        return iHashCode8 + (str5 != null ? str5.hashCode() : 0);
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

    public final void setGifBean(GifBean gifBean) {
        this.gifBean = gifBean;
    }

    public final void setHeight(Integer num) {
        this.height = num;
    }

    public final void setSize(Integer num) {
        this.size = num;
    }

    public final void setThumbnail(String str) {
        this.thumbnail = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setWidth(Integer num) {
        this.width = num;
    }

    public String toString() {
        return "Cover(width=" + this.width + ", height=" + this.height + ", size=" + this.size + ", url=" + this.url + ", format=" + this.format + ", thumbnail=" + this.thumbnail + ", gifBean=" + this.gifBean + ", averageHueLight=" + this.averageHueLight + ", averageHueDark=" + this.averageHueDark + ")";
    }
}
