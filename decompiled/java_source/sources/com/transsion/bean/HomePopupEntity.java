package com.transsion.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J1\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0006\u0010\u001e\u001a\u00020\u0006J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u0006HÖ\u0001J\t\u0010$\u001a\u00020%HÖ\u0001J\u0016\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006+"}, d2 = {"Lcom/transsion/bean/HomePopupEntity;", "Landroid/os/Parcelable;", "popup", "Lcom/transsion/bean/HomePopupInfo;", "widget", "requestInterval", "", "ts", "", "<init>", "(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)V", "getPopup", "()Lcom/transsion/bean/HomePopupInfo;", "setPopup", "(Lcom/transsion/bean/HomePopupInfo;)V", "getWidget", "setWidget", "getRequestInterval", "()I", "setRequestInterval", "(I)V", "getTs", "()J", "setTs", "(J)V", "component1", "component2", "component3", "component4", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomePopupEntity implements Parcelable {
    public static final Parcelable.Creator<HomePopupEntity> CREATOR = new a();
    private HomePopupInfo popup;
    private int requestInterval;
    private long ts;
    private HomePopupInfo widget;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HomePopupEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            Parcelable.Creator<HomePopupInfo> creator = HomePopupInfo.CREATOR;
            return new HomePopupEntity(creator.createFromParcel(parcel), creator.createFromParcel(parcel), parcel.readInt(), parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HomePopupEntity[] newArray(int i11) {
            return new HomePopupEntity[i11];
        }
    }

    public HomePopupEntity(HomePopupInfo popup, HomePopupInfo widget, int i11, long j11) {
        Intrinsics.h(popup, "popup");
        Intrinsics.h(widget, "widget");
        this.popup = popup;
        this.widget = widget;
        this.requestInterval = i11;
        this.ts = j11;
    }

    public static /* synthetic */ HomePopupEntity copy$default(HomePopupEntity homePopupEntity, HomePopupInfo homePopupInfo, HomePopupInfo homePopupInfo2, int i11, long j11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            homePopupInfo = homePopupEntity.popup;
        }
        if ((i12 & 2) != 0) {
            homePopupInfo2 = homePopupEntity.widget;
        }
        HomePopupInfo homePopupInfo3 = homePopupInfo2;
        if ((i12 & 4) != 0) {
            i11 = homePopupEntity.requestInterval;
        }
        int i13 = i11;
        if ((i12 & 8) != 0) {
            j11 = homePopupEntity.ts;
        }
        return homePopupEntity.copy(homePopupInfo, homePopupInfo3, i13, j11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final HomePopupInfo getPopup() {
        return this.popup;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final HomePopupInfo getWidget() {
        return this.widget;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getRequestInterval() {
        return this.requestInterval;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getTs() {
        return this.ts;
    }

    public final HomePopupEntity copy(HomePopupInfo popup, HomePopupInfo widget, int requestInterval, long ts2) {
        Intrinsics.h(popup, "popup");
        Intrinsics.h(widget, "widget");
        return new HomePopupEntity(popup, widget, requestInterval, ts2);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomePopupEntity)) {
            return false;
        }
        HomePopupEntity homePopupEntity = (HomePopupEntity) other;
        return Intrinsics.c(this.popup, homePopupEntity.popup) && Intrinsics.c(this.widget, homePopupEntity.widget) && this.requestInterval == homePopupEntity.requestInterval && this.ts == homePopupEntity.ts;
    }

    public final HomePopupInfo getPopup() {
        return this.popup;
    }

    public final int getRequestInterval() {
        return this.requestInterval;
    }

    public final long getTs() {
        return this.ts;
    }

    public final HomePopupInfo getWidget() {
        return this.widget;
    }

    public int hashCode() {
        return (((((this.popup.hashCode() * 31) + this.widget.hashCode()) * 31) + this.requestInterval) * 31) + s.a(this.ts);
    }

    public final void setPopup(HomePopupInfo homePopupInfo) {
        Intrinsics.h(homePopupInfo, "<set-?>");
        this.popup = homePopupInfo;
    }

    public final void setRequestInterval(int i11) {
        this.requestInterval = i11;
    }

    public final void setTs(long j11) {
        this.ts = j11;
    }

    public final void setWidget(HomePopupInfo homePopupInfo) {
        Intrinsics.h(homePopupInfo, "<set-?>");
        this.widget = homePopupInfo;
    }

    public String toString() {
        return "HomePopupEntity(popup=" + this.popup + ", widget=" + this.widget + ", requestInterval=" + this.requestInterval + ", ts=" + this.ts + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        this.popup.writeToParcel(dest, flags);
        this.widget.writeToParcel(dest, flags);
        dest.writeInt(this.requestInterval);
        dest.writeLong(this.ts);
    }
}
