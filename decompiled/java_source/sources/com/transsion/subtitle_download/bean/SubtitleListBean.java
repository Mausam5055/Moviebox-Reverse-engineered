package com.transsion.subtitle_download.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J'\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0001J\u0006\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0016HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0004HÖ\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR&\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\""}, d2 = {"Lcom/transsion/subtitle_download/bean/SubtitleListBean;", "Landroid/os/Parcelable;", "Ljava/io/Serializable;", "subjectId", "", "extSubtitle", "", "Lcom/transsion/subtitle_download/bean/SubtitleItem;", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "getSubjectId", "()Ljava/lang/String;", "setSubjectId", "(Ljava/lang/String;)V", "getExtSubtitle", "()Ljava/util/List;", "setExtSubtitle", "(Ljava/util/List;)V", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "SubtitleDownload_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubtitleListBean implements Parcelable, Serializable {
    public static final Parcelable.Creator<SubtitleListBean> CREATOR = new a();

    @SerializedName("extCaptions")
    private List<SubtitleItem> extSubtitle;

    @SerializedName("subjectId")
    private String subjectId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SubtitleListBean createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(SubtitleItem.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new SubtitleListBean(string, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SubtitleListBean[] newArray(int i11) {
            return new SubtitleListBean[i11];
        }
    }

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

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
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

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.subjectId);
        List<SubtitleItem> list = this.extSubtitle;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<SubtitleItem> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
