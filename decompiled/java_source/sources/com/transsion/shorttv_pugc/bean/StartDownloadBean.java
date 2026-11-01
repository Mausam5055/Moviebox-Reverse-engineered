package com.transsion.shorttv_pugc.bean;

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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0010J2\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u0006J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0006R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006%"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/StartDownloadBean;", "Landroid/os/Parcelable;", "subjectId", "", "resourceId", "episode", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getSubjectId", "()Ljava/lang/String;", "setSubjectId", "(Ljava/lang/String;)V", "getResourceId", "setResourceId", "getEpisode", "()Ljava/lang/Integer;", "setEpisode", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/shorttv_pugc/bean/StartDownloadBean;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class StartDownloadBean implements Parcelable {
    public static final Parcelable.Creator<StartDownloadBean> CREATOR = new a();
    private Integer episode;
    private String resourceId;
    private String subjectId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartDownloadBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new StartDownloadBean(parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final StartDownloadBean[] newArray(int i11) {
            return new StartDownloadBean[i11];
        }
    }

    public StartDownloadBean(String str, String str2, Integer num) {
        this.subjectId = str;
        this.resourceId = str2;
        this.episode = num;
    }

    public /* synthetic */ StartDownloadBean(String str, String str2, Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i11 & 4) != 0 ? 0 : num);
    }

    public static /* synthetic */ StartDownloadBean copy$default(StartDownloadBean startDownloadBean, String str, String str2, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = startDownloadBean.subjectId;
        }
        if ((i11 & 2) != 0) {
            str2 = startDownloadBean.resourceId;
        }
        if ((i11 & 4) != 0) {
            num = startDownloadBean.episode;
        }
        return startDownloadBean.copy(str, str2, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getResourceId() {
        return this.resourceId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getEpisode() {
        return this.episode;
    }

    public final StartDownloadBean copy(String subjectId, String resourceId, Integer episode) {
        return new StartDownloadBean(subjectId, resourceId, episode);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StartDownloadBean)) {
            return false;
        }
        StartDownloadBean startDownloadBean = (StartDownloadBean) other;
        return Intrinsics.c(this.subjectId, startDownloadBean.subjectId) && Intrinsics.c(this.resourceId, startDownloadBean.resourceId) && Intrinsics.c(this.episode, startDownloadBean.episode);
    }

    public final Integer getEpisode() {
        return this.episode;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public int hashCode() {
        String str = this.subjectId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.resourceId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.episode;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
    }

    public final void setEpisode(Integer num) {
        this.episode = num;
    }

    public final void setResourceId(String str) {
        this.resourceId = str;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public String toString() {
        return "StartDownloadBean(subjectId=" + this.subjectId + ", resourceId=" + this.resourceId + ", episode=" + this.episode + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        Intrinsics.h(dest, "dest");
        dest.writeString(this.subjectId);
        dest.writeString(this.resourceId);
        Integer num = this.episode;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
    }
}
