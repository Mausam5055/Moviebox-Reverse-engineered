package com.cloud.tmc.miniapp.prepare.steps.singlepackage;

import android.content.Context;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.permission.proxy.AuthenticationProxy;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.kernel.resource.IPackageResourceManager;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class OooO0OO extends com.cloud.tmc.miniapp.prepare.steps.structure.OooO0OO {
    public final void OooO00o(AppModel appModel, List<File> list, Map<String, String> map, HashMap<String, String> map2, IPackageResourceManager iPackageResourceManager, String str) {
        if (list != null) {
            for (File file : list) {
                if (file.isDirectory()) {
                    OooO00o(appModel, Arrays.asList(file.listFiles()), map, map2, iPackageResourceManager, str + "/" + file.getName());
                } else {
                    String strGenerateVUrl = iPackageResourceManager.generateVUrl(file.getAbsolutePath(), appModel.getAppId(), file.getName(), str);
                    StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("StartStep:absPath:");
                    sbOooO00o.append(file.getAbsolutePath());
                    sbOooO00o.append(";vUrl:");
                    sbOooO00o.append(strGenerateVUrl);
                    TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, sbOooO00o.toString());
                    map.put(file.getName(), strGenerateVUrl);
                    if (file.getName().toLowerCase().contains(".html")) {
                        map2.put(file.getName(), strGenerateVUrl);
                    }
                    String str2 = this.OooO00o;
                    StringBuilder sbOooO00o2 = com.cloud.tmc.miniapp.OooO00o.OooO00o("Step_LoadStep: tar包结构: ");
                    sbOooO00o2.append(file.getName());
                    TmcLogger.d(str2, sbOooO00o2.toString());
                    TmcLogger.d(this.OooO00o, "Step_LoadStep: tar包结构: " + strGenerateVUrl);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.cloud.tmc.integration.proxy.FileProxy] */
    /* JADX WARN: Type inference failed for: r0v16, types: [com.cloud.tmc.integration.utils.AppPrepareUtils] */
    /* JADX WARN: Type inference failed for: r11v3, types: [com.cloud.tmc.integration.model.AppModel] */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.cloud.tmc.integration.model.AppModel] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r18v11 */
    /* JADX WARN: Type inference failed for: r1v19, types: [java.util.HashMap<?, ?>] */
    /* JADX WARN: Type inference failed for: r1v25, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.cloud.tmc.miniapp.utils.MiniAppLaunch] */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r20v7 */
    /* JADX WARN: Type inference failed for: r20v8 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r22v6, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r27v0, types: [com.cloud.tmc.miniapp.prepare.steps.OooO00o, com.cloud.tmc.miniapp.prepare.steps.singlepackage.OooO0OO] */
    /* JADX WARN: Type inference failed for: r2v10, types: [com.cloud.tmc.integration.model.AppModel] */
    /* JADX WARN: Type inference failed for: r30v10 */
    /* JADX WARN: Type inference failed for: r30v3 */
    /* JADX WARN: Type inference failed for: r30v4 */
    /* JADX WARN: Type inference failed for: r30v5 */
    /* JADX WARN: Type inference failed for: r30v6 */
    /* JADX WARN: Type inference failed for: r30v7 */
    /* JADX WARN: Type inference failed for: r30v8 */
    /* JADX WARN: Type inference failed for: r30v9 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v17, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v18, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.cloud.tmc.miniapp.prepare.steps.structure.OooO0OO
    public PrepareCallbackParam OooO0OO(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) {
        Object obj;
        ?? ListFilesInDir;
        ?? r30;
        ?? r31;
        ?? r22;
        ?? r20;
        Object obj2;
        ?? r17;
        ?? r11;
        String appId;
        Class<MiniAppConfigModel> cls;
        String str;
        ?? r12;
        ?? r13;
        Object obj3 = "frameworkConfig 不存在：";
        String str2 = "frameworkConfig.json error";
        String str3 = PrepareException.ERROR_MANIFEST_INFO;
        Class<MiniAppConfigModel> cls2 = MiniAppConfigModel.class;
        TraceLog.i(this.OooO00o, "startStep 创建normal app config");
        AppModel appModel = prepareContext.getAppModel();
        if (appModel.getPermissions() != null) {
            ((AuthenticationProxy) TmcProxy.get(AuthenticationProxy.class)).setPermissionModel(appModel.getAppId(), appModel.getPermissions());
        }
        TmcAppInfoManager tmcAppInfoManager = this.OooO0O0;
        Context startContext = prepareContext.getStartContext();
        StringBuilder sb2 = new StringBuilder();
        Object obj4 = "appConfig.json";
        sb2.append(appModel.getAppId());
        String str4 = "_used";
        sb2.append("_used");
        tmcAppInfoManager.updateAppModel(startContext, appModel, sb2.toString());
        if (this.OooO0O0.getPreUnzipStatus(prepareContext.getStartContext(), appModel.getAppId())) {
            TmcLogger.d(TmcConstants.TAG, "startStep_使用了预先解压的包");
            ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(appModel.getAppId(), "preunzip");
            this.OooO0O0.updatePreUnzipStatus(prepareContext.getStartContext(), appModel.getAppId(), false);
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        IPackageResourceManager iPackageResourceManager = (IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class);
        Object obj5 = map4;
        try {
            obj = map3;
            try {
                ListFilesInDir = this.OooO0o0.listFilesInDir(prepareContext.getFrameWorkModel());
                try {
                    if (ListFilesInDir == 0 || ListFilesInDir.isEmpty()) {
                        str4 = "_used";
                        cls2 = cls2;
                        str3 = PrepareException.ERROR_MANIFEST_INFO;
                        r20 = "frameworkConfig.json error";
                        obj4 = obj4;
                        r22 = obj5;
                        obj2 = obj;
                        r31 = map;
                        obj = "frameworkConfig 不存在：";
                        r11 = appModel;
                        r17 = map2;
                        AppPrepareUtils.INSTANCE.clearAllFilesForVersion(prepareContext.getStartContext(), prepareContext.getFrameWorkModel());
                        prepareController.moveToError(new PrepareException("14", "frameworkzip error"));
                    } else {
                        AppModel frameWorkModel = prepareContext.getFrameWorkModel();
                        ?? r23 = obj5;
                        obj2 = obj;
                        obj = "frameworkConfig 不存在：";
                        r11 = appModel;
                        HashMap map5 = map2;
                        r20 = "frameworkConfig.json error";
                        str2 = r30;
                        r31 = map;
                        str4 = "_used";
                        obj4 = obj4;
                        cls2 = cls2;
                        str3 = PrepareException.ERROR_MANIFEST_INFO;
                        OooO00o(frameWorkModel, ListFilesInDir, map5, r23, iPackageResourceManager, "");
                        r17 = map5;
                        r22 = r23;
                        try {
                            List<File> listListFilesInDir = this.OooO0o0.listFilesInDir(r11);
                            if (listListFilesInDir == null || listListFilesInDir.isEmpty()) {
                                AppPrepareUtils.INSTANCE.clearAllFilesForVersion(prepareContext.getStartContext(), r11);
                                prepareController.moveToError(new PrepareException(str2, "miniappzip error"));
                            } else {
                                OooO00o(r11, listListFilesInDir, r31, r22, iPackageResourceManager, "");
                                if (AppUtils.INSTANCE.checkUesCommonresApp(r11.getMiniappSubtype())) {
                                    try {
                                        AppModel commonResModel = prepareContext.getCommonResModel();
                                        if (commonResModel != null) {
                                            List<File> listListFilesInDir2 = this.OooO0o0.listFilesInDir(commonResModel);
                                            if (listListFilesInDir2 == null || listListFilesInDir2.isEmpty()) {
                                                AppPrepareUtils.INSTANCE.clearAllFilesForVersion(prepareContext.getStartContext(), commonResModel);
                                                prepareController.moveToError(new PrepareException(str2, "miniappzip error"));
                                            } else {
                                                OooO00o(commonResModel, listListFilesInDir2, obj2, r22, iPackageResourceManager, "");
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        prepareController.moveToError(new PrepareException(str2, th2.getMessage()));
                                        TmcLogger.d(this.OooO00o, "资源文件出错");
                                    }
                                }
                            }
                        } catch (Throwable th3) {
                            prepareController.moveToError(new PrepareException(str2, th3.getMessage()));
                            TmcLogger.d(this.OooO00o, "资源文件出错");
                        }
                    }
                } catch (Throwable unused) {
                    prepareController.moveToError(new PrepareException("14", "frameworkzip error"));
                    TmcLogger.d(this.OooO00o, "请先下载框架包资源文件：");
                    r11 = obj3;
                    r17 = appModel;
                    obj2 = obj5;
                    r20 = ListFilesInDir;
                    r22 = obj5;
                    r31 = r30;
                }
            } catch (Throwable unused2) {
                ListFilesInDir = "frameworkConfig.json error";
                obj5 = obj;
                str2 = r30;
                r30 = map;
                obj = "frameworkConfig 不存在：";
                obj3 = appModel;
                appModel = map2;
            }
        } catch (Throwable unused3) {
            obj = "frameworkConfig 不存在：";
            ListFilesInDir = "frameworkConfig.json error";
            obj3 = appModel;
            str2 = r30;
            obj5 = map3;
            appModel = map2;
            r30 = map;
        }
        AppLoadResult appLoadResult = new AppLoadResult();
        appLoadResult.appVersion = MiniAppLaunch.INSTANCE.getMiniAppVersion(r11);
        appLoadResult.mainHtmlUrl = FrameworkConstants.TEMPLATE_URL;
        AppModel commonResModel2 = prepareContext.getCommonResModel();
        if (commonResModel2 != null) {
            appId = commonResModel2.getAppId();
            if (appId != null && !appId.isEmpty()) {
                this.OooO0O0.updateAppModel(prepareContext.getStartContext(), commonResModel2, appId + str4);
                try {
                    prepareContext.getAppModel().setCurrentUseCommonResVersion(commonResModel2.getDeployVersion());
                } catch (Throwable unused4) {
                }
            }
        } else {
            appId = "";
        }
        String appId2 = r11.getAppId();
        Object obj6 = obj4;
        try {
            String str5 = (String) r31.get(obj6);
            if (str5 != null) {
                cls = cls2;
                try {
                    appLoadResult.appConfigModel = (MiniAppConfigModel) JsonUtil.INSTANCE.fromJson(this.OooO0o0.readFile2String(iPackageResourceManager.getFilePath(appId2, str5)), cls);
                } catch (Throwable unused5) {
                    TmcLogger.d(this.OooO00o, "appConfig不存在：");
                    str = str3;
                    prepareController.moveToError(new PrepareException(str, "appConfig.json error"));
                }
            } else {
                cls = cls2;
            }
            str = str3;
        } catch (Throwable unused6) {
            cls = cls2;
        }
        try {
            String str6 = (String) r17.get(obj6);
            if (str6 != null) {
                appLoadResult.frameworkConfigModel = (MiniAppConfigModel) JsonUtil.INSTANCE.fromJson(this.OooO0o0.readFile2String(iPackageResourceManager.getFilePath("100000", str6)), cls);
            }
            r12 = obj;
            r13 = r20;
        } catch (Throwable unused7) {
            ?? r14 = r20;
            prepareController.moveToError(new PrepareException(str, r14));
            ?? r15 = obj;
            TmcLogger.d(this.OooO00o, r15);
            r13 = r14;
            r12 = r15;
        }
        if (appId != null && !appId.isEmpty()) {
            try {
                String str7 = (String) obj2.get(obj6);
                if (str7 != null) {
                    appLoadResult.commonResAppConfigModel = (MiniAppConfigModel) JsonUtil.INSTANCE.fromJson(this.OooO0o0.readFile2String(iPackageResourceManager.getFilePath(appId, str7)), cls);
                }
            } catch (Throwable unused8) {
                prepareController.moveToError(new PrepareException(str, r13));
                TmcLogger.d(this.OooO00o, r12);
            }
        }
        appLoadResult.htmlMap = r22;
        appLoadResult.appType = TmcConstants.TYPE_WEB_TINY;
        appLoadResult.frameWorkModel = prepareContext.getFrameWorkModel();
        new PrepareCallbackParam(prepareContext).appLoadResult = appLoadResult;
        PrepareCallbackParam prepareCallbackParam = new PrepareCallbackParam(prepareContext);
        prepareCallbackParam.appLoadResult = appLoadResult;
        return prepareCallbackParam;
    }
}
