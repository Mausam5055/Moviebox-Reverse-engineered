package com.cloud.tmc.integration.defaultImpl;

import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.point.BridgeAccessPoint;
import com.cloud.tmc.kernel.security.AccessControlManagement;
import com.cloud.tmc.kernel.security.Accessor;
import com.cloud.tmc.kernel.security.Group;
import com.cloud.tmc.kernel.security.Guard;
import com.cloud.tmc.kernel.security.Permission;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultAccessControlManagement implements AccessControlManagement {
    public static String TAG = "TmcKernel:" + DefaultAccessControlManagement.class.getSimpleName();
    private BridgeAccessPoint bridgeAccessPoint;
    private NativeCallContext bridgeContext;
    private BridgeResponseHelper helper;

    public DefaultAccessControlManagement(NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, ExtensionManager extensionManager) {
        this.bridgeContext = nativeCallContext;
        this.helper = bridgeResponseHelper;
        this.bridgeAccessPoint = (BridgeAccessPoint) ExtensionPoint.as(BridgeAccessPoint.class).extensionManager(extensionManager).node(nativeCallContext.getNode()).create();
    }

    @Override // com.cloud.tmc.kernel.security.AccessControlManagement
    public boolean asyncPermissionCheck(Permission permission, Accessor accessor) {
        return this.bridgeAccessPoint.asyncCheckPermission(permission, accessor, this.bridgeContext, this.helper);
    }

    @Override // com.cloud.tmc.kernel.security.AccessControlManagement
    public boolean bizPermissionCheck(Permission permission, Accessor accessor) {
        return this.bridgeAccessPoint.bizCheckPermission(permission, accessor, this.bridgeContext, this.helper);
    }

    @Override // com.cloud.tmc.kernel.security.AccessControlManagement
    public Group manageAccessorGroup(Accessor accessor) {
        return this.bridgeAccessPoint.manageAccessorGroup(accessor);
    }

    @Override // com.cloud.tmc.kernel.security.AccessControlManagement
    public List<Permission> manageAccessorPermissions(Accessor accessor) {
        return this.bridgeAccessPoint.manageAccessorPermissions(accessor);
    }

    @Override // com.cloud.tmc.kernel.security.AccessControlManagement
    public boolean needPermissionCheck(Accessor accessor, List<? extends Guard> list) {
        return this.bridgeAccessPoint.needPermissionCheck(accessor, list);
    }

    @Override // com.cloud.tmc.kernel.security.AccessControlManagement
    public boolean permissionCheck(Permission permission, Accessor accessor) {
        return this.bridgeAccessPoint.checkPermission(permission, accessor, this.bridgeContext, this.helper);
    }
}
