package com.cloud.tmc.miniapp.prepare.steps.subpackage;

import android.content.Context;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.permission.proxy.AuthenticationProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.resource.ISubPackageResourceManager;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.integration.utils.SubpackageAppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.resource.IPackageResourceManager;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO0o extends com.cloud.tmc.miniapp.prepare.steps.structure.OooO0OO {
    public final String OooO;
    public final Integer OooOO0;
    public final OooOO0 OooOO0O;

    /* JADX WARN: Multi-variable type inference failed */
    public OooO0o() {
        this(null, 0 == true ? 1 : 0, 3);
    }

    public OooO0o(String str, Integer num) {
        this.OooO = str;
        this.OooOO0 = num;
        this.OooOO0O = new OooOO0();
    }

    public /* synthetic */ OooO0o(String str, Integer num, int i11) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? 1 : null);
    }

    public final void OooO00o(AppModel appModel, PrepareController prepareController, Map map, Map map2, IPackageResourceManager iPackageResourceManager, AppLoadResult appLoadResult) {
        String filePath;
        String mainPackageUrlEncryption;
        try {
            if (!this.OooOO0O.OooO0O0) {
                filePath = iPackageResourceManager.getFilePath(appModel != null ? appModel.getAppId() : null, (String) map.get("appConfig.json"));
            } else if (appModel == null || (mainPackageUrlEncryption = appModel.getMainPackageUrlEncryption()) == null || mainPackageUrlEncryption.length() == 0) {
                filePath = null;
            } else {
                filePath = ((PathProxy) TmcProxy.get(PathProxy.class)).getTarUnCompressPath(appModel, appModel.getMainPackageUrlEncryption()) + File.separator + "appConfig.json";
            }
            TmcLogger.d(this.OooO00o, "appConfigFilePath:" + filePath);
            String file2String = filePath != null ? this.OooO0o0.readFile2String(filePath) : null;
            if (file2String == null || file2String.length() == 0) {
                TmcLogger.d(this.OooO00o, "在" + filePath + "里读到的内容为空");
            } else {
                MiniAppConfigModel miniAppConfigModel = (MiniAppConfigModel) JsonUtil.INSTANCE.fromJson(file2String, MiniAppConfigModel.class);
                appLoadResult.appConfigModel = miniAppConfigModel;
                TmcLogger.d(this.OooO00o, "setAppConfig finish,isEmpty:" + (miniAppConfigModel != null));
            }
        } catch (Throwable unused) {
            TmcLogger.d(this.OooO00o, "appConfig不存在：");
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException(PrepareException.ERROR_MANIFEST_INFO, "appConfig.json error"));
            }
        }
        try {
            String str = (String) map2.get("appConfig.json");
            if (str != null) {
                String filePath2 = iPackageResourceManager.getFilePath("100000", str);
                appLoadResult.frameworkConfigModel = (MiniAppConfigModel) JsonUtil.INSTANCE.fromJson(filePath2 != null ? this.OooO0o0.readFile2String(filePath2) : null, MiniAppConfigModel.class);
            }
        } catch (Throwable unused2) {
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException(PrepareException.ERROR_MANIFEST_INFO, "frameworkConfig.json error"));
            }
            TmcLogger.d(this.OooO00o, "frameworkConfig 不存在：");
        }
    }

    public final void OooO00o(AppModel appModel, List<? extends File> list, HashMap<String, String> map, HashMap<String, String> map2, IPackageResourceManager iPackageResourceManager, String str) {
        for (File file : list) {
            if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null) {
                    OooO00o(appModel, ArraysKt.K0(fileArrListFiles), map, map2, iPackageResourceManager, str + "/" + file.getName());
                }
            } else {
                String vUrl = iPackageResourceManager.generateVUrl(file.getAbsolutePath(), appModel.getAppId(), file.getName(), str);
                TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "SubpackageStartStep:absPath:" + file.getAbsolutePath() + ";vUrl:" + vUrl);
                String name = file.getName();
                Intrinsics.g(name, "f.name");
                Intrinsics.g(vUrl, "vUrl");
                map.put(name, vUrl);
                String name2 = file.getName();
                Intrinsics.g(name2, "f.name");
                Locale locale = Locale.getDefault();
                Intrinsics.g(locale, "getDefault()");
                String lowerCase = name2.toLowerCase(locale);
                Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                if (StringsKt.c0(lowerCase, ".html", false, 2, null)) {
                    map2.put(file.getName(), vUrl);
                }
                TmcLogger.d(this.OooO00o, "Step_LoadStep: tar包结构: " + file.getName());
                TmcLogger.d(this.OooO00o, "Step_LoadStep: tar包结构: " + vUrl);
            }
        }
    }

    public final void OooO00o(PrepareController prepareController, PrepareContext prepareContext, AppModel appModel, HashMap<String, String> map, HashMap<String, String> map2, HashMap<String, String> map3, IPackageResourceManager iPackageResourceManager, String str) {
        try {
            AppModel frameWorkModel = prepareContext.getFrameWorkModel();
            if (frameWorkModel != null) {
                List<File> listListFilesInDir = this.OooO0o0.listFilesInDir(frameWorkModel);
                if (listListFilesInDir != null && !listListFilesInDir.isEmpty()) {
                    OooO00o(frameWorkModel, listListFilesInDir, map2, map3, iPackageResourceManager, "");
                }
                AppPrepareUtils.INSTANCE.clearAllFilesForVersion(prepareContext.getStartContext(), frameWorkModel);
                if (prepareController != null) {
                    prepareController.moveToError(new PrepareException("14", "frameworkzip error"));
                    return;
                }
                return;
            }
        } catch (Throwable unused) {
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException("14", "frameworkzip error"));
            }
            TmcLogger.d(this.OooO00o, "请先下载框架包资源文件：");
        }
        try {
            Context startContext = prepareContext.getStartContext();
            if (appModel != null && startContext != null) {
                List<File> listListFilesInDir2 = this.OooO0o0.listFilesInDir(appModel, str);
                if (listListFilesInDir2 != null && !listListFilesInDir2.isEmpty()) {
                    this.OooOO0O.OooO00o();
                    if (this.OooOO0O.OooO0O0) {
                        return;
                    }
                    OooO00o(appModel, listListFilesInDir2, map, map3, iPackageResourceManager, "");
                    return;
                }
                SubpackageAppPrepareUtils.INSTANCE.clearAllFilesForVersion(startContext, appModel, str);
                if (prepareController != null) {
                    prepareController.moveToError(new PrepareException(PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION, "miniappzip error"));
                }
            }
        } catch (Throwable th2) {
            if (prepareController != null) {
                prepareController.moveToError(new PrepareException(PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION, th2.getMessage()));
            }
            TmcLogger.d(this.OooO00o, "资源文件出错");
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.structure.OooO0OO
    public void OooO00o(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo, PrepareCallbackParam prepareCallbackParam) {
        String str;
        Integer num = this.OooOO0O.OooO0o0;
        if (num != null && 1 == num.intValue() && (str = this.OooOO0O.OooO0OO) != null && str.length() != 0) {
            AppModel appModel = prepareContext.getAppModel();
            String appId = appModel != null ? appModel.getAppId() : null;
            if (appId != null && appId.length() != 0) {
                Context startContext = prepareContext.getStartContext();
                if (startContext == null) {
                    super.OooO00o(prepareController, prepareContext, o000oooo, prepareCallbackParam);
                    return;
                }
                KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
                StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                AppModel appModel2 = prepareContext.getAppModel();
                String str2 = String.format(TmcConstants.SUBPACKAGE_LOAD_SYNC_LOCK_STATUS_KEY_FORMAT, Arrays.copyOf(new Object[]{appModel2 != null ? appModel2.getMainPackageUrlEncryption() : null}, 1));
                Intrinsics.g(str2, "format(format, *args)");
                int i11 = kVStorageProxy.getInt(startContext, TmcConstants.SUBPACKAGE_STORAGE_FILE, str2) + 1;
                if (i11 >= 2) {
                    kVStorageProxy.remove(startContext, TmcConstants.SUBPACKAGE_STORAGE_FILE, str2);
                    super.OooO00o(prepareController, prepareContext, o000oooo, prepareCallbackParam);
                    return;
                } else {
                    kVStorageProxy.putInt(startContext, TmcConstants.SUBPACKAGE_STORAGE_FILE, str2, i11);
                    if (prepareController != null) {
                        prepareController.finish();
                        return;
                    }
                    return;
                }
            }
        }
        super.OooO00o(prepareController, prepareContext, o000oooo, prepareCallbackParam);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.structure.OooO0OO
    public PrepareCallbackParam OooO0OO(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) {
        try {
            TraceLog.i(this.OooO00o, "startStep 创建normal app config");
            AppModel appModel = prepareContext.getAppModel();
            this.OooOO0O.OooO00o(appModel, this.OooO, prepareContext, this.OooOO0);
            String strOooO00o = this.OooOO0O.OooO00o(appModel);
            if ((appModel != null ? appModel.getPermissions() : null) != null) {
                ((AuthenticationProxy) TmcProxy.get(AuthenticationProxy.class)).setPermissionModel(appModel.getAppId(), appModel.getPermissions());
            }
            this.OooO0O0.updateAppModel(prepareContext.getStartContext(), appModel, (appModel != null ? appModel.getAppId() : null) + "_used");
            if (this.OooO0O0.getPreUnzipStatus(prepareContext.getStartContext(), appModel != null ? appModel.getAppId() : null)) {
                TmcLogger.d(TmcConstants.TAG, "startStep_使用了预先解压的包");
                ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(appModel != null ? appModel.getAppId() : null, "preunzip");
                this.OooO0O0.updatePreUnzipStatus(prepareContext.getStartContext(), appModel != null ? appModel.getAppId() : null, false);
            }
            HashMap<String, String> map = new HashMap<>();
            HashMap<String, String> map2 = new HashMap<>();
            HashMap<String, String> map3 = new HashMap<>();
            IPackageResourceManager manager = (IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class);
            if (strOooO00o != null) {
                Intrinsics.g(manager, "manager");
                OooO00o(prepareController, prepareContext, appModel, map, map2, map3, manager, strOooO00o);
            }
            AppLoadResult appLoadResult = new AppLoadResult();
            appLoadResult.appVersion = MiniAppLaunch.INSTANCE.getMiniAppVersion(appModel);
            appLoadResult.mainHtmlUrl = FrameworkConstants.TEMPLATE_URL;
            Intrinsics.g(manager, "manager");
            Object obj = TmcProxy.get(ISubPackageResourceManager.class);
            Intrinsics.g(obj, "get(ISubPackageResourceManager::class.java)");
            OooO00o(appModel, prepareController, map, map2, manager, appLoadResult);
            appLoadResult.htmlMap = map3;
            appLoadResult.appType = TmcConstants.TYPE_WEB_TINY;
            appLoadResult.frameWorkModel = prepareContext.getFrameWorkModel();
            new PrepareCallbackParam(prepareContext).appLoadResult = appLoadResult;
            PrepareCallbackParam prepareCallbackParam = new PrepareCallbackParam(prepareContext);
            prepareCallbackParam.appLoadResult = appLoadResult;
            return prepareCallbackParam;
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
            return null;
        }
    }
}
