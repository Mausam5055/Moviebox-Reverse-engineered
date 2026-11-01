package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u001a"}, d2 = {"Lcom/transsion/home/bean/Text;", "Landroid/os/Parcelable;", "selectColor", "", "defaultColor", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getSelectColor", "()Ljava/lang/String;", "getDefaultColor", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Text implements Parcelable {
    private final String defaultColor;
    private final String selectColor;
    public static final Parcelable.Creator<Text> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Text createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new Text(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Text[] newArray(int i11) {
            return new Text[i11];
        }
    }

    public Text(String selectColor, String defaultColor) {
        Intrinsics.h(selectColor, "selectColor");
        Intrinsics.h(defaultColor, "defaultColor");
        this.selectColor = selectColor;
        this.defaultColor = defaultColor;
    }

    public static /* synthetic */ Text copy$default(Text text, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = text.selectColor;
        }
        if ((i11 & 2) != 0) {
            str2 = text.defaultColor;
        }
        return text.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSelectColor() {
        return this.selectColor;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDefaultColor() {
        return this.defaultColor;
    }

    public final Text copy(String selectColor, String defaultColor) {
        Intrinsics.h(selectColor, "selectColor");
        Intrinsics.h(defaultColor, "defaultColor");
        return new Text(selectColor, defaultColor);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Text)) {
            return false;
        }
        Text text = (Text) other;
        return Intrinsics.c(this.selectColor, text.selectColor) && Intrinsics.c(this.defaultColor, text.defaultColor);
    }

    public final String getDefaultColor() {
        return this.defaultColor;
    }

    public final String getSelectColor() {
        return this.selectColor;
    }

    public int hashCode() {
        return (this.selectColor.hashCode() * 31) + this.defaultColor.hashCode();
    }

    public String toString() {
        return "Text(selectColor=" + this.selectColor + ", defaultColor=" + this.defaultColor + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.selectColor);
        dest.writeString(this.defaultColor);
    }
}
