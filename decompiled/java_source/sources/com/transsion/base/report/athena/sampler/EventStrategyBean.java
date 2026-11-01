package com.transsion.base.report.athena.sampler;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\rJ2\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0006\u0010\u0014\u001a\u00020\u0006J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0006R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006 "}, d2 = {"Lcom/transsion/base/report/athena/sampler/EventStrategyBean;", "Landroid/os/Parcelable;", "eventExpr", "", "batchKey", "samplingRate", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getEventExpr", "()Ljava/lang/String;", "getBatchKey", "getSamplingRate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/base/report/athena/sampler/EventStrategyBean;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "report_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class EventStrategyBean implements Parcelable {
    public static final Parcelable.Creator<EventStrategyBean> CREATOR = new a();
    private final String batchKey;
    private final String eventExpr;
    private final Integer samplingRate;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EventStrategyBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new EventStrategyBean(parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final EventStrategyBean[] newArray(int i11) {
            return new EventStrategyBean[i11];
        }
    }

    public EventStrategyBean(String str, String str2, Integer num) {
        this.eventExpr = str;
        this.batchKey = str2;
        this.samplingRate = num;
    }

    public static /* synthetic */ EventStrategyBean copy$default(EventStrategyBean eventStrategyBean, String str, String str2, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = eventStrategyBean.eventExpr;
        }
        if ((i11 & 2) != 0) {
            str2 = eventStrategyBean.batchKey;
        }
        if ((i11 & 4) != 0) {
            num = eventStrategyBean.samplingRate;
        }
        return eventStrategyBean.copy(str, str2, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEventExpr() {
        return this.eventExpr;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getBatchKey() {
        return this.batchKey;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getSamplingRate() {
        return this.samplingRate;
    }

    public final EventStrategyBean copy(String eventExpr, String batchKey, Integer samplingRate) {
        return new EventStrategyBean(eventExpr, batchKey, samplingRate);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EventStrategyBean)) {
            return false;
        }
        EventStrategyBean eventStrategyBean = (EventStrategyBean) other;
        return Intrinsics.c(this.eventExpr, eventStrategyBean.eventExpr) && Intrinsics.c(this.batchKey, eventStrategyBean.batchKey) && Intrinsics.c(this.samplingRate, eventStrategyBean.samplingRate);
    }

    public final String getBatchKey() {
        return this.batchKey;
    }

    public final String getEventExpr() {
        return this.eventExpr;
    }

    public final Integer getSamplingRate() {
        return this.samplingRate;
    }

    public int hashCode() {
        String str = this.eventExpr;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.batchKey;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.samplingRate;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "EventStrategyBean(eventExpr=" + this.eventExpr + ", batchKey=" + this.batchKey + ", samplingRate=" + this.samplingRate + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        Intrinsics.h(dest, "dest");
        dest.writeString(this.eventExpr);
        dest.writeString(this.batchKey);
        Integer num = this.samplingRate;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
    }
}
