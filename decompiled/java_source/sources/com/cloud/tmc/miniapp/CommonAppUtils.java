package com.cloud.tmc.miniapp;

import android.content.Context;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.intf.ICommonApp;

/* JADX INFO: loaded from: classes3.dex */
public final class CommonAppUtils implements ICommonApp {
    public static final CommonAppUtils INSTANCE = new CommonAppUtils();

    private CommonAppUtils() {
    }

    @Override // com.cloud.tmc.kernel.intf.ICommonApp
    public boolean getDefaultAutoAgreePrivacy() {
        return true;
    }

    @Override // com.cloud.tmc.kernel.intf.ICommonApp
    public int getDefaultMultiTaskCount() {
        return 0;
    }

    @Override // com.cloud.tmc.kernel.intf.ICommonApp
    public String getStartFromChannel() {
        return "mb";
    }

    @Override // com.cloud.tmc.kernel.intf.ICommonApp
    public boolean isTargetApp(Context context) {
        return AppUtils.INSTANCE.isMovieBox(context);
    }
}
