package com.transsnet.downloader.manager;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0015HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0015R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006!"}, d2 = {"Lcom/transsnet/downloader/manager/UGCStartDownloadBean;", "Landroid/os/Parcelable;", "ugcVideoId", "", "id", "idType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getUgcVideoId", "()Ljava/lang/String;", "setUgcVideoId", "(Ljava/lang/String;)V", "getId", "setId", "getIdType", "setIdType", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCStartDownloadBean implements Parcelable {
    public static final Parcelable.Creator<UGCStartDownloadBean> CREATOR = new a();
    private String id;
    private String idType;
    private String ugcVideoId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UGCStartDownloadBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new UGCStartDownloadBean(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UGCStartDownloadBean[] newArray(int i11) {
            return new UGCStartDownloadBean[i11];
        }
    }

    public UGCStartDownloadBean(String str, String str2, String str3) {
        this.ugcVideoId = str;
        this.id = str2;
        this.idType = str3;
    }

    public static /* synthetic */ UGCStartDownloadBean copy$default(UGCStartDownloadBean uGCStartDownloadBean, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uGCStartDownloadBean.ugcVideoId;
        }
        if ((i11 & 2) != 0) {
            str2 = uGCStartDownloadBean.id;
        }
        if ((i11 & 4) != 0) {
            str3 = uGCStartDownloadBean.idType;
        }
        return uGCStartDownloadBean.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getIdType() {
        return this.idType;
    }

    public final UGCStartDownloadBean copy(String ugcVideoId, String id2, String idType) {
        return new UGCStartDownloadBean(ugcVideoId, id2, idType);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCStartDownloadBean)) {
            return false;
        }
        UGCStartDownloadBean uGCStartDownloadBean = (UGCStartDownloadBean) other;
        return Intrinsics.c(this.ugcVideoId, uGCStartDownloadBean.ugcVideoId) && Intrinsics.c(this.id, uGCStartDownloadBean.id) && Intrinsics.c(this.idType, uGCStartDownloadBean.idType);
    }

    public final String getId() {
        return this.id;
    }

    public final String getIdType() {
        return this.idType;
    }

    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public int hashCode() {
        String str = this.ugcVideoId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.id;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.idType;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setIdType(String str) {
        this.idType = str;
    }

    public final void setUgcVideoId(String str) {
        this.ugcVideoId = str;
    }

    public String toString() {
        return "UGCStartDownloadBean(ugcVideoId=" + this.ugcVideoId + ", id=" + this.id + ", idType=" + this.idType + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.ugcVideoId);
        dest.writeString(this.id);
        dest.writeString(this.idType);
    }
}
