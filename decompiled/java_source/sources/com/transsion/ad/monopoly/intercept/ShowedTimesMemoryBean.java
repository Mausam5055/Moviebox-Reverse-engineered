package com.transsion.ad.monopoly.intercept;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0011\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\u001d\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0006\u0010\u0014\u001a\u00020\u0004J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0006HÖ\u0001J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006 "}, d2 = {"Lcom/transsion/ad/monopoly/intercept/ShowedTimesMemoryBean;", "Landroid/os/Parcelable;", "Ljava/io/Serializable;", "showedTimes", "", "date", "", "<init>", "(ILjava/lang/String;)V", "getShowedTimes", "()I", "setShowedTimes", "(I)V", "getDate", "()Ljava/lang/String;", "setDate", "(Ljava/lang/String;)V", "component1", "component2", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShowedTimesMemoryBean implements Parcelable, Serializable {
    public static final Parcelable.Creator<ShowedTimesMemoryBean> CREATOR = new a();
    private String date;
    private int showedTimes;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ShowedTimesMemoryBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ShowedTimesMemoryBean(parcel.readInt(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ShowedTimesMemoryBean[] newArray(int i11) {
            return new ShowedTimesMemoryBean[i11];
        }
    }

    public ShowedTimesMemoryBean(int i11, String date) {
        Intrinsics.h(date, "date");
        this.showedTimes = i11;
        this.date = date;
    }

    public static /* synthetic */ ShowedTimesMemoryBean copy$default(ShowedTimesMemoryBean showedTimesMemoryBean, int i11, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = showedTimesMemoryBean.showedTimes;
        }
        if ((i12 & 2) != 0) {
            str = showedTimesMemoryBean.date;
        }
        return showedTimesMemoryBean.copy(i11, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getShowedTimes() {
        return this.showedTimes;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    public final ShowedTimesMemoryBean copy(int showedTimes, String date) {
        Intrinsics.h(date, "date");
        return new ShowedTimesMemoryBean(showedTimes, date);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShowedTimesMemoryBean)) {
            return false;
        }
        ShowedTimesMemoryBean showedTimesMemoryBean = (ShowedTimesMemoryBean) other;
        return this.showedTimes == showedTimesMemoryBean.showedTimes && Intrinsics.c(this.date, showedTimesMemoryBean.date);
    }

    public final String getDate() {
        return this.date;
    }

    public final int getShowedTimes() {
        return this.showedTimes;
    }

    public int hashCode() {
        return (this.showedTimes * 31) + this.date.hashCode();
    }

    public final void setDate(String str) {
        Intrinsics.h(str, "<set-?>");
        this.date = str;
    }

    public final void setShowedTimes(int i11) {
        this.showedTimes = i11;
    }

    public String toString() {
        return "ShowedTimesMemoryBean(showedTimes=" + this.showedTimes + ", date=" + this.date + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.showedTimes);
        dest.writeString(this.date);
    }
}
