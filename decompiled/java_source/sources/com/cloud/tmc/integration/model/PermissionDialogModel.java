package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.kernel.model.permission.PermissionModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u001c\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001e\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006*"}, d2 = {"Lcom/cloud/tmc/integration/model/PermissionDialogModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "page", "Lcom/cloud/tmc/integration/structure/Page;", "appId", "", EventConstants.KEY_ACTION, "bridgeContext", "Lcom/cloud/tmc/kernel/bridge/NativeCallContext;", "responseHelper", "Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;", "model", "Lcom/cloud/tmc/kernel/model/permission/PermissionModel;", TmcConstants.EXTRA_START_TOKEN, "", "(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;J)V", "getAction", "()Ljava/lang/String;", "setAction", "(Ljava/lang/String;)V", "getAppId", "setAppId", "getBridgeContext", "()Lcom/cloud/tmc/kernel/bridge/NativeCallContext;", "setBridgeContext", "(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;)V", "getModel", "()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;", "setModel", "(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V", "getPage", "()Lcom/cloud/tmc/integration/structure/Page;", "setPage", "(Lcom/cloud/tmc/integration/structure/Page;)V", "getResponseHelper", "()Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;", "setResponseHelper", "(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)V", "getStartToken", "()J", "setStartToken", "(J)V", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PermissionDialogModel extends BaseBean {
    private String action;
    private String appId;
    private NativeCallContext<?> bridgeContext;
    private PermissionModel model;
    private Page page;
    private BridgeResponseHelper responseHelper;
    private long startToken;

    public PermissionDialogModel(Page page, String appId, String action, NativeCallContext<?> bridgeContext, BridgeResponseHelper responseHelper, PermissionModel model, long j11) {
        Intrinsics.h(page, "page");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(action, "action");
        Intrinsics.h(bridgeContext, "bridgeContext");
        Intrinsics.h(responseHelper, "responseHelper");
        Intrinsics.h(model, "model");
        this.page = page;
        this.appId = appId;
        this.action = action;
        this.bridgeContext = bridgeContext;
        this.responseHelper = responseHelper;
        this.model = model;
        this.startToken = j11;
    }

    public final String getAction() {
        return this.action;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final NativeCallContext<?> getBridgeContext() {
        return this.bridgeContext;
    }

    public final PermissionModel getModel() {
        return this.model;
    }

    public final Page getPage() {
        return this.page;
    }

    public final BridgeResponseHelper getResponseHelper() {
        return this.responseHelper;
    }

    public final long getStartToken() {
        return this.startToken;
    }

    public final void setAction(String str) {
        Intrinsics.h(str, "<set-?>");
        this.action = str;
    }

    public final void setAppId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appId = str;
    }

    public final void setBridgeContext(NativeCallContext<?> nativeCallContext) {
        Intrinsics.h(nativeCallContext, "<set-?>");
        this.bridgeContext = nativeCallContext;
    }

    public final void setModel(PermissionModel permissionModel) {
        Intrinsics.h(permissionModel, "<set-?>");
        this.model = permissionModel;
    }

    public final void setPage(Page page) {
        Intrinsics.h(page, "<set-?>");
        this.page = page;
    }

    public final void setResponseHelper(BridgeResponseHelper bridgeResponseHelper) {
        Intrinsics.h(bridgeResponseHelper, "<set-?>");
        this.responseHelper = bridgeResponseHelper;
    }

    public final void setStartToken(long j11) {
        this.startToken = j11;
    }
}
