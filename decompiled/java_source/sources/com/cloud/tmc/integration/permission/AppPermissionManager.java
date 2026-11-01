package com.cloud.tmc.integration.permission;

import com.cloud.tmc.integration.permission.api.TmcGroup;
import com.cloud.tmc.integration.permission.proxy.AuthenticationProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.security.Accessor;
import com.cloud.tmc.kernel.security.Group;
import com.cloud.tmc.kernel.security.Permission;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AppPermissionManager implements PermissionManager {
    private static final String TAG = "Tmcintegration:" + AppPermissionManager.class.getSimpleName();
    private static List<String> WHITE_LIST;
    private String appId;
    private BizPermissionManager mApiBizPermissionManager;
    private AuthenticationProxy rvPermissionServiceProxy;

    static {
        ArrayList arrayList = new ArrayList();
        WHITE_LIST = arrayList;
        arrayList.add("registerWorker");
        WHITE_LIST.add("getPackageFile");
    }

    public AppPermissionManager(BizPermissionManager bizPermissionManager) {
        this.mApiBizPermissionManager = bizPermissionManager;
    }

    @Override // com.cloud.tmc.integration.permission.PermissionManager
    public boolean asyncCheckPermission(Permission permission, Accessor accessor, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper) {
        if (!(accessor instanceof Page)) {
            return false;
        }
        return this.rvPermissionServiceProxy.checkShowPermissionDialog(permission, nativeCallContext, bridgeResponseHelper, (Page) accessor);
    }

    @Override // com.cloud.tmc.integration.permission.PermissionManager
    public boolean bizCheckPermission(Permission permission, Accessor accessor, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper) {
        BizPermissionManager bizPermissionManager = this.mApiBizPermissionManager;
        if (bizPermissionManager != null && !bizPermissionManager.checkBizParamPermission(permission.authority(), this.appId, nativeCallContext.getParams())) {
            TmcLogger.d(TAG, permission.authority() + " is not supported by param!");
            if (bridgeResponseHelper != null) {
                bridgeResponseHelper.sendError(2, permission.authority() + " is not supported by param!");
            }
        }
        return false;
    }

    @Override // com.cloud.tmc.integration.permission.PermissionManager
    public boolean checkPermission(Permission permission, Accessor accessor, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper) {
        if (WHITE_LIST.contains(nativeCallContext.getName())) {
            TmcLogger.d(TAG, "checkPermission skip white list! " + nativeCallContext.getName());
            return true;
        }
        boolean z10 = accessor instanceof Page;
        if (!z10 && !(accessor instanceof App)) {
            return false;
        }
        App app = accessor instanceof App ? (App) accessor : null;
        if (z10) {
            app = ((Page) accessor).getApp();
        }
        ApiPermissionCheckResult apiPermissionCheckResultCheckJSApi = this.rvPermissionServiceProxy.checkJSApi(permission, nativeCallContext, bridgeResponseHelper, app);
        if (ApiPermissionCheckResult.ALLOW == apiPermissionCheckResultCheckJSApi) {
            TmcLogger.d(TAG, "checkPermission allowed:\t " + nativeCallContext.getName());
            return this.rvPermissionServiceProxy.checkSPJSApi(permission, nativeCallContext, bridgeResponseHelper, app);
        }
        if (ApiPermissionCheckResult.IGNORE != apiPermissionCheckResultCheckJSApi) {
            return false;
        }
        TmcLogger.d(TAG, "checkPermission ignored:\t " + nativeCallContext.getName());
        return true;
    }

    @Override // com.cloud.tmc.integration.permission.PermissionManager
    public void init(Accessor accessor) {
        this.appId = AppPermissionUtils.getPermissionAppId(accessor);
        this.rvPermissionServiceProxy = (AuthenticationProxy) TmcProxy.get(AuthenticationProxy.class);
    }

    @Override // com.cloud.tmc.integration.permission.PermissionManager
    public Group manageAccessorGroup(Accessor accessor) {
        return TmcGroup.LEVEL_APP_DEFAULT;
    }

    @Override // com.cloud.tmc.integration.permission.PermissionManager
    public List<Permission> manageAccessorPermissions(Accessor accessor) {
        return this.rvPermissionServiceProxy.getPermissions(this.appId);
    }
}
