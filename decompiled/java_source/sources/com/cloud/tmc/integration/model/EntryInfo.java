package com.cloud.tmc.integration.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 &2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001&B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B[\b\u0016\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0012B\u0005¢\u0006\u0002\u0010\u0013J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\bH\u0016J\u0018\u0010#\u001a\u00020$2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010%\u001a\u00020!H\u0016R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0014\u0010\n\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/cloud/tmc/integration/model/EntryInfo;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "appId", "", CampaignEx.JSON_KEY_TITLE, "iconUrl", "slogan", "isOffline", "", "developer", "classificationNames", "", "exclusiveLogoUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "()V", "getClassificationNames", "()Ljava/util/List;", "setClassificationNames", "(Ljava/util/List;)V", CampaignEx.JSON_KEY_DESC, "getExclusiveLogoUrl", "()Ljava/lang/String;", "setExclusiveLogoUrl", "(Ljava/lang/String;)V", "()Z", "setOffline", "(Z)V", "describeContents", "", "toString", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class EntryInfo extends BaseBean implements Serializable, Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    public String appId;
    private List<String> classificationNames;

    @JvmField
    public String desc;

    @JvmField
    public String developer;
    private String exclusiveLogoUrl;

    @JvmField
    public String iconUrl;
    private boolean isOffline;

    @JvmField
    public String slogan;

    @JvmField
    public String title;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.model.EntryInfo$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/EntryInfo$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/EntryInfo;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/EntryInfo;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<EntryInfo> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EntryInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new EntryInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EntryInfo[] newArray(int size) {
            return new EntryInfo[size];
        }
    }

    public EntryInfo() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EntryInfo(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
        this.appId = parcel.readString();
        this.title = parcel.readString();
        this.iconUrl = parcel.readString();
        this.desc = parcel.readString();
        this.slogan = parcel.readString();
        this.isOffline = parcel.readByte() != 0;
        this.developer = parcel.readString();
        this.classificationNames = parcel.createStringArrayList();
        this.exclusiveLogoUrl = parcel.readString();
    }

    public EntryInfo(String str, String str2, String str3, String str4, boolean z10, String str5, List<String> list, String str6) {
        this();
        this.appId = str;
        this.title = str2;
        this.iconUrl = str3;
        this.slogan = str4;
        this.isOffline = z10;
        this.developer = str5;
        this.classificationNames = list;
        this.exclusiveLogoUrl = str6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final List<String> getClassificationNames() {
        return this.classificationNames;
    }

    public final String getExclusiveLogoUrl() {
        return this.exclusiveLogoUrl;
    }

    /* JADX INFO: renamed from: isOffline, reason: from getter */
    public final boolean getIsOffline() {
        return this.isOffline;
    }

    public final void setClassificationNames(List<String> list) {
        this.classificationNames = list;
    }

    public final void setExclusiveLogoUrl(String str) {
        this.exclusiveLogoUrl = str;
    }

    public final void setOffline(boolean z10) {
        this.isOffline = z10;
    }

    public String toString() {
        return "EntryInfo{appId='" + this.appId + "'title='" + this.title + "', iconUrl='" + this.iconUrl + "', slogan='" + this.slogan + "', desc='" + this.desc + "', classificationNames='" + this.classificationNames + "', exclusiveLogoUrl='" + this.exclusiveLogoUrl + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.appId);
        parcel.writeString(this.title);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.desc);
        parcel.writeString(this.slogan);
        parcel.writeByte(this.isOffline ? (byte) 1 : (byte) 0);
        parcel.writeString(this.developer);
        parcel.writeStringList(this.classificationNames);
        parcel.writeString(this.exclusiveLogoUrl);
    }
}
