package com.cloud.tmc.kernel.point;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.security.Accessor;
import com.cloud.tmc.kernel.security.Group;
import com.cloud.tmc.kernel.security.Guard;
import com.cloud.tmc.kernel.security.Permission;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.invoke.extension.BridgeAccessExtension")
public interface BridgeAccessPoint extends Extension {
    boolean asyncCheckPermission(Permission permission, Accessor accessor, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper);

    boolean bizCheckPermission(Permission permission, Accessor accessor, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper);

    boolean checkPermission(Permission permission, Accessor accessor, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper);

    Group manageAccessorGroup(Accessor accessor);

    List<Permission> manageAccessorPermissions(Accessor accessor);

    boolean needPermissionCheck(Accessor accessor, List<? extends Guard> list);
}
