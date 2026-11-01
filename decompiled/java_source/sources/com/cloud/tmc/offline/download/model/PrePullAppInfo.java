package com.cloud.tmc.offline.download.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0080\b\u0018\u0000 \u001d2\u00020\u00012\u00020\u0002:\u0001\u001dB\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u001d\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\tHÆ\u0003J!\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0007HÖ\u0001J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0013H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001e"}, d2 = {"Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "appId", "", TmcConstants.EXTRA_APPINFO, "Lcom/cloud/tmc/integration/model/AppModel;", "(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;)V", "getAppId", "()Ljava/lang/String;", "getAppInfo", "()Lcom/cloud/tmc/integration/model/AppModel;", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PrePullAppInfo extends BaseBean implements Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String appId;
    private final AppModel appInfo;

    /* JADX INFO: renamed from: com.cloud.tmc.offline.download.model.PrePullAppInfo$CREATOR, reason: from kotlin metadata */
    @kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/offline/download/model/PrePullAppInfo$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<PrePullAppInfo> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrePullAppInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PrePullAppInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrePullAppInfo[] newArray(int size) {
            return new PrePullAppInfo[size];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PrePullAppInfo() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PrePullAppInfo(Parcel parcel) {
        this(parcel.readString(), (AppModel) parcel.readParcelable(AppModel.class.getClassLoader()));
        Intrinsics.h(parcel, "parcel");
    }

    public PrePullAppInfo(String str, AppModel appModel) {
        this.appId = str;
        this.appInfo = appModel;
    }

    public /* synthetic */ PrePullAppInfo(String str, AppModel appModel, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : appModel);
    }

    public static /* synthetic */ PrePullAppInfo copy$default(PrePullAppInfo prePullAppInfo, String str, AppModel appModel, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = prePullAppInfo.appId;
        }
        if ((i11 & 2) != 0) {
            appModel = prePullAppInfo.appInfo;
        }
        return prePullAppInfo.copy(str, appModel);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final AppModel getAppInfo() {
        return this.appInfo;
    }

    public final PrePullAppInfo copy(String appId, AppModel appInfo) {
        return new PrePullAppInfo(appId, appInfo);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PrePullAppInfo)) {
            return false;
        }
        PrePullAppInfo prePullAppInfo = (PrePullAppInfo) other;
        return Intrinsics.c(this.appId, prePullAppInfo.appId) && Intrinsics.c(this.appInfo, prePullAppInfo.appInfo);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final AppModel getAppInfo() {
        return this.appInfo;
    }

    public int hashCode() {
        String str = this.appId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        AppModel appModel = this.appInfo;
        return iHashCode + (appModel != null ? appModel.hashCode() : 0);
    }

    public String toString() {
        return "PrePullAppInfo(appId=" + this.appId + ", appInfo=" + this.appInfo + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.appId);
        parcel.writeParcelable(this.appInfo, flags);
    }
}
