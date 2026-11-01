package com.cloud.tmc.integration.activity;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0007H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0015H\u0016R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/cloud/tmc/integration/activity/StartClientBundle;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "appId", "", TmcConstants.EXTRA_APPTYPE, "getAppType", "()Ljava/lang/String;", "setAppType", "(Ljava/lang/String;)V", TmcConstants.EXTRA_SCENE_PARAMS, "Landroid/os/Bundle;", "startAction", "Lcom/cloud/tmc/integration/activity/StartAction;", TmcConstants.EXTRA_START_PARAMS, TmcConstants.EXTRA_START_TOKEN, "", "describeContents", "", "toString", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class StartClientBundle implements Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    public String appId;
    private String appType;

    @JvmField
    public Bundle sceneParams;

    @JvmField
    public StartAction startAction;

    @JvmField
    public Bundle startParams;

    @JvmField
    public long startToken;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.activity.StartClientBundle$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/activity/StartClientBundle$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/activity/StartClientBundle;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/activity/StartClientBundle;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<StartClientBundle> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StartClientBundle createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new StartClientBundle(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StartClientBundle[] newArray(int size) {
            return new StartClientBundle[size];
        }
    }

    public StartClientBundle() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StartClientBundle(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
        this.appId = parcel.readString();
        this.appType = parcel.readString();
        this.startToken = parcel.readLong();
        String string = parcel.readString();
        this.startAction = string != null ? StartAction.valueOf(string) : null;
        this.startParams = parcel.readBundle(StartClientBundle.class.getClassLoader());
        this.sceneParams = parcel.readBundle(StartClientBundle.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getAppType() {
        return this.appType;
    }

    public final void setAppType(String str) {
        this.appType = str;
    }

    public String toString() {
        return "StartClientBundle{appId=" + this.appId + ", appType=" + this.appType + ", startToken=" + this.startToken + ", startAction=" + this.startAction + ", startParams=" + this.startParams + ", sceneParams=" + this.sceneParams + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.appId);
        parcel.writeString(this.appType);
        parcel.writeLong(this.startToken);
        StartAction startAction = this.startAction;
        parcel.writeString(startAction != null ? startAction.name() : null);
        parcel.writeBundle(this.startParams);
        parcel.writeBundle(this.sceneParams);
    }
}
