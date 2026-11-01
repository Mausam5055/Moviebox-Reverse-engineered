package com.cloud.tmc.integration.resource;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.SubPackageInfo;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0016J\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/integration/resource/SubPackageResourceManager;", "Lcom/cloud/tmc/integration/resource/ISubPackageResourceManager;", "()V", "getFilePath", "", "appModel", "Lcom/cloud/tmc/integration/model/AppModel;", "vUrl", "appId", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubPackageResourceManager implements ISubPackageResourceManager {
    @Override // com.cloud.tmc.integration.resource.ISubPackageResourceManager
    public String getFilePath(AppModel appModel, String vUrl) {
        List subPackagePages;
        Object next;
        if (appModel != null && vUrl != null && vUrl.length() != 0 && (subPackagePages = appModel.getSubPackagePages()) != null) {
            Iterator it = subPackagePages.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                SubPackageInfo subPackageInfo = (SubPackageInfo) next;
                String root = subPackageInfo.getRoot();
                if (root != null && root.length() != 0) {
                    if (StringsKt.W(vUrl, "https://" + appModel.getAppId() + ".miniapp.transsion.com/" + subPackageInfo.getRoot(), false, 2, null)) {
                        break;
                    }
                }
            }
            SubPackageInfo subPackageInfo2 = (SubPackageInfo) next;
            if (subPackageInfo2 != null) {
                String subUnzipFilePath = ((PathProxy) TmcProxy.get(PathProxy.class)).getTarUnCompressPath(appModel, subPackageInfo2.getSubPackageUrlMD5());
                TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "find path:" + subUnzipFilePath);
                if (subUnzipFilePath != null && subUnzipFilePath.length() != 0) {
                    String str = "https://" + appModel.getAppId() + ".miniapp.transsion.com/" + subPackageInfo2.getRoot();
                    Intrinsics.g(subUnzipFilePath, "subUnzipFilePath");
                    return StringsKt.R(vUrl, str, subUnzipFilePath, false);
                }
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.integration.resource.ISubPackageResourceManager
    public String getFilePath(String appId, String vUrl) {
        App appFindApp;
        if (appId == null || appId.length() == 0 || vUrl == null || vUrl.length() == 0 || (appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(appId)) == null) {
            return null;
        }
        return getFilePath(appFindApp.getAppModel(), vUrl);
    }
}
