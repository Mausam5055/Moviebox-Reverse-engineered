package com.cloud.tmc.integration.model;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.activity.StartAction;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u001e\u001a\u00020\rH\u0016R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/cloud/tmc/integration/model/PrepareCallbackParam;", "", "context", "Lcom/cloud/tmc/integration/model/PrepareContext;", "(Lcom/cloud/tmc/integration/model/PrepareContext;)V", "()V", EventConstants.KEY_ACTION, "Lcom/cloud/tmc/integration/activity/StartAction;", TmcConstants.EXTRA_APPINFO, "Lcom/cloud/tmc/integration/model/AppModel;", TmcConstants.EXTRA_APP_LOAD_RESULT, "Lcom/cloud/tmc/integration/structure/AppLoadResult;", "frameworkVersion", "", "getFrameworkVersion", "()Ljava/lang/String;", "setFrameworkVersion", "(Ljava/lang/String;)V", "needWaitIpc", "", "getNeedWaitIpc", "()Z", "setNeedWaitIpc", "(Z)V", TmcConstants.EXTRA_START_PARAMS, "Landroid/os/Bundle;", "getStartParams", "()Landroid/os/Bundle;", "setStartParams", "(Landroid/os/Bundle;)V", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PrepareCallbackParam {

    @JvmField
    public StartAction action;

    @JvmField
    public AppModel appInfo;

    @JvmField
    public AppLoadResult appLoadResult;
    private String frameworkVersion;
    private boolean needWaitIpc;
    private Bundle startParams;

    public PrepareCallbackParam() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PrepareCallbackParam(PrepareContext context) {
        this();
        Intrinsics.h(context, "context");
        this.appInfo = context.getAppModel();
        this.startParams = context.getStartParams();
    }

    public final String getFrameworkVersion() {
        return this.frameworkVersion;
    }

    public final boolean getNeedWaitIpc() {
        return this.needWaitIpc;
    }

    public final Bundle getStartParams() {
        return this.startParams;
    }

    public final void setFrameworkVersion(String str) {
        this.frameworkVersion = str;
    }

    public final void setNeedWaitIpc(boolean z10) {
        this.needWaitIpc = z10;
    }

    public final void setStartParams(Bundle bundle) {
        this.startParams = bundle;
    }

    public String toString() {
        return "PrepareCallbackParam{, needWaitIpc=" + this.needWaitIpc + ", action=" + this.action + "}";
    }
}
