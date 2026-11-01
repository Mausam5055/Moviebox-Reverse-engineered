package com.cloud.tmc.kernel.model.permission;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 <2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001<B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u00106\u001a\u000207H\u0016J\b\u00108\u001a\u00020\nH\u0016J\u0018\u00109\u001a\u00020:2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010;\u001a\u000207H\u0016R.\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R.\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0019\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001f8F¢\u0006\u0006\u001a\u0004\b \u0010!R\u0013\u0010\"\u001a\u0004\u0018\u00010#¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0013\u0010&\u001a\u0004\u0018\u00010#¢\u0006\b\n\u0000\u001a\u0004\b'\u0010%R.\u0010(\u001a\u0016\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\r\"\u0004\b*\u0010\u000fR.\u0010+\u001a\u0016\u0012\u0004\u0012\u00020,\u0018\u00010\tj\n\u0012\u0004\u0012\u00020,\u0018\u0001`\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\r\"\u0004\b.\u0010\u000fR\u001c\u0010/\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010%\"\u0004\b1\u00102R\"\u00103\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u001b\"\u0004\b5\u0010\u001d¨\u0006="}, d2 = {"Lcom/cloud/tmc/kernel/model/permission/PermissionModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", OfflineConstantsKt.TRIGGER_API, "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "getApi", "()Ljava/util/ArrayList;", "setApi", "(Ljava/util/ArrayList;)V", "group", "getGroup", "()Ljava/lang/String;", "setGroup", "(Ljava/lang/String;)V", "hosts", "getHosts", "setHosts", "ignorePermissionCheck", "", "getIgnorePermissionCheck", "()Ljava/util/Set;", "setIgnorePermissionCheck", "(Ljava/util/Set;)V", "jsapiList", "", "getJsapiList", "()Ljava/util/List;", "nativeApiScopeConfig", "Lcom/google/gson/JsonObject;", "getNativeApiScopeConfig", "()Lcom/google/gson/JsonObject;", "nativeApiUserAuth", "getNativeApiUserAuth", "scopes", "getScopes", "setScopes", "scopesV2", "Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;", "getScopesV2", "setScopesV2", "specialConfigs", "getSpecialConfigs", "setSpecialConfigs", "(Lcom/google/gson/JsonObject;)V", "validDomains", "getValidDomains", "setValidDomains", "describeContents", "", "toString", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PermissionModel extends BaseBean implements Serializable, Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private ArrayList<String> api;
    private String group;
    private ArrayList<String> hosts;
    private Set<String> ignorePermissionCheck;
    private final JsonObject nativeApiScopeConfig;
    private final JsonObject nativeApiUserAuth;
    private ArrayList<String> scopes;
    private ArrayList<ScopesV2Bean> scopesV2;
    private JsonObject specialConfigs;
    private Set<String> validDomains;

    /* JADX INFO: renamed from: com.cloud.tmc.kernel.model.permission.PermissionModel$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/kernel/model/permission/PermissionModel$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/kernel/model/permission/PermissionModel;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/kernel/model/permission/PermissionModel;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<PermissionModel> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PermissionModel createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PermissionModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PermissionModel[] newArray(int size) {
            return new PermissionModel[size];
        }
    }

    public PermissionModel() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PermissionModel(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
        this.group = parcel.readString();
        this.api = parcel.createStringArrayList();
        this.hosts = parcel.createStringArrayList();
        this.scopes = parcel.createStringArrayList();
        this.scopesV2 = parcel.createTypedArrayList(ScopesV2Bean.INSTANCE);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final ArrayList<String> getApi() {
        return this.api;
    }

    public final String getGroup() {
        return this.group;
    }

    public final ArrayList<String> getHosts() {
        return this.hosts;
    }

    public final Set<String> getIgnorePermissionCheck() {
        return this.ignorePermissionCheck;
    }

    public final List<String> getJsapiList() {
        return this.scopes;
    }

    public final JsonObject getNativeApiScopeConfig() {
        return this.nativeApiScopeConfig;
    }

    public final JsonObject getNativeApiUserAuth() {
        return this.nativeApiUserAuth;
    }

    public final ArrayList<String> getScopes() {
        return this.scopes;
    }

    public final ArrayList<ScopesV2Bean> getScopesV2() {
        return this.scopesV2;
    }

    public final JsonObject getSpecialConfigs() {
        return this.specialConfigs;
    }

    public final Set<String> getValidDomains() {
        return this.validDomains;
    }

    public final void setApi(ArrayList<String> arrayList) {
        this.api = arrayList;
    }

    public final void setGroup(String str) {
        this.group = str;
    }

    public final void setHosts(ArrayList<String> arrayList) {
        this.hosts = arrayList;
    }

    public final void setIgnorePermissionCheck(Set<String> set) {
        this.ignorePermissionCheck = set;
    }

    public final void setScopes(ArrayList<String> arrayList) {
        this.scopes = arrayList;
    }

    public final void setScopesV2(ArrayList<ScopesV2Bean> arrayList) {
        this.scopesV2 = arrayList;
    }

    public final void setSpecialConfigs(JsonObject jsonObject) {
        this.specialConfigs = jsonObject;
    }

    public final void setValidDomains(Set<String> set) {
        this.validDomains = set;
    }

    public String toString() {
        return "PermissionModel(group=" + this.group + ", api=" + this.api + ", hosts=" + this.hosts + ", scopes=" + this.scopes + ", scopesV2=" + this.scopesV2 + ", nativeApiUserAuth=" + this.nativeApiUserAuth + ", nativeApiScopeConfig=" + this.nativeApiScopeConfig + ", ignorePermissionCheck=" + this.ignorePermissionCheck + ", specialConfigs=" + this.specialConfigs + ", validDomains=" + this.validDomains + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.group);
        parcel.writeStringList(this.api);
        parcel.writeStringList(this.hosts);
        parcel.writeStringList(this.scopes);
    }
}
