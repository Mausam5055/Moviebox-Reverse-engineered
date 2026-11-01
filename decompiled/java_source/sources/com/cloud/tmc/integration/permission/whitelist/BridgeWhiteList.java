package com.cloud.tmc.integration.permission.whitelist;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class BridgeWhiteList {
    private static List<String> whiteList;

    static {
        ArrayList arrayList = new ArrayList();
        whiteList = arrayList;
        arrayList.add("remoteLog");
    }

    public static boolean isInWhiteList(String str) {
        return whiteList.contains(str);
    }
}
