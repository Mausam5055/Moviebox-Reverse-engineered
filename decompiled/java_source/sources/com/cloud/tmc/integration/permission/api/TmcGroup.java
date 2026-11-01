package com.cloud.tmc.integration.permission.api;

import com.cloud.tmc.kernel.security.Group;
import com.cloud.tmc.kernel.security.Permission;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public enum TmcGroup implements Group {
    LEVEL_HIGH("level_high", "level_high"),
    LEVEL_ABOVE_MEDIUM("level_abovemedium", "level_abovemedium"),
    LEVEL_MEDIUM("level_medium", "level_medium"),
    LEVEL_LOW("level_low", "level_low"),
    LEVEL_NONE("level_none", "level_none"),
    LEVEL_APP_DEFAULT("level_app_default", "level_app_default"),
    LEVEL_EMPTY("level_empty", "level_empty");

    private String desc;
    private String level;
    private List<Permission> permissions;

    TmcGroup(String str, String str2) {
        this.level = str;
        this.desc = str2;
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
        return this.desc;
    }

    @Override // com.cloud.tmc.kernel.security.Group
    public String groupName() {
        return this.level;
    }

    @Override // com.cloud.tmc.kernel.security.Group
    public List<? extends Permission> permissions() {
        return this.permissions;
    }
}
