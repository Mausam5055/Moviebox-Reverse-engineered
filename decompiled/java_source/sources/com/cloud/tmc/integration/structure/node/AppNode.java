package com.cloud.tmc.integration.structure.node;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.integration.callback.IAppCallback;
import com.cloud.tmc.integration.callback.IAsyncStartLoadingCallback;
import com.cloud.tmc.integration.callback.ICheckMiniAppLifecycleCallback;
import com.cloud.tmc.integration.callback.ILoadHtmlDataCallback;
import com.cloud.tmc.integration.callback.IShowAddHomeCallback;
import com.cloud.tmc.integration.callback.ISubpackageLoadCheckCallback;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.MiniAppAutoPopover;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.StartTime;
import com.cloud.tmc.integration.model.StatusStore;
import com.cloud.tmc.integration.model.TabReSelectedStore;
import com.cloud.tmc.integration.model.WorkerStore;
import com.cloud.tmc.integration.params.TmcParams;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.integration.point.OnDestroyAppPoint;
import com.cloud.tmc.integration.point.OnPauseAppPoint;
import com.cloud.tmc.integration.point.OnResumeAppPoint;
import com.cloud.tmc.integration.point.OnStopAppPoint;
import com.cloud.tmc.integration.processor.BackPressedProcessor;
import com.cloud.tmc.integration.processor.IBackPressedProcessor;
import com.cloud.tmc.integration.proxy.PageFactory;
import com.cloud.tmc.integration.proxy.ToastProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.structure.AppRestartResult;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.app.TmcAppContext;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.LatestUseUtils;
import com.cloud.tmc.integration.utils.MiniForceAddHomeManager;
import com.cloud.tmc.integration.utils.TrackPointUtils;
import com.cloud.tmc.integration.utils.UrlUtil;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.constants.MiniAppType;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.coreimpl.eventcenter.DefaultEvent;
import com.cloud.tmc.kernel.datastructure.immutable.ImmutableBundle;
import com.cloud.tmc.kernel.engine.EngineInitCallback;
import com.cloud.tmc.kernel.engine.EngineSetupCallback;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.InitParams;
import com.cloud.tmc.kernel.node.NodeInstance;
import com.cloud.tmc.kernel.node.Scope;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.core.IEngineFactory;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.performanceanalyse.BuildConfigProxy;
import com.cloud.tmc.kernel.resource.IFileResourceManager;
import com.cloud.tmc.kernel.resource.IImageResourceManager;
import com.cloud.tmc.kernel.security.DefaultGroup;
import com.cloud.tmc.kernel.security.Group;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class AppNode extends NodeInstance implements App {
    public static final Parcelable.Creator<AppNode> CREATOR = new Parcelable.Creator<AppNode>() { // from class: com.cloud.tmc.integration.structure.node.AppNode.7
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppNode createFromParcel(Parcel parcel) {
            return new AppNode(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppNode[] newArray(int i11) {
            return new AppNode[i11];
        }
    };
    private static final String TAG = "TmcApp:App";
    private boolean APIAddhomeShowStatus;
    private boolean MFAHShowStatus;
    private IAppCallback appCallback;
    private AppChainContext appChainContext;
    protected String appId;
    private boolean asyncLaunchStatus;
    private IBackPressedProcessor backPressedProcessor;
    private String backToPagePath;
    private ICheckMiniAppLifecycleCallback checkMiniAppLifecycleCallback;
    private String currentInterectCallbackId;
    private Boolean currentMFAHStatus;
    private boolean guideBackAddhomeShowStatus;
    private boolean guideBottomAddhomeShowStatus;
    private boolean guideTopAddhomeShowStatus;
    private IAsyncStartLoadingCallback iAsyncStartLoadingCallback;
    private boolean isHideMiniAppLoaingStatus;
    private ILoadHtmlDataCallback loadHtmlDataCallback;
    private boolean mAlreadyStarted;
    protected AppContext mAppContext;
    private AppLoadResult mAppLoadResult;
    protected AppManager mAppManager;
    private AppModel mAppModel;
    protected String mAppType;
    protected String mAppVersion;
    private IEngine mEngineProxy;
    private boolean mHasPaused;
    protected ImmutableBundle mImmutableStartParams;
    private final AtomicBoolean mIsDestroyed;
    private boolean mIsExited;
    private String mMainJSUrl;
    private NetworkUtil.NetworkListener mNetworkListener;
    private final List<App.PageReadyListener> mPageReadyListeners;
    private HashMap<String, Integer> mPagesType;
    private boolean mPendingOnStart;
    private LinkedHashMap<String, Runnable> mPermissionDialogMap;
    private final HashMap<String, String> mRouteType;
    protected Bundle mSceneParams;
    private boolean mSendResumeInRestart;
    protected Bundle mStartParams;
    protected long mStartToken;
    private String mStartUrl;
    private Future<Boolean> mWaitLoadFuture;
    private MiniAppAutoPopover miniAppAutoPopover;
    private boolean miniappLoadSuccess;
    private boolean restarting;
    private IShowAddHomeCallback showAddhomeCallback;
    private long startTime;
    private Page targetPageOnProcess;

    public AppNode(Parcel parcel) {
        super(parcel);
        this.mWaitLoadFuture = null;
        this.mHasPaused = false;
        this.mSendResumeInRestart = false;
        this.mAlreadyStarted = false;
        this.mIsExited = false;
        this.mPendingOnStart = false;
        this.mIsDestroyed = new AtomicBoolean(false);
        this.miniappLoadSuccess = false;
        this.targetPageOnProcess = null;
        this.mPagesType = new HashMap<>();
        this.mRouteType = new HashMap<>();
        this.backPressedProcessor = new BackPressedProcessor();
        this.mPermissionDialogMap = new LinkedHashMap<>();
        this.currentInterectCallbackId = null;
        this.currentMFAHStatus = Boolean.FALSE;
        this.startTime = 0L;
        this.asyncLaunchStatus = false;
        this.backToPagePath = "";
        this.iAsyncStartLoadingCallback = null;
        this.miniAppAutoPopover = null;
        this.isHideMiniAppLoaingStatus = false;
        this.restarting = false;
        this.mPageReadyListeners = new ArrayList();
        this.MFAHShowStatus = false;
        this.APIAddhomeShowStatus = false;
        this.guideBottomAddhomeShowStatus = false;
        this.guideTopAddhomeShowStatus = false;
        this.guideBackAddhomeShowStatus = false;
        this.appId = parcel.readString();
        this.mStartToken = parcel.readLong();
        this.mAppType = parcel.readString();
        this.mAppVersion = parcel.readString();
        this.mStartParams = parcel.readBundle(AppNode.class.getClassLoader());
        this.mSceneParams = parcel.readBundle(AppNode.class.getClassLoader());
        this.mStartUrl = parcel.readString();
    }

    public AppNode(AppManager appManager) {
        super(appManager);
        this.mWaitLoadFuture = null;
        this.mHasPaused = false;
        this.mSendResumeInRestart = false;
        this.mAlreadyStarted = false;
        this.mIsExited = false;
        this.mPendingOnStart = false;
        this.mIsDestroyed = new AtomicBoolean(false);
        this.miniappLoadSuccess = false;
        this.targetPageOnProcess = null;
        this.mPagesType = new HashMap<>();
        this.mRouteType = new HashMap<>();
        this.backPressedProcessor = new BackPressedProcessor();
        this.mPermissionDialogMap = new LinkedHashMap<>();
        this.currentInterectCallbackId = null;
        this.currentMFAHStatus = Boolean.FALSE;
        this.startTime = 0L;
        this.asyncLaunchStatus = false;
        this.backToPagePath = "";
        this.iAsyncStartLoadingCallback = null;
        this.miniAppAutoPopover = null;
        this.isHideMiniAppLoaingStatus = false;
        this.restarting = false;
        this.mPageReadyListeners = new ArrayList();
        this.MFAHShowStatus = false;
        this.APIAddhomeShowStatus = false;
        this.guideBottomAddhomeShowStatus = false;
        this.guideTopAddhomeShowStatus = false;
        this.guideBackAddhomeShowStatus = false;
        this.mAppManager = appManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: doPushPage, reason: merged with bridge method [inline-methods] */
    public void lambda$pushPage$1(String str, Bundle bundle, Bundle bundle2) {
        Page activePage = getActivePage();
        if (activePage != null) {
            activePage.hide();
        }
        boolean z10 = AppUtils.isExitPage(bundle) || AppUtils.isExitPage(bundle2);
        PageNode pageNodeCreatePage = ((PageFactory) TmcProxy.get(PageFactory.class)).createPage(this, FrameworkConstants.TEMPLATE_URL, str, bundle, bundle2);
        String string = bundle2.getString("navigationType");
        if (!TextUtils.isEmpty(string)) {
            TrackPointUtils.pageRouteTrackStart(pageNodeCreatePage, string);
        }
        IEngine iEngine = this.mEngineProxy;
        if (iEngine == null) {
            pageNodeCreatePage.setData(WorkerStore.class, new WorkerStore(""));
        } else {
            pageNodeCreatePage.setData(WorkerStore.class, new WorkerStore(iEngine.getWorkerId()));
        }
        if (z10) {
            pageNodeCreatePage.setData(Page.AnimStore.class, new Page.AnimStore(true, false));
            pageNodeCreatePage.setData(StatusStore.class, new StatusStore(true));
        }
        pageNodeCreatePage.putStringValue(TmcConstants.KEY_PAGE_PRE_ID, activePage != null ? activePage.getPageId() : null);
        pushChild(pageNodeCreatePage);
        AppContext appContext = this.mAppContext;
        if (appContext != null) {
            appContext.pushPage(pageNodeCreatePage);
        }
    }

    private void doRedirectTo(String str, PageNode pageNode) {
        String routeType = getRouteType(str, false);
        Page activePage = getActivePage();
        if (activePage != null) {
            activePage.hide();
            if (activePage.isTabPage()) {
                TmcLogger.d(TAG, "active page is tab page, path: " + activePage.getPagePath());
            } else {
                ((Page.AnimStore) activePage.getData(Page.AnimStore.class, true)).disableExit = false;
                activePage.putBooleanValue(TmcConstants.KEY_EXIT_PAGE, true);
                activePage.exit(false, new Page.TaskContext(0, pageNode, "navigateBack", routeType));
                pageNode.setData(Page.AnimStore.class, new Page.AnimStore(true, false));
                pageNode.setData(StatusStore.class, new StatusStore(true));
            }
        }
        pageNode.putStringValue(TmcConstants.KEY_PAGE_PRE_ID, activePage != null ? activePage.getPageId() : null);
        pushChild(pageNode);
        AppContext appContext = this.mAppContext;
        if (appContext != null) {
            appContext.pushPage(pageNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$redirectTo$0(String str, PageNode pageNode, String str2) {
        doRedirectTo(str, pageNode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEngineInitFailed() {
        TmcLogger.d(TAG, "onEngineInitFailed! type: " + getAppType());
        this.mAlreadyStarted = false;
        ((ToastProxy) TmcProxy.get(ToastProxy.class)).toast("Engine init failed!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEngineInitSuccess() {
        Runnable runnable = new Runnable() { // from class: com.cloud.tmc.integration.structure.node.AppNode.5
            @Override // java.lang.Runnable
            public void run() {
                AppModel appModel;
                TmcLogger.d(AppNode.TAG, "createPage " + AppNode.this.mStartUrl);
                Bundle bundleClone = BundleUtils.clone(AppNode.this.mStartParams);
                Bundle bundleClone2 = BundleUtils.clone(AppNode.this.mSceneParams);
                String str = (AppNode.this.mAppLoadResult == null || AppNode.this.mAppLoadResult.appConfigModel == null || AppNode.this.mAppLoadResult.appConfigModel.pages == null || AppNode.this.mAppLoadResult.appConfigModel.pages.isEmpty()) ? null : AppNode.this.mAppLoadResult.appConfigModel.pages.get(0);
                String string = bundleClone.getString("page", str);
                if (AppUtils.isLegalPath(bundleClone2, string)) {
                    str = string;
                } else {
                    TmcLogger.d(AppNode.TAG, "Page invalid, use default page");
                }
                if (TextUtils.isEmpty(str)) {
                    TmcLogger.d(AppNode.TAG, "targetPagePath is null, app cannot start");
                    return;
                }
                AppNode.this.putStringValue(TmcConstants.KEY_FIRST_STARTED_PAGE_PATH, str);
                PageFactory pageFactory = (PageFactory) TmcProxy.get(PageFactory.class);
                AppNode appNode = AppNode.this;
                PageNode pageNodeCreatePage = pageFactory.createPage(appNode, appNode.mStartUrl, str, bundleClone, bundleClone2);
                if (AppNode.this.mEngineProxy == null) {
                    pageNodeCreatePage.setData(WorkerStore.class, new WorkerStore(""));
                } else {
                    pageNodeCreatePage.setData(WorkerStore.class, new WorkerStore(AppNode.this.mEngineProxy.getWorkerId()));
                }
                TrackPointUtils.pageRouteTrackStart(pageNodeCreatePage, TmcConstants.NAVIGATION_ON_START);
                App app = pageNodeCreatePage.getApp();
                if (app != null && (appModel = app.getAppModel()) != null && appModel.getAppinfoCategoryType() == MiniAppType.NORMAL.getType() && UrlUtil.isHttpOrHttpsUrl(str)) {
                    app.putPageType(str, 2);
                }
                AppNode appNode2 = AppNode.this;
                AppUtils.checkAndRemoveExtraPage(appNode2.mStartParams, appNode2.mSceneParams);
                AppNode.this.pushChild(pageNodeCreatePage);
                AppNode.this.mAppContext.start(pageNodeCreatePage);
                AppNode.this.onPageStarted(pageNodeCreatePage);
            }
        };
        Future<Boolean> future = this.mWaitLoadFuture;
        boolean z10 = future != null ? !future.isDone() : false;
        TmcLogger.d(TAG, "onEngineInitSuccess startPageAsync: " + z10);
        if (z10) {
            ExecutorUtils.execute(ExecutorType.URGENT_DISPLAY, runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLoadResult(AppLoadResult appLoadResult, long j11) {
        if (!TextUtils.equals(appLoadResult.appType, this.mAppType)) {
            this.mEngineProxy = null;
            this.mAppType = appLoadResult.appType;
        }
        trySetupEngineProxy(appLoadResult.appType);
        this.mMainJSUrl = appLoadResult.mainJsUrl;
        this.mStartUrl = appLoadResult.mainHtmlUrl;
        this.mAppVersion = appLoadResult.appVersion;
        if (this.mAppContext == null) {
            TmcLogger.d(TAG, "onStart but appContext == null! move to pending!");
            this.mPendingOnStart = true;
        } else {
            setData(StartTime.class, new StartTime(j11));
            onStart();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNetworkChangeEvent(NetworkUtil.Network network) {
        Page activePage = getActivePage();
        if (activePage == null || activePage.getRender() == null) {
            return;
        }
        String strTransferNetworkType = NetworkUtil.transferNetworkType(network);
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        jsonObject.addProperty("isConnected", Boolean.valueOf(!"none".equals(strTransferNetworkType)));
        jsonObject.addProperty(NetworkBridge.KEY_NETWORK_TYPE, strTransferNetworkType);
        jsonObject2.add("data", jsonObject);
    }

    private void sendPageBackToWorker(Page page, Page page2, Page.TaskContext taskContext) {
        if (page == null) {
            return;
        }
        String pagePath = page2 != null ? page2.getPagePath() : "";
        int pageType = !TextUtils.isEmpty(pagePath) ? getPageType(pagePath) : 1;
        HashMap map = new HashMap();
        map.put("url", page.getPagePath());
        map.put("renderId", page.getPageId());
        map.put(FrameworkConstants.GLOBAL_DATA_KEY_EXITED_RENDER_ID, page2 != null ? page2.getPageId() : "");
        map.put(FrameworkConstants.GLOBAL_DATA_KEY_NEED_TO_EXIT_NUM, Integer.valueOf(taskContext == null ? 0 : taskContext.needToExitNum));
        map.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, taskContext == null ? "navigateBack" : taskContext.source);
        map.put(FrameworkConstants.GLOBAL_DATA_KEY_ROUTE_TYPE, taskContext != null ? taskContext.routeType : "navigateBack");
        map.put(FrameworkConstants.GLOBAL_DATA_KEY_DELTA, 1);
        map.put(FrameworkConstants.GLOBAL_DATA_KEY_IS_MIXED_PAGE, Boolean.valueOf(pageType != 1));
        AppUtils.sendEventOrLifecycleToWorker(page, EventConstants.EVENT_NAME_PAGE_BACK, false, map);
    }

    private synchronized void trySetupEngineProxy(String str) {
        if (this.mEngineProxy != null && TextUtils.equals(str, this.mAppType)) {
            TmcLogger.d(TAG, "trySetupEngineProxy already setup with " + str);
            return;
        }
        TmcLogger.d(TAG, "trySetupEngineProxy with appType: " + str);
        String engineType = ((IEngineFactory) TmcProxy.get(IEngineFactory.class)).getEngineType(str);
        putStringValue(TmcParams.APP_ENGINE_TYPE, engineType);
        if (this.mAppContext == null) {
            TmcLogger.d(TAG, "trySetupEngineProxy cannot init without appContext!");
            return;
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.mEngineProxy = ((IEngineFactory) TmcProxy.get(IEngineFactory.class)).createEngine(engineType, this, this.appId);
        InitParams initParams = new InitParams();
        initParams.startToken = getStartToken();
        this.mEngineProxy.init(initParams, new EngineInitCallback() { // from class: com.cloud.tmc.integration.structure.node.AppNode.1
            @Override // com.cloud.tmc.kernel.engine.EngineInitCallback
            public void initResult(boolean z10, @Nullable String str2) {
            }
        });
        if (!this.mEngineProxy.isReady()) {
            TmcLogger.d(TAG, "showLoading because engine not ready");
        }
        this.mEngineProxy.setup(this.mStartParams, this.mSceneParams, new EngineSetupCallback() { // from class: com.cloud.tmc.integration.structure.node.AppNode.2
            @Override // com.cloud.tmc.kernel.engine.EngineSetupCallback
            public void setupResult(boolean z10, String str2) {
                if (z10) {
                    TmcLogger.d(AppNode.TAG, "onSetupFinish, cost=" + (SystemClock.elapsedRealtime() - jElapsedRealtime));
                    return;
                }
                TmcLogger.d(AppNode.TAG, "onSetupFail, msg=" + str2);
            }
        });
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void addPageReadyListener(App.PageReadyListener pageReadyListener) {
        synchronized (this.mPageReadyListeners) {
            try {
                TmcLogger.d(TAG, "addPageReadyListener");
                Page activePage = getActivePage();
                if (activePage != null) {
                    pageReadyListener.onPageReady(activePage);
                } else {
                    this.mPageReadyListeners.add(pageReadyListener);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    public final boolean backPressed() {
        Page activePage = getActivePage();
        if (activePage != null) {
            return activePage.backPressed();
        }
        destroy();
        return true;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void backToHeaderPage() {
        Page page;
        AppContext appContext = this.mAppContext;
        TmcFragment tmcFragmentFindHeaderFragment = appContext instanceof TmcAppContext ? ((TmcAppContext) appContext).getFragmentManager().findHeaderFragment() : null;
        if (tmcFragmentFindHeaderFragment == null || (page = tmcFragmentFindHeaderFragment.getPage()) == null) {
            return;
        }
        int childCount = getChildCount();
        ArrayList arrayList = new ArrayList();
        for (int i11 = childCount - 1; i11 >= 0; i11--) {
            Page pageByIndex = getPageByIndex(i11);
            if (TextUtils.equals(pageByIndex.getPageId(), page.getPageId()) || pageByIndex.isTabPage()) {
                break;
            }
            ((Page.AnimStore) pageByIndex.getData(Page.AnimStore.class, true)).disableExit = true;
            arrayList.add(pageByIndex);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Page) it.next()).exit(false);
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void bindContext(@NonNull AppContext appContext) {
        TmcLogger.d(TAG, "bindContext.....");
        this.mAppContext = appContext;
        if (isExited()) {
            TmcLogger.w(TAG, "bindContext but already exit in AppMsgReceiver!");
            return;
        }
        trySetupEngineProxy(this.mAppType);
        if (this.mPendingOnStart) {
            TmcLogger.d(TAG, "bindContext with pendingOnStart, now trigger onStart!");
            onStart();
        }
    }

    public final synchronized void destroy() {
        TmcLogger.d(TAG, "destroy " + this + " with stack " + Log.getStackTraceString(new Throwable("Just Print")));
        onDestroy();
        this.mIsDestroyed.set(true);
    }

    @Override // com.cloud.tmc.integration.structure.App
    public final synchronized void exit() {
        if (this.mIsExited) {
            return;
        }
        TmcLogger.d(TAG, "exitApp with stack " + Log.getStackTraceString(new Throwable("Just Print")));
        this.mIsExited = true;
        onExit();
    }

    public void exitAllPages(boolean z10) {
        TmcLogger.w(TAG, "exitAllPages: " + z10);
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            Page pageByIndex = getPageByIndex(childCount);
            if (pageByIndex != null) {
                ((Page.AnimStore) pageByIndex.getData(Page.AnimStore.class, true)).disableExit = true;
                pageByIndex.exit(z10);
            }
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void exitAllThenPushPage(String str, Bundle bundle, Bundle bundle2) {
        TmcLogger.d(TAG, "exitAllThenPushPage " + str + " with stack: " + Log.getStackTraceString(new Throwable("Just Print")));
        PageNode pageNodeCreatePage = ((PageFactory) TmcProxy.get(PageFactory.class)).createPage(this, FrameworkConstants.TEMPLATE_URL, str, bundle, bundle2);
        String string = bundle2.getString("navigationType");
        if (!TextUtils.isEmpty(string)) {
            TrackPointUtils.pageRouteTrackStart(pageNodeCreatePage, string);
        }
        IEngine iEngine = this.mEngineProxy;
        if (iEngine == null) {
            pageNodeCreatePage.setData(WorkerStore.class, new WorkerStore(""));
        } else {
            pageNodeCreatePage.setData(WorkerStore.class, new WorkerStore(iEngine.getWorkerId()));
        }
        String routeType = getRouteType(str, false);
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            Page pageByIndex = getPageByIndex(childCount);
            if (pageByIndex != null) {
                ((Page.AnimStore) pageByIndex.getData(Page.AnimStore.class, true)).disableExit = true;
                pageByIndex.exit(false, new Page.TaskContext(childCount, pageNodeCreatePage, "reLaunch", routeType));
            }
        }
        pushChild(pageNodeCreatePage);
        AppContext appContext = this.mAppContext;
        if (appContext != null) {
            appContext.pushPage(pageNodeCreatePage);
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void exitToHomePage() {
        TmcLogger.d(TAG, "exitToHomePage: with stack: " + Log.getStackTraceString(new Throwable("Just Print")));
        try {
            boolean zHasHomePage = hasHomePage();
            TmcLogger.d(TAG, "exitToHomePage: 检查是否有首页(true 有，false，没有): " + zHasHomePage);
            if (!zHasHomePage) {
                String homePagePath = getHomePagePath();
                if (TextUtils.isEmpty(homePagePath)) {
                    return;
                }
                putRouteType(homePagePath, "reLaunch");
                Bundle sceneParams = getSceneParams();
                sceneParams.putString("navigationType", TmcConstants.NAVIGATION_EXIT_TO_HOME_PAGE);
                relaunchToUrl(homePagePath, getStartParams(), sceneParams);
                return;
            }
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                Page pageByIndex = getPageByIndex(childCount);
                if (pageByIndex != null) {
                    if (pageByIndex.isExited() || (!pageByIndex.isHomePage() && !pageByIndex.isTabPage())) {
                        ((Page.AnimStore) pageByIndex.getData(Page.AnimStore.class, true)).disableExit = true;
                        pageByIndex.exit(false);
                    }
                    if (AppUtils.INSTANCE.checkGoHomeToHomePage(this.appId)) {
                        if (pageByIndex.isHomePage()) {
                            TmcLogger.d(TAG, "exitToHomePage: 当前页面为首页，停止弹出。" + pageByIndex);
                            return;
                        }
                        if (pageByIndex.isTabPage()) {
                            TmcLogger.d(TAG, "exitToHomePage: 当前是 tab 页，切换到首页，。" + pageByIndex);
                            switchTab(getHomePagePath(), getStartParams(), getmSceneParams());
                            return;
                        }
                    }
                    TmcLogger.d(TAG, "exitToHomePage: 当前页面为首页，停止弹出。" + pageByIndex);
                    return;
                }
            }
        } catch (Exception e11) {
            TmcLogger.e(TAG, "", e11);
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    @Nullable
    public Page getActivePage() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            Page pageByIndex = getPageByIndex(childCount);
            if (pageByIndex != null && !pageByIndex.isUseForEmbed() && !pageByIndex.isExited() && (!pageByIndex.isTabPage() || !pageByIndex.isHide())) {
                return pageByIndex;
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public int getActivePageIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            Page pageByIndex = getPageByIndex(childCount);
            if (pageByIndex != null && !pageByIndex.isUseForEmbed() && !pageByIndex.isExited() && (!pageByIndex.isTabPage() || !pageByIndex.isHide())) {
                return childCount;
            }
        }
        return -1;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public boolean getAddHomeShowStatus(int i11) {
        if (i11 == 100) {
            return this.MFAHShowStatus;
        }
        if (i11 == 90) {
            return this.APIAddhomeShowStatus;
        }
        if (i11 == 81) {
            return this.guideTopAddhomeShowStatus;
        }
        if (i11 == 82) {
            return this.guideBottomAddhomeShowStatus;
        }
        if (i11 == 83) {
            return this.guideBackAddhomeShowStatus;
        }
        return false;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public int getAlivePageCount() {
        int childCount = getChildCount();
        int childCount2 = getChildCount();
        for (int i11 = 0; i11 < childCount2; i11++) {
            Page pageByIndex = getPageByIndex(i11);
            if (pageByIndex != null && pageByIndex.isExited()) {
                childCount--;
            }
        }
        return childCount;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public AppChainContext getAppChainContext() {
        return this.appChainContext;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public AppContext getAppContext() {
        return this.mAppContext;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public String getAppId() {
        return this.appId;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public ICheckMiniAppLifecycleCallback getAppLifecycleCallback() {
        return this.checkMiniAppLifecycleCallback;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public AppManager getAppManager() {
        return this.mAppManager;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public AppModel getAppModel() {
        return this.mAppModel;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public String getAppType() {
        return this.mAppType;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public String getAppVersion() {
        return this.mAppVersion;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public IAsyncStartLoadingCallback getAsyncStartLoadingCallback() {
        return this.iAsyncStartLoadingCallback;
    }

    @Override // com.cloud.tmc.integration.structure.App
    @NonNull
    public IBackPressedProcessor getBackPressedProcessor() {
        return this.backPressedProcessor;
    }

    public String getBackToPagePath() {
        return this.backToPagePath;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public IEngine getEngineProxy() {
        return this.mEngineProxy;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public ExtensionManager getExtensionManager() {
        return NodeInstance.sExtensionManager;
    }

    @Override // com.cloud.tmc.integration.structure.App
    @Nullable
    public Page getFirstPage() {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            Page pageByIndex = getPageByIndex(i11);
            if (pageByIndex != null && !pageByIndex.isUseForEmbed() && !pageByIndex.isExited()) {
                return pageByIndex;
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.node.NodeInstance, com.cloud.tmc.kernel.security.Accessor
    public Group getGroup() {
        AppModel appModel = this.mAppModel;
        return appModel == null ? DefaultGroup.EXTERNAL : DefaultGroup.valueOf(appModel.getPermissions().getGroup());
    }

    @Override // com.cloud.tmc.integration.structure.App
    public boolean getHideMiniAppLoadingStatus() {
        return this.isHideMiniAppLoaingStatus;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public String getHomePagePath() {
        MiniAppConfigModel miniAppConfigModel;
        List<String> list;
        AppLoadResult appLoadResult = this.mAppLoadResult;
        return (appLoadResult == null || (miniAppConfigModel = appLoadResult.appConfigModel) == null || (list = miniAppConfigModel.pages) == null || list.size() <= 0) ? "" : this.mAppLoadResult.appConfigModel.pages.get(0);
    }

    @Override // com.cloud.tmc.integration.structure.App
    public IFileResourceManager getIFileResourceManager() {
        return (IFileResourceManager) TmcProxy.get(IFileResourceManager.class);
    }

    @Override // com.cloud.tmc.integration.structure.App
    public IImageResourceManager getImageResourceManagerProxy() {
        return (IImageResourceManager) TmcProxy.get(IImageResourceManager.class);
    }

    @Override // com.cloud.tmc.integration.structure.App
    public String getInterectCallbackId() {
        return this.currentInterectCallbackId;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public ILoadHtmlDataCallback getLoadHtmlDataCallback() {
        return this.loadHtmlDataCallback;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public boolean getMFAHStatus() {
        return this.currentMFAHStatus.booleanValue();
    }

    @Override // com.cloud.tmc.integration.structure.App
    @Nullable
    public MiniAppAutoPopover getMiniAppAutoPopover() {
        return this.miniAppAutoPopover;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public boolean getMiniAppLoadStatus() {
        return this.miniappLoadSuccess;
    }

    public ImmutableBundle getOriginalStartParams() {
        return this.mImmutableStartParams;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public Page getPageByIndex(int i11) {
        return (Page) getChildAt(i11);
    }

    @Override // com.cloud.tmc.integration.structure.App
    public Page getPageByNodeId(long j11) {
        return (Page) getChild(j11);
    }

    @Override // com.cloud.tmc.integration.structure.App
    public int getPageType(@NonNull String str) {
        Integer num = this.mPagesType.get(str);
        if (num == null) {
            return 1;
        }
        return num.intValue();
    }

    @Override // com.cloud.tmc.integration.structure.App
    public LinkedHashMap<String, Runnable> getPermissionInterectMap() {
        return this.mPermissionDialogMap;
    }

    @Override // com.cloud.tmc.integration.structure.App
    @Nullable
    public Page getPrePage() {
        Page activePage = getActivePage();
        if (activePage == null) {
            return null;
        }
        String stringValue = activePage.getStringValue(TmcConstants.KEY_PAGE_PRE_ID);
        if (TextUtils.isEmpty(stringValue)) {
            return null;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            Page pageByIndex = getPageByIndex(childCount);
            if (pageByIndex != null && !pageByIndex.isUseForEmbed() && !pageByIndex.isExited() && TextUtils.equals(pageByIndex.getPageId(), stringValue)) {
                return pageByIndex;
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.integration.structure.App
    @NonNull
    public String getRouteType(@NonNull String str) {
        return getRouteType(str, true);
    }

    @Override // com.cloud.tmc.integration.structure.App
    @NonNull
    public String getRouteType(@NonNull String str, boolean z10) {
        String strRemove = z10 ? this.mRouteType.remove(str) : this.mRouteType.get(str);
        return strRemove != null ? strRemove : TmcConstants.ROUTE_UNKNOWN;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public Bundle getSceneParams() {
        return this.mSceneParams;
    }

    @Override // com.cloud.tmc.kernel.node.Scope
    public Class<? extends Scope> getScopeType() {
        return App.class;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public Bundle getStartParams() {
        return this.mStartParams;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public long getStartTime() {
        return this.startTime;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public long getStartToken() {
        return this.mStartToken;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public String getStartUrl() {
        return this.mStartUrl;
    }

    public AppLoadResult getmAppLoadResult() {
        return this.mAppLoadResult;
    }

    public Bundle getmSceneParams() {
        return this.mSceneParams;
    }

    public Bundle getmStartParams() {
        return this.mStartParams;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public boolean hasHomePage() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            Page pageByIndex = getPageByIndex(childCount);
            if (pageByIndex != null && !pageByIndex.isExited() && (pageByIndex.isHomePage() || pageByIndex.isTabPage())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void hideMiniAppAddHomeBar() {
        try {
            Page activePage = getActivePage();
            if (activePage != null) {
                activePage.hideAddScreenButton();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void init(String str, Bundle bundle, Bundle bundle2) {
        this.appId = str;
        getImageResourceManagerProxy().init(str);
        getIFileResourceManager().init(str);
        this.mStartParams = bundle;
        this.mSceneParams = bundle2;
        this.mStartToken = BundleUtils.getLong(bundle2, TmcConstants.EXTRA_START_TOKEN, 0L);
        this.mImmutableStartParams = new ImmutableBundle(this.mStartParams);
        this.mAppType = bundle2.getString(TmcConstants.EXTRA_APPTYPE, TmcConstants.TYPE_WEB_TINY);
        EntryInfo entryInfo = (EntryInfo) BundleUtils.getParcelable(this.mSceneParams, TmcConstants.EXTRA_ENTRY_INFO);
        this.mAppModel = (AppModel) BundleUtils.getParcelable(this.mSceneParams, TmcConstants.EXTRA_APPINFO);
        this.mAppLoadResult = (AppLoadResult) BundleUtils.getParcelable(this.mSceneParams, TmcConstants.EXTRA_APP_LOAD_RESULT);
        if (entryInfo != null) {
            setData(EntryInfo.class, entryInfo);
        }
        TmcLogger.d(TAG, "init with appType: " + this.mAppType);
    }

    public boolean isAsyncLaunchStatus() {
        return this.asyncLaunchStatus;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public final boolean isDestroyed() {
        return this.mIsDestroyed.get();
    }

    @Override // com.cloud.tmc.integration.structure.App
    public boolean isExited() {
        return this.mIsExited;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public boolean isFirstPage() {
        return getAlivePageCount() == 1;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public boolean isTinyApp() {
        return true;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void notifyAddHomeShow(int i11) {
        IShowAddHomeCallback iShowAddHomeCallback = this.showAddhomeCallback;
        if (iShowAddHomeCallback != null) {
            iShowAddHomeCallback.notifyShowAddHome(i11);
        }
    }

    protected void onDestroy() {
        AppContext appContext;
        TmcLogger.d(TAG, "onDestroy " + this);
        ((OnDestroyAppPoint) ExtensionPoint.as(OnDestroyAppPoint.class).node(this).extensionManager(getExtensionManager()).create()).onDestroy(this, getExtensionManager());
        if (this.mNetworkListener != null && (appContext = this.mAppContext) != null) {
            NetworkUtil.removeListener(appContext.getContext(), this.mNetworkListener);
        }
        IEngine iEngine = this.mEngineProxy;
        if (iEngine != null) {
            iEngine.destroy();
            this.mEngineProxy = null;
        }
        AppContext appContext2 = this.mAppContext;
        if (appContext2 != null) {
            appContext2.destroy();
            this.mAppContext = null;
        }
        onFinalized();
        try {
            ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).clearEventCenterInstance(this);
        } catch (Throwable th2) {
            TmcLogger.e("AppNode", th2);
        }
    }

    protected synchronized void onExit() {
        exitAllPages(!getBooleanValue(TmcConstants.MINIAPP_RELOAD));
        destroy();
    }

    protected void onPageStarted(Page page) {
        if (this.mAppContext == null) {
            return;
        }
        TmcLogger.d(TAG, "onPageStarted");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        synchronized (this.mPageReadyListeners) {
            try {
                Iterator<App.PageReadyListener> it = this.mPageReadyListeners.iterator();
                while (it.hasNext()) {
                    it.next().onPageReady(page);
                }
                TmcLogger.d(TAG, "onPageStarted flush pageReadyListener size: " + this.mPageReadyListeners.size() + " cost: " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
                this.mPageReadyListeners.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.mNetworkListener = new NetworkUtil.NetworkListener() { // from class: com.cloud.tmc.integration.structure.node.AppNode.6
            @Override // com.cloud.tmc.kernel.utils.NetworkUtil.NetworkListener
            public void onNetworkChanged(NetworkUtil.Network network, NetworkUtil.Network network2) {
                AppNode.this.sendNetworkChangeEvent(network2);
            }
        };
        NetworkUtil.addListener(this.mAppContext.getContext(), this.mNetworkListener);
    }

    protected void onPause() {
        TmcLogger.d(TAG, "onPause " + this);
        ((OnPauseAppPoint) ExtensionPoint.as(OnPauseAppPoint.class).node(this).extensionManager(getExtensionManager()).create()).onPause(this, getExtensionManager());
    }

    protected void onResume() {
        TmcLogger.d(TAG, "onResume " + this);
        ((OnResumeAppPoint) ExtensionPoint.as(OnResumeAppPoint.class).node(this).extensionManager(getExtensionManager()).create()).onResume(this, getExtensionManager());
        AppModel appModel = this.mAppModel;
        if (appModel != null) {
            String exclusiveLogoUrl = appModel.getExtend() != null ? this.mAppModel.getExtend().getExclusiveLogoUrl() : null;
            if (MiniForceAddHomeManager.INSTANCE.checkInterect(this.appId)) {
                return;
            }
            LatestUseUtils.addAppUse(this.appId, this.mAppModel.getName(), this.mAppModel.getLogo(), this.mAppModel.getDesc(), this.mAppModel.getClassificationNames(), exclusiveLogoUrl, 0);
        }
    }

    protected void onStart() {
        IEngine iEngine = this.mEngineProxy;
        TmcLogger.d(TAG, "onStart:" + this.mStartUrl);
        preProcessStartParams();
        InitParams initParams = new InitParams();
        initParams.startToken = this.mStartToken;
        initParams.mainResourceUrl = this.mMainJSUrl;
        Bundle bundle = this.mStartParams;
        initParams.startParams = bundle;
        bundle.putString(TmcStartParams.KEY_ENABLE_POLYFILL_WORKER, "true");
        TmcLogger.printPerformanceLog("App", "End create app");
        if (iEngine == null || iEngine.isDestroyed()) {
            TmcLogger.e(TAG, "engine is null or isDestroyed!");
        } else {
            this.mEngineProxy.init(initParams, new EngineInitCallback() { // from class: com.cloud.tmc.integration.structure.node.AppNode.4
                @Override // com.cloud.tmc.kernel.engine.EngineInitCallback
                public void initResult(boolean z10, String str) {
                    TmcLogger.d(AppNode.TAG, "EngineInitCallback initResult success: " + z10);
                    if (z10) {
                        AppNode.this.onEngineInitSuccess();
                    } else {
                        AppNode.this.onEngineInitFailed();
                    }
                }
            });
        }
    }

    protected void onStop() {
        TmcLogger.d(TAG, "onStop " + this);
        ((OnStopAppPoint) ExtensionPoint.as(OnStopAppPoint.class).node(this).extensionManager(getExtensionManager()).create()).onStop(this, getExtensionManager());
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void pause() {
        AppUtils.sendToApp(this, EventConstants.EVENT_NAME_ON_APP_HIDE);
        this.mHasPaused = true;
        try {
            if (this.mAppModel.getDevMode() == 2 && !((BuildConfigProxy) TmcProxy.get(BuildConfigProxy.class)).isDebug().booleanValue() && !AppUtils.enableWebViewDebugger()) {
                WebView.setWebContentsDebuggingEnabled(false);
            }
        } catch (Throwable unused) {
        }
        onPause();
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void performBack() {
        if (isFirstPage()) {
            TmcLogger.d(TAG, "performBack with firstPage, direct exit!");
            exit();
            return;
        }
        TmcLogger.d(TAG, "performBack just exit active page");
        Page activePage = getActivePage();
        if (activePage != null) {
            activePage.exit(true);
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    public synchronized void popPage(@Nullable JsonObject jsonObject) {
        if (jsonObject != null) {
            try {
                TmcLogger.d(TAG, "popPage with param " + jsonObject);
                setData(App.PopParams.class, new App.PopParams(jsonObject));
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Page activePage = getActivePage();
        if (activePage != null) {
            activePage.exit(true);
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void popTo(int i11, boolean z10, JsonObject jsonObject) {
        if (jsonObject != null) {
            setData(App.PopParams.class, new App.PopParams(jsonObject));
        }
        int childCount = getChildCount();
        int i12 = childCount + i11;
        TmcLogger.d(TAG, "popTo " + i11 + " to minIndex " + i12);
        ArrayList arrayList = new ArrayList();
        for (int i13 = childCount + (-1); i13 >= i12; i13--) {
            Page pageByIndex = getPageByIndex(i13);
            if (pageByIndex != null) {
                if (pageByIndex.isUseForEmbed() && i12 > 0) {
                    i12--;
                }
                if (!pageByIndex.isTabPage()) {
                    arrayList.add(pageByIndex);
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Page) it.next()).exit(z10);
        }
    }

    protected void preProcessStartParams() {
        if (getStartParams().containsKey(TmcStartParams.KEY_BACK_BEHAVIOR)) {
            return;
        }
        getStartParams().putString(TmcStartParams.KEY_BACK_BEHAVIOR, TmcStartParams.BACK_BEHAVIOR_POP);
    }

    @Override // com.cloud.tmc.integration.structure.App
    public synchronized void pushPage(String str, final Bundle bundle, final Bundle bundle2) {
        AppModel appModel;
        AppContext appContext;
        try {
            TmcLogger.d(TAG, "pushPage " + str + " with stack: " + Log.getStackTraceString(new Throwable("Just Print")));
            IAppCallback iAppCallback = this.appCallback;
            if (iAppCallback == null || (appModel = this.mAppModel) == null || (appContext = this.mAppContext) == null || !iAppCallback.validPushPage(str, appModel, appContext.getContext(), bundle, bundle2, new ISubpackageLoadCheckCallback() { // from class: com.cloud.tmc.integration.structure.node.b
                @Override // com.cloud.tmc.integration.callback.ISubpackageLoadCheckCallback
                public final void onLoadSuccess(String str2) {
                    this.f23433a.lambda$pushPage$1(bundle, bundle2, str2);
                }
            })) {
                lambda$pushPage$1(str, bundle, bundle2);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void pushWebViewPage(String str, Bundle bundle, Bundle bundle2) {
        TmcLogger.d(TAG, "pushWebViewPage " + str + " with stack: " + Log.getStackTraceString(new Throwable("Just Print")));
        PageNode pageNodeCreatePage = ((PageFactory) TmcProxy.get(PageFactory.class)).createPage(this, str, "todo", bundle, bundle2);
        IEngine iEngine = this.mEngineProxy;
        if (iEngine == null) {
            pageNodeCreatePage.setData(WorkerStore.class, new WorkerStore(""));
        } else {
            pageNodeCreatePage.setData(WorkerStore.class, new WorkerStore(iEngine.getWorkerId()));
        }
        AppContext appContext = this.mAppContext;
        if (appContext != null) {
            appContext.pushWebViewPage(pageNodeCreatePage);
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void putPageType(@NonNull String str, int i11) {
        this.mPagesType.put(str, Integer.valueOf(i11));
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void putRouteType(@NonNull String str, @NonNull String str2) {
        this.mRouteType.put(str, str2);
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void redirectTo(final String str, Bundle bundle, Bundle bundle2) {
        AppContext appContext;
        IAppCallback iAppCallback;
        TmcLogger.d(TAG, "redirectTo " + str + " with stack: " + Log.getStackTraceString(new Throwable("Just Print")));
        bundle2.putString("navigationType", "redirectTo");
        final PageNode pageNodeCreatePage = ((PageFactory) TmcProxy.get(PageFactory.class)).createPage(this, FrameworkConstants.TEMPLATE_URL, str, bundle, bundle2);
        IEngine iEngine = this.mEngineProxy;
        pageNodeCreatePage.setData(WorkerStore.class, new WorkerStore(iEngine == null ? "" : iEngine.getWorkerId()));
        if (pageNodeCreatePage.isTabPage()) {
            TmcLogger.d(TAG, "不支持 redirectTo " + str + " is tab page");
            return;
        }
        AppModel appModel = this.mAppModel;
        if (appModel == null || (appContext = this.mAppContext) == null || (iAppCallback = this.appCallback) == null) {
            doRedirectTo(str, pageNodeCreatePage);
        } else {
            if (iAppCallback.validPushPage(str, appModel, appContext.getContext(), bundle, bundle2, new ISubpackageLoadCheckCallback() { // from class: com.cloud.tmc.integration.structure.node.a
                @Override // com.cloud.tmc.integration.callback.ISubpackageLoadCheckCallback
                public final void onLoadSuccess(String str2) {
                    this.f23430a.lambda$redirectTo$0(str, pageNodeCreatePage, str2);
                }
            })) {
                return;
            }
            doRedirectTo(str, pageNodeCreatePage);
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void relaunchToUrl(String str, Bundle bundle, Bundle bundle2) {
        TmcLogger.d(TAG, "relaunchToUrl " + str + " with stack: " + Log.getStackTraceString(new Throwable("Just Print")));
        exitAllThenPushPage(str, bundle, bundle2);
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void removePage(@NonNull Page page, boolean z10, Page.TaskContext taskContext) {
        TmcLogger.d(TAG, "exitPage: " + page);
        if (page.isDestroyed()) {
            TmcLogger.w(TAG, "exitPage but already destroyed! " + page);
            return;
        }
        if (getChild(page.getNodeId()) != null) {
            TmcLogger.w(TAG, "exitPage but not a child! " + page);
            removeChild(page);
        }
        AppContext appContext = this.mAppContext;
        if (appContext != null) {
            appContext.exitPage(page, z10);
        }
        page.destroy();
        Page activePage = getActivePage();
        try {
            AppContext appContext2 = this.mAppContext;
            if ((appContext2 instanceof TmcAppContext) && activePage != null && ((TmcAppContext) appContext2).getFragmentManager().findFragmentForPage(activePage) == null) {
                activePage = null;
            }
        } catch (Exception e11) {
            TmcLogger.e(TAG, e11.getMessage(), e11);
        }
        if (activePage != null) {
            sendPageBackToWorker(activePage, page, taskContext);
        } else if (taskContext != null) {
            sendPageBackToWorker(taskContext.targetPageOnProcess, page, taskContext);
        }
        if (activePage == null && z10) {
            this.mAppManager.exitApp(this);
        }
    }

    @Override // com.cloud.tmc.integration.structure.App
    public final void restart(Bundle bundle, Bundle bundle2) {
        if (this.restarting) {
            TmcLogger.w(TAG, "cannot restart during restarting");
            return;
        }
        this.restarting = true;
        AppRestartResult appRestartResult = new AppRestartResult();
        appRestartResult.startUrl = BundleUtils.getString(bundle, "url");
        appRestartResult.closeAllWindow = false;
        appRestartResult.canRestart = true;
        appRestartResult.startParam = bundle;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void resume() {
        TmcLogger.d(TAG, "resume with mSendResumeInRestart: " + this.mSendResumeInRestart);
        try {
            AppModel appModel = this.mAppModel;
            if ((appModel != null && appModel.getDevMode() == 2 && !((BuildConfigProxy) TmcProxy.get(BuildConfigProxy.class)).isDebug().booleanValue()) || AppUtils.enableWebViewDebugger()) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
        } catch (Throwable unused) {
        }
        if (this.mHasPaused && !this.mSendResumeInRestart) {
            AppUtils.sendToApp(this, EventConstants.EVENT_NAME_ON_APP_SHOW);
        }
        this.mSendResumeInRestart = false;
        onResume();
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void setAddhomeShowCallback(IShowAddHomeCallback iShowAddHomeCallback) {
        this.showAddhomeCallback = iShowAddHomeCallback;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void setAppCallback(IAppCallback iAppCallback) {
        this.appCallback = iAppCallback;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void setAppChainContext(AppChainContext appChainContext) {
        this.appChainContext = appChainContext;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void setAppStartTime(long j11) {
        this.startTime = j11;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void setAppType(String str) {
        this.mAppType = str;
    }

    public void setAsyncLaunchStatus(boolean z10) {
        this.asyncLaunchStatus = z10;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void setAsyncStartLoadingCallback(IAsyncStartLoadingCallback iAsyncStartLoadingCallback) {
        this.iAsyncStartLoadingCallback = iAsyncStartLoadingCallback;
    }

    public void setBackToPagePath(String str) {
        this.backToPagePath = str;
    }

    public void setEngineProxy(IEngine iEngine) {
        this.mEngineProxy = iEngine;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void setLoadHtmlDataCallback(ILoadHtmlDataCallback iLoadHtmlDataCallback) {
        this.loadHtmlDataCallback = iLoadHtmlDataCallback;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void setMiniAppAutoPopover(MiniAppAutoPopover miniAppAutoPopover) {
        this.miniAppAutoPopover = miniAppAutoPopover;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void setMiniAppLoadStatus(boolean z10) {
        this.miniappLoadSuccess = z10;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void setMiniappLifecycleCallback(ICheckMiniAppLifecycleCallback iCheckMiniAppLifecycleCallback) {
        this.checkMiniAppLifecycleCallback = iCheckMiniAppLifecycleCallback;
    }

    public void setmAppLoadResult(AppLoadResult appLoadResult) {
        this.mAppLoadResult = appLoadResult;
    }

    public void setmSceneParams(Bundle bundle) {
        this.mSceneParams = bundle;
    }

    public void setmStartParams(Bundle bundle) {
        this.mStartParams = bundle;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public final synchronized void start() {
        if (this.mAlreadyStarted) {
            TmcLogger.d(TAG, "try start but mAlreadyStarted true!");
            return;
        }
        this.mAlreadyStarted = true;
        TmcLogger.d(TAG, "start " + this.appId);
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        getStartParams();
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.structure.node.AppNode.3
            @Override // java.lang.Runnable
            public void run() {
                AppNode appNode = AppNode.this;
                appNode.onLoadResult(appNode.mAppLoadResult, jElapsedRealtime);
            }
        });
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void stop() {
        onStop();
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void switchTab(String str, Bundle bundle, Bundle bundle2) {
        TmcFragment tmcFragmentFindTabFragmentByPath;
        BridgeCallback bridgeCallback;
        TmcLogger.d(TAG, "switchTab " + str + " with stack: " + Log.getStackTraceString(new Throwable("Just Print")));
        Page activePage = getActivePage();
        if (activePage != null && activePage.isTabPage() && activePage.getPagePath().equals(str)) {
            if (TextUtils.equals(getStringValue(TmcConstants.KEY_SWITCH_TAB_FROM_SCENE), TmcConstants.KEY_FROM_TAB_RESELECTED)) {
                TmcLogger.d(TAG, "重复 switchTab path: " + str);
                TabReSelectedStore tabReSelectedStore = (TabReSelectedStore) getData(TabReSelectedStore.class);
                if (tabReSelectedStore == null || (bridgeCallback = tabReSelectedStore.getPageCache().get(activePage.getPageId())) == null) {
                    return;
                }
                bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("url", activePage.getPagePath()).build());
                return;
            }
            return;
        }
        int childCount = getChildCount();
        ArrayList arrayList = new ArrayList();
        ArrayList<Page> arrayList2 = new ArrayList();
        for (int i11 = childCount - 1; i11 >= 0; i11--) {
            Page pageByIndex = getPageByIndex(i11);
            if (pageByIndex != null) {
                if ((activePage != null && activePage.isTabPage() && activePage.getPageId().equals(pageByIndex.getPageId())) || pageByIndex.isTabPage()) {
                    arrayList2.add(pageByIndex);
                } else {
                    ((Page.AnimStore) pageByIndex.getData(Page.AnimStore.class, true)).disableExit = true;
                    arrayList.add(pageByIndex);
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Page) it.next()).exit(false);
        }
        for (Page page : arrayList2) {
            if (!page.getPagePath().equals(str) && !page.isHide()) {
                page.hide();
            }
        }
        AppContext appContext = this.mAppContext;
        if (appContext instanceof TmcAppContext) {
            ((TmcAppContext) appContext).getFragmentManager().moveTabPageToCache(arrayList2);
            tmcFragmentFindTabFragmentByPath = ((TmcAppContext) this.mAppContext).getFragmentManager().findTabFragmentByPath(str);
        } else {
            tmcFragmentFindTabFragmentByPath = null;
        }
        if (tmcFragmentFindTabFragmentByPath == null) {
            PageNode pageNodeCreatePage = ((PageFactory) TmcProxy.get(PageFactory.class)).createPage(this, FrameworkConstants.TEMPLATE_URL, str, bundle, bundle2);
            TrackPointUtils.pageRouteTrackStart(pageNodeCreatePage, "switchTab");
            Page.AnimStore animStore = new Page.AnimStore();
            animStore.disableEnter = true;
            pageNodeCreatePage.setData(Page.AnimStore.class, animStore);
            IEngine iEngine = this.mEngineProxy;
            if (iEngine == null) {
                pageNodeCreatePage.setData(WorkerStore.class, new WorkerStore(""));
            } else {
                pageNodeCreatePage.setData(WorkerStore.class, new WorkerStore(iEngine.getWorkerId()));
            }
            pageNodeCreatePage.putStringValue(TmcConstants.KEY_PAGE_PRE_ID, activePage != null ? activePage.getPageId() : null);
            pushChild(pageNodeCreatePage);
            AppContext appContext2 = this.mAppContext;
            if (appContext2 != null) {
                appContext2.pushPage(pageNodeCreatePage);
                return;
            }
            return;
        }
        TmcLogger.d(TAG, "switchTab: " + str + " found in fragment manager");
        Page page2 = tmcFragmentFindTabFragmentByPath.getPage();
        if (page2 == null) {
            return;
        }
        page2.show();
        AppContext appContext3 = this.mAppContext;
        if (appContext3 != null) {
            appContext3.switchTab(page2);
        }
        IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(page2);
        if (eventCenterInstance != null) {
            IEvent defaultEvent = new DefaultEvent("SwitchTab");
            HashMap map = new HashMap();
            map.put(FrameworkConstants.GLOBAL_DATA_KEY_TAB_CREATED, Boolean.TRUE);
            map.put(FrameworkConstants.GLOBAL_DATA_KEY_PRE_RENDER_ID, activePage != null ? activePage.getPageId() : "");
            defaultEvent.setData(map);
            eventCenterInstance.postEvent(EventConstants.EVENT_NAME_ON_SWITCH_TAB, defaultEvent);
        }
    }

    @NonNull
    public String toString() {
        return getClass().getSimpleName() + "@" + this.mStartToken + "@appid=" + getAppId();
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void updateAddHomeShowStatus(int i11) {
        if (i11 == 100) {
            this.MFAHShowStatus = true;
        } else if (i11 == 90) {
            this.APIAddhomeShowStatus = true;
        } else if (i11 == 81) {
            this.guideTopAddhomeShowStatus = true;
        } else if (i11 == 82) {
            this.guideBottomAddhomeShowStatus = true;
        } else if (i11 == 83) {
            this.guideBackAddhomeShowStatus = true;
        }
        notifyAddHomeShow(i11);
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void updateAppModel(AppModel appModel) {
        this.mAppModel = appModel;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void updateHideMiniappLoadingStatus(boolean z10) {
        this.isHideMiniAppLoaingStatus = z10;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void updateInterectCallbackId(String str) {
        this.currentInterectCallbackId = str;
    }

    @Override // com.cloud.tmc.integration.structure.App
    public void updateMFAHStatus(boolean z10) {
        this.currentMFAHStatus = Boolean.valueOf(z10);
    }

    @Override // com.cloud.tmc.kernel.node.NodeInstance, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        super.writeToParcel(parcel, i11);
        parcel.writeString(this.appId);
        parcel.writeLong(this.mStartToken);
        parcel.writeString(this.mAppType);
        String str = this.mAppVersion;
        if (str == null) {
            str = "";
        }
        parcel.writeString(str);
        parcel.writeBundle(this.mStartParams);
        parcel.writeBundle(this.mSceneParams);
        String str2 = this.mStartUrl;
        parcel.writeString(str2 != null ? str2 : "");
    }
}
