package com.cloud.tmc.integration.utils;

import android.content.Context;
import android.content.pm.ShortcutManager;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ViewGroup;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.config.utils.XLogUtil;
import com.cloud.hisavana.sdk.t5;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.event.EventHelper;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.SubPackageInfo;
import com.cloud.tmc.integration.model.Subpackage;
import com.cloud.tmc.integration.model.WorkerStore;
import com.cloud.tmc.integration.proxy.LauncherReportProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.PageContext;
import com.cloud.tmc.kernel.bridge.RenderBridge;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.kernel.worker.JSI;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.SystemUtils;
import com.cloud.tmc.miniutils.util.Utils;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0007J\b\u0010\u001b\u001a\u00020\u0006H\u0002J&\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010 \u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u000bJ\u0010\u0010!\u001a\u00020\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020\u0006J\u0015\u0010&\u001a\u00020\u00062\b\u0010'\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010(J\b\u0010)\u001a\u00020\u0006H\u0007J\u0010\u0010*\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010$J\u000e\u0010+\u001a\u00020\b2\u0006\u0010,\u001a\u00020-J\u000e\u0010.\u001a\u00020\b2\u0006\u0010,\u001a\u00020-J+\u0010/\u001a\u0004\u0018\u00010\u000b2\u0006\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u0001032\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u00105J+\u00106\u001a\u0004\u0018\u00010\u000b2\u0006\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u0001032\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u00105J\u0010\u00107\u001a\u00020\u000b2\b\u00100\u001a\u0004\u0018\u000101J+\u00108\u001a\u0004\u0018\u00010\u000b2\u0006\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u0001032\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u00105J\u0012\u00109\u001a\u00020\u00172\b\u0010#\u001a\u0004\u0018\u00010$H\u0002J\u0012\u0010:\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010\u0019H\u0007J\u0010\u0010<\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010$J\u001c\u0010=\u001a\u00020\u00062\b\u0010>\u001a\u0004\u0018\u00010?2\b\u0010@\u001a\u0004\u0018\u00010AH\u0007J\u0010\u0010B\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010$J\u001c\u0010C\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010\u00192\b\u0010D\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010E\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010$J\u0010\u0010F\u001a\u00020\u00062\b\u00100\u001a\u0004\u0018\u000101J\u0010\u0010G\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010$J\u0010\u0010H\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010$J\u001a\u0010H\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010@\u001a\u0004\u0018\u00010AJ&\u0010I\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010J0\u0010I\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u00102\b\u0010@\u001a\u0004\u0018\u00010AJ\b\u0010J\u001a\u0004\u0018\u00010\u0014J\u0012\u0010J\u001a\u0004\u0018\u00010\u00142\b\u0010@\u001a\u0004\u0018\u00010AJ\u001a\u0010K\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000bJ\u0018\u0010L\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000bJ*\u0010M\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020O2\b\u0010\u001f\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010P\u001a\u00020\u000bJJ\u0010Q\u001a\u00020\u00172\b\u0010>\u001a\u0004\u0018\u00010?2\b\u0010R\u001a\u0004\u0018\u00010\u000b2\u0018\b\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010T2\b\b\u0002\u0010U\u001a\u00020\u00062\b\b\u0002\u0010V\u001a\u00020\u0006H\u0007J4\u0010W\u001a\u00020\u00172\b\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010R\u001a\u00020\u000b2\u0018\b\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010TH\u0007J>\u0010X\u001a\u00020\u00172\b\u0010>\u001a\u0004\u0018\u00010?2\b\u0010R\u001a\u0004\u0018\u00010\u000b2\u0006\u0010Y\u001a\u00020\u00062\u0018\b\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010TH\u0007J4\u0010Z\u001a\u00020\u00172\u0006\u0010[\u001a\u00020\\2\b\u0010R\u001a\u0004\u0018\u00010\u000b2\u0018\b\u0002\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010TH\u0007J\b\u0010]\u001a\u00020\u0006H\u0007J\u000e\u0010^\u001a\u00020\u00172\u0006\u0010_\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R.\u0010\r\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R.\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000ej\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006`"}, d2 = {"Lcom/cloud/tmc/integration/utils/AppUtils;", "", "()V", "DENSITY", "", "ISGET", "", "SCREEN_HEIGHT", "", "SCREEN_WIDTH", "TAG", "", "customDarkConfig", "customDarkLaunchParams", "Ljava/util/HashMap;", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;", "Lkotlin/collections/HashMap;", "customLightConfig", "customLightLaunchParams", "customTabBar", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", "miniappCustomConfig", "checkAndRemoveExtraPage", "", "mStartParams", "Landroid/os/Bundle;", "mSceneParams", "checkAndroidVersionShowAddhomeDialog", "checkEnableSyncToPs", "enableCheckFromPs", "appId", "from", "checkGoHomeToHomePage", "checkMiniAppPrivacyAgreementDialogWhiteList", "checkShowCustomAddhomeDialog", "context", "Landroid/content/Context;", "showConfirmDialog", "checkUesCommonresApp", "miniappType", "(Ljava/lang/Integer;)Z", "enableWebViewDebugger", "getConfigKey", "getContainerHeight", "pageContext", "Lcom/cloud/tmc/integration/structure/PageContext;", "getContainerWidth", "getCurrentPackageEncryptionUrl", "appModel", "Lcom/cloud/tmc/integration/model/AppModel;", "subPackageInfo", "Lcom/cloud/tmc/integration/model/SubPackageInfo;", "isFullPackage", "(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/SubPackageInfo;Ljava/lang/Boolean;)Ljava/lang/String;", "getCurrentPackageUniqueName", "getPackageDownloadUrl", "getPackageUniqueSign", "initWidthAndHeight", "isExitPage", "bundle", "isHolaBrowser", "isHomepage", "page", "Lcom/cloud/tmc/integration/structure/Page;", TmcConstants.EXTRA_APP_LOAD_RESULT, "Lcom/cloud/tmc/integration/structure/AppLoadResult;", "isLauncher", "isLegalPath", "path", "isMovieBox", "isSubPackageApp", "isTspotBrowser", "queryMiniappCustomConfig", "queryMiniappCustomLaunchParams", "queryMiniappCustomTabBar", "queryShortcutExist", "queytShortcutBySystemApi", "reportStartTime", "startUsageTime", "", "startType", "sendApiCallbackToWorker", EventConstants.KEY_EVENT_NAME, "ext", "", "keepCallback", "closeKeepCallback", "sendAppOrPageReadyToRender", "sendEventOrLifecycleToWorker", RequestParameters.SUBRESOURCE_LIFECYCLE, "sendToApp", "app", "Lcom/cloud/tmc/integration/structure/App;", "subpackageIsEnable", "updateMiniappCustomConfig", XLogUtil.TAG, BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AppUtils {
    private static float DENSITY = 0.0f;
    private static boolean ISGET = false;
    private static int SCREEN_HEIGHT = 0;
    private static int SCREEN_WIDTH = 0;
    private static final String TAG = "AppUtils";
    private static HashMap<String, MiniAppConfigModel.PagesBean> customDarkLaunchParams;
    private static HashMap<String, MiniAppConfigModel.PagesBean> customLightLaunchParams;
    private static MiniAppConfigModel.TabBarBean customTabBar;
    public static final AppUtils INSTANCE = new AppUtils();
    private static String miniappCustomConfig = "";
    private static String customDarkConfig = "";
    private static String customLightConfig = "";

    private AppUtils() {
    }

    @JvmStatic
    public static final void checkAndRemoveExtraPage(Bundle mStartParams, Bundle mSceneParams) {
        String string;
        if (mStartParams != null) {
            try {
                string = mStartParams.getString("page");
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2.getMessage(), th2);
                return;
            }
        } else {
            string = null;
        }
        String str = "";
        if (string != null && string.length() != 0) {
            if (isLegalPath(mSceneParams, string)) {
                mStartParams.putString(TmcConstants.EXTRA_USED_PAGE, string);
            }
            String string2 = mStartParams.getString("page");
            if (string2 == null) {
                string2 = "";
            }
            mStartParams.putString(TmcConstants.EXTRA_PAGE_COPY, string2);
            mStartParams.remove("page");
        }
        String string3 = mSceneParams != null ? mSceneParams.getString("page") : null;
        if (string3 != null && string3.length() != 0) {
            if (isLegalPath(mSceneParams, string3)) {
                mSceneParams.putString(TmcConstants.EXTRA_USED_PAGE, string3);
            }
            String string4 = mSceneParams.getString("page");
            if (string4 != null) {
                str = string4;
            }
            mSceneParams.putString(TmcConstants.EXTRA_PAGE_COPY, str);
            mSceneParams.remove("page");
        }
    }

    private final boolean checkAndroidVersionShowAddhomeDialog() {
        int configTargetInt = 35;
        try {
            configTargetInt = MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_SHOW_ADD_HOME_CUSTOM_DIALOG, 35);
        } catch (Throwable unused) {
        }
        return Build.VERSION.SDK_INT < configTargetInt;
    }

    public static /* synthetic */ boolean checkEnableSyncToPs$default(AppUtils appUtils, boolean z10, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "";
        }
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        return appUtils.checkEnableSyncToPs(z10, str, str2);
    }

    public static /* synthetic */ boolean checkShowCustomAddhomeDialog$default(AppUtils appUtils, Context context, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        return appUtils.checkShowCustomAddhomeDialog(context, z10);
    }

    @JvmStatic
    public static final boolean enableWebViewDebugger() {
        try {
            boolean zIsLoggable = Log.isLoggable("miniapp.webviewdebug", 3);
            TmcLogger.d(TAG, "enableWebViewDebugger -> " + zIsLoggable);
            return zIsLoggable;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "enableWebViewDebugger", th2);
            return false;
        }
    }

    public static /* synthetic */ String getCurrentPackageEncryptionUrl$default(AppUtils appUtils, AppModel appModel, SubPackageInfo subPackageInfo, Boolean bool, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            bool = Boolean.FALSE;
        }
        return appUtils.getCurrentPackageEncryptionUrl(appModel, subPackageInfo, bool);
    }

    public static /* synthetic */ String getCurrentPackageUniqueName$default(AppUtils appUtils, AppModel appModel, SubPackageInfo subPackageInfo, Boolean bool, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            bool = Boolean.FALSE;
        }
        return appUtils.getCurrentPackageUniqueName(appModel, subPackageInfo, bool);
    }

    public static /* synthetic */ String getPackageUniqueSign$default(AppUtils appUtils, AppModel appModel, SubPackageInfo subPackageInfo, Boolean bool, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            bool = Boolean.FALSE;
        }
        return appUtils.getPackageUniqueSign(appModel, subPackageInfo, bool);
    }

    private final void initWidthAndHeight(Context context) {
        if (context == null || ISGET) {
            return;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i11 = displayMetrics.widthPixels;
        int i12 = displayMetrics.heightPixels;
        DENSITY = displayMetrics.density;
        if (i11 < i12) {
            SCREEN_WIDTH = i11;
            SCREEN_HEIGHT = i12;
        } else {
            SCREEN_WIDTH = i12;
            SCREEN_HEIGHT = i11;
        }
        ISGET = true;
    }

    @JvmStatic
    public static final boolean isExitPage(Bundle bundle) {
        if (bundle == null || !bundle.containsKey(TmcConstants.EXTRA_EXIT_PAGE_DATA)) {
            return false;
        }
        boolean z10 = bundle.getBoolean(TmcConstants.EXTRA_EXIT_PAGE_DATA, false);
        bundle.remove(TmcConstants.EXTRA_EXIT_PAGE_DATA);
        return z10;
    }

    @JvmStatic
    public static final boolean isHomepage(Page page, AppLoadResult appLoadResult) {
        MiniAppConfigModel miniAppConfigModel;
        List<String> list;
        List<String> list2;
        if (appLoadResult == null || (miniAppConfigModel = appLoadResult.appConfigModel) == null || (list = miniAppConfigModel.pages) == null || !(!list.isEmpty())) {
            return false;
        }
        MiniAppConfigModel miniAppConfigModel2 = appLoadResult.appConfigModel;
        return StringsKt.I(page != null ? page.getPagePath() : null, (miniAppConfigModel2 == null || (list2 = miniAppConfigModel2.pages) == null) ? null : list2.get(0), false, 2, null) || (page != null && page.isTabPage());
    }

    @JvmStatic
    public static final boolean isLegalPath(Bundle bundle, String path) {
        MiniAppConfigModel miniAppConfigModel;
        List<String> list;
        MiniAppConfigModel miniAppConfigModel2;
        List<String> list2;
        MiniAppConfigModel miniAppConfigModel3;
        List<Subpackage> list3;
        List<String> pages;
        AppLoadResult appLoadResult = (AppLoadResult) BundleUtils.getParcelable(bundle, TmcConstants.EXTRA_APP_LOAD_RESULT);
        if (subpackageIsEnable()) {
            if (appLoadResult != null && (miniAppConfigModel3 = appLoadResult.appConfigModel) != null && (list3 = miniAppConfigModel3.subPackages) != null) {
                for (Subpackage subpackage : list3) {
                    List<String> pages2 = subpackage.getPages();
                    if (pages2 != null && !pages2.isEmpty() && (pages = subpackage.getPages()) != null) {
                        for (String str : pages) {
                            if (Intrinsics.c(subpackage.getRoot() + "/" + str, path)) {
                                return true;
                            }
                        }
                    }
                }
            }
            if (appLoadResult != null && (miniAppConfigModel2 = appLoadResult.appConfigModel) != null && (list2 = miniAppConfigModel2.pages) != null) {
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    if (Intrinsics.c((String) it.next(), path)) {
                        return true;
                    }
                }
            }
        } else if (appLoadResult != null && (miniAppConfigModel = appLoadResult.appConfigModel) != null && (list = miniAppConfigModel.pages) != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                if (Intrinsics.c((String) it2.next(), path)) {
                    return true;
                }
            }
        }
        return (path != null && StringsKt.W(path, "http://", false, 2, null)) || (path != null && StringsKt.W(path, "https://", false, 2, null));
    }

    public static /* synthetic */ void reportStartTime$default(AppUtils appUtils, String str, long j11, String str2, String str3, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str3 = "";
        }
        appUtils.reportStartTime(str, j11, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void reportStartTime$lambda$11(String appId, String str, long j11, String startType) {
        Intrinsics.h(appId, "$appId");
        Intrinsics.h(startType, "$startType");
        try {
            if (INSTANCE.checkEnableSyncToPs(true, appId, str)) {
                ((LauncherReportProxy) TmcProxy.get(LauncherReportProxy.class)).reportMiniAppStartTime(appId, j11, startType);
            }
        } catch (Throwable unused) {
        }
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendApiCallbackToWorker(Page page, String str) {
        sendApiCallbackToWorker$default(page, str, null, false, false, 28, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendApiCallbackToWorker(Page page, String str, Map<String, String> map) {
        sendApiCallbackToWorker$default(page, str, map, false, false, 24, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendApiCallbackToWorker(Page page, String str, Map<String, String> map, boolean z10) {
        sendApiCallbackToWorker$default(page, str, map, z10, false, 16, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendApiCallbackToWorker(Page page, String eventName, Map<String, String> ext, boolean keepCallback, boolean closeKeepCallback) {
        WorkerStore workerStore;
        App app;
        IEngine engineProxy;
        EngineRouter engineRouter;
        JSI workerById;
        if (page == null || (workerStore = (WorkerStore) page.getData(WorkerStore.class)) == null || (app = page.getApp()) == null || (engineProxy = app.getEngineProxy()) == null || (engineRouter = engineProxy.getEngineRouter()) == null || (workerById = engineRouter.getWorkerById(workerStore.workerId)) == null) {
            return;
        }
        JsonObjectUtils.Builder builderAddProperty = JsonObjectUtils.create().addProperty("url", page.getPagePath()).addProperty("renderId", page.getPageId());
        Intrinsics.g(builderAddProperty, "create()\n            .ad…Y_RENDER_ID, page.pageId)");
        if (ext != null) {
            for (Map.Entry<String, String> entry : ext.entrySet()) {
                builderAddProperty.addProperty(entry.getKey(), entry.getValue());
            }
        }
        if (keepCallback) {
            builderAddProperty.addProperty(EventConstants.KEY_ACTION, "keepalive_active");
        } else if (closeKeepCallback) {
            builderAddProperty.addProperty(EventConstants.KEY_ACTION, "keepalive_close");
        }
        EventHelper.dispatchApiCallbackToWorker(workerById, eventName, builderAddProperty.build());
    }

    public static /* synthetic */ void sendApiCallbackToWorker$default(Page page, String str, Map map, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            map = null;
        }
        if ((i11 & 8) != 0) {
            z10 = false;
        }
        if ((i11 & 16) != 0) {
            z11 = false;
        }
        sendApiCallbackToWorker(page, str, map, z10, z11);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendAppOrPageReadyToRender(Page page, String eventName) {
        Intrinsics.h(eventName, "eventName");
        sendAppOrPageReadyToRender$default(page, eventName, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendAppOrPageReadyToRender(Page page, String eventName, Map<String, String> ext) {
        AppLoadResult appLoadResult;
        String json;
        String str;
        AppModel appModel;
        AppModel appModel2;
        List<String> list;
        List<String> list2;
        Intrinsics.h(eventName, "eventName");
        TmcLogger.d("subPkg", "sendAppOrPageReadyToRender");
        String templateMiniappId = null;
        IRender render = page != null ? page.getRender() : null;
        if (render == null) {
            return;
        }
        TmcLogger.d("subPkg", "sendAppOrPageReadyToRender 01");
        App app = page.getApp();
        if (app == null || (appLoadResult = (AppLoadResult) app.getData(AppLoadResult.class)) == null) {
            return;
        }
        TmcLogger.d("subPkg", "sendAppOrPageReadyToRender 02");
        MiniAppConfigModel miniAppConfigModel = appLoadResult.appConfigModel;
        if (miniAppConfigModel == null || (json = TmcGsonUtilsKt.toJson(miniAppConfigModel)) == null) {
            return;
        }
        TmcLogger.d("subPkg", "sendAppOrPageReadyToRender 03");
        JsonElement string = JsonParser.parseString(json);
        JsonObject asJsonObject = string != null ? string.getAsJsonObject() : null;
        MiniAppConfigModel miniAppConfigModel2 = appLoadResult.appConfigModel;
        if (miniAppConfigModel2 == null || (list = miniAppConfigModel2.pages) == null || !(!list.isEmpty())) {
            str = "";
        } else {
            MiniAppConfigModel miniAppConfigModel3 = appLoadResult.appConfigModel;
            str = (miniAppConfigModel3 == null || (list2 = miniAppConfigModel3.pages) == null) ? null : list2.get(0);
        }
        TmcLogger.d("subPkg", "sendAppOrPageReadyToRender firstPage:" + str);
        JsonObjectUtils.Builder builderAdd = JsonObjectUtils.create().addProperty("url", str).addProperty("renderId", render.getRenderId()).addProperty(FrameworkConstants.GLOBAL_DATA_KEY_APP_PATH, "").addProperty(FrameworkConstants.GLOBAL_DATA_KEY_PAGE_PATH, page.getPagePath()).add(FrameworkConstants.GLOBAL_DATA_KEY_APP_JSON, asJsonObject);
        Intrinsics.g(builderAdd, "create()\n            .ad…EY_APP_JSON, appConfigJo)");
        try {
            App app2 = page.getApp();
            builderAdd.addProperty(TmcConstants.KEY_MINI_APPID, app2 != null ? app2.getAppId() : null);
            AppUtils appUtils = INSTANCE;
            App app3 = page.getApp();
            if (appUtils.checkUesCommonresApp((app3 == null || (appModel2 = app3.getAppModel()) == null) ? null : appModel2.getMiniappSubtype())) {
                App app4 = page.getApp();
                if (app4 != null && (appModel = app4.getAppModel()) != null) {
                    templateMiniappId = appModel.getTemplateMiniappId();
                }
                builderAdd.addProperty(TmcConstants.KEY_MINI_COMMONRES_ID, templateMiniappId);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
        if (ext != null) {
            for (Map.Entry<String, String> entry : ext.entrySet()) {
                builderAdd.addProperty(entry.getKey(), entry.getValue());
            }
        }
        RenderBridge renderBridge = render.getRenderBridge();
        if (renderBridge != null) {
            renderBridge.setGlobalObject(FrameworkConstants.GLOBAL_KEY_APP_READY, builderAdd.build());
        }
        TmcLogger.d("subPkg", "sendAppOrPageReadyToRender dispatchEventToRender eventName:" + eventName);
        EventHelper.dispatchEventToRender(render, eventName, builderAdd.build());
    }

    public static /* synthetic */ void sendAppOrPageReadyToRender$default(Page page, String str, Map map, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            map = null;
        }
        sendAppOrPageReadyToRender(page, str, map);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendEventOrLifecycleToWorker(Page page, String str, boolean z10) {
        sendEventOrLifecycleToWorker$default(page, str, z10, null, 8, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendEventOrLifecycleToWorker(Page page, String eventName, boolean lifecycle, Map<String, ? extends Object> ext) {
        WorkerStore workerStore;
        App app;
        IEngine engineProxy;
        EngineRouter engineRouter;
        JSI workerById;
        String json;
        if (page == null || (workerStore = (WorkerStore) page.getData(WorkerStore.class)) == null || (app = page.getApp()) == null || (engineProxy = app.getEngineProxy()) == null || (engineRouter = engineProxy.getEngineRouter()) == null || (workerById = engineRouter.getWorkerById(workerStore.workerId)) == null) {
            return;
        }
        JsonObject asJsonObject = null;
        if (ext != null) {
            try {
                json = TmcGsonUtilsKt.toJson(ext);
            } catch (Throwable unused) {
            }
        } else {
            json = null;
        }
        JsonElement string = JsonParser.parseString(json);
        if (string != null) {
            asJsonObject = string.getAsJsonObject();
        }
        JsonObjectUtils.Builder builderAddProperty = JsonObjectUtils.create(asJsonObject).addProperty("url", page.getPagePath()).addProperty("renderId", page.getPageId());
        Intrinsics.g(builderAddProperty, "create(extParams)\n      …Y_RENDER_ID, page.pageId)");
        if (lifecycle) {
            EventHelper.dispatchLifecycleToWorker(workerById, eventName, builderAddProperty.build());
        } else {
            EventHelper.dispatchEventToWorker(workerById, eventName, builderAddProperty.build());
        }
    }

    public static /* synthetic */ void sendEventOrLifecycleToWorker$default(Page page, String str, boolean z10, Map map, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            map = null;
        }
        sendEventOrLifecycleToWorker(page, str, z10, map);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendToApp(App app, String str) {
        Intrinsics.h(app, "app");
        sendToApp$default(app, str, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void sendToApp(App app, String eventName, Map<String, String> ext) {
        Intrinsics.h(app, "app");
        Page activePage = app.getActivePage();
        if (activePage == null) {
            return;
        }
        sendEventOrLifecycleToWorker(activePage, eventName, true, ext);
    }

    public static /* synthetic */ void sendToApp$default(App app, String str, Map map, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            map = null;
        }
        sendToApp(app, str, map);
    }

    @JvmStatic
    public static final boolean subpackageIsEnable() {
        return MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_MINI_SUBPACKAGE_ENABLE, true);
    }

    public final boolean checkEnableSyncToPs(boolean enableCheckFromPs, String appId, String from) {
        return false;
    }

    public final boolean checkGoHomeToHomePage(String appId) {
        Intrinsics.h(appId, "appId");
        try {
            Object objFromJson = GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_MINI_GO_HOME_ALLOW_ID, MiniAppConfigHelper.DEFAULT_GO_HOME_ALLOW_ID), (Class<Object>) List.class);
            List arrayList = objFromJson instanceof List ? (List) objFromJson : null;
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            return arrayList.contains(appId);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    public final boolean checkMiniAppPrivacyAgreementDialogWhiteList(String appId) {
        String privacyAgreementDialogWhiteListStr;
        ArrayList arrayList;
        if (appId == null || appId.length() == 0) {
            return false;
        }
        try {
            privacyAgreementDialogWhiteListStr = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_PRIVACY_AGREEMENT_DIALOG_WHITE_LIST_V4, "[]");
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            privacyAgreementDialogWhiteListStr = "[]";
        }
        try {
            Intrinsics.g(privacyAgreementDialogWhiteListStr, "privacyAgreementDialogWhiteListStr");
            Type type = new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.integration.utils.AppUtils$checkMiniAppPrivacyAgreementDialogWhiteList$whiteList$1
            }.getType();
            Intrinsics.g(type, "object :\n               …ayList<String>>() {}.type");
            arrayList = (ArrayList) TmcGsonUtils.fromJson(privacyAgreementDialogWhiteListStr, type);
        } catch (Throwable th3) {
            TmcLogger.e(TAG, th3);
            try {
                Type type2 = new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.integration.utils.AppUtils$checkMiniAppPrivacyAgreementDialogWhiteList$whiteList$2
                }.getType();
                Intrinsics.g(type2, "object : TypeToken<ArrayList<String>>() {}.type");
                arrayList = (ArrayList) TmcGsonUtils.fromJson("[]", type2);
            } catch (Throwable th4) {
                TmcLogger.e(TAG, th4);
                arrayList = new ArrayList();
            }
        }
        return arrayList.contains(appId);
    }

    public final boolean checkShowCustomAddhomeDialog(Context context, boolean showConfirmDialog) {
        Intrinsics.h(context, "context");
        if (showConfirmDialog) {
            try {
                if (MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_SHOW_ADD_HOME_CUSTOM_DIALOG, true) && isLauncher(context) && checkAndroidVersionShowAddhomeDialog()) {
                    return true;
                }
            } catch (Throwable unused) {
                return true;
            }
        }
        return false;
    }

    public final boolean checkUesCommonresApp(Integer miniappType) {
        return miniappType != null && miniappType.intValue() == 1;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final String getConfigKey(Context context) {
        Context applicationContext;
        String packageName = (context == null || (applicationContext = context.getApplicationContext()) == null) ? null : applicationContext.getPackageName();
        if (packageName == null) {
            return "";
        }
        switch (packageName.hashCode()) {
            case -2118895220:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_3)) {
                    return packageName;
                }
                break;
            case -2118895185:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_4)) {
                    return packageName;
                }
                break;
            case -1517286993:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_5)) {
                    return packageName;
                }
                break;
            case -1517286759:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_6)) {
                    return packageName;
                }
                break;
            case -1517286749:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_7)) {
                    return packageName;
                }
                break;
            case -1517286696:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_8)) {
                    return packageName;
                }
                break;
            case -1517286637:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_9)) {
                    return packageName;
                }
                break;
            case -1517286601:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_10)) {
                    return packageName;
                }
                break;
            case -1517286538:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_11)) {
                    return packageName;
                }
                break;
            case -1517286463:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_12)) {
                    return packageName;
                }
                break;
            case -1517286452:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_13)) {
                    return packageName;
                }
                break;
            case -950419827:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_2)) {
                    return packageName;
                }
                break;
            case -434014960:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_15)) {
                    return packageName;
                }
                break;
            case 591919119:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_1)) {
                    return packageName;
                }
                break;
            case 1760738547:
                if (!packageName.equals(TmcConstants.PACKAGE_MOVIE_BOX_14)) {
                    return packageName;
                }
                break;
            default:
                return packageName;
        }
        return TmcConstants.PACKAGE_MOVIE_BOX_1;
    }

    public final int getContainerHeight(PageContext pageContext) {
        int height;
        Intrinsics.h(pageContext, "pageContext");
        if (pageContext.getContentView() != null) {
            ViewGroup contentView = pageContext.getContentView();
            Intrinsics.e(contentView);
            height = contentView.getHeight();
        } else {
            height = 0;
        }
        if (height <= 0) {
            initWidthAndHeight(pageContext.getActivity());
        }
        return SCREEN_HEIGHT;
    }

    public final int getContainerWidth(PageContext pageContext) {
        int width;
        Intrinsics.h(pageContext, "pageContext");
        if (pageContext.getContentView() != null) {
            ViewGroup contentView = pageContext.getContentView();
            Intrinsics.e(contentView);
            width = contentView.getWidth();
        } else {
            width = 0;
        }
        if (width <= 0) {
            initWidthAndHeight(pageContext.getActivity());
        }
        return SCREEN_WIDTH;
    }

    public final String getCurrentPackageEncryptionUrl(AppModel appModel, SubPackageInfo subPackageInfo, Boolean isFullPackage) {
        Intrinsics.h(appModel, "appModel");
        if (Intrinsics.c(Boolean.TRUE, isFullPackage)) {
            return appModel.getPackageUrl_MD5();
        }
        return subPackageInfo != null ? subPackageInfo.getSubPackageUrlMD5() : appModel.getMainPackageUrlEncryption();
    }

    public final String getCurrentPackageUniqueName(AppModel appModel, SubPackageInfo subPackageInfo, Boolean isFullPackage) {
        Intrinsics.h(appModel, "appModel");
        if (Intrinsics.c(Boolean.TRUE, isFullPackage)) {
            return appModel.getAppId();
        }
        return subPackageInfo != null ? subPackageInfo.getRoot() : "mainPkg";
    }

    public final String getPackageDownloadUrl(AppModel appModel) {
        String packageUrl;
        if (appModel != null) {
            if (INSTANCE.checkUesCommonresApp(appModel.getMiniappSubtype())) {
                TmcLogger.d(TAG, "getPackageDownloadUrl: commonPackageUrl = " + appModel.getCompatiblePackageUrl());
                packageUrl = appModel.getCompatiblePackageUrl();
            } else {
                TmcLogger.d(TAG, "getPackageDownloadUrl: packageUrl = " + appModel.getPackageUrl());
                packageUrl = appModel.getPackageUrl();
            }
            if (packageUrl != null) {
                return packageUrl;
            }
        }
        return "";
    }

    public final String getPackageUniqueSign(AppModel appModel, SubPackageInfo subPackageInfo, Boolean isFullPackage) {
        String appId;
        Intrinsics.h(appModel, "appModel");
        try {
            if (Intrinsics.c(Boolean.TRUE, isFullPackage)) {
                appId = appModel.getAppId();
            } else if (subPackageInfo != null) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                String appId2 = appModel.getAppId();
                if (appId2 == null) {
                    appId2 = "";
                }
                String root = subPackageInfo.getRoot();
                if (root == null) {
                    root = "";
                }
                appId = String.format(TmcConstants.SUBPACKAGE_PKG_UNIQUE_SIGN_FORMAT, Arrays.copyOf(new Object[]{appId2, root}, 2));
                Intrinsics.g(appId, "format(format, *args)");
            } else {
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
                String appId3 = appModel.getAppId();
                if (appId3 == null) {
                    appId3 = "";
                }
                appId = String.format(TmcConstants.SUBPACKAGE_PKG_UNIQUE_SIGN_FORMAT, Arrays.copyOf(new Object[]{appId3, "mainPkg"}, 2));
                Intrinsics.g(appId, "format(format, *args)");
            }
            return appId;
        } catch (Throwable th2) {
            TmcLogger.e("", th2);
            return "";
        }
    }

    public final boolean isHolaBrowser(Context context) {
        Context applicationContext;
        return StringsKt.H((context == null || (applicationContext = context.getApplicationContext()) == null) ? null : applicationContext.getPackageName(), TmcConstants.PACKAGE_HI_BROWSER, true);
    }

    public final boolean isLauncher(Context context) {
        return true;
    }

    public final boolean isMovieBox(Context context) {
        Context applicationContext;
        String packageName = (context == null || (applicationContext = context.getApplicationContext()) == null) ? null : applicationContext.getPackageName();
        return StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_1, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_2, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_3, true) || StringsKt.I(packageName, TmcConstants.PACKAGE_MOVIE_BOX_4, false, 2, null) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_5, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_6, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_7, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_8, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_9, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_10, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_11, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_12, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_13, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_14, true) || StringsKt.H(packageName, TmcConstants.PACKAGE_MOVIE_BOX_15, true);
    }

    public final boolean isSubPackageApp(AppModel appModel) {
        HashMap subPackageUrls;
        try {
            return subpackageIsEnable() && appModel != null && (subPackageUrls = appModel.getSubPackageUrls()) != null && subPackageUrls.size() > 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean isTspotBrowser(Context context) {
        Context applicationContext;
        return StringsKt.H((context == null || (applicationContext = context.getApplicationContext()) == null) ? null : applicationContext.getPackageName(), TmcConstants.PACKAGE_TSPOT, true);
    }

    public final String queryMiniappCustomConfig(Context context) {
        try {
            JsonObject jsonObject = (JsonObject) new Gson().fromJson(miniappCustomConfig, JsonObject.class);
            if (SystemUtils.darkThemeIsEnabled(context)) {
                if (customDarkConfig.length() == 0) {
                    JsonObject asJsonObject = jsonObject.getAsJsonObject("dark");
                    Intrinsics.g(asJsonObject, "jsonObject.getAsJsonObject(\"dark\")");
                    customDarkConfig = TmcGsonUtilsKt.toJson(asJsonObject);
                }
                return customDarkConfig;
            }
            if (customLightConfig.length() == 0) {
                JsonObject asJsonObject2 = jsonObject.getAsJsonObject("light");
                Intrinsics.g(asJsonObject2, "jsonObject.getAsJsonObject(\"light\")");
                customLightConfig = TmcGsonUtilsKt.toJson(asJsonObject2);
            }
            return customLightConfig;
        } catch (Throwable unused) {
            return "";
        }
    }

    public final String queryMiniappCustomConfig(Context context, AppLoadResult appLoadResult) {
        String packageName;
        MiniAppConfigModel miniAppConfigModel;
        List<MiniAppConfigModel.PkgExtBean> list;
        MiniAppConfigModel miniAppConfigModel2;
        List<MiniAppConfigModel.PkgExtBean> list2;
        try {
            if (SystemUtils.darkThemeIsEnabled(context)) {
                if (customDarkConfig.length() == 0) {
                    packageName = context != null ? context.getPackageName() : null;
                    if (appLoadResult != null && (miniAppConfigModel2 = appLoadResult.appConfigModel) != null && (list2 = miniAppConfigModel2.pkgExts) != null) {
                        for (MiniAppConfigModel.PkgExtBean pkgExtBean : list2) {
                            if (Intrinsics.c(packageName, pkgExtBean.getPkg())) {
                                String json = GsonUtils.toJson(pkgExtBean.getDark());
                                Intrinsics.g(json, "toJson(it.dark)");
                                customDarkConfig = json;
                            }
                        }
                    }
                }
                return customDarkConfig;
            }
            if (customLightConfig.length() == 0) {
                packageName = context != null ? context.getPackageName() : null;
                if (appLoadResult != null && (miniAppConfigModel = appLoadResult.appConfigModel) != null && (list = miniAppConfigModel.pkgExts) != null) {
                    for (MiniAppConfigModel.PkgExtBean pkgExtBean2 : list) {
                        if (Intrinsics.c(packageName, pkgExtBean2.getPkg())) {
                            String json2 = GsonUtils.toJson(pkgExtBean2.getLight());
                            Intrinsics.g(json2, "toJson(it.light)");
                            customLightConfig = json2;
                        }
                    }
                }
            }
            return customLightConfig;
        } catch (Throwable unused) {
            return "";
        }
    }

    public final HashMap<String, MiniAppConfigModel.PagesBean> queryMiniappCustomLaunchParams() {
        try {
            if (SystemUtils.darkThemeIsEnabled(Utils.getApp())) {
                if (customDarkLaunchParams == null) {
                    Gson gson = new Gson();
                    customDarkLaunchParams = (HashMap) gson.fromJson(((JsonObject) gson.fromJson(miniappCustomConfig, JsonObject.class)).getAsJsonObject("dark").getAsJsonObject(TmcConstants.EXTRA_RES_LAUNCH_PARAMS), new TypeToken<HashMap<String, MiniAppConfigModel.PagesBean>>() { // from class: com.cloud.tmc.integration.utils.AppUtils$queryMiniappCustomLaunchParams$type$1
                    }.getType());
                }
                return customDarkLaunchParams;
            }
            if (customLightLaunchParams == null) {
                Gson gson2 = new Gson();
                customLightLaunchParams = (HashMap) gson2.fromJson(((JsonObject) gson2.fromJson(miniappCustomConfig, JsonObject.class)).getAsJsonObject("light").getAsJsonObject(TmcConstants.EXTRA_RES_LAUNCH_PARAMS), new TypeToken<HashMap<String, MiniAppConfigModel.PagesBean>>() { // from class: com.cloud.tmc.integration.utils.AppUtils$queryMiniappCustomLaunchParams$type$2
                }.getType());
            }
            return customLightLaunchParams;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final HashMap<String, MiniAppConfigModel.PagesBean> queryMiniappCustomLaunchParams(AppLoadResult appLoadResult) {
        MiniAppConfigModel miniAppConfigModel;
        List<MiniAppConfigModel.PkgExtBean> list;
        MiniAppConfigModel miniAppConfigModel2;
        List<MiniAppConfigModel.PkgExtBean> list2;
        try {
            if (SystemUtils.darkThemeIsEnabled(Utils.getApp())) {
                if (customDarkLaunchParams == null) {
                    String packageName = Utils.getApp().getPackageName();
                    if (appLoadResult != null && (miniAppConfigModel2 = appLoadResult.appConfigModel) != null && (list2 = miniAppConfigModel2.pkgExts) != null) {
                        for (MiniAppConfigModel.PkgExtBean pkgExtBean : list2) {
                            if (Intrinsics.c(packageName, pkgExtBean.getPkg())) {
                                MiniAppConfigModel.ThemeBean dark = pkgExtBean.getDark();
                                customDarkLaunchParams = dark != null ? dark.getLaunchParams() : null;
                            }
                        }
                    }
                }
                return customDarkLaunchParams;
            }
            if (customLightLaunchParams == null) {
                String packageName2 = Utils.getApp().getPackageName();
                if (appLoadResult != null && (miniAppConfigModel = appLoadResult.appConfigModel) != null && (list = miniAppConfigModel.pkgExts) != null) {
                    for (MiniAppConfigModel.PkgExtBean pkgExtBean2 : list) {
                        if (Intrinsics.c(packageName2, pkgExtBean2.getPkg())) {
                            MiniAppConfigModel.ThemeBean light = pkgExtBean2.getLight();
                            customLightLaunchParams = light != null ? light.getLaunchParams() : null;
                        }
                    }
                }
            }
            return customLightLaunchParams;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final MiniAppConfigModel.TabBarBean queryMiniappCustomTabBar() {
        try {
            if (customTabBar == null) {
                Gson gson = new Gson();
                customTabBar = (MiniAppConfigModel.TabBarBean) gson.fromJson(((JsonObject) gson.fromJson(miniappCustomConfig, JsonObject.class)).getAsJsonObject("tabBar"), new TypeToken<MiniAppConfigModel.TabBarBean>() { // from class: com.cloud.tmc.integration.utils.AppUtils$queryMiniappCustomTabBar$type$1
                }.getType());
            }
            return customTabBar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final MiniAppConfigModel.TabBarBean queryMiniappCustomTabBar(AppLoadResult appLoadResult) {
        MiniAppConfigModel miniAppConfigModel;
        List<MiniAppConfigModel.PkgExtBean> list;
        try {
            if (customTabBar == null) {
                String packageName = Utils.getApp().getPackageName();
                if (appLoadResult != null && (miniAppConfigModel = appLoadResult.appConfigModel) != null && (list = miniAppConfigModel.pkgExts) != null) {
                    for (MiniAppConfigModel.PkgExtBean pkgExtBean : list) {
                        if (Intrinsics.c(pkgExtBean.getPkg(), packageName)) {
                            customTabBar = pkgExtBean.getTarBar();
                        }
                    }
                }
            }
            return customTabBar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public final boolean queryShortcutExist(Context context, String appId) {
        boolean zQueytShortcutBySystemApi = false;
        if (context != null && appId != null && appId.length() != 0) {
            try {
                if (Build.VERSION.SDK_INT < 26) {
                    return false;
                }
                if (isLauncher(context)) {
                    zQueytShortcutBySystemApi = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(Utils.getApp(), TmcConstants.KEY_STORAGE_ADD_HOME, "addHomeStatus_" + appId, false);
                } else {
                    zQueytShortcutBySystemApi = queytShortcutBySystemApi(context, appId);
                }
            } catch (Throwable th2) {
                TmcLogger.e("apputils", th2);
            }
        }
        return zQueytShortcutBySystemApi;
    }

    public final boolean queytShortcutBySystemApi(Context context, String appId) {
        ShortcutManager shortcutManagerA;
        Intrinsics.h(context, "context");
        if (Build.VERSION.SDK_INT < 26 || (shortcutManagerA = com.bytedance.sdk.openadsdk.api.init.b.a(context.getSystemService(com.bytedance.sdk.openadsdk.api.init.a.a()))) == null || !shortcutManagerA.isRequestPinShortcutSupported()) {
            return false;
        }
        List pinnedShortcuts = shortcutManagerA.getPinnedShortcuts();
        Intrinsics.g(pinnedShortcuts, "sm.pinnedShortcuts");
        boolean zC = false;
        for (int i11 = 0; i11 < pinnedShortcuts.size() && !zC; i11++) {
            zC = Intrinsics.c(t5.a(pinnedShortcuts.get(i11)).getId(), appId);
        }
        return zC;
    }

    public final void reportStartTime(final String appId, final long startUsageTime, final String from, final String startType) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(startType, "startType");
        ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.utils.f
            @Override // java.lang.Runnable
            public final void run() {
                AppUtils.reportStartTime$lambda$11(appId, from, startUsageTime, startType);
            }
        });
    }

    public final void updateMiniappCustomConfig(String config) {
        Intrinsics.h(config, "config");
        miniappCustomConfig = config;
    }
}
