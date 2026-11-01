package com.cloud.tmc.kernel.security;

import com.cloud.tmc.integration.constants.IntegrationConstants;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public class DefaultPermission implements Permission {
    private String authority;
    private String description;
    public static final DefaultPermission ALL = new AnonymousClass1("ALL", 0, IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, "");
    private static final /* synthetic */ DefaultPermission[] $VALUES = $values();

    /* JADX INFO: renamed from: com.cloud.tmc.kernel.security.DefaultPermission$1, reason: invalid class name */
    final enum AnonymousClass1 extends DefaultPermission {
        private AnonymousClass1(String str, int i11, String str2, String str3) {
            super(str, i11, str2, str3);
        }
    }

    private static /* synthetic */ DefaultPermission[] $values() {
        return new DefaultPermission[]{ALL};
    }

    private DefaultPermission(String str, int i11, String str2, String str3) {
        super(str, i11);
        this.authority = str2;
        this.description = str3;
    }

    public static DefaultPermission valueOf(String str) {
        return (DefaultPermission) Enum.valueOf(DefaultPermission.class, str);
    }

    public static DefaultPermission[] values() {
        return (DefaultPermission[]) $VALUES.clone();
    }

    @Override // com.cloud.tmc.kernel.security.Permission
    public String authority() {
        return this.authority;
    }

    @Override // com.cloud.tmc.kernel.security.Permission
    public String description() {
        return this.description;
    }
}
