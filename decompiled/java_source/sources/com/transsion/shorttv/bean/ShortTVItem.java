package com.transsion.shorttv.bean;

import androidx.annotation.Keep;
import ao.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b6\b\u0087\b\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0012\u0010 \u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b \u0010\u001fJ\u0012\u0010!\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b!\u0010\u001fJ\u0010\u0010\"\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\"\u0010\u001aJ\u0010\u0010#\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b#\u0010\u001aJ\u0012\u0010$\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b$\u0010\u001fJ\u0012\u0010%\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b%\u0010&J\u0012\u0010'\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b'\u0010(J\u0012\u0010)\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b)\u0010\u001fJ\u0010\u0010*\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b*\u0010+J\u0010\u0010,\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b,\u0010\u001aJ\u0010\u0010-\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b-\u0010\u001aJ\u008a\u0001\u0010.\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b.\u0010/J\u0010\u00100\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b0\u0010\u001fR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u00101\u001a\u0004\b2\u0010\u001f\"\u0004\b3\u00104R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u00101\u001a\u0004\b5\u0010\u001f\"\u0004\b6\u00104R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u00107\u001a\u0004\b8\u0010\u001a\"\u0004\b9\u0010:R\"\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u00107\u001a\u0004\b;\u0010\u001a\"\u0004\b<\u0010:R$\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\b\u00101\u001a\u0004\b=\u0010\u001f\"\u0004\b>\u00104R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010?\u001a\u0004\b@\u0010&\"\u0004\bA\u0010BR$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010C\u001a\u0004\bD\u0010(\"\u0004\bE\u0010FR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u00101\u001a\u0004\bG\u0010\u001f\"\u0004\bH\u00104R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010I\u001a\u0004\bJ\u0010+\"\u0004\bK\u0010LR\"\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u00107\u001a\u0004\bM\u0010\u001a\"\u0004\bN\u0010:R\"\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0011\u00107\u001a\u0004\bO\u0010\u001a\"\u0004\bP\u0010:¨\u0006Q"}, d2 = {"Lcom/transsion/shorttv/bean/ShortTVItem;", "Ljava/io/Serializable;", "", "id", "subjectId", "", "se", "ep", "videoId", "Lcom/transsion/shorttv/bean/Media;", "video", "Lcom/transsion/shorttv/bean/Link;", "link", TrackingKey.DESCRIPTION, "", "playProgress", "downloadStatus", "needPaid", "<init>", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/transsion/shorttv/bean/Media;Lcom/transsion/shorttv/bean/Link;Ljava/lang/String;JII)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "Lao/e;", "toMediaSource", "()Lao/e;", "toStringAboutLock", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "component6", "()Lcom/transsion/shorttv/bean/Media;", "component7", "()Lcom/transsion/shorttv/bean/Link;", "component8", "component9", "()J", "component10", "component11", "copy", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/transsion/shorttv/bean/Media;Lcom/transsion/shorttv/bean/Link;Ljava/lang/String;JII)Lcom/transsion/shorttv/bean/ShortTVItem;", "toString", "Ljava/lang/String;", "getId", "setId", "(Ljava/lang/String;)V", "getSubjectId", "setSubjectId", "I", "getSe", "setSe", "(I)V", "getEp", "setEp", "getVideoId", "setVideoId", "Lcom/transsion/shorttv/bean/Media;", "getVideo", "setVideo", "(Lcom/transsion/shorttv/bean/Media;)V", "Lcom/transsion/shorttv/bean/Link;", "getLink", "setLink", "(Lcom/transsion/shorttv/bean/Link;)V", "getDescription", "setDescription", "J", "getPlayProgress", "setPlayProgress", "(J)V", "getDownloadStatus", "setDownloadStatus", "getNeedPaid", "setNeedPaid", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTVItem implements Serializable {
    private String description;
    private transient int downloadStatus;

    @SerializedName("ep")
    private int ep;

    @SerializedName("miniId")
    private String id;
    private Link link;

    @SerializedName("needPaid")
    private int needPaid;
    private transient long playProgress;

    @SerializedName("se")
    private int se;

    @SerializedName("subjectId")
    private String subjectId;

    @SerializedName("video")
    private Media video;

    @SerializedName("videoId")
    private String videoId;

    public ShortTVItem() {
        this(null, null, 0, 0, null, null, null, null, 0L, 0, 0, 2047, null);
    }

    public ShortTVItem(String str, String str2, int i11, int i12, String str3, Media media, Link link, String str4, long j11, int i13, int i14) {
        this.id = str;
        this.subjectId = str2;
        this.se = i11;
        this.ep = i12;
        this.videoId = str3;
        this.video = media;
        this.link = link;
        this.description = str4;
        this.playProgress = j11;
        this.downloadStatus = i13;
        this.needPaid = i14;
    }

    public /* synthetic */ ShortTVItem(String str, String str2, int i11, int i12, String str3, Media media, Link link, String str4, long j11, int i13, int i14, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? null : str, (i15 & 2) != 0 ? null : str2, (i15 & 4) != 0 ? 0 : i11, (i15 & 8) != 0 ? 0 : i12, (i15 & 16) != 0 ? null : str3, (i15 & 32) != 0 ? null : media, (i15 & 64) != 0 ? null : link, (i15 & 128) == 0 ? str4 : null, (i15 & 256) != 0 ? 0L : j11, (i15 & 512) != 0 ? 0 : i13, (i15 & 1024) == 0 ? i14 : 0);
    }

    public final native String component1();

    public final native int component10();

    public final native int component11();

    public final native String component2();

    public final native int component3();

    public final native int component4();

    public final native String component5();

    public final native Media component6();

    public final native Link component7();

    public final native String component8();

    public final native long component9();

    public final native ShortTVItem copy(String id2, String subjectId, int se2, int ep2, String videoId, Media video, Link link, String description, long playProgress, int downloadStatus, int needPaid);

    public native boolean equals(Object other);

    public final native String getDescription();

    public final native int getDownloadStatus();

    public final native int getEp();

    public final native String getId();

    public final native Link getLink();

    public final native int getNeedPaid();

    public final native long getPlayProgress();

    public final native int getSe();

    public final native String getSubjectId();

    public final native Media getVideo();

    public final native String getVideoId();

    public native int hashCode();

    public final native void setDescription(String str);

    public final native void setDownloadStatus(int i11);

    public final native void setEp(int i11);

    public final native void setId(String str);

    public final native void setLink(Link link);

    public final native void setNeedPaid(int i11);

    public final native void setPlayProgress(long j11);

    public final native void setSe(int i11);

    public final native void setSubjectId(String str);

    public final native void setVideo(Media media);

    public final native void setVideoId(String str);

    public final native e toMediaSource();

    public native String toString();

    public final native String toStringAboutLock();
}
