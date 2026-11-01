package com.transsion.upload.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0006J\u001a\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u000bJ\t\u0010\f\u001a\u00020\rHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\rHÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\rHÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\b\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0019"}, d2 = {"Lcom/transsion/upload/bean/LoggerSwitchBean;", "Landroid/os/Parcelable;", "retrieve", "", "(Ljava/lang/Boolean;)V", "getRetrieve", "()Ljava/lang/Boolean;", "setRetrieve", "Ljava/lang/Boolean;", "component1", "copy", "(Ljava/lang/Boolean;)Lcom/transsion/upload/bean/LoggerSwitchBean;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Upload_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LoggerSwitchBean implements Parcelable {
    public static final Parcelable.Creator<LoggerSwitchBean> CREATOR = new a();
    private Boolean retrieve;

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoggerSwitchBean createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new LoggerSwitchBean(boolValueOf);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LoggerSwitchBean[] newArray(int i11) {
            return new LoggerSwitchBean[i11];
        }
    }

    public LoggerSwitchBean(Boolean bool) {
        this.retrieve = bool;
    }

    public static /* synthetic */ LoggerSwitchBean copy$default(LoggerSwitchBean loggerSwitchBean, Boolean bool, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = loggerSwitchBean.retrieve;
        }
        return loggerSwitchBean.copy(bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getRetrieve() {
        return this.retrieve;
    }

    public final LoggerSwitchBean copy(Boolean retrieve) {
        return new LoggerSwitchBean(retrieve);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof LoggerSwitchBean) && Intrinsics.c(this.retrieve, ((LoggerSwitchBean) other).retrieve);
    }

    public final Boolean getRetrieve() {
        return this.retrieve;
    }

    public int hashCode() {
        Boolean bool = this.retrieve;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    public final void setRetrieve(Boolean bool) {
        this.retrieve = bool;
    }

    public String toString() {
        return "LoggerSwitchBean(retrieve=" + this.retrieve + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.os.Parcel, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v4, types: [int] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        ?? BooleanValue;
        Intrinsics.h(parcel, "out");
        Boolean bool = this.retrieve;
        if (bool == null) {
            BooleanValue = 0;
        } else {
            parcel.writeInt(1);
            BooleanValue = bool.booleanValue();
        }
        parcel.writeInt(BooleanValue);
    }
}
