package com.transsion.memberapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0081\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0017\u001a\u00020\u0004H\u0016J\u0006\u0010\u0018\u001a\u00020\u0019J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0019R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u001f"}, d2 = {"Lcom/transsion/memberapi/MemberSource;", "Landroid/os/Parcelable;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "SOURCE_HDDL", "SOURCE_MULTI_DL", "SOURCE_AD_DIALOG", "SOURCE_DOWNLOAD_DIALOG", "SOURCE_LANDSCAPE_PLAY", "SOURCE_OTHER_DOWNLOAD_DIALOG", "SOURCE_AD", "THREE_IN_ONE_POPUP", "SOURCE_STREAM_RESOLUTION_DIALOG", "SOURCE_STREAM_RESOLUTION_TIP", "SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR", "SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG", "SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT", "SOURCE_MEMBER_PROMOTION", "toString", "describeContents", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum MemberSource implements Parcelable {
    SOURCE_HDDL("HDDL"),
    SOURCE_MULTI_DL("Multi_DL_DIALOG"),
    SOURCE_AD_DIALOG("AD_DIALOG"),
    SOURCE_DOWNLOAD_DIALOG("DOWNLOAD_DIALOG"),
    SOURCE_LANDSCAPE_PLAY("LANDSCAPE_PLAY"),
    SOURCE_OTHER_DOWNLOAD_DIALOG("OTHER_DOWNLOAD_DIALOG"),
    SOURCE_AD("SOURCE_AD"),
    THREE_IN_ONE_POPUP("THREE_IN_ONE_POPUP"),
    SOURCE_STREAM_RESOLUTION_DIALOG("STREAM_RESOLUTION_DIALOG"),
    SOURCE_STREAM_RESOLUTION_TIP("STREAM_RESOLUTION_TIP"),
    SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR("SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR"),
    SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG("SOURCE_STREAM_RESOLUTION_ACTIVATE_DIALOG"),
    SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT("SOURCE_STREAM_RESOLUTION_ACTIVATE_DOWNLOAD_INTERCEPT"),
    SOURCE_MEMBER_PROMOTION("MEMBER_PROMOTION");

    private final String value;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
    public static final Parcelable.Creator<MemberSource> CREATOR = new Parcelable.Creator() { // from class: com.transsion.memberapi.MemberSource.a
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MemberSource createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return MemberSource.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MemberSource[] newArray(int i11) {
            return new MemberSource[i11];
        }
    };

    MemberSource(String str) {
        this.value = str;
    }

    public static EnumEntries<MemberSource> getEntries() {
        return $ENTRIES;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String getValue() {
        return this.value;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(name());
    }
}
