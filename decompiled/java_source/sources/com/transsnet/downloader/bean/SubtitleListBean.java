package com.transsnet.downloader.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.moviedetailapi.bean.SubtitleItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR&\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/transsnet/downloader/bean/SubtitleListBean;", "Ljava/io/Serializable;", "subjectId", "", "extSubtitle", "", "Lcom/transsion/moviedetailapi/bean/SubtitleItem;", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "getSubjectId", "()Ljava/lang/String;", "setSubjectId", "(Ljava/lang/String;)V", "getExtSubtitle", "()Ljava/util/List;", "setExtSubtitle", "(Ljava/util/List;)V", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubtitleListBean implements Serializable {

    @SerializedName("extCaptions")
    private List<SubtitleItem> extSubtitle;

    @SerializedName("subjectId")
    private String subjectId;

    public SubtitleListBean(String str, List<SubtitleItem> list) {
        this.subjectId = str;
        this.extSubtitle = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SubtitleListBean copy$default(SubtitleListBean subtitleListBean, String str, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = subtitleListBean.subjectId;
        }
        if ((i11 & 2) != 0) {
            list = subtitleListBean.extSubtitle;
        }
        return subtitleListBean.copy(str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    public final List<SubtitleItem> component2() {
        return this.extSubtitle;
    }

    public final SubtitleListBean copy(String subjectId, List<SubtitleItem> extSubtitle) {
        return new SubtitleListBean(subjectId, extSubtitle);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubtitleListBean)) {
            return false;
        }
        SubtitleListBean subtitleListBean = (SubtitleListBean) other;
        return Intrinsics.c(this.subjectId, subtitleListBean.subjectId) && Intrinsics.c(this.extSubtitle, subtitleListBean.extSubtitle);
    }

    public final List<SubtitleItem> getExtSubtitle() {
        return this.extSubtitle;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public int hashCode() {
        String str = this.subjectId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<SubtitleItem> list = this.extSubtitle;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final void setExtSubtitle(List<SubtitleItem> list) {
        this.extSubtitle = list;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public String toString() {
        return "SubtitleListBean(subjectId=" + this.subjectId + ", extSubtitle=" + this.extSubtitle + ")";
    }
}
