package com.transsion.mb.config.download;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.JsonArray;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\rR$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/transsion/mb/config/download/AppStartConfig;", "Landroid/os/Parcelable;", "<init>", "()V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "Lcom/google/gson/JsonArray;", "items", "Lcom/google/gson/JsonArray;", "getItems", "()Lcom/google/gson/JsonArray;", "setItems", "(Lcom/google/gson/JsonArray;)V", "", "version", "Ljava/lang/String;", "getVersion", "()Ljava/lang/String;", "setVersion", "(Ljava/lang/String;)V", "CREATOR", "a", "config_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppStartConfig implements Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private JsonArray items;
    private String version;

    /* JADX INFO: renamed from: com.transsion.mb.config.download.AppStartConfig$a, reason: from kotlin metadata */
    /* JADX INFO: loaded from: classes5.dex */
    public static final class Companion implements Parcelable.Creator {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AppStartConfig createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AppStartConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public AppStartConfig[] newArray(int i11) {
            return new AppStartConfig[i11];
        }
    }

    public AppStartConfig() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppStartConfig(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final JsonArray getItems() {
        return this.items;
    }

    public final String getVersion() {
        return this.version;
    }

    public final void setItems(JsonArray jsonArray) {
        this.items = jsonArray;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
    }
}
