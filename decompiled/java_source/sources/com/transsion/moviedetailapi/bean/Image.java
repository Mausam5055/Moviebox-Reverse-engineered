package com.transsion.moviedetailapi.bean;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b.\b\u0007\u0018\u00002\u00020\u0001B¥\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019R \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b!\u0010\u0017\"\u0004\b\"\u0010\u0019R \u0010\b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001e\"\u0004\b$\u0010 R \u0010\t\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001e\"\u0004\b&\u0010 R \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R \u0010\f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001e\"\u0004\b,\u0010 R \u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u001e\"\u0004\b.\u0010 R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u0010\u0010\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00100\"\u0004\b4\u00102R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u00106\"\u0004\b:\u00108R\u001a\u0010\u0013\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00106\"\u0004\b<\u00108¨\u0006="}, d2 = {"Lcom/transsion/moviedetailapi/bean/Image;", "Ljava/io/Serializable;", "height", "", "size", "url", "", "width", "format", "thumbnail", "gifBean", "Lcom/transsion/moviedetailapi/bean/GifBean;", "averageHueLight", "averageHueDark", "imageViewHeight", "", "imageViewWidth", "imageViewX", "imageViewY", "alreadyShow", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/GifBean;Ljava/lang/String;Ljava/lang/String;FFIII)V", "getHeight", "()Ljava/lang/Integer;", "setHeight", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getSize", "setSize", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "getWidth", "setWidth", "getFormat", "setFormat", "getThumbnail", "setThumbnail", "getGifBean", "()Lcom/transsion/moviedetailapi/bean/GifBean;", "setGifBean", "(Lcom/transsion/moviedetailapi/bean/GifBean;)V", "getAverageHueLight", "setAverageHueLight", "getAverageHueDark", "setAverageHueDark", "getImageViewHeight", "()F", "setImageViewHeight", "(F)V", "getImageViewWidth", "setImageViewWidth", "getImageViewX", "()I", "setImageViewX", "(I)V", "getImageViewY", "setImageViewY", "getAlreadyShow", "setAlreadyShow", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Image implements Serializable {
    private int alreadyShow;

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
    private float imageViewHeight;
    private float imageViewWidth;
    private int imageViewX;
    private int imageViewY;

    @SerializedName("size")
    private Integer size;

    @SerializedName("thumbnail")
    private String thumbnail;

    @SerializedName("url")
    private String url;

    @SerializedName("width")
    private Integer width;

    public Image() {
        this(null, null, null, null, null, null, null, null, null, 0.0f, 0.0f, 0, 0, 0, 16383, null);
    }

    public Image(Integer num, Integer num2, String str, Integer num3, String str2, String str3, GifBean gifBean, String str4, String str5, float f11, float f12, int i11, int i12, int i13) {
        this.height = num;
        this.size = num2;
        this.url = str;
        this.width = num3;
        this.format = str2;
        this.thumbnail = str3;
        this.gifBean = gifBean;
        this.averageHueLight = str4;
        this.averageHueDark = str5;
        this.imageViewHeight = f11;
        this.imageViewWidth = f12;
        this.imageViewX = i11;
        this.imageViewY = i12;
        this.alreadyShow = i13;
    }

    public /* synthetic */ Image(Integer num, Integer num2, String str, Integer num3, String str2, String str3, GifBean gifBean, String str4, String str5, float f11, float f12, int i11, int i12, int i13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? null : num, (i14 & 2) != 0 ? null : num2, (i14 & 4) != 0 ? null : str, (i14 & 8) != 0 ? null : num3, (i14 & 16) != 0 ? null : str2, (i14 & 32) != 0 ? null : str3, (i14 & 64) != 0 ? null : gifBean, (i14 & 128) != 0 ? null : str4, (i14 & 256) == 0 ? str5 : null, (i14 & 512) != 0 ? 0.0f : f11, (i14 & 1024) == 0 ? f12 : 0.0f, (i14 & 2048) != 0 ? 0 : i11, (i14 & 4096) != 0 ? 0 : i12, (i14 & 8192) == 0 ? i13 : 0);
    }

    public final int getAlreadyShow() {
        return this.alreadyShow;
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

    public final float getImageViewHeight() {
        return this.imageViewHeight;
    }

    public final float getImageViewWidth() {
        return this.imageViewWidth;
    }

    public final int getImageViewX() {
        return this.imageViewX;
    }

    public final int getImageViewY() {
        return this.imageViewY;
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

    public final void setAlreadyShow(int i11) {
        this.alreadyShow = i11;
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

    public final void setImageViewHeight(float f11) {
        this.imageViewHeight = f11;
    }

    public final void setImageViewWidth(float f11) {
        this.imageViewWidth = f11;
    }

    public final void setImageViewX(int i11) {
        this.imageViewX = i11;
    }

    public final void setImageViewY(int i11) {
        this.imageViewY = i11;
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
}
