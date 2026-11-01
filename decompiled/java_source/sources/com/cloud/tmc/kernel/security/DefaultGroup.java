package com.cloud.tmc.kernel.security;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public enum DefaultGroup implements Group {
    INTERNAL("internal", "first party"),
    PARTNER("partner", "second party"),
    EXTERNAL("external", "third party");

    private String description;
    private String groupName;
    private List<Permission> permissions;

    DefaultGroup(String str, String str2) {
        this.groupName = str;
        this.description = str2;
    }

    @Override // com.cloud.tmc.kernel.security.Group
    public void assignPermissions(List<? extends Permission> list) {
        if (this.permissions == null) {
            this.permissions = new ArrayList();
        }
        this.permissions.addAll(list);
    }

    public void clearPermissions() {
        List<Permission> list = this.permissions;
        if (list != null) {
            list.clear();
        }
    }

    @Override // com.cloud.tmc.kernel.security.Group
    public String description() {
        return this.description;
    }

    @Override // com.cloud.tmc.kernel.security.Group
    public String groupName() {
        return this.groupName;
    }

    @Override // com.cloud.tmc.kernel.security.Group
    public List<? extends Permission> permissions() {
        return this.permissions;
    }
}
