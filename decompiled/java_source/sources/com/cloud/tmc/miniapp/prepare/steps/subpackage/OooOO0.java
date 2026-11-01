package com.cloud.tmc.miniapp.prepare.steps.subpackage;

import android.text.TextUtils;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.model.SubPackageInfo;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.resource.IPackageResourceManager;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooOO0 {
    public SubPackageInfo OooO00o;
    public boolean OooO0O0;
    public String OooO0OO;
    public AppModel OooO0Oo;
    public Integer OooO0o0 = 1;

    public final PointAnalyseType OooO00o(PointAnalyseType bundle) {
        Intrinsics.h(bundle, "bundle");
        if (this.OooO0O0) {
            String str = this.OooO0OO;
            if (str != null && str.length() != 0) {
                bundle.putData(TmcConstants.TRACK_MPU_SPECIAL_SUBPKG, TmcConstants.MPU_SPECIAL_SUBPKG_VALUE_SUB_PREFIX + this.OooO0OO);
            }
        } else {
            bundle.putData(TmcConstants.TRACK_MPU_SPECIAL_SUBPKG, "mainPkg");
        }
        return bundle;
    }

    public final String OooO00o(AppModel appModel) {
        if (this.OooO0O0) {
            SubPackageInfo subPackageInfo = this.OooO00o;
            if (subPackageInfo != null) {
                return subPackageInfo.getSubPackageUrlMD5();
            }
        } else if (appModel != null) {
            return appModel.getMainPackageUrlEncryption();
        }
        return null;
    }

    public final void OooO00o() {
        String appId;
        try {
            AppModel appModel = this.OooO0Oo;
            if (appModel == null || (appId = appModel.getAppId()) == null || appId.length() == 0 || this.OooO0O0) {
                return;
            }
            IPackageResourceManager iPackageResourceManager = (IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class);
            AppModel appModel2 = this.OooO0Oo;
            String vhost = iPackageResourceManager.getVhost(appModel2 != null ? appModel2.getAppId() : null);
            for (Map.Entry<String, String> entry : iPackageResourceManager.getVUrl2FilePathMap().entrySet()) {
                String key = entry.getKey();
                if (key != null && key.length() != 0) {
                    String key2 = entry.getKey();
                    Intrinsics.g(key2, "entry.key");
                    Intrinsics.g(vhost, "vhost");
                    if (StringsKt.W(key2, vhost, false, 2, null)) {
                        iPackageResourceManager.getVUrl2FilePathMap().remove(entry.getKey());
                        TmcLogger.d("SubpackageStepHelper", "remove vurlPathMap key:" + ((Object) entry.getKey()) + ",value:" + ((Object) entry.getValue()));
                    }
                }
            }
            for (Map.Entry<String, String> entry2 : iPackageResourceManager.getFilePath2VUrlMap().entrySet()) {
                String value = entry2.getValue();
                if (value != null && value.length() != 0) {
                    String value2 = entry2.getValue();
                    Intrinsics.g(value2, "entry.value");
                    Intrinsics.g(vhost, "vhost");
                    if (StringsKt.W(value2, vhost, false, 2, null)) {
                        iPackageResourceManager.getFilePath2VUrlMap().remove(entry2.getKey());
                        TmcLogger.d("SubpackageStepHelper", "remove vurlMap key:" + ((Object) entry2.getKey()) + ",value:" + ((Object) entry2.getValue()));
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("SubpackageStepHelper", "", th2);
        }
    }

    public final void OooO00o(AppModel appModel, String str, PrepareContext context, Integer num) {
        List<SubPackageInfo> subPackagePages;
        boolean z10;
        List<SubPackageInfo> subPackagePages2;
        List<String> pages;
        List subPackagePages3;
        List mainPackagePages;
        Intrinsics.h(context, "context");
        try {
            this.OooO0Oo = appModel;
            boolean z11 = true;
            this.OooO0O0 = !TextUtils.isEmpty(str);
            this.OooO0OO = str;
            this.OooO0o0 = num;
            if (TextUtils.isEmpty(str)) {
                String string = context.getStartParams().getString("page");
                if (!TextUtils.isEmpty(string)) {
                    if (appModel == null || (mainPackagePages = appModel.getMainPackagePages()) == null) {
                        z10 = false;
                    } else {
                        Iterator it = mainPackagePages.iterator();
                        z10 = false;
                        while (it.hasNext()) {
                            if (TextUtils.equals((String) it.next(), string)) {
                                z10 = true;
                            }
                        }
                    }
                    if (!z10) {
                        if (((appModel == null || (subPackagePages3 = appModel.getSubPackagePages()) == null || !(subPackagePages3.isEmpty() ^ true)) ? false : true) && (subPackagePages2 = appModel.getSubPackagePages()) != null) {
                            loop1: for (SubPackageInfo subPackageInfo : subPackagePages2) {
                                List<String> pages2 = subPackageInfo.getPages();
                                if (!(pages2 == null || pages2.isEmpty()) && (pages = subPackageInfo.getPages()) != null) {
                                    for (String str2 : pages) {
                                        if (TextUtils.equals(subPackageInfo.getRoot() + "/" + str2, string)) {
                                            this.OooO0OO = subPackageInfo.getRoot();
                                            break loop1;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (TextUtils.isEmpty(this.OooO0OO) || appModel == null) {
                return;
            }
            List subPackagePages4 = appModel.getSubPackagePages();
            if (subPackagePages4 != null && !subPackagePages4.isEmpty()) {
                z11 = false;
            }
            if (z11 || (subPackagePages = appModel.getSubPackagePages()) == null) {
                return;
            }
            for (SubPackageInfo subPackageInfo2 : subPackagePages) {
                if (Intrinsics.c(this.OooO0OO, subPackageInfo2.getRoot())) {
                    this.OooO00o = subPackageInfo2;
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("", th2);
        }
    }

    public final SubPackageInfo OooO0O0() {
        if (this.OooO0O0) {
            return this.OooO00o;
        }
        return null;
    }
}
