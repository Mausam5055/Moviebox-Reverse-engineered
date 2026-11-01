package com.transsion.shorttv_pugc.subtitle.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J?\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u0006HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\f\"\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0011\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0016\u0010\u000f¨\u0006#"}, d2 = {"Lcom/transsion/shorttv_pugc/subtitle/bean/ShortTvSubtitleBean;", "Ljava/io/Serializable;", "subjectId", "", "id", "ep", "", "se", "videoId", "<init>", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V", "getSubjectId", "()Ljava/lang/String;", "getId", "setId", "(Ljava/lang/String;)V", "getEp", "()I", "getSe", "setSe", "(I)V", "getVideoId", "setVideoId", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTvSubtitleBean implements Serializable {
    private final int ep;
    private String id;
    private int se;
    private final String subjectId;
    private String videoId;

    public ShortTvSubtitleBean(String subjectId, String str, int i11, int i12, String str2) {
        Intrinsics.h(subjectId, "subjectId");
        this.subjectId = subjectId;
        this.id = str;
        this.ep = i11;
        this.se = i12;
        this.videoId = str2;
    }

    public /* synthetic */ ShortTvSubtitleBean(String str, String str2, int i11, int i12, String str3, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i13 & 2) != 0 ? null : str2, i11, (i13 & 8) != 0 ? 0 : i12, (i13 & 16) != 0 ? null : str3);
    }

    public static /* synthetic */ ShortTvSubtitleBean copy$default(ShortTvSubtitleBean shortTvSubtitleBean, String str, String str2, int i11, int i12, String str3, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = shortTvSubtitleBean.subjectId;
        }
        if ((i13 & 2) != 0) {
            str2 = shortTvSubtitleBean.id;
        }
        String str4 = str2;
        if ((i13 & 4) != 0) {
            i11 = shortTvSubtitleBean.ep;
        }
        int i14 = i11;
        if ((i13 & 8) != 0) {
            i12 = shortTvSubtitleBean.se;
        }
        int i15 = i12;
        if ((i13 & 16) != 0) {
            str3 = shortTvSubtitleBean.videoId;
        }
        return shortTvSubtitleBean.copy(str, str4, i14, i15, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getEp() {
        return this.ep;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getVideoId() {
        return this.videoId;
    }

    public final ShortTvSubtitleBean copy(String subjectId, String id2, int ep2, int se2, String videoId) {
        Intrinsics.h(subjectId, "subjectId");
        return new ShortTvSubtitleBean(subjectId, id2, ep2, se2, videoId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShortTvSubtitleBean)) {
            return false;
        }
        ShortTvSubtitleBean shortTvSubtitleBean = (ShortTvSubtitleBean) other;
        return Intrinsics.c(this.subjectId, shortTvSubtitleBean.subjectId) && Intrinsics.c(this.id, shortTvSubtitleBean.id) && this.ep == shortTvSubtitleBean.ep && this.se == shortTvSubtitleBean.se && Intrinsics.c(this.videoId, shortTvSubtitleBean.videoId);
    }

    public final int getEp() {
        return this.ep;
    }

    public final String getId() {
        return this.id;
    }

    public final int getSe() {
        return this.se;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public int hashCode() {
        int iHashCode = this.subjectId.hashCode() * 31;
        String str = this.id;
        int iHashCode2 = (((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.ep) * 31) + this.se) * 31;
        String str2 = this.videoId;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setSe(int i11) {
        this.se = i11;
    }

    public final void setVideoId(String str) {
        this.videoId = str;
    }

    public String toString() {
        return "ShortTvSubtitleBean(subjectId=" + this.subjectId + ", id=" + this.id + ", ep=" + this.ep + ", se=" + this.se + ", videoId=" + this.videoId + ")";
    }
}
