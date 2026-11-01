package com.cloud.tmc.integration.permission;

import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
public interface TmcNativePermissionRequestProxy extends Proxiable {
    void addPermRequestCallback(int i11, IPermissionRequestCallback iPermissionRequestCallback);

    int getRequestCode();

    void onRequestPermissionResult(int i11, String[] strArr, int[] iArr);
}
