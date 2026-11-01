package com.transsion.startup.pref.consume;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J$\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0012J\u0010\u0010\u0018\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0010J\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019HÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001e\u001a\u0004\b\u001f\u0010\u0012R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010 \u001a\u0004\b!\u0010\u0014¨\u0006$"}, d2 = {"Lcom/transsion/startup/pref/consume/AppStartDotState;", "Landroid/os/Parcelable;", "", "state", "", CampaignEx.JSON_KEY_TIMESTAMP, "<init>", "(Ljava/lang/String;J)V", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "()J", "copy", "(Ljava/lang/String;J)Lcom/transsion/startup/pref/consume/AppStartDotState;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getState", "J", "getTimestamp", "Companion", "a", "Startup_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AppStartDotState implements Parcelable {
    public static final String AD_END = "ad_end";
    public static final String AD_LOADING = "ad_loading";
    public static final String AD_RENDERING = "ad_rendering";
    public static final String APP_END = "app_end";
    public static final String APP_START = "app_start";
    public static final String MAIN_CREATE = "main_create";
    public static final String SPLASH_RESUME = "splash_resume";
    public static final String SPLASH_START = "splash_start";
    public static final String TRENDING_CREATE = "trending_create";
    public static final String TRENDING_END = "trending_end";
    public static final String TRENDING_RENDER = "trending_render";
    private final String state;
    private final long timestamp;
    public static final Parcelable.Creator<AppStartDotState> CREATOR = new b();

    /* JADX INFO: loaded from: classes6.dex */
    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AppStartDotState createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AppStartDotState(parcel.readString(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AppStartDotState[] newArray(int i11) {
            return new AppStartDotState[i11];
        }
    }

    public AppStartDotState(String state, long j11) {
        Intrinsics.h(state, "state");
        this.state = state;
        this.timestamp = j11;
    }

    public /* synthetic */ AppStartDotState(String str, long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? SystemClock.elapsedRealtime() : j11);
    }

    public static /* synthetic */ AppStartDotState copy$default(AppStartDotState appStartDotState, String str, long j11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = appStartDotState.state;
        }
        if ((i11 & 2) != 0) {
            j11 = appStartDotState.timestamp;
        }
        return appStartDotState.copy(str, j11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getTimestamp() {
        return this.timestamp;
    }

    public final AppStartDotState copy(String state, long timestamp) {
        Intrinsics.h(state, "state");
        return new AppStartDotState(state, timestamp);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppStartDotState)) {
            return false;
        }
        AppStartDotState appStartDotState = (AppStartDotState) other;
        return Intrinsics.c(this.state, appStartDotState.state) && this.timestamp == appStartDotState.timestamp;
    }

    public final String getState() {
        return this.state;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        return (this.state.hashCode() * 31) + s.a(this.timestamp);
    }

    public String toString() {
        return "AppStartDotState(state=" + this.state + ", timestamp=" + this.timestamp + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.state);
        dest.writeLong(this.timestamp);
    }
}
