package com.cloud.tmc.miniapp.utils;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.callback.ISubpackageLoadCheckCallback;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.model.PrepareData;
import com.cloud.tmc.integration.model.SubPackageInfo;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.SubpackageAppPrepareUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.bridge.MiniAppUpdateBridge;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.proxy.IClientStarter;
import com.cloud.tmc.miniapp.utils.toast.ToastUtils;
import com.cloud.tmc.miniapp.utils.toast.config.ToastType;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooOOO {
    public static final OooOOO OooO00o = new OooOOO();
    public static final Lazy OooO0O0 = LazyKt.b(OooO0O0.OooO00o);

    public static final class OooO00o extends com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO00o {
        public final /* synthetic */ com.cloud.tmc.miniapp.prepare.callback.OooO0O0 OooO00o;
        public final /* synthetic */ String OooO0O0;

        public OooO00o(com.cloud.tmc.miniapp.prepare.callback.OooO0O0 oooO0O0, String str) {
            this.OooO00o = oooO0O0;
            this.OooO0O0 = str;
        }

        /* JADX WARN: Code duplicated, block: B:36:0x005b  */
        /* JADX WARN: Code duplicated, block: B:40:0x0067  */
        /* JADX WARN: Code duplicated, block: B:41:0x006a  */
        @Override // com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO00o, com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void onPackageLoadFailed(PrepareData prepareData, PrepareException prepareException) {
            String str;
            com.cloud.tmc.miniapp.prepare.callback.OooO0O0 oooO0O0 = this.OooO00o;
            OooOOO oooOOO = OooOOO.OooO00o;
            String code = prepareException != null ? prepareException.getCode() : null;
            if (code == null) {
                str = MiniAppUpdateBridge.ERROR_MSG_100013;
            } else {
                int iHashCode = code.hashCode();
                if (iHashCode != 52) {
                    if (iHashCode != 53) {
                        if (iHashCode != 55) {
                            if (iHashCode != 1568) {
                                if (iHashCode == 1571 ? code.equals("14") : iHashCode == 1572 && code.equals(PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION)) {
                                    str = MiniAppUpdateBridge.ERROR_MSG_100012;
                                }
                            } else if (code.equals(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY)) {
                                str = MiniAppUpdateBridge.ERROR_MSG_100010;
                            }
                        } else if (code.equals("7")) {
                            str = MiniAppUpdateBridge.ERROR_MSG_100011;
                        }
                        str = MiniAppUpdateBridge.ERROR_MSG_100013;
                    } else if (code.equals("5")) {
                        str = MiniAppUpdateBridge.ERROR_MSG_100011;
                    } else {
                        str = MiniAppUpdateBridge.ERROR_MSG_100013;
                    }
                } else if (code.equals("4")) {
                    str = MiniAppUpdateBridge.ERROR_MSG_100010;
                } else {
                    str = MiniAppUpdateBridge.ERROR_MSG_100013;
                }
            }
            oooO0O0.OooO00o(str);
            oooOOO.OooO00o().remove(this.OooO0O0);
        }

        @Override // com.cloud.tmc.miniapp.prepare.steps.subpackage.OooO00o, com.cloud.tmc.miniapp.prepare.steps.OooOo
        public void onPackageLoadSuccess() {
            this.OooO00o.OooO00o();
            OooOOO.OooO00o.OooO00o().remove(this.OooO0O0);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<ConcurrentHashMap<String, String>> {
        public static final OooO0O0 OooO00o = new OooO0O0();

        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return new ConcurrentHashMap();
        }
    }

    public static final void OooO00o(String path, AppModel appModel, String root, Bundle startParams, Bundle sceneParams, Context context, ISubpackageLoadCheckCallback loadCheckCallback) {
        String str;
        String str2;
        Intrinsics.h(path, "$path");
        Intrinsics.h(appModel, "$appModel");
        Intrinsics.h(root, "$root");
        Intrinsics.h(startParams, "$startParams");
        Intrinsics.h(sceneParams, "$sceneParams");
        Intrinsics.h(context, "$context");
        Intrinsics.h(loadCheckCallback, "$loadCheckCallback");
        OooOOO oooOOO = OooO00o;
        if (appModel != null) {
            try {
                String appId = appModel.getAppId();
                if (appId == null) {
                    return;
                }
                StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                String str3 = String.format("%s_%s", Arrays.copyOf(new Object[]{appId, root}, 2));
                Intrinsics.g(str3, "format(format, *args)");
                if (oooOOO.OooO00o().containsKey(str3)) {
                    return;
                }
                oooOOO.OooO00o().put(str3, root);
                try {
                    PrepareContext prepareContext = new PrepareContext(context, appId, startParams, sceneParams, false, null, null, null, 240, null);
                    prepareContext.setAppModel(appModel);
                    String string = context.getString(R.string.dialog_loading_tv);
                    Intrinsics.g(string, "context.getString(R.string.dialog_loading_tv)");
                    ToastUtils.showLoading$default(string, ToastType.LOADING.INSTANCE, 0, 0L, false, null, null, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null);
                    try {
                        str2 = str3;
                        try {
                            ((IClientStarter) TmcProxy.get(IClientStarter.class)).createSubpackagePrepareController(prepareContext, new com.cloud.tmc.miniapp.defaultimpl.OooO0OO(prepareContext, new OooOOOO(str2, loadCheckCallback, path)), 1, root).start();
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            OooO00o.OooO00o().remove(str2);
                            str = "";
                            try {
                                TmcLogger.e(str, th);
                                return;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        str2 = str3;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    str = "";
                }
            } catch (Throwable th6) {
                th = th6;
                str = "";
            }
            TmcLogger.e(str, th);
        }
    }

    @JvmStatic
    public static final void OooO00o(String appId, String openSubpackageRoot, Bundle startParams, Bundle sceneParams, Context context, com.cloud.tmc.miniapp.prepare.callback.OooO0O0 preloadCallback) {
        String str;
        List subPackagePages;
        boolean z10 = false;
        Intrinsics.h(appId, "appId");
        Intrinsics.h(openSubpackageRoot, "openSubpackageRoot");
        Intrinsics.h(startParams, "startParams");
        Intrinsics.h(sceneParams, "sceneParams");
        Intrinsics.h(context, "context");
        Intrinsics.h(preloadCallback, "preloadCallback");
        try {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str2 = String.format("%s_%s", Arrays.copyOf(new Object[]{appId, openSubpackageRoot}, 2));
            Intrinsics.g(str2, "format(format, *args)");
            OooOOO oooOOO = OooO00o;
            if (oooOOO.OooO00o().containsKey(str2)) {
                ((MiniAppUpdateBridge.OooOO0) preloadCallback).OooO00o(MiniAppUpdateBridge.ERROR_MSG_10009);
                return;
            }
            oooOOO.OooO00o().put(str2, openSubpackageRoot);
            App appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(appId);
            AppModel appModel = appFindApp != null ? appFindApp.getAppModel() : null;
            try {
                if (appModel != null && (subPackagePages = appModel.getSubPackagePages()) != null && !subPackagePages.isEmpty()) {
                    if (OooO00o(context, appModel)) {
                        ((MiniAppUpdateBridge.OooOO0) preloadCallback).OooO00o(MiniAppUpdateBridge.ERROR_MSG_100013);
                        oooOOO.OooO00o().remove(str2);
                        return;
                    }
                    List<SubPackageInfo> subPackagePages2 = appModel.getSubPackagePages();
                    if (subPackagePages2 != null) {
                        for (SubPackageInfo subPackageInfo : subPackagePages2) {
                            if (TextUtils.equals(openSubpackageRoot, subPackageInfo.getRoot())) {
                                String subPackageUrlMD5 = subPackageInfo.getSubPackageUrlMD5();
                                if (Intrinsics.c(subPackageUrlMD5 != null ? Boolean.valueOf(SubpackageAppPrepareUtils.INSTANCE.checkTarUnCompressStatus(context, appId, subPackageUrlMD5)) : null, Boolean.TRUE)) {
                                    ((MiniAppUpdateBridge.OooOO0) preloadCallback).OooO00o();
                                    OooO00o.OooO00o().remove(str2);
                                    return;
                                }
                                z10 = true;
                            }
                        }
                    }
                    if (!z10) {
                        ((MiniAppUpdateBridge.OooOO0) preloadCallback).OooO00o(MiniAppUpdateBridge.ERROR_MSG_100014);
                        OooO00o.OooO00o().remove(str2);
                        return;
                    } else {
                        AppModel appModel2 = appModel;
                        PrepareContext prepareContext = new PrepareContext(context, appId, startParams, sceneParams, false, null, null, null, 240, null);
                        prepareContext.setAppModel(appModel2);
                        ((IClientStarter) TmcProxy.get(IClientStarter.class)).createSubpackagePrepareController(prepareContext, new com.cloud.tmc.miniapp.defaultimpl.OooO0OO(prepareContext, new OooO00o(preloadCallback, str2)), 3, openSubpackageRoot).start();
                        return;
                    }
                }
                ((MiniAppUpdateBridge.OooOO0) preloadCallback).OooO00o(MiniAppUpdateBridge.ERROR_MSG_100013);
                oooOOO.OooO00o().remove(str2);
            } catch (Throwable th2) {
                th = th2;
                try {
                    OooO00o.OooO00o().remove(str2);
                    str = "";
                    try {
                        TmcLogger.e(str, th);
                    } catch (Throwable th3) {
                        th = th3;
                        TmcLogger.e(str, th);
                    }
                } catch (Throwable th4) {
                    th = th4;
                    str = "";
                }
            }
        } catch (Throwable th5) {
            th = th5;
            str = "";
        }
    }

    @JvmStatic
    public static final boolean OooO00o(Context context, AppModel appModel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appModel, "appModel");
        if (!AppUtils.subpackageIsEnable()) {
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "检查是否为全量包：true（云控开关未开）");
            return true;
        }
        String mainPackageUrl = appModel.getMainPackageUrl();
        if (mainPackageUrl == null || mainPackageUrl.length() == 0) {
            TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "检查是否为全量包：true（appInfo主包地址为空），appVersion：" + appModel.getDeployVersion());
            return true;
        }
        if (!AppPrepareUtils.INSTANCE.checkZipDownloadStatus(context, appModel)) {
            return false;
        }
        TmcLogger.d(TmcConstants.SUBPACKAGE_COMMON_TAG, "检查是否为全量包：true（本地已有整包资源下载），appVersion：" + appModel.getDeployVersion());
        return true;
    }

    @JvmStatic
    public static final boolean OooO00o(AppModel appModel) {
        String mainPackageUrl;
        return (!AppUtils.subpackageIsEnable() || appModel == null || (mainPackageUrl = appModel.getMainPackageUrl()) == null || mainPackageUrl.length() == 0) ? false : true;
    }

    @JvmStatic
    public static final boolean OooO00o(final String path, final AppModel appModel, final Context context, final Bundle startParams, final Bundle sceneParams, final ISubpackageLoadCheckCallback loadCheckCallback) {
        List subPackagePages;
        List<SubPackageInfo> subPackagePages2;
        String subPackageUrlMD5;
        Intrinsics.h(path, "path");
        Intrinsics.h(appModel, "appModel");
        Intrinsics.h(context, "context");
        Intrinsics.h(startParams, "startParams");
        Intrinsics.h(sceneParams, "sceneParams");
        Intrinsics.h(loadCheckCallback, "loadCheckCallback");
        try {
            if (!OooO00o(context, appModel) && path.length() != 0 && (subPackagePages = appModel.getSubPackagePages()) != null && !subPackagePages.isEmpty() && (subPackagePages2 = appModel.getSubPackagePages()) != null) {
                for (SubPackageInfo subPackageInfo : subPackagePages2) {
                    final String root = subPackageInfo.getRoot();
                    if (root != null && StringsKt.W(path, root, false, 2, null) && (subPackageUrlMD5 = subPackageInfo.getSubPackageUrlMD5()) != null) {
                        if (!SubpackageAppPrepareUtils.INSTANCE.checkTarUnCompressStatus(context, appModel.getAppId(), subPackageUrlMD5)) {
                            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.utils.m
                                @Override // java.lang.Runnable
                                public final void run() {
                                    OooOOO.OooO00o(path, appModel, root, startParams, sceneParams, context, loadCheckCallback);
                                }
                            });
                            return true;
                        }
                        return false;
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("", th2);
        }
        return false;
    }

    public final ConcurrentHashMap<String, String> OooO00o() {
        return (ConcurrentHashMap) OooO0O0.getValue();
    }
}
