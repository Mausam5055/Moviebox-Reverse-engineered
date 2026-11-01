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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J.\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u0006J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\u0016\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006&"}, d2 = {"Lcom/transsion/bean/HomePopupRequestEntity;", "Landroid/os/Parcelable;", "id", "", "ts", "count", "", "<init>", "(JLjava/lang/Long;I)V", "getId", "()J", "getTs", "()Ljava/lang/Long;", "setTs", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getCount", "()I", "setCount", "(I)V", "component1", "component2", "component3", "copy", "(JLjava/lang/Long;I)Lcom/transsion/bean/HomePopupRequestEntity;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HomePopupRequestEntity implements Parcelable {
    public static final Parcelable.Creator<HomePopupRequestEntity> CREATOR = new a();
    private int count;
    private final long id;
    private Long ts;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HomePopupRequestEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new HomePopupRequestEntity(parcel.readLong(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final HomePopupRequestEntity[] newArray(int i11) {
            return new HomePopupRequestEntity[i11];
        }
    }

    public HomePopupRequestEntity(long j11, Long l11, int i11) {
        this.id = j11;
        this.ts = l11;
        this.count = i11;
    }

    public static /* synthetic */ HomePopupRequestEntity copy$default(HomePopupRequestEntity homePopupRequestEntity, long j11, Long l11, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            j11 = homePopupRequestEntity.id;
        }
        if ((i12 & 2) != 0) {
            l11 = homePopupRequestEntity.ts;
        }
        if ((i12 & 4) != 0) {
            i11 = homePopupRequestEntity.count;
        }
        return homePopupRequestEntity.copy(j11, l11, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getTs() {
        return this.ts;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getCount() {
        return this.count;
    }

    public final HomePopupRequestEntity copy(long id2, Long ts2, int count) {
        return new HomePopupRequestEntity(id2, ts2, count);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomePopupRequestEntity)) {
            return false;
        }
        HomePopupRequestEntity homePopupRequestEntity = (HomePopupRequestEntity) other;
        return this.id == homePopupRequestEntity.id && Intrinsics.c(this.ts, homePopupRequestEntity.ts) && this.count == homePopupRequestEntity.count;
    }

    public final int getCount() {
        return this.count;
    }

    public final long getId() {
        return this.id;
    }

    public final Long getTs() {
        return this.ts;
    }

    public int hashCode() {
        int iA = s.a(this.id) * 31;
        Long l11 = this.ts;
        return ((iA + (l11 == null ? 0 : l11.hashCode())) * 31) + this.count;
    }

    public final void setCount(int i11) {
        this.count = i11;
    }

    public final void setTs(Long l11) {
        this.ts = l11;
    }

    public String toString() {
        return "HomePopupRequestEntity(id=" + this.id + ", ts=" + this.ts + ", count=" + this.count + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeLong(this.id);
        Long l11 = this.ts;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        dest.writeInt(this.count);
    }
}
