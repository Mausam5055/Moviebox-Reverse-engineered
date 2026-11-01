package com.transsion.fission.activity.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.bean.HomePopupInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0006\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0014HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0014R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006!"}, d2 = {"Lcom/transsion/fission/activity/bean/PalmPayTaskResult;", "Landroid/os/Parcelable;", "taskInfo", "Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;", "popup", "Lcom/transsion/bean/HomePopupInfo;", "<init>", "(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;Lcom/transsion/bean/HomePopupInfo;)V", "getTaskInfo", "()Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;", "setTaskInfo", "(Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;)V", "getPopup", "()Lcom/transsion/bean/HomePopupInfo;", "setPopup", "(Lcom/transsion/bean/HomePopupInfo;)V", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Fission_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PalmPayTaskResult implements Parcelable {
    public static final Parcelable.Creator<PalmPayTaskResult> CREATOR = new a();
    private HomePopupInfo popup;
    private PalmPayTaskInfo taskInfo;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PalmPayTaskResult createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PalmPayTaskResult(parcel.readInt() == 0 ? null : PalmPayTaskInfo.CREATOR.createFromParcel(parcel), (HomePopupInfo) parcel.readParcelable(PalmPayTaskResult.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PalmPayTaskResult[] newArray(int i11) {
            return new PalmPayTaskResult[i11];
        }
    }

    public PalmPayTaskResult(PalmPayTaskInfo palmPayTaskInfo, HomePopupInfo homePopupInfo) {
        this.taskInfo = palmPayTaskInfo;
        this.popup = homePopupInfo;
    }

    public static /* synthetic */ PalmPayTaskResult copy$default(PalmPayTaskResult palmPayTaskResult, PalmPayTaskInfo palmPayTaskInfo, HomePopupInfo homePopupInfo, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            palmPayTaskInfo = palmPayTaskResult.taskInfo;
        }
        if ((i11 & 2) != 0) {
            homePopupInfo = palmPayTaskResult.popup;
        }
        return palmPayTaskResult.copy(palmPayTaskInfo, homePopupInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PalmPayTaskInfo getTaskInfo() {
        return this.taskInfo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final HomePopupInfo getPopup() {
        return this.popup;
    }

    public final PalmPayTaskResult copy(PalmPayTaskInfo taskInfo, HomePopupInfo popup) {
        return new PalmPayTaskResult(taskInfo, popup);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PalmPayTaskResult)) {
            return false;
        }
        PalmPayTaskResult palmPayTaskResult = (PalmPayTaskResult) other;
        return Intrinsics.c(this.taskInfo, palmPayTaskResult.taskInfo) && Intrinsics.c(this.popup, palmPayTaskResult.popup);
    }

    public final HomePopupInfo getPopup() {
        return this.popup;
    }

    public final PalmPayTaskInfo getTaskInfo() {
        return this.taskInfo;
    }

    public int hashCode() {
        PalmPayTaskInfo palmPayTaskInfo = this.taskInfo;
        int iHashCode = (palmPayTaskInfo == null ? 0 : palmPayTaskInfo.hashCode()) * 31;
        HomePopupInfo homePopupInfo = this.popup;
        return iHashCode + (homePopupInfo != null ? homePopupInfo.hashCode() : 0);
    }

    public final void setPopup(HomePopupInfo homePopupInfo) {
        this.popup = homePopupInfo;
    }

    public final void setTaskInfo(PalmPayTaskInfo palmPayTaskInfo) {
        this.taskInfo = palmPayTaskInfo;
    }

    public String toString() {
        return "PalmPayTaskResult(taskInfo=" + this.taskInfo + ", popup=" + this.popup + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        PalmPayTaskInfo palmPayTaskInfo = this.taskInfo;
        if (palmPayTaskInfo == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            palmPayTaskInfo.writeToParcel(dest, flags);
        }
        dest.writeParcelable(this.popup, flags);
    }
}
