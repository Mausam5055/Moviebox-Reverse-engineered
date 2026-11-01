package com.cloud.tmc.integration;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewGroup;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.integration.activity.StartAction;
import com.cloud.tmc.integration.activity.StartClientBundle;
import com.cloud.tmc.integration.callback.ILoadHtmlDataCallback;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.integration.processor.BackToPageIntercept;
import com.cloud.tmc.integration.proxy.StartActivityProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.VirtualAppManager;
import com.cloud.tmc.integration.structure.app.BaseAppContext;
import com.cloud.tmc.integration.structure.app.TmcAppContext;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.MiniAppConfigUtils;
import com.cloud.tmc.integration.utils.MiniShellUtils;
import com.cloud.tmc.integration.utils.TrackPointUtils;
import com.cloud.tmc.integration.utils.UrlUtil;
import com.cloud.tmc.kernel.constants.MiniAppType;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.render.LoadParams;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.KUrlUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;

/* JADX INFO: loaded from: classes3.dex */
@Keep
public class ActivityHelper {
    private static final String LOG_TAG = "TmcApp:ActivityHelper";
    private AppChainContext appChainContext;
    private String appId;
    private final FragmentActivity mActivity;
    private AppNode mApp;
    private AppContext mAppContext;
    private StartClientBundle mStartClientBundle;
    private long mStartToken;
    private OnSetHostActivityStatusBackgroundCallback onSetHostActivityStatusBackgroundCallback;
    public String sceneId;
    Bundle tempStartParams = null;
    Bundle tempSceneParams = null;
    private boolean mAlreadyDoDestroyed = false;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.ActivityHelper$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$cloud$tmc$integration$activity$StartAction;

