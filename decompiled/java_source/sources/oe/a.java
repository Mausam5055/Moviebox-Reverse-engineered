package oe;

import android.app.UiModeManager;
import android.content.Context;
import com.iab.omid.library.mmadbridge.adsession.DeviceCategory;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static UiModeManager f70965a;

    public static DeviceCategory a() {
        UiModeManager uiModeManager = f70965a;
        if (uiModeManager == null) {
            return DeviceCategory.OTHER;
        }
        int currentModeType = uiModeManager.getCurrentModeType();
        if (currentModeType != 1) {
            return currentModeType != 4 ? DeviceCategory.OTHER : DeviceCategory.CTV;
        }
        return DeviceCategory.MOBILE;
    }

    public static void b(Context context) {
        if (context != null) {
            f70965a = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
