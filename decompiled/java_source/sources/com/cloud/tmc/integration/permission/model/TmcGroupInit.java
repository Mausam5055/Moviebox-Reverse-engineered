package com.cloud.tmc.integration.permission.model;

import com.cloud.tmc.integration.permission.PermissionConfig;
import com.cloud.tmc.kernel.extension.bridge.BridgePermission;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.security.DefaultGroup;
import com.cloud.tmc.kernel.security.Permission;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class TmcGroupInit {
    private static final String TAG = "Tmcintegration:" + TmcGroupInit.class.getSimpleName();
    private static boolean isInited = false;

    public static synchronized void init() {
        if (isInited) {
            return;
        }
        isInited = true;
        synchronized (TmcGroupInit.class) {
            initLegacyGroup();
            initGroupAppDefault();
        }
    }

    private static void initGroupAppDefault() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BridgePermission("forExample", "forExample"));
        DefaultGroup.EXTERNAL.assignPermissions(arrayList);
        DefaultGroup.INTERNAL.assignPermissions(arrayList);
        DefaultGroup.PARTNER.assignPermissions(arrayList);
    }

    private static void initLegacyGroup() {
        new HashMap();
        Map<String, Map<String, Permission>> groupPermissionMap = PermissionConfig.getInstance().getGroupPermissionMap();
        DefaultGroup[] defaultGroupArr = {DefaultGroup.INTERNAL, DefaultGroup.PARTNER, DefaultGroup.EXTERNAL};
        for (int i11 = 0; i11 < 3; i11++) {
            defaultGroupArr[i11].clearPermissions();
        }
        for (int i12 = 0; i12 < 3; i12++) {
            DefaultGroup defaultGroup = defaultGroupArr[i12];
            Map<String, Permission> map = groupPermissionMap.get(defaultGroup.groupName());
            if (map != null && map.values() != null) {
                defaultGroup.assignPermissions(new ArrayList(map.values()));
            }
        }
        for (int i13 = 0; i13 < 3; i13++) {
            DefaultGroup defaultGroup2 = defaultGroupArr[i13];
            TmcLogger.d(TAG, "DefaultGroup  init result  group=" + defaultGroup2.groupName() + ", permissions=" + defaultGroup2.permissions());
        }
    }
}
