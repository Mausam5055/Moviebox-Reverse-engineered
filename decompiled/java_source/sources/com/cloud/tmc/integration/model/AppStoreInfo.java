package com.cloud.tmc.integration.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 32\u00020\u00012\u00020\u00022\u00020\u0003:\u00013B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006BO\b\u0016\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010BW\b\u0016\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\u0010\u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0012\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0013B\u0005¢\u0006\u0002\u0010\u0014J\b\u0010*\u001a\u00020\u000fH\u0016J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.H\u0096\u0002J\b\u0010/\u001a\u00020\u000fH\u0016J\u0018\u00100\u001a\u0002012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u000fH\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0010\u0010\f\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001c\u0010\r\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\u001c\u0010\n\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\u001c\u0010\t\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0016\"\u0004\b \u0010\u0018R\u001e\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u00064"}, d2 = {"Lcom/cloud/tmc/integration/model/AppStoreInfo;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "appId", "", "name", "logo", CampaignEx.JSON_KEY_DESC, "category", "exclusiveLogo", "sourceType", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "classificationNames", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V", "()V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getDesc", "setDesc", "getExclusiveLogo", "setExclusiveLogo", "getLogo", "setLogo", "getName", "setName", "<set-?>", "", "saveTime", "getSaveTime", "()J", "getSourceType", "()I", "setSourceType", "(I)V", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppStoreInfo extends BaseBean implements Serializable, Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String appId;
    private String category;
    private String desc;
    private String exclusiveLogo;
    private String logo;
    private String name;
    private long saveTime;
    private int sourceType;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.model.AppStoreInfo$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/AppStoreInfo$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/AppStoreInfo;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/AppStoreInfo;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<AppStoreInfo> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppStoreInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AppStoreInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppStoreInfo[] newArray(int size) {
            return new AppStoreInfo[size];
        }
    }

    public AppStoreInfo() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppStoreInfo(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
        this.appId = parcel.readString();
        this.name = parcel.readString();
        this.logo = parcel.readString();
        this.desc = parcel.readString();
        this.category = parcel.readString();
        this.exclusiveLogo = parcel.readString();
        this.sourceType = parcel.readInt();
    }

    public AppStoreInfo(String str, String str2, String str3, String str4, String str5, String str6, int i11) {
        this();
        this.appId = str;
        this.name = str2;
        this.logo = str3;
        this.desc = str4;
        this.category = str5;
        this.exclusiveLogo = str6;
        this.saveTime = System.currentTimeMillis();
        this.sourceType = i11;
    }

    public /* synthetic */ AppStoreInfo(String str, String str2, String str3, String str4, String str5, String str6, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, (i12 & 32) != 0 ? null : str6, (i12 & 64) != 0 ? 0 : i11);
    }

    public AppStoreInfo(String str, String str2, String str3, String str4, List<String> list, String str5, int i11) {
        this();
        this.appId = str;
        this.name = str2;
        this.logo = str3;
        this.desc = str4;
        List<String> list2 = list;
        this.category = (list2 == null || list2.isEmpty()) ? "" : list.get(0);
        this.exclusiveLogo = str5;
        this.saveTime = System.currentTimeMillis();
        this.sourceType = i11;
    }

    public /* synthetic */ AppStoreInfo(String str, String str2, String str3, String str4, List list, String str5, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (List<String>) list, (i12 & 32) != 0 ? null : str5, (i12 & 64) != 0 ? 0 : i11);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !Intrinsics.c(AppStoreInfo.class, other.getClass())) {
            return false;
        }
        AppStoreInfo appStoreInfo = (AppStoreInfo) other;
        return Intrinsics.c(this.appId, appStoreInfo.appId) && Intrinsics.c(this.name, appStoreInfo.name) && Intrinsics.c(this.logo, appStoreInfo.logo);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getExclusiveLogo() {
        return this.exclusiveLogo;
    }

    public final String getLogo() {
        return this.logo;
    }

    public final String getName() {
        return this.name;
    }

    public final long getSaveTime() {
        return this.saveTime;
    }

    public final int getSourceType() {
        return this.sourceType;
    }

    public int hashCode() {
        return Objects.hash(this.appId, this.name, this.logo);
    }

    public final void setAppId(String str) {
        this.appId = str;
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setExclusiveLogo(String str) {
        this.exclusiveLogo = str;
    }

    public final void setLogo(String str) {
        this.logo = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setSourceType(int i11) {
        this.sourceType = i11;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.appId);
        parcel.writeString(this.name);
        parcel.writeString(this.logo);
        parcel.writeString(this.desc);
        parcel.writeString(this.category);
        parcel.writeString(this.exclusiveLogo);
        parcel.writeInt(this.sourceType);
    }
}
