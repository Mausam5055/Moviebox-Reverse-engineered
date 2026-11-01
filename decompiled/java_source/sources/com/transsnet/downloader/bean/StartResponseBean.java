package com.transsnet.downloader.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\fJ\u0006\u0010\r\u001a\u00020\u0003J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u001a"}, d2 = {"Lcom/transsnet/downloader/bean/StartResponseBean;", "Landroid/os/Parcelable;", "nextDlType", "", "<init>", "(Ljava/lang/Integer;)V", "getNextDlType", "()Ljava/lang/Integer;", "setNextDlType", "Ljava/lang/Integer;", "component1", "copy", "(Ljava/lang/Integer;)Lcom/transsnet/downloader/bean/StartResponseBean;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class StartResponseBean implements Parcelable {
    public static final Parcelable.Creator<StartResponseBean> CREATOR = new a();
    private Integer nextDlType;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StartResponseBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new StartResponseBean(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final StartResponseBean[] newArray(int i11) {
            return new StartResponseBean[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StartResponseBean() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public StartResponseBean(Integer num) {
        this.nextDlType = num;
    }

    public /* synthetic */ StartResponseBean(Integer num, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : num);
    }

    public static /* synthetic */ StartResponseBean copy$default(StartResponseBean startResponseBean, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = startResponseBean.nextDlType;
        }
        return startResponseBean.copy(num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getNextDlType() {
        return this.nextDlType;
    }

    public final StartResponseBean copy(Integer nextDlType) {
        return new StartResponseBean(nextDlType);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof StartResponseBean) && Intrinsics.c(this.nextDlType, ((StartResponseBean) other).nextDlType);
    }

    public final Integer getNextDlType() {
        return this.nextDlType;
    }

    public int hashCode() {
        Integer num = this.nextDlType;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
    }

    public final void setNextDlType(Integer num) {
        this.nextDlType = num;
    }

    public String toString() {
        return "StartResponseBean(nextDlType=" + this.nextDlType + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        Intrinsics.h(dest, "dest");
        Integer num = this.nextDlType;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
    }
}
