package com.cloud.tmc.integration.permission;

import androidx.collection.y0;

/* JADX INFO: loaded from: classes3.dex */
public class TmcNativePermissionRequestManager implements TmcNativePermissionRequestProxy {
    private y0 callbackArray = new y0();
    private Integer lastRequestCode = 0;

    @Override // com.cloud.tmc.integration.permission.TmcNativePermissionRequestProxy
    public void addPermRequestCallback(int i11, IPermissionRequestCallback iPermissionRequestCallback) {
        y0 y0Var = this.callbackArray;
        if (y0Var != null) {
            y0Var.l(i11, iPermissionRequestCallback);
        }
    }

    @Override // com.cloud.tmc.integration.permission.TmcNativePermissionRequestProxy
    public int getRequestCode() {
        Integer numValueOf;
        synchronized (this) {
            numValueOf = Integer.valueOf(this.lastRequestCode.intValue() + 1);
            this.lastRequestCode = numValueOf;
        }
        return numValueOf.intValue();
    }

    @Override // com.cloud.tmc.integration.permission.TmcNativePermissionRequestProxy
    public void onRequestPermissionResult(int i11, String[] strArr, int[] iArr) {
        IPermissionRequestCallback iPermissionRequestCallback;
        y0 y0Var = this.callbackArray;
        if (y0Var == null || (iPermissionRequestCallback = (IPermissionRequestCallback) y0Var.f(i11)) == null) {
            return;
        }
        iPermissionRequestCallback.onRequestPermissionResult(i11, strArr, iArr);
        this.callbackArray.m(i11);
    }
}
