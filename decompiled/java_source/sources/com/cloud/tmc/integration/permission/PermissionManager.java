package com.cloud.tmc.integration.permission;

import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.security.Accessor;
import com.cloud.tmc.kernel.security.Group;
import com.cloud.tmc.kernel.security.Permission;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface PermissionManager {
    boolean asyncCheckPermission(Permission permission, Accessor accessor, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper);

    boolean bizCheckPermission(Permission permission, Accessor accessor, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper);

    boolean checkPermission(Permission permission, Accessor accessor, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper);

    void init(Accessor accessor);

    Group manageAccessorGroup(Accessor accessor);

    List<Permission> manageAccessorPermissions(Accessor accessor);
}
