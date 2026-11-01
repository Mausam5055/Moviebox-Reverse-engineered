package com.transsion.ad.db.scene;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J1\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0006\u0010\u001e\u001a\u00020\bJ\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\bHÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001J\u0016\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\bR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006*"}, d2 = {"Lcom/transsion/ad/db/scene/AdSceneLimit;", "Landroid/os/Parcelable;", "sceneId", "", "lastDisplayAdDate", "lastDisplayAdTimestamp", "", "displayTimes", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;JI)V", "getSceneId", "()Ljava/lang/String;", "setSceneId", "(Ljava/lang/String;)V", "getLastDisplayAdDate", "setLastDisplayAdDate", "getLastDisplayAdTimestamp", "()J", "setLastDisplayAdTimestamp", "(J)V", "getDisplayTimes", "()I", "setDisplayTimes", "(I)V", "component1", "component2", "component3", "component4", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AdSceneLimit implements Parcelable {
    public static final Parcelable.Creator<AdSceneLimit> CREATOR = new a();
    private int displayTimes;
    private String lastDisplayAdDate;
    private long lastDisplayAdTimestamp;
    private String sceneId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AdSceneLimit createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AdSceneLimit(parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AdSceneLimit[] newArray(int i11) {
            return new AdSceneLimit[i11];
        }
    }

    public AdSceneLimit(String sceneId, String lastDisplayAdDate, long j11, int i11) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(lastDisplayAdDate, "lastDisplayAdDate");
        this.sceneId = sceneId;
        this.lastDisplayAdDate = lastDisplayAdDate;
        this.lastDisplayAdTimestamp = j11;
        this.displayTimes = i11;
    }

    public /* synthetic */ AdSceneLimit(String str, String str2, long j11, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i12 & 4) != 0 ? 0L : j11, (i12 & 8) != 0 ? 0 : i11);
    }

    public static /* synthetic */ AdSceneLimit copy$default(AdSceneLimit adSceneLimit, String str, String str2, long j11, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = adSceneLimit.sceneId;
        }
        if ((i12 & 2) != 0) {
            str2 = adSceneLimit.lastDisplayAdDate;
        }
        String str3 = str2;
        if ((i12 & 4) != 0) {
            j11 = adSceneLimit.lastDisplayAdTimestamp;
        }
        long j12 = j11;
        if ((i12 & 8) != 0) {
            i11 = adSceneLimit.displayTimes;
        }
        return adSceneLimit.copy(str, str3, j12, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSceneId() {
        return this.sceneId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLastDisplayAdDate() {
        return this.lastDisplayAdDate;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getLastDisplayAdTimestamp() {
        return this.lastDisplayAdTimestamp;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getDisplayTimes() {
        return this.displayTimes;
    }

    public final AdSceneLimit copy(String sceneId, String lastDisplayAdDate, long lastDisplayAdTimestamp, int displayTimes) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(lastDisplayAdDate, "lastDisplayAdDate");
        return new AdSceneLimit(sceneId, lastDisplayAdDate, lastDisplayAdTimestamp, displayTimes);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdSceneLimit)) {
            return false;
        }
        AdSceneLimit adSceneLimit = (AdSceneLimit) other;
        return Intrinsics.c(this.sceneId, adSceneLimit.sceneId) && Intrinsics.c(this.lastDisplayAdDate, adSceneLimit.lastDisplayAdDate) && this.lastDisplayAdTimestamp == adSceneLimit.lastDisplayAdTimestamp && this.displayTimes == adSceneLimit.displayTimes;
    }

    public final int getDisplayTimes() {
        return this.displayTimes;
    }

    public final String getLastDisplayAdDate() {
        return this.lastDisplayAdDate;
    }

    public final long getLastDisplayAdTimestamp() {
        return this.lastDisplayAdTimestamp;
    }

    public final String getSceneId() {
        return this.sceneId;
    }

    public int hashCode() {
        return (((((this.sceneId.hashCode() * 31) + this.lastDisplayAdDate.hashCode()) * 31) + s.a(this.lastDisplayAdTimestamp)) * 31) + this.displayTimes;
    }

    public final void setDisplayTimes(int i11) {
        this.displayTimes = i11;
    }

    public final void setLastDisplayAdDate(String str) {
        Intrinsics.h(str, "<set-?>");
        this.lastDisplayAdDate = str;
    }

    public final void setLastDisplayAdTimestamp(long j11) {
        this.lastDisplayAdTimestamp = j11;
    }

    public final void setSceneId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.sceneId = str;
    }

    public String toString() {
        return "AdSceneLimit(sceneId=" + this.sceneId + ", lastDisplayAdDate=" + this.lastDisplayAdDate + ", lastDisplayAdTimestamp=" + this.lastDisplayAdTimestamp + ", displayTimes=" + this.displayTimes + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.sceneId);
        dest.writeString(this.lastDisplayAdDate);
        dest.writeLong(this.lastDisplayAdTimestamp);
        dest.writeInt(this.displayTimes);
    }
}
