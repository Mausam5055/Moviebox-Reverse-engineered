package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.callback.PrivacyCallback;
import com.cloud.tmc.integration.point.PermissionDialogPoint;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class PermissionDialogPointImp implements PermissionDialogPoint {
    public PrivacyCallback OooO00o;

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.integration.point.PermissionDialogPoint
    public void privacyDialogDismiss(String appId, long j11) {
        Intrinsics.h(appId, "appId");
        PrivacyCallback privacyCallback = this.OooO00o;
        if (privacyCallback != null) {
            privacyCallback.privacyDismiss(appId, j11);
        }
    }

    @Override // com.cloud.tmc.integration.point.PermissionDialogPoint
    public void registerCallback(PrivacyCallback privacyCallback) {
        Intrinsics.h(privacyCallback, "privacyCallback");
        this.OooO00o = privacyCallback;
    }
}
