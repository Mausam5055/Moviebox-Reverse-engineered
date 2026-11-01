package com.cloud.tmc.kernel.security;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface AccessControlManagement {
    boolean asyncPermissionCheck(Permission permission, Accessor accessor);

    boolean bizPermissionCheck(Permission permission, Accessor accessor);

    Group manageAccessorGroup(Accessor accessor);

    List<Permission> manageAccessorPermissions(Accessor accessor);

    boolean needPermissionCheck(Accessor accessor, List<? extends Guard> list);

    boolean permissionCheck(Permission permission, Accessor accessor);
}
