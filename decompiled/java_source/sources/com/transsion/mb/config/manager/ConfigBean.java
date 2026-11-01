package com.transsion.mb.config.manager;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u0000 $2\u00020\u0001:\u0001%B\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\rR$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R$\u0010\u0018\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0010\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u001d\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010!¨\u0006&"}, d2 = {"Lcom/transsion/mb/config/manager/ConfigBean;", "Landroid/os/Parcelable;", "<init>", "()V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "", "key", "Ljava/lang/String;", "getKey", "()Ljava/lang/String;", "setKey", "(Ljava/lang/String;)V", "ops", "getOps", "setOps", AppMeasurementSdk.ConditionalUserProperty.VALUE, "getValue", "setValue", "", "hasUpdate", "Z", "getHasUpdate", "()Z", "setHasUpdate", "(Z)V", "isFirebase", "setFirebase", "CREATOR", "a", "config_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ConfigBean implements Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private boolean hasUpdate;
    private boolean isFirebase;
    private String key;
    private String ops;
    private String value;

    /* JADX INFO: renamed from: com.transsion.mb.config.manager.ConfigBean$a, reason: from kotlin metadata */
    /* JADX INFO: loaded from: classes5.dex */
    public static final class Companion implements Parcelable.Creator {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ConfigBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ConfigBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ConfigBean[] newArray(int i11) {
            return new ConfigBean[i11];
        }
    }

    public ConfigBean() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConfigBean(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
        this.key = parcel.readString();
        this.ops = parcel.readString();
        this.value = parcel.readString();
    }

    @Override // android.os.Parcelable
    public native int describeContents();

    public final native boolean getHasUpdate();

    public final native String getKey();

    public final native String getOps();

    public final native String getValue();

    public final native boolean isFirebase();

    public final native void setFirebase(boolean z10);

    public final native void setHasUpdate(boolean z10);

    public final native void setKey(String str);

    public final native void setOps(String str);

    public final native void setValue(String str);

    @Override // android.os.Parcelable
    public native void writeToParcel(Parcel parcel, int flags);
}
