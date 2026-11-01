package com.cloud.tmc.integration.model;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.datastructure.immutable.ImmutableBundle;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J\b\u0010`\u001a\u00020\u0005H\u0016R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001b\"\u0004\b,\u0010\u001dR\u001c\u0010-\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u001b\"\u0004\b/\u0010\u001dR\u001c\u00100\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u001b\"\u0004\b2\u0010\u001dR\u001c\u00103\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010'\"\u0004\b5\u0010)R\u0011\u00106\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b7\u00108R\u0011\u00109\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b:\u0010\u001bR\u001c\u0010;\u001a\u0004\u0018\u00010<X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010'\"\u0004\bC\u0010)R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010D\"\u0004\bE\u0010FR\u001a\u0010G\u001a\u00020HX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u0011\u0010M\u001a\u00020N¢\u0006\b\n\u0000\u001a\u0004\bO\u0010PR\u001a\u0010Q\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u00108\"\u0004\bS\u0010TR\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\bU\u0010VR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bW\u0010XR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\bY\u0010VR\u0014\u0010Z\u001a\u00020[X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010]R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u00108\"\u0004\b_\u0010T¨\u0006a"}, d2 = {"Lcom/cloud/tmc/integration/model/PrepareContext;", "", "startContext", "Landroid/content/Context;", "appId", "", TmcConstants.EXTRA_START_PARAMS, "Landroid/os/Bundle;", TmcConstants.EXTRA_SCENE_PARAMS, "virtualStart", "", "appChainContext", "Lcom/cloud/tmc/integration/chain/app/AppChainContext;", "activity", "Landroid/app/Activity;", "isWarmup", "Ljava/util/concurrent/atomic/AtomicBoolean;", "(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;)V", "getActivity", "()Landroid/app/Activity;", "setActivity", "(Landroid/app/Activity;)V", "getAppChainContext", "()Lcom/cloud/tmc/integration/chain/app/AppChainContext;", "setAppChainContext", "(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "appInfoQuery", "Lcom/cloud/tmc/integration/model/AppInfoQuery;", "getAppInfoQuery", "()Lcom/cloud/tmc/integration/model/AppInfoQuery;", "setAppInfoQuery", "(Lcom/cloud/tmc/integration/model/AppInfoQuery;)V", "appModel", "Lcom/cloud/tmc/integration/model/AppModel;", "getAppModel", "()Lcom/cloud/tmc/integration/model/AppModel;", "setAppModel", "(Lcom/cloud/tmc/integration/model/AppModel;)V", "appToken", "getAppToken", "setAppToken", TmcConstants.EXTRA_APPTYPE, "getAppType", "setAppType", TmcStartParams.KEY_APP_VERSION, "getAppVersion", "setAppVersion", "commonResModel", "getCommonResModel", "setCommonResModel", "devStatus", "getDevStatus", "()Z", "devTypeCode", "getDevTypeCode", TmcConstants.EXTRA_ENTRY_INFO, "Lcom/cloud/tmc/integration/model/EntryInfo;", "getEntryInfo", "()Lcom/cloud/tmc/integration/model/EntryInfo;", "setEntryInfo", "(Lcom/cloud/tmc/integration/model/EntryInfo;)V", "frameWorkModel", "getFrameWorkModel", "setFrameWorkModel", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "setWarmup", "(Ljava/util/concurrent/atomic/AtomicBoolean;)V", "originStartParams", "Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;", "getOriginStartParams", "()Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;", "setOriginStartParams", "(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;)V", TmcConstants.EXTRA_PREPARE_DATA, "Lcom/cloud/tmc/integration/model/PrepareData;", "getPrepareData", "()Lcom/cloud/tmc/integration/model/PrepareData;", "quickMode", "getQuickMode", "setQuickMode", "(Z)V", "getSceneParams", "()Landroid/os/Bundle;", "getStartContext", "()Landroid/content/Context;", "getStartParams", "timeout", "", "getTimeout", "()J", "getVirtualStart", "setVirtualStart", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PrepareContext {
    private Activity activity;
    private AppChainContext appChainContext;
    private String appId;
    private AppInfoQuery appInfoQuery;
    private AppModel appModel;
    private String appToken;
    private String appType;
    private String appVersion;
    private AppModel commonResModel;
    private EntryInfo entryInfo;
    private AppModel frameWorkModel;
    private AtomicBoolean isWarmup;
    private ImmutableBundle originStartParams;
    private final PrepareData prepareData;
    private boolean quickMode;
    private final Bundle sceneParams;
    private final Context startContext;
    private final Bundle startParams;
    private final long timeout;
    private boolean virtualStart;

    public PrepareContext(Context startContext, String appId, Bundle startParams, Bundle sceneParams, boolean z10, AppChainContext appChainContext, Activity activity, AtomicBoolean isWarmup) {
        Intrinsics.h(startContext, "startContext");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(startParams, "startParams");
        Intrinsics.h(sceneParams, "sceneParams");
        Intrinsics.h(isWarmup, "isWarmup");
        this.timeout = 30000L;
        this.isWarmup = new AtomicBoolean(false);
        this.appId = appId;
        this.startContext = startContext;
        ImmutableBundle immutableBundle = new ImmutableBundle(startParams);
        this.originStartParams = immutableBundle;
        Bundle bundleMutable = immutableBundle.mutable();
        Intrinsics.g(bundleMutable, "originStartParams.mutable()");
        this.startParams = bundleMutable;
        this.sceneParams = sceneParams;
        PrepareData prepareData = new PrepareData();
        this.prepareData = prepareData;
        prepareData.clear();
        this.virtualStart = z10;
        this.appChainContext = appChainContext;
        this.activity = activity;
        this.isWarmup = isWarmup;
    }

    public /* synthetic */ PrepareContext(Context context, String str, Bundle bundle, Bundle bundle2, boolean z10, AppChainContext appChainContext, Activity activity, AtomicBoolean atomicBoolean, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, bundle, bundle2, (i11 & 16) != 0 ? false : z10, (i11 & 32) != 0 ? null : appChainContext, (i11 & 64) != 0 ? null : activity, (i11 & 128) != 0 ? new AtomicBoolean(false) : atomicBoolean);
    }

    public final Activity getActivity() {
        return this.activity;
    }

    public final AppChainContext getAppChainContext() {
        return this.appChainContext;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final AppInfoQuery getAppInfoQuery() {
        return this.appInfoQuery;
    }

    public final AppModel getAppModel() {
        return this.appModel;
    }

    public final String getAppToken() {
        return this.appToken;
    }

    public final String getAppType() {
        return this.appType;
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final AppModel getCommonResModel() {
        return this.commonResModel;
    }

    public final boolean getDevStatus() {
        return StringsKt.H("debug", this.appType, true) || StringsKt.H("dev", this.appType, true);
    }

    public final String getDevTypeCode() {
        if (StringsKt.H("debug", this.appType, true)) {
            return "0";
        }
        if (StringsKt.H("dev", this.appType, true)) {
            return "1";
        }
        return StringsKt.H("develop", this.appType, true) ? "2" : "";
    }

    public final EntryInfo getEntryInfo() {
        return this.entryInfo;
    }

    public final AppModel getFrameWorkModel() {
        return this.frameWorkModel;
    }

    public final ImmutableBundle getOriginStartParams() {
        return this.originStartParams;
    }

    public final PrepareData getPrepareData() {
        return this.prepareData;
    }

    public final boolean getQuickMode() {
        return this.quickMode;
    }

    public final Bundle getSceneParams() {
        return this.sceneParams;
    }

    public final Context getStartContext() {
        return this.startContext;
    }

    public final Bundle getStartParams() {
        return this.startParams;
    }

    public final long getTimeout() {
        return this.timeout;
    }

    public final boolean getVirtualStart() {
        return this.virtualStart;
    }

    /* JADX INFO: renamed from: isWarmup, reason: from getter */
    public final AtomicBoolean getIsWarmup() {
        return this.isWarmup;
    }

    public final void setActivity(Activity activity) {
        this.activity = activity;
    }

    public final void setAppChainContext(AppChainContext appChainContext) {
        this.appChainContext = appChainContext;
    }

    public final void setAppId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appId = str;
    }

    public final void setAppInfoQuery(AppInfoQuery appInfoQuery) {
        this.appInfoQuery = appInfoQuery;
    }

    public final void setAppModel(AppModel appModel) {
        this.appModel = appModel;
    }

    public final void setAppToken(String str) {
        this.appToken = str;
    }

    public final void setAppType(String str) {
        this.appType = str;
    }

    public final void setAppVersion(String str) {
        this.appVersion = str;
    }

    public final void setCommonResModel(AppModel appModel) {
        this.commonResModel = appModel;
    }

    public final void setEntryInfo(EntryInfo entryInfo) {
        this.entryInfo = entryInfo;
    }

    public final void setFrameWorkModel(AppModel appModel) {
        this.frameWorkModel = appModel;
    }

    public final void setOriginStartParams(ImmutableBundle immutableBundle) {
        Intrinsics.h(immutableBundle, "<set-?>");
        this.originStartParams = immutableBundle;
    }

    public final void setQuickMode(boolean z10) {
        this.quickMode = z10;
    }

    public final void setVirtualStart(boolean z10) {
        this.virtualStart = z10;
    }

    public final void setWarmup(AtomicBoolean atomicBoolean) {
        Intrinsics.h(atomicBoolean, "<set-?>");
        this.isWarmup = atomicBoolean;
    }

    public String toString() {
        return StringsKt.n("\n               PrepareContext{\n               appId=" + this.appId + "\n               originStartParam=" + this.originStartParams + "}\n               ");
    }
}
