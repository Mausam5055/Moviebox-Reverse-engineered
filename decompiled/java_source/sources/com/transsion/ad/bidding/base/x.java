package com.transsion.ad.bidding.base;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.interfacz.TAdditionalListener;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsion.ad.ps.installed.AppInstallManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class x extends TAdditionalListener {
    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onAdActivate(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onAdActivate(additionalInfo);
        AppInstallManager appInstallManager = AppInstallManager.f42196a;
        String packageName = additionalInfo.getPackageName();
        if (packageName == null) {
            packageName = "ew没有传递过来包名";
        }
        AppInstalledBean appInstalledBeanA = appInstallManager.a(packageName);
        appInstalledBeanA.setECPM(additionalInfo.getECPM());
        appInstalledBeanA.setSource(AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_EW);
        appInstalledBeanA.setHorizontalImageUrl(additionalInfo.getImageUrl());
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        appInstallManager.e(applicationA, appInstalledBeanA);
    }
}
