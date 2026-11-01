package com.cloud.tmc.integration.structure;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 92\u00020\u00012\u00020\u00022\u00020\u0003:\u00019B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u00103\u001a\u000204H\u0016J\b\u00105\u001a\u00020\u000bH\u0016J\u0018\u00106\u001a\u0002072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u00108\u001a\u000204H\u0016R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R*\u0010\u0019\u001a\u001a\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u001aj\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u0001`\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000f\"\u0004\b\u001e\u0010\u0011R\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010!\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R\u001c\u0010$\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u000f\"\u0004\b&\u0010\u0011R\u0011\u0010'\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b(\u0010\u000fR\"\u0010)\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001c\u00100\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u000f\"\u0004\b2\u0010\u0011¨\u0006:"}, d2 = {"Lcom/cloud/tmc/integration/structure/AppLoadResult;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "appConfigModel", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel;", TmcConstants.EXTRA_APPTYPE, "", TmcStartParams.KEY_APP_VERSION, "chunkJsUrl", "getChunkJsUrl", "()Ljava/lang/String;", "setChunkJsUrl", "(Ljava/lang/String;)V", "commonResAppConfigModel", "faviconIco", "getFaviconIco", "setFaviconIco", "frameWorkModel", "Lcom/cloud/tmc/integration/model/AppModel;", "frameworkConfigModel", "htmlMap", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "mainCSSUrl", "getMainCSSUrl", "setMainCSSUrl", "mainHtmlUrl", "mainJsUrl", "renderJsUrl", "getRenderJsUrl", "setRenderJsUrl", "secondHtmlUrl", "getSecondHtmlUrl", "setSecondHtmlUrl", "version", "getVersion", "waitLoadFuture", "Ljava/util/concurrent/Future;", "", "getWaitLoadFuture", "()Ljava/util/concurrent/Future;", "setWaitLoadFuture", "(Ljava/util/concurrent/Future;)V", "workerJsUrl", "getWorkerJsUrl", "setWorkerJsUrl", "describeContents", "", "toString", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppLoadResult extends BaseBean implements Serializable, Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    public MiniAppConfigModel appConfigModel;

    @JvmField
    public String appType;

    @JvmField
    public String appVersion;
    private String chunkJsUrl;

    @JvmField
    public MiniAppConfigModel commonResAppConfigModel;
    private String faviconIco;

    @JvmField
    public AppModel frameWorkModel;

    @JvmField
    public MiniAppConfigModel frameworkConfigModel;

    @JvmField
    public HashMap<?, ?> htmlMap;
    private String mainCSSUrl;

    @JvmField
    public String mainHtmlUrl;

    @JvmField
    public String mainJsUrl;
    private String renderJsUrl;
    private String secondHtmlUrl;
    private Future<Boolean> waitLoadFuture;
    private String workerJsUrl;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.structure.AppLoadResult$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/structure/AppLoadResult$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/structure/AppLoadResult;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/structure/AppLoadResult;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<AppLoadResult> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppLoadResult createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AppLoadResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppLoadResult[] newArray(int size) {
            return new AppLoadResult[size];
        }
    }

    public AppLoadResult() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppLoadResult(Parcel parcel) {
        this();
        Intrinsics.h(parcel, "parcel");
        this.mainJsUrl = parcel.readString();
        this.renderJsUrl = parcel.readString();
        this.workerJsUrl = parcel.readString();
        this.chunkJsUrl = parcel.readString();
        this.mainHtmlUrl = parcel.readString();
        this.secondHtmlUrl = parcel.readString();
        this.faviconIco = parcel.readString();
        this.mainCSSUrl = parcel.readString();
        this.appType = parcel.readString();
        this.appVersion = parcel.readString();
        this.htmlMap = parcel.readHashMap(HashMap.class.getClassLoader());
        this.frameWorkModel = (AppModel) parcel.readParcelable(AppModel.class.getClassLoader());
        this.appConfigModel = (MiniAppConfigModel) parcel.readParcelable(MiniAppConfigModel.class.getClassLoader());
        this.frameworkConfigModel = (MiniAppConfigModel) parcel.readParcelable(MiniAppConfigModel.class.getClassLoader());
        this.commonResAppConfigModel = (MiniAppConfigModel) parcel.readParcelable(MiniAppConfigModel.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getChunkJsUrl() {
        return this.chunkJsUrl;
    }

    public final String getFaviconIco() {
        return this.faviconIco;
    }

    public final String getMainCSSUrl() {
        return this.mainCSSUrl;
    }

    public final String getRenderJsUrl() {
        return this.renderJsUrl;
    }

    public final String getSecondHtmlUrl() {
        return this.secondHtmlUrl;
    }

    public final String getVersion() {
        AppModel appModel = this.frameWorkModel;
        String strTakeIfNotEmpty = StringExtKt.takeIfNotEmpty(appModel != null ? appModel.getDeployVersion() : null);
        AppModel appModel2 = this.frameWorkModel;
        String developerVersion = appModel2 != null ? appModel2.getDeveloperVersion() : null;
        if (developerVersion == null) {
            developerVersion = "";
        }
        return StringExtKt.orDefault(strTakeIfNotEmpty, developerVersion);
    }

    public final Future<Boolean> getWaitLoadFuture() {
        return this.waitLoadFuture;
    }

    public final String getWorkerJsUrl() {
        return this.workerJsUrl;
    }

    public final void setChunkJsUrl(String str) {
        this.chunkJsUrl = str;
    }

    public final void setFaviconIco(String str) {
        this.faviconIco = str;
    }

    public final void setMainCSSUrl(String str) {
        this.mainCSSUrl = str;
    }

    public final void setRenderJsUrl(String str) {
        this.renderJsUrl = str;
    }

    public final void setSecondHtmlUrl(String str) {
        this.secondHtmlUrl = str;
    }

    public final void setWaitLoadFuture(Future<Boolean> future) {
        this.waitLoadFuture = future;
    }

    public final void setWorkerJsUrl(String str) {
        this.workerJsUrl = str;
    }

    public String toString() {
        return "AppLoadResult{mainJsUrl='" + this.mainJsUrl + "', mainHtmlUrl='" + this.mainHtmlUrl + "', appType=" + this.appType + ", appVersion='" + this.appVersion + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.mainJsUrl);
        parcel.writeString(this.renderJsUrl);
        parcel.writeString(this.workerJsUrl);
        parcel.writeString(this.chunkJsUrl);
        parcel.writeString(this.mainHtmlUrl);
        parcel.writeString(this.secondHtmlUrl);
        parcel.writeString(this.faviconIco);
        parcel.writeString(this.mainCSSUrl);
        parcel.writeString(this.appType);
        parcel.writeString(this.appVersion);
        parcel.writeMap(this.htmlMap);
        parcel.writeParcelable(this.frameWorkModel, flags);
        parcel.writeParcelable(this.appConfigModel, flags);
        parcel.writeParcelable(this.frameworkConfigModel, flags);
        parcel.writeParcelable(this.commonResAppConfigModel, flags);
    }
}
