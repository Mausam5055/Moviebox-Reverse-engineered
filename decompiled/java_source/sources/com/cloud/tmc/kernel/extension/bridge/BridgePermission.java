package com.cloud.tmc.kernel.extension.bridge;

import com.cloud.tmc.kernel.security.Permission;

/* JADX INFO: loaded from: classes3.dex */
public class BridgePermission implements Permission {
    private String authority;
    private String description;

    public BridgePermission(String str, String str2) {
        this.authority = str;
        this.description = str2;
    }

    @Override // com.cloud.tmc.kernel.security.Permission
    public String authority() {
        return this.authority;
    }

    @Override // com.cloud.tmc.kernel.security.Permission
    public String description() {
        return this.description;
    }

    public String toString() {
        return "authority=" + this.authority + ",description=" + this.description;
    }
}
