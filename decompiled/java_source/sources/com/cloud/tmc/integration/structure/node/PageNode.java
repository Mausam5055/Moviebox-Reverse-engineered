package com.cloud.tmc.integration.structure.node;

import android.app.Activity;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.chain.page.PageChainContext;
import com.cloud.tmc.integration.chain.startState.CreateRenderStartState;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.TabBarManualConfigStore;
import com.cloud.tmc.integration.model.WorkerStore;
import com.cloud.tmc.integration.point.OnDestroyPagePoint;
import com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept;
import com.cloud.tmc.integration.proxy.IUpdateLoadingStepProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.EmbedType;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.PageContext;
import com.cloud.tmc.integration.structure.app.TmcAppContext;
import com.cloud.tmc.integration.ui.action.KeyBoardAction;
import com.cloud.tmc.integration.ui.action.TabBarAction;
import com.cloud.tmc.integration.ui.action.TitleBarAction;
import com.cloud.tmc.integration.ui.fragment.IFragmentManager;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.GenerateIdUtils;
import com.cloud.tmc.integration.utils.MiniAppConfigUtils;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.engine.EngineRouterManager;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.listener.OnKeyboardListener;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.CreateParams;
import com.cloud.tmc.kernel.model.listener.URLVisitListener;
import com.cloud.tmc.kernel.node.DataNode;
import com.cloud.tmc.kernel.node.NodeInstance;
import com.cloud.tmc.kernel.node.Scope;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.render.ExitCallback;
import com.cloud.tmc.kernel.render.GoBackCallback;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.render.LoadParams;
import com.cloud.tmc.kernel.security.Group;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.render.IRenderFactory;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public class PageNode extends NodeInstance implements Page {
    private static final String TAG = "TmcApp:Page";
    private PageNode embedPage;
    private boolean isHomePage;
    private boolean isTabPage;
    private boolean mAlreadyPerformBack;
    private Page.ExitListener mExitListener;
    private boolean mIsDestroyed;
    private boolean mIsExited;
    private boolean mIsHide;
    protected PageContext mPageContext;
    private final String mPageId;
    private boolean mPageLoaded;
    private String mPagePath;
    private String mPageRandomIdByGAId;
    private String mPageURI;
    private IRender mRender;
    private boolean mRenderReady;
    private final List<Page.RenderReadyListener> mRenderReadyListeners;
    private Bundle mSceneParams;
    private Bundle mStartParams;
    private PageChainContext pageChainContext;
    private String screenOrientation;
    private static final AtomicInteger sPageIdCounter = new AtomicInteger(0);
    public static final Parcelable.Creator<PageNode> CREATOR = new Parcelable.Creator<PageNode>() { // from class: com.cloud.tmc.integration.structure.node.PageNode.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PageNode createFromParcel(Parcel parcel) {
            return new PageNode(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PageNode[] newArray(int i11) {
            return new PageNode[i11];
        }
    };

    public PageNode(Parcel parcel) {
        super(parcel);
        this.mIsDestroyed = false;
        this.mIsExited = false;
        this.mIsHide = false;
        this.mPageLoaded = false;
        this.mAlreadyPerformBack = false;
        this.isTabPage = false;
        this.isHomePage = false;
        this.mPageId = sPageIdCounter.addAndGet(1) + "";
        this.mRenderReadyListeners = new ArrayList();
        this.mPageURI = parcel.readString();
        this.mPagePath = parcel.readString();
        this.mStartParams = parcel.readBundle(Page.class.getClassLoader());
        this.mSceneParams = parcel.readBundle(Page.class.getClassLoader());
    }

    public PageNode(App app, String str, String str2, Bundle bundle, Bundle bundle2) {
        this(app, str, str2, bundle, bundle2, EmbedType.NO);
    }

    public PageNode(App app, String str, String str2, Bundle bundle, Bundle bundle2, EmbedType embedType) {
        super(app);
        this.mIsDestroyed = false;
        this.mIsExited = false;
        this.mIsHide = false;
        this.mPageLoaded = false;
        this.mAlreadyPerformBack = false;
        this.isTabPage = false;
        this.isHomePage = false;
        this.mPageId = sPageIdCounter.addAndGet(1) + "";
        this.mRenderReadyListeners = new ArrayList();
        init(str, str2, bundle, bundle2);
    }

    @Deprecated
    public PageNode(App app, String str, String str2, Bundle bundle, Bundle bundle2, boolean z10) {
        this(app, str, str2, bundle, bundle2, z10 ? EmbedType.FULL : EmbedType.NO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doExit(boolean z10, Page.TaskContext taskContext) {
        TmcLogger.d(TAG, "PageNode " + this + " doExit!");
        TmcLogger.d(TAG, "PageNode " + this + " doExit onComplete");
        if (isUseForEmbed()) {
            destroy();
            onFinalized();
            return;
        }
        if (getApp() != null) {
            getApp().removePage(this, z10, taskContext);
        }
        Page.ExitListener exitListener = this.mExitListener;
        if (exitListener != null) {
            exitListener.onExit();
        }
    }

    private String getWorkerId() {
        WorkerStore workerStore = (WorkerStore) getData(WorkerStore.class);
        return workerStore != null ? workerStore.workerId : "";
    }

    private void initCheckHomePage() {
        try {
            App app = getApp();
            if (app == null) {
                return;
            }
            String homePagePath = app.getHomePagePath();
            if (!TextUtils.isEmpty(homePagePath) && TextUtils.equals(Uri.parse(getPagePath()).getPath(), homePagePath)) {
                this.isHomePage = true;
            }
        } catch (Exception e11) {
            TmcLogger.e(TAG, e11);
        }
    }

    private void initCheckTabPage() {
        List<MiniAppConfigModel.TabBarBean.ListBean> list;
        try {
            MiniAppConfigModel.TabBarBean tabBarConfig = getTabBarConfig();
            if (tabBarConfig == null || (list = tabBarConfig.list) == null) {
                return;
            }
            Iterator<MiniAppConfigModel.TabBarBean.ListBean> it = list.iterator();
            while (it.hasNext()) {
                if (TextUtils.equals(it.next().pagePath, Uri.parse(getPagePath()).getPath())) {
                    this.isTabPage = true;
                    return;
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "initCheckTabPage", th2);
        }
    }

    private void initGeneralRandomId() {
        String strGenerateRandomIdByGAId = GenerateIdUtils.generateRandomIdByGAId();
        this.mPageRandomIdByGAId = strGenerateRandomIdByGAId;
        TmcLogger.d(TAG, String.format("initGeneralRandomId: %s pagePath: %s", strGenerateRandomIdByGAId, getPagePath()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$backPressed$1(boolean z10) {
        if (getApp() == null) {
            TmcLogger.d(TAG, "goBack afterProcess but app is null!");
            return;
        }
        TmcLogger.d(TAG, "goBack afterProcess intercept: " + z10);
        if (!z10) {
            AppContext appContext = getApp().getAppContext();
            boolean zIsRootFragment = isRootFragment();
            if ((getApp().getChildCount() == 1 || isTabPage() || zIsRootFragment) && appContext != null && appContext.getContext() != null && appContext.isTaskRoot()) {
                if (getApp().getBackPressedProcessor().startBackPressedInterceptorChain(new IBackPressedIntercept.Params(appContext.getContext(), getApp().getAppId(), (AppNode) getApp(), false, 1)).isIntercept()) {
                    return;
                }
                if (getApp().getAppId().equals(TmcConstants.SETTING_MINIAPP_ID)) {
                    getApp().exit();
                    TmcLogger.d(TAG, "goBack and removeTask");
                    return;
                } else if (appContext.moveToBackground()) {
                    TmcLogger.d(TAG, "goBack keep alive intercept");
                    return;
                }
            }
        }
        if (z10 || this.mAlreadyPerformBack) {
            return;
        }
        performBack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$backPressed$2(final boolean z10) {
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.structure.node.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f23436a.lambda$backPressed$1(z10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DataNode lambda$bindContext$0(String str) {
        TmcLogger.d(TAG, "onVisitStart:" + str);
        return null;
    }

    @Override // com.cloud.tmc.kernel.node.NodeInstance, com.cloud.tmc.kernel.node.Node
    public void addFixedView(@NonNull View view) {
        Object pageContainer = this.mPageContext.getPageContainer();
        if (pageContainer instanceof ViewGroup) {
            TmcLogger.e("addFixedView success. parent " + pageContainer);
            ((ViewGroup) pageContainer).addView(view);
        }
    }

    @Override // com.cloud.tmc.kernel.node.KeyBoardNode
    public void addOnKeyboardListener(@NonNull OnKeyboardListener onKeyboardListener) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof KeyBoardAction) {
            ((KeyBoardAction) pageContext).addOnKeyboardListener(onKeyboardListener);
        }
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public void addRenderReadyListener(Page.RenderReadyListener renderReadyListener) {
        synchronized (this.mRenderReadyListeners) {
            try {
                if (this.mRenderReady) {
                    renderReadyListener.onRenderReady();
                }
                this.mRenderReadyListeners.add(renderReadyListener);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public boolean backPressed() {
        IRender iRender = this.mRender;
        if (iRender == null) {
            return true;
        }
        iRender.goBack(new GoBackCallback() { // from class: com.cloud.tmc.integration.structure.node.d
            @Override // com.cloud.tmc.kernel.render.GoBackCallback
            public final void afterProcess(boolean z10) {
                this.f23438a.lambda$backPressed$2(z10);
            }
        });
        return true;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public void bindContext(PageContext pageContext, Boolean bool, final Page.CreateRenderListener createRenderListener) {
        this.mPageContext = pageContext;
        CreateParams createParams = new CreateParams();
        createParams.startParams = getStartParams();
        createParams.useForEmbed = isUseForEmbed();
        createParams.urlVisitListener = new URLVisitListener() { // from class: com.cloud.tmc.integration.structure.node.e
            @Override // com.cloud.tmc.kernel.model.listener.URLVisitListener
            public final DataNode onVisitStart(String str) {
                return PageNode.lambda$bindContext$0(str);
            }
        };
        final Bundle bundle = new Bundle();
        bundle.putString(ChainPoint.TYPE, "page");
        bundle.putString(ChainPoint.CHAIN_ID, getApp().getStartParams().getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
        bundle.putString(ChainPoint.PAGE_PATH, getPagePath());
        bundle.putString(ChainPoint.RENDER_ID, getPageId());
        Bundle bundle2 = new Bundle();
        bundle2.putString(ChainPoint.PAGE_PATH, getPagePath());
        bundle2.putString(ChainPoint.PAGE_ID, getPageId());
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(getApp() == null ? null : getApp().getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.CreateRender, bundle);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(getApp() == null ? null : getApp().getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.PageCreateRender, bundle2);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(getApp() != null ? getApp().getAppId() : null, PointAnalyseType.POINT_PAGE_CHAIN_START, ChainPoint.PageCreateRender, bundle2);
        new CreateRenderStartState(bundle2).setChainContext(getPageChainContext());
        ((IRenderFactory) TmcProxy.get(IRenderFactory.class)).getRender(pageContext.getActivity(), getApp().getEngineProxy(), this, createParams, this.mPageId, pageContext, bundle2, bool.booleanValue(), new IRenderFactory.IRenderListener() { // from class: com.cloud.tmc.integration.structure.node.PageNode.1
            @Override // com.cloud.tmc.render.IRenderFactory.IRenderListener
            public void createSuccess(@NonNull IRender iRender) {
                PageNode.this.mRender = iRender;
                if (PageNode.this.getApp() != null) {
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(PageNode.this.getApp() == null ? null : PageNode.this.getApp().getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.CreateRender, bundle);
                    ((IUpdateLoadingStepProxy) TmcProxy.get(IUpdateLoadingStepProxy.class)).notifyUpdateLoadingStep(PageNode.this.getApp().getAppId(), LoadStepAction.STEP_FINISH_CREAT_RENDER);
                    ((EngineRouterManager) TmcProxy.get(EngineRouterManager.class)).get(PageNode.this.getApp().getStartToken()).registerRender(PageNode.this.mRender.getRenderId(), PageNode.this.mRender);
                    createRenderListener.success();
                }
            }
        });
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void changeNavigationBarProgress(int i11, int i12, long j11) {
        PageContext pageContext = this.mPageContext;
        if (!(pageContext instanceof TitleBarAction) || ((TitleBarAction) pageContext).getNavigationBarProgressUpdateStatus()) {
            return;
        }
        ((TitleBarAction) this.mPageContext).changeNavigationBarProgress(i11, i12, j11);
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public String createPageRandomIdByGAID() {
        return GenerateIdUtils.generateRandomIdByGAId();
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public final void destroy() {
        if (this.mIsDestroyed) {
            return;
        }
        this.mIsDestroyed = true;
        if (this.mRender != null && getApp().getEngineProxy() != null) {
            getApp().getEngineProxy().getEngineRouter().unRegisterRender(this.mRender.getRenderId());
        }
        IRender iRender = this.mRender;
        if (iRender != null) {
            iRender.destroy();
        }
        PageContext pageContext = this.mPageContext;
        if (pageContext != null) {
            pageContext.destroy();
        }
        ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).clearEventCenterInstance(this);
        onDestroy();
        onFinalized();
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public final void enter() {
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public final synchronized void exit(boolean z10) {
        exit(z10, null);
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public final synchronized void exit(final boolean z10, final Page.TaskContext taskContext) {
        if (this.mIsExited) {
            TmcLogger.w(TAG, "already exited!");
            return;
        }
        TmcLogger.d(TAG, "exit " + toString() + " by stack " + Log.getStackTraceString(new Throwable("Just Print")));
        this.mIsExited = true;
        IRender iRender = this.mRender;
        if (iRender != null) {
            iRender.runExit(new ExitCallback() { // from class: com.cloud.tmc.integration.structure.node.PageNode.2
                @Override // com.cloud.tmc.kernel.render.ExitCallback
                public void afterProcess(boolean z11) {
                    PageNode.this.doExit(z10, taskContext);
                }
            });
        } else {
            doExit(z10, taskContext);
        }
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public boolean getAddScreenVisibleStatus() {
        try {
            PageContext pageContext = this.mPageContext;
            if (pageContext == null || pageContext.getTitleBar() == null) {
                return false;
            }
            return this.mPageContext.getTitleBar().getAddScreenVisibility();
        } catch (Throwable th2) {
            TmcLogger.e("hide->error", th2);
            return false;
        }
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public App getApp() {
        return (App) getParentNode();
    }

    @Override // com.cloud.tmc.integration.structure.Page
    @Nullable
    public AppLoadResult getAppLoadResult() {
        return (AppLoadResult) BundleUtils.getParcelable(getSceneParams(), TmcConstants.EXTRA_APP_LOAD_RESULT);
    }

    public PageNode getEmbedPage() {
        return this.embedPage;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public ExtensionManager getExtensionManager() {
        return NodeInstance.sExtensionManager;
    }

    @Override // com.cloud.tmc.kernel.node.NodeInstance, com.cloud.tmc.kernel.security.Accessor
    public Group getGroup() {
        return getApp().getGroup();
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public String getOriginalURI() {
        return this.mPageURI;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public PageChainContext getPageChainContext() {
        return this.pageChainContext;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    @Nullable
    public PageContext getPageContext() {
        return this.mPageContext;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public String getPageId() {
        return this.mPageId;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public String getPagePath() {
        return this.mPagePath;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    @Nullable
    public String getPageRandomIdByGAId() {
        if (TextUtils.isEmpty(this.mPageRandomIdByGAId)) {
            initGeneralRandomId();
        }
        return this.mPageRandomIdByGAId;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public String getPageURI() {
        return this.mPageURI;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public IRender getRender() {
        return this.mRender;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public Bundle getSceneParams() {
        return this.mSceneParams;
    }

    @Override // com.cloud.tmc.kernel.node.Scope
    public Class<? extends Scope> getScopeType() {
        return Page.class;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public Bundle getStartParams() {
        return this.mStartParams;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    @Nullable
    public MiniAppConfigModel.TabBarBean getTabBarConfig() {
        MiniAppConfigModel miniAppConfigModel;
        TabBarManualConfigStore tabBarManualConfigStore;
        AppLoadResult appLoadResult = getAppLoadResult();
        if (appLoadResult == null || (miniAppConfigModel = appLoadResult.appConfigModel) == null) {
            return null;
        }
        if (!miniAppConfigModel.tabBarManual()) {
            return miniAppConfigModel.tabBar;
        }
        App app = getApp();
        if (app == null || (tabBarManualConfigStore = (TabBarManualConfigStore) app.getData(TabBarManualConfigStore.class)) == null) {
            return null;
        }
        return tabBarManualConfigStore.getTabBarConfig();
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public MiniAppConfigModel.WindowBean getWindow() {
        return MiniAppConfigUtils.getWindowOptimalConfiguration(getAppLoadResult(), getPagePath());
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public final void hide() {
        if (this.mIsHide) {
            TmcLogger.w(TAG, "already hide! " + this);
            return;
        }
        this.mIsHide = true;
        TmcLogger.w(TAG, "hide! " + this);
        TmcLogger.d(TAG, "sendToView page event pagePause");
        onHide();
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void hideAddScreenButton() {
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void hideHomeButton() {
        PageContext pageContext = this.mPageContext;
        if (pageContext == null || pageContext.getTitleBar() == null) {
            return;
        }
        this.mPageContext.getTitleBar().setHomeVisibility(false);
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void hideNavigationBarLoading() {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TitleBarAction) {
            ((TitleBarAction) pageContext).hideNavigationBarLoading();
        }
    }

    @Override // com.cloud.tmc.kernel.node.TabBarNode
    public boolean hideTabBar(boolean z10) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TabBarAction) {
            return ((TabBarAction) pageContext).hideTabBar(z10);
        }
        return false;
    }

    @Override // com.cloud.tmc.kernel.node.TabBarNode
    public boolean hideTabBarRedDot(int i11) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TabBarAction) {
            return ((TabBarAction) pageContext).hideTabBarRedDot(i11);
        }
        return false;
    }

    @Override // com.cloud.tmc.kernel.node.TabBarNode
    public boolean hideTabBarUnreadIcon(int i11) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TabBarAction) {
            return ((TabBarAction) pageContext).hideTabBarUnreadIcon(i11);
        }
        return false;
    }

    public void init(String str, String str2, Bundle bundle, Bundle bundle2) {
        TmcLogger.d(TAG, "init Page with url: " + str + ", pagePath: " + str2 + ", startParams: " + bundle);
        this.mPageURI = str;
        this.mPagePath = str2;
        this.mStartParams = bundle;
        this.mSceneParams = bundle2;
        initCheckTabPage();
        initCheckHomePage();
        initGeneralRandomId();
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public boolean isDestroyed() {
        return this.mIsDestroyed;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public boolean isExited() {
        return this.mIsExited;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public boolean isHide() {
        return this.mIsHide;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public boolean isHomePage() {
        return this.isHomePage;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public boolean isPageLoaded() {
        return this.mPageLoaded;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public boolean isRenderReady() {
        boolean z10;
        synchronized (this.mRenderReadyListeners) {
            z10 = this.mRenderReady;
        }
        return z10;
    }

    public boolean isRootFragment() {
        IFragmentManager fragmentManager;
        try {
            App app = getApp();
            if (app == null) {
                return false;
            }
            AppContext appContext = app.getAppContext();
            if (!(appContext instanceof TmcAppContext) || (fragmentManager = ((TmcAppContext) appContext).getFragmentManager()) == null) {
                return false;
            }
            return fragmentManager.isRootFragment(this);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Failed to isRootFragment", th2);
            return false;
        }
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public boolean isShow() {
        return !isHide();
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public boolean isTabPage() {
        return this.isTabPage;
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public boolean isTransparent() {
        PageContext pageContext = this.mPageContext;
        if (pageContext == null || pageContext.getTitleBar() == null) {
            return false;
        }
        return this.mPageContext.getTitleBar().isTransparent();
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public boolean isUseForEmbed() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0026  */
    @Override // com.cloud.tmc.integration.structure.Page
    public boolean loadTabBar(@NonNull MiniAppConfigModel.TabBarBean tabBarBean) {
        String templateMiniappId;
        AppModel appModel;
        if (!(this.mPageContext instanceof TabBarAction)) {
            return false;
        }
        App app = getApp();
        if (app == null || (appModel = app.getAppModel()) == null) {
            templateMiniappId = "";
        } else {
            Integer miniappSubtype = appModel.getMiniappSubtype();
            miniappSubtype.intValue();
            if (AppUtils.INSTANCE.checkUesCommonresApp(miniappSubtype)) {
                templateMiniappId = appModel.getTemplateMiniappId();
            } else {
                templateMiniappId = "";
            }
        }
        return ((TabBarAction) this.mPageContext).loadTabBar(tabBarBean, templateMiniappId);
    }

    protected void onDestroy() {
        ((OnDestroyPagePoint) ExtensionPoint.as(OnDestroyPagePoint.class).node(this).extensionManager(getExtensionManager()).create()).onDestroy(getApp(), this, getExtensionManager());
    }

    protected void onEnter() {
        TmcLogger.d(TAG, "onEnter " + this.mPageURI);
        LoadParams loadParams = new LoadParams();
        loadParams.url = this.mPageURI;
        this.mRender.load(loadParams);
    }

    protected void onHide() {
    }

    protected void onPause() {
        this.mRender.onPause();
    }

    protected void onResume() {
        this.mRender.onResume();
    }

    protected void onShow() {
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public final void pause() {
        onPause();
    }

    protected synchronized void performBack() {
        this.mAlreadyPerformBack = true;
        getApp().performBack();
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public void refreshApp() {
        PageContext pageContext = this.mPageContext;
        if (pageContext != null) {
            pageContext.refreshApp();
        }
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public void reload() {
        IRender iRender = this.mRender;
        if (iRender != null) {
            iRender.reload();
        }
    }

    @Override // com.cloud.tmc.kernel.node.KeyBoardNode
    public void removeOnKeyboardListener(@NonNull OnKeyboardListener onKeyboardListener) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof KeyBoardAction) {
            ((KeyBoardAction) pageContext).removeOnKeyboardListener(onKeyboardListener);
        }
    }

    @Override // com.cloud.tmc.kernel.node.TabBarNode
    public boolean removeTabBarBadge(int i11) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TabBarAction) {
            return ((TabBarAction) pageContext).removeTabBarBadge(i11);
        }
        return false;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public String resetPageRandomIdByGAID() {
        initGeneralRandomId();
        return this.mPageRandomIdByGAId;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public final void resume() {
        App.PopParams popParams = (App.PopParams) getApp().getData(App.PopParams.class);
        if (popParams != null) {
            new JsonObject().add("data", popParams.data);
            getApp().setData(App.PopParams.class, null);
        }
        onResume();
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void setCapsuleStyle(boolean z10) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TitleBarAction) {
            ((TitleBarAction) pageContext).setCapsuleStyle(z10);
        }
    }

    public void setEmbedPage(PageNode pageNode) {
        this.embedPage = pageNode;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public void setExitListener(Page.ExitListener exitListener) {
        this.mExitListener = exitListener;
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void setHomeAction(int i11, boolean z10) {
        PageContext pageContext = this.mPageContext;
        if (pageContext == null || pageContext.getTitleBar() == null) {
            return;
        }
        this.mPageContext.getTitleBar().setHomeAction(i11, z10);
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void setNavigationBarBackgroundColor(String str) {
        PageContext pageContext = this.mPageContext;
        if (pageContext == null || pageContext.getTitleBar() == null) {
            return;
        }
        try {
            if (!(this.mPageContext.getTitleBar() instanceof View) || TextUtils.isEmpty(str)) {
                return;
            }
            ((View) this.mPageContext.getTitleBar()).setBackgroundColor(Color.parseColor(str));
        } catch (Exception e11) {
            TmcLogger.e("[PageNode]: set navigation bar color error", e11);
        }
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void setNavigationBarIconStyle(boolean z10) {
        setCapsuleStyle(z10);
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TitleBarAction) {
            ((TitleBarAction) pageContext).setNavigationBarIconStyle(z10);
        }
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void setNavigationBarTitle(String str) {
        PageContext pageContext = this.mPageContext;
        if (pageContext == null || pageContext.getTitleBar() == null) {
            return;
        }
        this.mPageContext.getTitleBar().setTitle(str);
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void setNavigationBarTitleColor(boolean z10) {
        setStatusBar(z10);
        PageContext pageContext = this.mPageContext;
        if (pageContext == null || pageContext.getTitleBar() == null) {
            return;
        }
        this.mPageContext.getTitleBar().setTitleColor(z10);
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void setNavigationBarTitleVisible(boolean z10) {
        PageContext pageContext = this.mPageContext;
        if (pageContext == null || pageContext.getTitleBar() == null) {
            return;
        }
        this.mPageContext.getTitleBar().setTitleVisible(z10);
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void setNavigationBarTransparent(boolean z10) {
        PageContext pageContext = this.mPageContext;
        if (pageContext == null || pageContext.getTitleBar() == null) {
            return;
        }
        this.mPageContext.getTitleBar().setTransparent(z10);
        ViewGroup contentView = this.mPageContext.getContentView();
        Object pageContainer = this.mPageContext.getPageContainer();
        ProgressBar progressBar = this.mPageContext.getProgressBar();
        if ((contentView instanceof ConstraintLayout) && (pageContainer instanceof FrameLayout)) {
            androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
            ConstraintLayout constraintLayout = (ConstraintLayout) contentView;
            bVar.q(constraintLayout);
            if (Boolean.TRUE.equals(Boolean.valueOf(z10))) {
                bVar.t(((FrameLayout) pageContainer).getId(), 3, 0, 3);
            } else if (progressBar != null) {
                bVar.t(((FrameLayout) pageContainer).getId(), 3, progressBar.getId(), 4);
            }
            bVar.i(constraintLayout);
        }
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public void setPageChainContext(PageChainContext pageChainContext) {
        this.pageChainContext = pageChainContext;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public void setPageLoaded() {
        this.mPageLoaded = true;
    }

    public void setPageURI(String str) {
        this.mPageURI = str;
    }

    public void setRender(IRender iRender) {
        this.mRender = iRender;
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void setStatusBar(boolean z10) {
        Activity activity = this.mPageContext.getActivity();
        if (activity == null) {
            return;
        }
        if (z10) {
            MiniBarUtils.setStatusBarNightMode(activity);
        } else {
            MiniBarUtils.setStatusBarLightMode(activity);
        }
    }

    @Override // com.cloud.tmc.kernel.node.TabBarNode
    public boolean setTabBarBadge(int i11, @Nullable String str) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TabBarAction) {
            return ((TabBarAction) pageContext).setTabBarBadge(i11, str);
        }
        return false;
    }

    @Override // com.cloud.tmc.kernel.node.TabBarNode
    public boolean setTabBarItem(int i11, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        List<MiniAppConfigModel.TabBarBean.ListBean> list;
        MiniAppConfigModel miniAppConfigModel;
        if (this.mPageContext instanceof TabBarAction) {
            AppLoadResult appLoadResult = getAppLoadResult();
            boolean zTabBarManual = (appLoadResult == null || (miniAppConfigModel = appLoadResult.appConfigModel) == null) ? false : miniAppConfigModel.tabBarManual();
            MiniAppConfigModel.TabBarBean.ListBean listBean = new MiniAppConfigModel.TabBarBean.ListBean();
            MiniAppConfigModel.TabBarBean tabBarConfig = getTabBarConfig();
            if (tabBarConfig != null && (list = tabBarConfig.list) != null && !list.isEmpty()) {
                List<MiniAppConfigModel.TabBarBean.ListBean> list2 = tabBarConfig.list;
                if (i11 >= list2.size() || i11 < 0) {
                    TmcLogger.d(TAG, "Index out of tab list range: " + i11 + " , page: " + this);
                    return false;
                }
                MiniAppConfigModel.TabBarBean.ListBean listBean2 = list2.get(i11);
                if (listBean2 == null) {
                    TmcLogger.d(TAG, "Tab bar's list is null");
                    return false;
                }
                if (zTabBarManual) {
                    listBean = listBean2;
                } else {
                    listBean.pagePath = listBean2.pagePath;
                    listBean.text = listBean2.text;
                    listBean.iconPath = listBean2.iconPath;
                    listBean.selectedIconPath = listBean2.selectedIconPath;
                }
                if (str != null) {
                    listBean.text = str;
                }
                if (str2 != null) {
                    listBean.iconPath = str2;
                }
                if (str3 != null) {
                    listBean.selectedIconPath = str3;
                }
                return ((TabBarAction) this.mPageContext).setTabBarItem(i11, listBean);
            }
            TmcLogger.d(TAG, "It's not tab bar page:" + this);
        }
        return false;
    }

    @Override // com.cloud.tmc.kernel.node.TabBarNode
    public boolean setTabBarItems(@NonNull JsonArray jsonArray) {
        List<MiniAppConfigModel.TabBarBean.ListBean> list;
        MiniAppConfigModel miniAppConfigModel;
        ArrayList<MiniAppConfigModel.TabBarBean.ListBean> arrayList = new ArrayList<>();
        try {
            AppLoadResult appLoadResult = getAppLoadResult();
            boolean zTabBarManual = (appLoadResult == null || (miniAppConfigModel = appLoadResult.appConfigModel) == null) ? false : miniAppConfigModel.tabBarManual();
            MiniAppConfigModel.TabBarBean tabBarConfig = getTabBarConfig();
            if (tabBarConfig != null && (list = tabBarConfig.list) != null && !list.isEmpty()) {
                if (jsonArray.size() != tabBarConfig.list.size()) {
                    TmcLogger.d(TAG, "set tab size mismatch with tab list count");
                    return false;
                }
                for (int i11 = 0; i11 < jsonArray.size(); i11++) {
                    MiniAppConfigModel.TabBarBean.ListBean listBean = new MiniAppConfigModel.TabBarBean.ListBean();
                    JsonObject asJsonObject = jsonArray.get(i11).getAsJsonObject();
                    MiniAppConfigModel.TabBarBean.ListBean listBean2 = tabBarConfig.list.get(i11);
                    if (listBean2 == null) {
                        TmcLogger.d(TAG, "Tab bar's list is null, i: " + i11);
                        return false;
                    }
                    if (zTabBarManual) {
                        listBean = listBean2;
                    } else {
                        listBean.pagePath = listBean2.pagePath;
                        listBean.text = listBean2.text;
                        listBean.iconPath = listBean2.iconPath;
                        listBean.selectedIconPath = listBean2.selectedIconPath;
                    }
                    JsonElement jsonElement = asJsonObject.get(MimeTypes.BASE_TYPE_TEXT);
                    JsonElement jsonElement2 = asJsonObject.get("iconPath");
                    JsonElement jsonElement3 = asJsonObject.get("selectedIconPath");
                    if (jsonElement != null) {
                        listBean.text = jsonElement.getAsString();
                    }
                    if (jsonElement2 != null) {
                        listBean.iconPath = jsonElement2.getAsString();
                    }
                    if (jsonElement3 != null) {
                        listBean.selectedIconPath = jsonElement3.getAsString();
                    }
                    arrayList.add(listBean);
                }
                if (arrayList.isEmpty()) {
                    TmcLogger.d(TAG, "tempTabs is empty");
                    return false;
                }
                PageContext pageContext = this.mPageContext;
                if (pageContext instanceof TabBarAction) {
                    return ((TabBarAction) pageContext).setTabBarItems(arrayList);
                }
                TmcLogger.d(TAG, "mPageContext is not TabBarAction, returning false");
                return false;
            }
            TmcLogger.d(TAG, "It's not tab bar page:" + this);
            return false;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "setTabBarItems json parse is error", th2);
            return false;
        }
    }

    @Override // com.cloud.tmc.kernel.node.TabBarNode
    public boolean setTabBarStyle(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TabBarAction) {
            return ((TabBarAction) pageContext).setTabBarStyle(str, str2, str3, str4);
        }
        return false;
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public void setTabPage(boolean z10) {
        this.isTabPage = z10;
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void setTitleBarVisible(boolean z10) {
        PageContext pageContext = this.mPageContext;
        if (pageContext == null || pageContext.getTitleBar() == null) {
            return;
        }
        this.mPageContext.getTitleBar().setTitleBarVisible(z10);
    }

    @Override // com.cloud.tmc.integration.structure.Page
    public final void show() {
        if (!this.mIsHide) {
            TmcLogger.w(TAG, "already show! " + this);
            return;
        }
        this.mIsHide = false;
        TmcLogger.w(TAG, "show! " + this);
        if (!isUseForEmbed()) {
            TmcLogger.d(TAG, "sendToView page event pageResume");
        }
        onShow();
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void showAddScreenButton() {
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void showHomeButton() {
        PageContext pageContext = this.mPageContext;
        if (pageContext == null || pageContext.getTitleBar() == null) {
            return;
        }
        this.mPageContext.getTitleBar().setHomeVisibility(true);
    }

    @Override // com.cloud.tmc.kernel.node.TitleBarNode
    public void showNavigationBarLoading() {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TitleBarAction) {
            ((TitleBarAction) pageContext).showNavigationBarLoading();
        }
    }

    @Override // com.cloud.tmc.kernel.node.TabBarNode
    public boolean showTabBar(boolean z10) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TabBarAction) {
            return ((TabBarAction) pageContext).showTabBar(z10);
        }
        return false;
    }

    @Override // com.cloud.tmc.kernel.node.TabBarNode
    public boolean showTabBarRedDot(int i11) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TabBarAction) {
            return ((TabBarAction) pageContext).showTabBarRedDot(i11);
        }
        return false;
    }

    @Override // com.cloud.tmc.kernel.node.TabBarNode
    public void showTabBarUnreadIcon(int i11, @NonNull String str, @Nullable Function1<? super Boolean, Unit> function1) {
        PageContext pageContext = this.mPageContext;
        if (pageContext instanceof TabBarAction) {
            ((TabBarAction) pageContext).showTabBarUnreadIcon(i11, str, function1);
        }
    }

    @NonNull
    public String toString() {
        return getClass().getSimpleName() + "@" + hashCode() + "@uri=" + getPageURI() + "?path=" + getPagePath();
    }

    @Override // com.cloud.tmc.kernel.node.NodeInstance, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        super.writeToParcel(parcel, i11);
        parcel.writeString(this.mPageURI);
        parcel.writeString(this.mPagePath);
        parcel.writeBundle(this.mStartParams);
        parcel.writeBundle(this.mSceneParams);
    }
}