        static {
            int[] iArr = new int[StartAction.values().length];
            $SwitchMap$com$cloud$tmc$integration$activity$StartAction = iArr;
            try {
                iArr[StartAction.SHOW_LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$cloud$tmc$integration$activity$StartAction[StartAction.SHOW_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$cloud$tmc$integration$activity$StartAction[StartAction.DIRECT_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface OnSetHostActivityStatusBackgroundCallback {
        void setHostActivityStatusBackground(int i11);
    }

    public ActivityHelper(FragmentActivity fragmentActivity, AppChainContext appChainContext) {
        this.mActivity = fragmentActivity;
        this.appChainContext = appChainContext;
    }

    private void checkBackToUrlParam(App app) {
        try {
            Bundle startParams = app.getStartParams();
            Bundle sceneParams = app.getSceneParams();
            if (startParams != null) {
                String string = startParams.getString("extraMiniBackToUrl");
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                BackToPageIntercept backToPageIntercept = new BackToPageIntercept();
                backToPageIntercept.setBackToPagePath(string);
                app.getBackPressedProcessor().addInterceptors(backToPageIntercept);
                startParams.remove("extraMiniBackToUrl");
                if (sceneParams != null) {
                    sceneParams.remove("extraMiniBackToUrl");
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("checkBackToUrlParam", th2);
        }
    }

    private boolean checkHotStartToOpenSpecifyPage(Intent intent, StartClientBundle startClientBundle) {
        if (this.mApp != null && startClientBundle.startAction == StartAction.SHOW_LOADING) {
            String string = BundleUtils.getString(intent.getExtras(), TmcConstants.EXTRA_APP_ID);
            if (TextUtils.equals(this.mApp.getAppId(), string)) {
                Bundle bundle = new Bundle();
                Bundle startParams = this.mApp.getStartParams();
                Bundle sceneParams = this.mApp.getSceneParams();
                if (startParams != null && sceneParams != null) {
                    if (AppPrepareUtils.INSTANCE.isShellType(this.mApp.getAppModel())) {
                        return miniShellAppHotStart();
                    }
                    String string2 = startParams.getString("page");
                    if (TextUtils.isEmpty(string2)) {
                        bundle.putString(TmcConstants.HOT_OPEN_TYPE, TmcConstants.HOT_OPEN_TYPE_NORMAL_1);
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.mApp.getAppId(), PointAnalyseType.POINT_HOT_RELOAD, "", bundle);
                        TmcLogger.d(LOG_TAG, "page not is empty");
                        hotOpen(intent, TmcConstants.HOT_OPEN_TYPE_NORMAL_1);
                        TrackPointUtils.openPageActionTrack(this.mApp.getActivePage(), TmcConstants.NAVIGATION_HOT_START, null, this.mApp.getActivePage() != null ? this.mApp.getActivePage().getPageId() : null);
                        return false;
                    }
                    AppUtils.checkAndRemoveExtraPage(startParams, sceneParams);
                    boolean zIsLegalPath = AppUtils.isLegalPath(sceneParams, string2);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("路径合法性：");
                    sb2.append(zIsLegalPath ? "合法" : "非法");
                    sb2.append("，page=");
                    sb2.append(string2);
                    TmcLogger.d(LOG_TAG, sb2.toString());
                    if (zIsLegalPath && !this.mApp.isExited()) {
                        Page activePage = this.mApp.getActivePage();
                        if (activePage != null && TextUtils.equals(activePage.getPagePath(), string2)) {
                            bundle.putString(TmcConstants.HOT_OPEN_TYPE, TmcConstants.HOT_OPEN_TYPE_NORMAL_2);
                            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.mApp.getAppId(), PointAnalyseType.POINT_HOT_RELOAD, "", bundle);
                            hotOpen(intent, TmcConstants.HOT_OPEN_TYPE_NORMAL_2);
                            TrackPointUtils.openPageActionTrack(activePage, TmcConstants.NAVIGATION_HOT_START_SELF, null, this.mApp.getActivePage() != null ? this.mApp.getActivePage().getPageId() : null);
                            return true;
                        }
                        AppModel appModel = this.mApp.getAppModel();
                        if (appModel != null && appModel.getAppinfoCategoryType() == MiniAppType.NORMAL.getType() && UrlUtil.isHttpOrHttpsUrl(string2)) {
                            this.mApp.putPageType(string2, 2);
                        }
                        checkBackToUrlParam(this.mApp);
                        if (!startParams.getBoolean("extraMiniClearAllPages")) {
                            setHostActivityStatusBackground(string2);
                            bundle.putString(TmcConstants.HOT_OPEN_TYPE, TmcConstants.HOT_OPEN_TYPE_NORMAL_4);
                            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.mApp.getAppId(), PointAnalyseType.POINT_HOT_RELOAD, "", bundle);
                            this.mApp.putRouteType(string2, "navigateTo");
                            sceneParams.putString("navigationType", TmcConstants.NAVIGATION_HOT_NAVIGATE_TO);
                            hotOpen(intent, TmcConstants.HOT_OPEN_TYPE_NORMAL_4);
                            this.mApp.pushPage(string2, startParams, sceneParams);
                            return true;
                        }
                        hotOpen(intent, TmcConstants.HOT_OPEN_TYPE_NORMAL_3);
                        setHostActivityStatusBackground(string2);
                        startParams.remove("extraMiniClearAllPages");
                        sceneParams.putString("navigationType", TmcConstants.NAVIGATION_HOT_RE_LAUNCH);
                        this.mApp.putRouteType(string2, "reLaunch");
                        this.mApp.relaunchToUrl(string2, startParams, sceneParams);
                        bundle.putString(TmcConstants.HOT_OPEN_TYPE, TmcConstants.HOT_OPEN_TYPE_NORMAL_3);
                        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.mApp.getAppId(), PointAnalyseType.POINT_HOT_RELOAD, "", bundle);
                        return true;
                    }
                    TmcLogger.d(LOG_TAG, "目标小程序已退出，无法满足拉起要求。");
                }
            } else {
                TmcLogger.d(LOG_TAG, "当前 App 不是目标小程序，当前AppId:" + this.mApp.getAppId() + " 目标AppId:" + string);
            }
        }
        if (this.mApp == null && startClientBundle.startAction == StartAction.SHOW_LOADING) {
            TmcLogger.d(LOG_TAG, "app == null, action:" + startClientBundle.startAction + ", 打开失败的场景下又触发热启动");
            hotOpen(intent, "0");
        }
        return false;
    }

    public static StartClientBundle createFastStartClient(PrepareCallbackParam prepareCallbackParam, int i11) {
        prepareCallbackParam.action = StartAction.SHOW_LOADING;
        StartClientBundle startClientBundle = new StartClientBundle();
        startClientBundle.sceneParams = new Bundle();
        startClientBundle.startParams = new Bundle();
        startClientBundle.startToken = i11;
        StartAction startAction = prepareCallbackParam.action;
        if (startAction != null) {
            startClientBundle.startAction = startAction;
        } else {
            startClientBundle.startAction = StartAction.DIRECT_START;
        }
        return startClientBundle;
    }

    private void handleStartParams() {
        TmcLogger.d(LOG_TAG, "NebulaActivity.onCreate handleStartParams start");
        try {
            this.mActivity.requestWindowFeature(1);
        } catch (Throwable th2) {
            TmcLogger.w(LOG_TAG, "requestWindowFeature error: ", th2);
        }
        String string = BundleUtils.getString(this.mStartClientBundle.startParams, TmcStartParams.KEY_ENABLE_SNAPSHOT);
        if ("NO".equalsIgnoreCase(string)) {
            TmcLogger.d(LOG_TAG, "not allowed to task snapshot " + string);
            this.mActivity.getWindow().addFlags(8192);
        }
        if (BundleUtils.getBoolean(this.mStartClientBundle.startParams, "fullscreen", false)) {
            this.mActivity.getWindow().setFlags(1024, 1024);
        }
        String string2 = BundleUtils.getString(this.mStartClientBundle.startParams, TmcStartParams.KEY_LANDSCAPE);
        if (string2.equals(TmcStartParams.KEY_LANDSCAPE)) {
            if (this.mActivity.getRequestedOrientation() != 0) {
                this.mActivity.setRequestedOrientation(0);
            }
        } else if (string2.equals("auto") && this.mActivity.getRequestedOrientation() != -1) {
            this.mActivity.setRequestedOrientation(-1);
        }
        BundleUtils.getBoolean(this.mStartClientBundle.startParams, TmcStartParams.KEY_RESTART, false);
        TmcLogger.d(LOG_TAG, "onCreate handleStartParams done.");
    }

    private void hotOpen(Intent intent, String str) {
        TmcLogger.d(LOG_TAG, "hotOpen->hotOpenType:" + str);
        if (intent != null) {
            try {
                if (TmcConstants.EXTRA_LAUNCH_MODE_HOT.equals(intent.getStringExtra(TmcConstants.EXTRA_LAUNCH_MODE))) {
                    Bundle bundle = new Bundle();
                    bundle.putString("miniapp_id", this.appId);
                    bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, this.mStartClientBundle.startParams.getString("scene_id", "100000"));
                    bundle.putString("fis_type", this.mStartClientBundle.startParams.getString("fis_type", "0"));
                    bundle.putString(ChainPoint.CHAIN_SCENE, this.mStartClientBundle.startParams.getString("scene_id", "100000"));
                    bundle.putString(ChainPoint.CHAIN_OPEN_CHANNEL, "3");
                    bundle.putString(TmcConstants.HOT_OPEN_TYPE, str);
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, PointAnalyseType.POINT_LAUNCH_MINIAPP_HOT_OPEN, "", bundle);
                    AppChainContext appChainContext = this.appChainContext;
                    if (appChainContext != null) {
                        appChainContext.hotOpen(bundle);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private void hotOpenShell(String str) {
        TmcLogger.d(LOG_TAG, "hotOpenShell->hotOpenType:" + str);
        try {
            Bundle bundle = new Bundle();
            bundle.putString("miniapp_id", this.appId);
            bundle.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, this.mStartClientBundle.startParams.getString("scene_id", "100000"));
            bundle.putString("fis_type", this.mStartClientBundle.startParams.getString("fis_type", "0"));
            bundle.putString(ChainPoint.CHAIN_SCENE, this.mStartClientBundle.startParams.getString("scene_id", "100000"));
            bundle.putString(ChainPoint.CHAIN_OPEN_CHANNEL, "3");
            bundle.putString(TmcConstants.HOT_OPEN_TYPE, str);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, PointAnalyseType.POINT_LAUNCH_MINIAPP_HOT_OPEN, "", bundle);
            AppChainContext appChainContext = this.appChainContext;
            if (appChainContext != null) {
                appChainContext.hotOpen(bundle);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setHostActivityStatusBackground$0(int i11) {
        try {
            this.onSetHostActivityStatusBackgroundCallback.setHostActivityStatusBackground(i11);
        } catch (Throwable th2) {
            TmcLogger.e(LOG_TAG, "setHostActivityStatusBackground failed", th2);
        }
    }

    private boolean miniShellAppHotStart() {
        IRender render;
        if (this.mApp == null) {
            return false;
        }
        Bundle bundle = new Bundle();
        try {
            Bundle startParams = this.mApp.getStartParams();
            String string = startParams.getString("h5Path");
            TmcLogger.d(LOG_TAG, "包壳小程序热启动，h5Path=" + string);
            if (this.mApp.isExited() || TextUtils.isEmpty(string)) {
                TmcLogger.d(LOG_TAG, "目标小程序已退出或者h5Path为空，无法满足拉起要求。");
            } else {
                Page activePage = this.mApp.getActivePage();
                if (activePage != null && (render = activePage.getRender()) != null) {
                    hotOpenShell(TmcConstants.HOT_OPEN_TYPE_SHELL_0);
                    LoadParams loadParams = new LoadParams();
                    TrackPointUtils.openPageActionTrack(activePage, TmcConstants.NAVIGATION_HOT_SHELL_START, loadParams.url, activePage.resetPageRandomIdByGAID());
                    loadParams.appId = this.mApp.getAppId();
                    loadParams.pagePath = activePage.getPagePath();
                    loadParams.url = KUrlUtils.generateShellUrl(MiniShellUtils.getOriginUrl(this.mApp, activePage.getPageURI()), startParams);
                    ILoadHtmlDataCallback loadHtmlDataCallback = this.mApp.getLoadHtmlDataCallback();
                    if (!(loadHtmlDataCallback != null ? loadHtmlDataCallback.loadHtmlData(render, loadParams) : false)) {
                        loadHtmlDataCallback.loadUrl(render, loadParams);
                    }
                    bundle.putString(TmcConstants.HOT_OPEN_TYPE, TmcConstants.HOT_OPEN_TYPE_SHELL_0);
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.mApp.getAppId(), PointAnalyseType.POINT_HOT_RELOAD, "", bundle);
                    return true;
                }
            }
        } catch (Exception e11) {
            TmcLogger.e(LOG_TAG, "miniShellAppHotStart failed!", e11);
        }
        hotOpenShell(TmcConstants.HOT_OPEN_TYPE_SHELL_1);
        bundle.putString(TmcConstants.HOT_OPEN_TYPE, TmcConstants.HOT_OPEN_TYPE_SHELL_1);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.mApp.getAppId(), PointAnalyseType.POINT_HOT_RELOAD, "", bundle);
        TrackPointUtils.openPageActionTrack(this.mApp.getActivePage(), TmcConstants.NAVIGATION_HOT_SHELL_START_SELF, null, this.mApp.getActivePage() != null ? this.mApp.getActivePage().getPageRandomIdByGAId() : null);
        return false;
    }

    private void setHostActivityStatusBackground(@Nullable String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                TmcLogger.d(LOG_TAG, "setHostActivityStatusBackground page empty");
                return;
            }
            TmcLogger.d(LOG_TAG, "setHostActivityStatusBackground page: " + str);
            AppLoadResult appLoadResult = this.mApp.getmAppLoadResult();
            if (appLoadResult == null) {
                TmcLogger.d(LOG_TAG, "setHostActivityStatusBackground: appLoadResult is null");
                return;
            }
            MiniAppConfigModel.WindowBean windowOptimalConfiguration = MiniAppConfigUtils.getWindowOptimalConfiguration(appLoadResult, str);
            if (windowOptimalConfiguration == null) {
                TmcLogger.d(LOG_TAG, "setHostActivityStatusBackground: window is null");
                return;
            }
            String contentBgColor = windowOptimalConfiguration.getContentBgColor();
            if (TextUtils.isEmpty(contentBgColor)) {
                TmcLogger.d(LOG_TAG, "setHostActivityStatusBackground: contentBackgroundColor is empty");
                return;
            }
            TmcLogger.d(LOG_TAG, "setHostActivityStatusBackground: contentBackground: " + contentBgColor);
            final int color = Color.parseColor(contentBgColor);
            if (this.onSetHostActivityStatusBackgroundCallback != null) {
                ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f23264a.lambda$setHostActivityStatusBackground$0(color);
                    }
                });
            }
        } catch (Throwable th2) {
            TmcLogger.e(LOG_TAG, "setHostActivityStatusBackground parse color failed!", th2);
        }
    }

