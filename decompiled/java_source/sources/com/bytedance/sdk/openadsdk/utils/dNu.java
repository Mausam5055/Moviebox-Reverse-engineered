package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class dNu {
    public static void Sj() {
        Context contextSj = com.bytedance.sdk.openadsdk.core.dNu.Sj();
        if (contextSj != null && com.bytedance.sdk.component.utils.Zq.EjP()) {
            String packageName = contextSj.getPackageName();
            int i11 = contextSj.getApplicationInfo().targetSdkVersion;
            try {
                String[] strArr = contextSj.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
                if (strArr == null || strArr.length <= 0) {
                    return;
                }
                List<String> listSP = sP();
                for (String str : strArr) {
                    if (str != null) {
                        listSP.remove(str);
                    }
                }
                if (listSP.isEmpty()) {
                    return;
                }
                for (String str2 : listSP) {
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static List<String> sP() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.INTERNET");
        arrayList.add("android.permission.ACCESS_NETWORK_STATE");
        arrayList.add("android.permission.WAKE_LOCK");
        return arrayList;
    }
}
