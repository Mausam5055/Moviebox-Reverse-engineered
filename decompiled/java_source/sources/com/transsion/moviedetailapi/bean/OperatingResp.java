package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\u0018\u001a\u00020\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0019R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\r¨\u0006%"}, d2 = {"Lcom/transsion/moviedetailapi/bean/OperatingResp;", "Landroid/os/Parcelable;", "version", "", "playList", "", "Lcom/transsion/moviedetailapi/bean/PlayListItemBean;", "sourceFrom", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getVersion", "()Ljava/lang/String;", "setVersion", "(Ljava/lang/String;)V", "getPlayList", "()Ljava/util/List;", "setPlayList", "(Ljava/util/List;)V", "getSourceFrom", "setSourceFrom", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OperatingResp implements Parcelable {
    public static final Parcelable.Creator<OperatingResp> CREATOR = new a();
    private List<PlayListItemBean> playList;
    private transient String sourceFrom;
    private String version;

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final OperatingResp createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(PlayListItemBean.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new OperatingResp(string, arrayList, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final OperatingResp[] newArray(int i11) {
            return new OperatingResp[i11];
        }
    }

    public OperatingResp() {
        this(null, null, null, 7, null);
    }

    public OperatingResp(String str, List<PlayListItemBean> list, String sourceFrom) {
        Intrinsics.h(sourceFrom, "sourceFrom");
        this.version = str;
        this.playList = list;
        this.sourceFrom = sourceFrom;
    }

    public /* synthetic */ OperatingResp(String str, List list, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? "" : str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OperatingResp copy$default(OperatingResp operatingResp, String str, List list, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = operatingResp.version;
        }
        if ((i11 & 2) != 0) {
            list = operatingResp.playList;
        }
        if ((i11 & 4) != 0) {
            str2 = operatingResp.sourceFrom;
        }
        return operatingResp.copy(str, list, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    public final List<PlayListItemBean> component2() {
        return this.playList;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSourceFrom() {
        return this.sourceFrom;
    }

    public final OperatingResp copy(String version, List<PlayListItemBean> playList, String sourceFrom) {
        Intrinsics.h(sourceFrom, "sourceFrom");
        return new OperatingResp(version, playList, sourceFrom);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OperatingResp)) {
            return false;
        }
        OperatingResp operatingResp = (OperatingResp) other;
        return Intrinsics.c(this.version, operatingResp.version) && Intrinsics.c(this.playList, operatingResp.playList) && Intrinsics.c(this.sourceFrom, operatingResp.sourceFrom);
    }

    public final List<PlayListItemBean> getPlayList() {
        return this.playList;
    }

    public final String getSourceFrom() {
        return this.sourceFrom;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.version;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<PlayListItemBean> list = this.playList;
        return ((iHashCode + (list != null ? list.hashCode() : 0)) * 31) + this.sourceFrom.hashCode();
    }

    public final void setPlayList(List<PlayListItemBean> list) {
        this.playList = list;
    }

    public final void setSourceFrom(String str) {
        Intrinsics.h(str, "<set-?>");
        this.sourceFrom = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "OperatingResp(version=" + this.version + ", playList=" + this.playList + ", sourceFrom=" + this.sourceFrom + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.version);
        List<PlayListItemBean> list = this.playList;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<PlayListItemBean> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeString(this.sourceFrom);
    }
}