    public AppContext createAppContext(App app, FragmentActivity fragmentActivity) {
        return new TmcAppContext(getApp(), (ViewGroup) fragmentActivity.findViewById(R.id.trv_fragment_container), (ViewGroup) fragmentActivity.findViewById(R.id.trv_tab_container), fragmentActivity);
    }

    public synchronized void doCommonDestroy() {
        try {
            if (this.mAlreadyDoDestroyed) {
                return;
            }
            this.mAlreadyDoDestroyed = true;
            IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(this.mApp);
            if (eventCenterInstance != null) {
                eventCenterInstance.destroy();
            }
            AppNode appNode = this.mApp;
            if (appNode == null || appNode.isDestroyed()) {
                AppContext appContext = this.mAppContext;
                if (appContext != null) {
                    appContext.destroy();
                }
            } else {
                TmcLogger.w(LOG_TAG, "doCommonDestroy force mApp.destroy with count: " + this.mApp.getChildCount());
                this.mApp.exit();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void finish() {
        doCommonDestroy();
    }

    public void finishAndRemoveTask() {
        doCommonDestroy();
    }

    @Nullable
    public App getApp() {
        return this.mApp;
    }

    public void onActivityResult(int i11, int i12, Intent intent) {
    }

    public void onCreate() {
        StartAction startAction;
        StartClientBundle startClientBundle = this.mStartClientBundle;
        if (startClientBundle == null || (startAction = startClientBundle.startAction) == null) {
            return;
        }
        int i11 = AnonymousClass1.$SwitchMap$com$cloud$tmc$integration$activity$StartAction[startAction.ordinal()];
        if (i11 == 2) {
            TmcLogger.d(LOG_TAG, "errorCode: " + BundleUtils.getString(this.mApp.getSceneParams(), TmcConstants.EXTRA_PREPARE_EXCEPTION_CODE) + " errorMessage: " + BundleUtils.getString(this.mApp.getSceneParams(), TmcConstants.EXTRA_PREPARE_EXCEPTION_MESSAGE));
            return;
        }
        if (i11 != 3) {
            return;
        }
        AppNode appNode = (AppNode) ((AppManager) TmcProxy.get(AppManager.class)).findAppByToken(this.mStartToken);
        this.mApp = appNode;
        if (appNode != null) {
            TmcLogger.d(LOG_TAG, "onCreate find quickStarted app! " + this.mApp + " appId from Param: " + BundleUtils.getString(this.mApp.getStartParams(), "appId"));
        } else {
            AppManager appManager = (AppManager) TmcProxy.get(AppManager.class);
            StartClientBundle startClientBundle2 = this.mStartClientBundle;
            this.mApp = (AppNode) appManager.startApp(startClientBundle2.appId, startClientBundle2.startParams, startClientBundle2.sceneParams);
            ((VirtualAppManager) TmcProxy.get(VirtualAppManager.class)).updateAppInfo(this.mApp);
        }
        this.mApp.setAppChainContext(this.appChainContext);
        AppContext appContextCreateAppContext = createAppContext(this.mApp, this.mActivity);
        this.mAppContext = appContextCreateAppContext;
        this.mApp.bindContext(appContextCreateAppContext);
        checkBackToUrlParam(this.mApp);
        this.mApp.start();
    }

    public void onDestroy() {
        doCommonDestroy();
    }

    /* JADX INFO: Removed unreachable split cross block B:45:0x00c0 */
    public boolean onKeyUp(int i11, KeyEvent keyEvent) {
        TmcFragment tmcFragmentFindFragmentForPage;
        TmcLogger.d(LOG_TAG, "onKeyUp " + i11);
        boolean z10 = keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0;
        TmcLogger.d(LOG_TAG, "isBackPressed:   " + z10);
        if (z10) {
            AppContext appContext = this.mAppContext;
            if (appContext != null && (appContext instanceof BaseAppContext) && this.mApp.getActivePage() != null && (tmcFragmentFindFragmentForPage = ((BaseAppContext) this.mAppContext).getFragmentManager().findFragmentForPage(this.mApp.getActivePage())) != null && tmcFragmentFindFragmentForPage.exitFullScreen().booleanValue()) {
                return true;
            }
            AppNode appNode = this.mApp;
            if (appNode != null) {
                return appNode.backPressed();
            }
            if (this.mActivity != null) {
                try {
                    if (((StartActivityProxy) TmcProxy.get(StartActivityProxy.class)).checkOpenMutipleTask(this.appId).booleanValue()) {
                        try {
                            if (TextUtils.isEmpty(this.appId)) {
                                this.mActivity.finishAndRemoveTask();
                            } else {
                                ((StartActivityProxy) TmcProxy.get(StartActivityProxy.class)).removeMiniAppTask(this.appId, this.mActivity);
                            }
                        } catch (Throwable unused) {
                            this.mActivity.finishAndRemoveTask();
                        }
                    } else {
                        this.mActivity.finish();
                    }
                } catch (Throwable th2) {
                    TmcLogger.e(LOG_TAG, th2);
                    this.mActivity.finish();
                }
                return true;
            }
        }
        return false;
    }

    public void onNewIntent(Intent intent) {
        StartClientBundle startClientBundle;
        TmcLogger.d(LOG_TAG, "onNewIntent with intent: " + intent);
        if (intent == null || intent.getExtras() == null || intent.getBooleanExtra("IS_LITE_MOVE_TASK", false) || (startClientBundle = setupParams(intent)) == null) {
            return;
        }
        Bundle bundle = startClientBundle.sceneParams;
        if (bundle != null && bundle.containsKey("scene_id")) {
            this.sceneId = startClientBundle.sceneParams.getString("scene_id");
        }
        if (checkHotStartToOpenSpecifyPage(intent, startClientBundle)) {
            TmcLogger.d(LOG_TAG, "小程序在后台且拉起指定页面成功！");
            return;
        }
        try {
            Bundle bundle2 = startClientBundle.startParams;
            if (bundle2 != null && bundle2.getBoolean("extraMiniClearAllPages")) {
                bundle2.remove("extraMiniClearAllPages");
            }
        } catch (Throwable th2) {
            TmcLogger.e(LOG_TAG, th2);
        }
        onCreate();
    }

    public void onPause() {
        TmcLogger.d(LOG_TAG, "onPause");
        AppNode appNode = this.mApp;
        if (appNode != null) {
            appNode.pause();
        }
    }

    public void onRequestPermissionResult(int i11, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        TmcLogger.d(LOG_TAG, "onResume");
        AppNode appNode = this.mApp;
        if (appNode != null) {
            appNode.resume();
        }
    }

    public void onStop() {
        TmcLogger.d(LOG_TAG, "onStop");
        AppNode appNode = this.mApp;
        if (appNode != null) {
            appNode.stop();
        }
    }

    public void reportFailureClickReloadButton() {
        if (this.mApp == null) {
            TmcLogger.d(TmcConstants.TAG, "mApp is null,reportFailureClickReloadButton");
            this.appChainContext.reportFailureClickReloadButton();
        }
    }

    public void setAppId(String str) {
        this.appId = str;
    }

    public void setOnSetHostActivityStatusBackgroundCallback(OnSetHostActivityStatusBackgroundCallback onSetHostActivityStatusBackgroundCallback) {
        this.onSetHostActivityStatusBackgroundCallback = onSetHostActivityStatusBackgroundCallback;
    }

    @Nullable
    public StartClientBundle setupParams(Intent intent) {
        if (intent != null) {
            try {
                if (intent.getExtras() != null) {
                    intent.getExtras().setClassLoader(ActivityHelper.class.getClassLoader());
                    StartClientBundle startClientBundle = (StartClientBundle) BundleUtils.getParcelable(intent.getExtras(), TmcConstants.EXTRA_START_BUNDLE);
                    this.mStartClientBundle = startClientBundle;
                    if (startClientBundle != null) {
                        TmcLogger.d(LOG_TAG, "onCreate " + this.mActivity.getClass().getName() + " with " + this.mStartClientBundle);
                        handleStartParams();
                        StartClientBundle startClientBundle2 = this.mStartClientBundle;
                        this.mStartToken = startClientBundle2.startToken;
                        AppNode appNode = this.mApp;
                        if (appNode != null) {
                            Bundle bundle = startClientBundle2.startParams;
                            if (bundle != null && appNode.getStartParams() != null) {
                                this.mApp.getStartParams().putAll(bundle);
                            }
                            Bundle bundle2 = this.mStartClientBundle.sceneParams;
                            if (bundle2 != null && this.mApp.getSceneParams() != null) {
                                this.mApp.getSceneParams().putAll(bundle2);
                            }
                        } else if (MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_FIX_MINI_HOT_OPEN, true)) {
                            TmcLogger.d(TmcConstants.TAG, "修复后台回收后的");
                            Bundle bundle3 = this.tempStartParams;
                            if (bundle3 == null || this.tempSceneParams == null) {
                                StartClientBundle startClientBundle3 = this.mStartClientBundle;
                                this.tempStartParams = startClientBundle3.startParams;
                                this.tempSceneParams = startClientBundle3.sceneParams;
                            } else {
                                this.mStartClientBundle.startParams.putAll(bundle3);
                                this.mStartClientBundle.sceneParams.putAll(this.tempSceneParams);
                                this.tempStartParams = null;
                                this.tempSceneParams = null;
                            }
                        }
                    }
                    return this.mStartClientBundle;
                }
            } catch (Throwable th2) {
                TmcLogger.e(LOG_TAG, th2);
            }
        }
        throw new IllegalStateException("onCreate intent null!!");
    }
}
