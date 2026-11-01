package com.transsion.room.sub.bean.subscription;

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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\u000b\u001a\u00020\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\fHÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0018"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/DisplayMeta;", "Landroid/os/Parcelable;", "layoutType", "", "<init>", "(Ljava/lang/String;)V", "getLayoutType", "()Ljava/lang/String;", "setLayoutType", "component1", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DisplayMeta implements Parcelable {
    public static final Parcelable.Creator<DisplayMeta> CREATOR = new a();
    private String layoutType;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DisplayMeta createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new DisplayMeta(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final DisplayMeta[] newArray(int i11) {
            return new DisplayMeta[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DisplayMeta() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public DisplayMeta(String layoutType) {
        Intrinsics.h(layoutType, "layoutType");
        this.layoutType = layoutType;
    }

    public /* synthetic */ DisplayMeta(String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str);
    }

    public static /* synthetic */ DisplayMeta copy$default(DisplayMeta displayMeta, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = displayMeta.layoutType;
        }
        return displayMeta.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLayoutType() {
        return this.layoutType;
    }

    public final DisplayMeta copy(String layoutType) {
        Intrinsics.h(layoutType, "layoutType");
        return new DisplayMeta(layoutType);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof DisplayMeta) && Intrinsics.c(this.layoutType, ((DisplayMeta) other).layoutType);
    }

    public final String getLayoutType() {
        return this.layoutType;
    }

    public int hashCode() {
        return this.layoutType.hashCode();
    }

    public final void setLayoutType(String str) {
        Intrinsics.h(str, "<set-?>");
        this.layoutType = str;
    }

    public String toString() {
        return "DisplayMeta(layoutType=" + this.layoutType + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.layoutType);
    }
}
