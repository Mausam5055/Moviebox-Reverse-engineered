package com.pgl.ssdk;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AccessibilityManager f40194a;

    private static AccessibilityManager a(Context context) {
        if (f40194a == null) {
            f40194a = (AccessibilityManager) context.getSystemService("accessibility");
        }
        return f40194a;
    }

    public static String b(Context context) {
        AccessibilityManager accessibilityManagerA;
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        if (context == null || (accessibilityManagerA = a(context)) == null || (enabledAccessibilityServiceList = accessibilityManagerA.getEnabledAccessibilityServiceList(-1)) == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < enabledAccessibilityServiceList.size(); i11++) {
            AccessibilityServiceInfo accessibilityServiceInfo = enabledAccessibilityServiceList.get(i11);
            if (accessibilityServiceInfo != null) {
                sb2.append(String.format("%s#%s", accessibilityServiceInfo.getResolveInfo().serviceInfo.packageName, accessibilityServiceInfo.getResolveInfo().serviceInfo.name));
                if (i11 != enabledAccessibilityServiceList.size() - 1) {
                    sb2.append(",");
                }
            }
        }
        return sb2.toString();
    }
}
