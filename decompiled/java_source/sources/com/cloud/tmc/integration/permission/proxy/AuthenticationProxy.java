package com.cloud.tmc.integration.permission.proxy;

import androidx.annotation.Nullable;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.permission.ApiPermissionCheckResult;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.model.permission.PermissionModel;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.security.Permission;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("")
public interface AuthenticationProxy extends Proxiable {
    boolean checkEventPermission(String str, String str2, Page page);

    ApiPermissionCheckResult checkJSApi(Permission permission, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, App app);

    boolean checkSPJSApi(Permission permission, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, App app);

    boolean checkShowPermissionDialog(Permission permission, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, Page page);

    void clearPermissionModel(String str);

    Map<String, Boolean> getAllPermissions(String str, String str2, @Nullable AppModel appModel);

    PermissionModel getPermissionModel(String str);

    List<Permission> getPermissions(String str);

    boolean hasPermission(String str, String str2, String str3, Page page);

    boolean hasPermissionModel(String str, Page page);

    void setPermissionModel(String str, PermissionModel permissionModel);

    void setPermissionState(String str, String str2, String str3, boolean z10);
}
