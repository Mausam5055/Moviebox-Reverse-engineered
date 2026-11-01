package com.cloud.tmc.miniapp.ui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.callback.ICheckMiniAppLifecycleCallback;
import com.cloud.tmc.integration.chain.endState.CreateContainerEndState;
import com.cloud.tmc.integration.chain.endState.CreateWorkerEndState;
import com.cloud.tmc.integration.chain.endState.LoadRenderFrameworkEndState;
import com.cloud.tmc.integration.chain.endState.LoadWorkerFrameworkEndState;
import com.cloud.tmc.integration.chain.insert.PageInsertState;
import com.cloud.tmc.integration.chain.page.PageChainContext;
import com.cloud.tmc.integration.chain.startState.ChainMidStartState;
import com.cloud.tmc.integration.chain.startState.CreateContainerStartState;
import com.cloud.tmc.integration.chain.startState.CreateWorkerStartState;
import com.cloud.tmc.integration.chain.startState.LoadRenderFrameworkStartState;
import com.cloud.tmc.integration.chain.startState.LoadWorkerFrameworkStartState;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.minicover.NativeComponentManager;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.TabBarBadgeMessage;
import com.cloud.tmc.integration.model.TabBarManualConfigStore;
import com.cloud.tmc.integration.model.TabBarMessageStore;
import com.cloud.tmc.integration.model.TabBarRedDotMessage;
import com.cloud.tmc.integration.model.TabBarStyle;
import com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool;
import com.cloud.tmc.integration.performanceanalyse.screen.IScreenInspectProxy;
import com.cloud.tmc.integration.proxy.AnimtionProxy;
import com.cloud.tmc.integration.proxy.IUpdateLoadingStepProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.ui.ErrorView;
import com.cloud.tmc.integration.structure.ui.LoadingView;
import com.cloud.tmc.integration.structure.ui.PageContainer;
import com.cloud.tmc.integration.structure.ui.TabBar;
import com.cloud.tmc.integration.structure.ui.TitleBar;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.integration.utils.AbilitiesUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.MiniAppConfigUtils;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.bridge.RenderBridge;
import com.cloud.tmc.kernel.bridge.RenderCallContext;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.debug.DebugCallback;
import com.cloud.tmc.kernel.debug.DebugConfig;
import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.TabBarNode;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import com.cloud.tmc.kernel.proxy.performanceanalyse.BuildConfigProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ICommunicationTimeProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.render.ICustomViewVisiable;
import com.cloud.tmc.kernel.render.IPageCallback;
import com.cloud.tmc.kernel.render.IPageEventCallback;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.render.LoadParams;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.kernel.worker.JSI;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.StatusAction;
import com.cloud.tmc.miniapp.base.MiniAppBaseFragment;
import com.cloud.tmc.miniapp.databinding.OooO00o;
import com.cloud.tmc.miniapp.ui.extension.FullScreenExtensionKt;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniapp.widget.CapsuleView;
import com.cloud.tmc.miniapp.widget.ImmersiveTitleBarView;
import com.cloud.tmc.miniapp.widget.PageContainerView;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.SystemUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.render.bridge.WebviewBridgeHelper;
import com.cloud.tmc.render.system.SystemWebView;
import com.cloud.tmc.worker.WorkerManager;
import com.google.gson.JsonObject;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NotImplementedError;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.a2;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class MiniFragment extends MiniAppBaseFragment implements IPageEventCallback, IPageCallback, DebugCallback, IEventSubscriber {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "MiniFragment";
    private boolean adm;
    private OooO00o binding;
    private View contextView;
    private IEventCenter eventCenter;
    private IEventCenter eventCenter_page;
    private IEventSubscriber eventCreateMiniAppFail;
    private IEventSubscriber eventCreateOnPageReady;
    private View mCustomView;
    private WebChromeClient.CustomViewCallback mCustomViewCallback;
    private Page mPendingSetPage;
    private int mScrollY;
    private boolean navigationBarCustomIconStyleIsWhite;
    private boolean navigationBarDefaultStyleIsWhite;
    private boolean needRefreshYCoordinate;
    private boolean perfSendFlag;
    private final Lazy isLowClient$delegate = LazyKt.b(new Function0<Boolean>() { // from class: com.cloud.tmc.miniapp.ui.MiniFragment.isLowClient.2
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            boolean zIsLowClient;
            try {
                zIsLowClient = ((AnimtionProxy) TmcProxy.get(AnimtionProxy.class)).isLowClient();
            } catch (Throwable th2) {
                TmcLogger.e(MiniFragment.TAG, th2);
                zIsLowClient = true;
            }
            return Boolean.valueOf(zIsLowClient);
        }
    });
    private String adTag = "";
    private String callbackId = "";

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class CreateMiniAppFail implements IEventSubscriber {
        private final Fragment context;
        private final WeakReference<Fragment> contextWeakReference;
        private final Page page;
        private final WeakReference<Page> pageWeakReference;

        public CreateMiniAppFail(Fragment context, Page page) {
            Intrinsics.h(context, "context");
            this.context = context;
            this.page = page;
            this.contextWeakReference = new WeakReference<>(context);
            this.pageWeakReference = new WeakReference<>(page);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Integer getViewThemeMode() {
            Fragment fragment = this.contextWeakReference.get();
            KeyEventDispatcher.Component activity = fragment != null ? fragment.getActivity() : null;
            StatusAction statusAction = activity instanceof StatusAction ? (StatusAction) activity : null;
            if (statusAction != null) {
                return statusAction.getViewThemeMode();
            }
            return null;
        }

        public final Fragment getContext() {
            return this.context;
        }

        public final WeakReference<Fragment> getContextWeakReference() {
            return this.contextWeakReference;
        }

        public final Page getPage() {
            return this.page;
        }

        public final WeakReference<Page> getPageWeakReference() {
            return this.pageWeakReference;
        }

        @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
        public boolean onEvent(IEvent iEvent) {
            App app;
            IEngine engineProxy;
            Page page = this.pageWeakReference.get();
            if (!Intrinsics.c((page == null || (app = page.getApp()) == null || (engineProxy = app.getEngineProxy()) == null) ? null : engineProxy.getWorkerId(), iEvent != null ? iEvent.getName() : null)) {
                Page page2 = this.pageWeakReference.get();
                if (!Intrinsics.c(page2 != null ? page2.getPageId() : null, iEvent != null ? iEvent.getName() : null)) {
                    return false;
                }
            }
            if (!Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new MiniFragment$CreateMiniAppFail$onEvent$1(this, null), 3, null);
                return true;
            }
            Fragment fragment = this.contextWeakReference.get();
            FragmentActivity activity = fragment != null ? fragment.getActivity() : null;
            StatusAction statusAction = activity instanceof StatusAction ? (StatusAction) activity : null;
            if (statusAction == null) {
                return true;
            }
            Integer viewThemeMode = getViewThemeMode();
            StatusAction.DefaultImpls.showErrorLayout$default(statusAction, (viewThemeMode != null && viewThemeMode.intValue() == 2) ? R.drawable.mini_ic_error_normal_mode : R.drawable.mini_ic_error, R.string.loading_error_miniapp_went_wrong, R.string.loading_error_miniapp_cant_open_now, null, false, false, null, 112, null);
            return true;
        }
    }

    public static final class OnPageReadyEventSubscriber implements IEventSubscriber {
        private final MiniFragment context;
        private final WeakReference<MiniFragment> contextWeakReference;

        public OnPageReadyEventSubscriber(MiniFragment context) {
            Intrinsics.h(context, "context");
            this.context = context;
            this.contextWeakReference = new WeakReference<>(context);
        }

        public final MiniFragment getContext() {
            return this.context;
        }

        public final WeakReference<MiniFragment> getContextWeakReference() {
            return this.contextWeakReference;
        }

        @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
        public boolean onEvent(IEvent iEvent) {
            MiniFragment miniFragment = this.contextWeakReference.get();
            if (miniFragment != null) {
                FullScreenExtensionKt.injectScreenFullJS(miniFragment);
            }
            try {
                MiniFragment miniFragment2 = this.contextWeakReference.get();
                if (miniFragment2 != null) {
                    MiniFragment miniFragment3 = this.contextWeakReference.get();
                    miniFragment2.navigationBarDefaultStyleIsWhite = miniFragment3 != null ? miniFragment3.navigationBarCustomIconStyleIsWhite : false;
                }
                MiniFragment miniFragment4 = this.contextWeakReference.get();
                if (miniFragment4 == null) {
                    return true;
                }
                miniFragment4.updateTitleBarStyle();
                return true;
            } catch (Throwable th2) {
                TmcLogger.e(MiniFragment.TAG, "", th2);
                return true;
            }
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ui.MiniFragment$hideCustomView$1, reason: invalid class name */
    @DebugMetadata(c = "com.cloud.tmc.miniapp.ui.MiniFragment$hideCustomView$1", f = "MiniFragment.kt", l = {822, 823}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        public int label;

        /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ui.MiniFragment$hideCustomView$1$1, reason: invalid class name and collision with other inner class name */
        @DebugMetadata(c = "com.cloud.tmc.miniapp.ui.MiniFragment$hideCustomView$1$1", f = "MiniFragment.kt", l = {}, m = "invokeSuspend")
        public static final class C03451 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
            public int label;
            public final /* synthetic */ MiniFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C03451(MiniFragment miniFragment, Continuation<? super C03451> continuation) {
                super(2, continuation);
                this.this$0 = miniFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C03451(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
                return ((C03451) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                if (this.this$0.contextView == null) {
                    Intrinsics.z("contextView");
                }
                View view = this.this$0.contextView;
                if (view == null) {
                    Intrinsics.z("contextView");
                    view = null;
                }
                view.scrollTo(0, this.this$0.mScrollY);
                return Unit.f67061a;
            }
        }

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MiniFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            this.label = 1;
            if (kotlinx.coroutines.u0.a(500L, this) == objF) {
                return objF;
            }
            a2 a2VarC = kotlinx.coroutines.y0.c();
            C03451 c03451 = new C03451(MiniFragment.this, null);
            this.label = 2;
            if (kotlinx.coroutines.i.g(a2VarC, c03451, this) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void changeNavigationBarProgress$lambda$26(MiniFragment this$0, int i11, int i12, long j11) {
        Intrinsics.h(this$0, "this$0");
        this$0.changeNavigationBarProgress(i11 + 1, i12, j11);
    }

    private final void checkFirstNormalPageOpened() {
        Page page;
        App app;
        App app2;
        Page page2 = this.page;
        boolean booleanValue = (page2 == null || (app2 = page2.getApp()) == null) ? false : app2.getBooleanValue(TmcConstants.KEY_FIRST_NORMAL_PAGE_OPENED);
        TmcLogger.d(TAG, "Check first page opened: " + booleanValue);
        if (booleanValue || (page = this.page) == null || (app = page.getApp()) == null) {
            return;
        }
        app.putBooleanValue(TmcConstants.KEY_FIRST_NORMAL_PAGE_OPENED, true);
    }

    private final void checkUpdateHomeButton() {
        Page page = this.page;
        String stringValue = page != null ? page.getStringValue(TmcConstants.KEY_IS_API_SHOW_HOME_ENABLED) : null;
        if (Intrinsics.c(stringValue, "showHomeButton")) {
            if (isHomepage(getAppLoadResult())) {
                Page page2 = this.page;
                if (page2 != null) {
                    page2.hideHomeButton();
                    return;
                }
                return;
            }
            Page page3 = this.page;
            if (page3 != null) {
                page3.showHomeButton();
                return;
            }
            return;
        }
        if (Intrinsics.c(stringValue, "hideHomeButton")) {
            Page page4 = this.page;
            if (page4 != null) {
                page4.hideHomeButton();
                return;
            }
            return;
        }
        if (isHomepage(getAppLoadResult())) {
            Page page5 = this.page;
            if (page5 != null) {
                page5.hideHomeButton();
                return;
            }
            return;
        }
        Page page6 = this.page;
        if (page6 != null) {
            page6.showHomeButton();
        }
    }

    private final void checkUpdateTitleBarStyle() {
        Page page = this.page;
        if (page == null || !page.isShow()) {
            return;
        }
        updateTabBarStyle();
        updateTitleBarStyle();
        Page page2 = this.page;
        if (page2 == null || !page2.isTabPage()) {
            return;
        }
        updateTabBarMessage();
    }

    private final void customNavigationStyle(MiniAppConfigModel.WindowBean windowBean) {
        Page page;
        if (windowBean != null) {
            Page page2 = this.page;
            if (page2 != null) {
                page2.setNavigationBarTitleColor(windowBean.navigationBarTextStyleIsWhite());
            }
            Page page3 = this.page;
            if (page3 != null) {
                page3.setNavigationBarBackgroundColor(windowBean.getNavigationBgColor());
            }
            Page page4 = this.page;
            if (page4 != null) {
                page4.setNavigationBarTransparent(Intrinsics.c(windowBean.getEnableTransparentStatusBar(), Boolean.TRUE));
            }
            String navigationBarHomeAction = windowBean.getNavigationBarHomeAction();
            if (navigationBarHomeAction != null && (page = this.page) != null) {
                page.setHomeAction(MiniAppConfigUtils.navigationBarAction(navigationBarHomeAction), false);
            }
            this.navigationBarCustomIconStyleIsWhite = windowBean.navigationBarIconStyleIsWhite();
            Page page5 = this.page;
            if (page5 != null) {
                page5.setNavigationBarIconStyle(this.navigationBarDefaultStyleIsWhite);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void debugRefresh$lambda$44(final MiniFragment this$0) {
        JSI workerById;
        IRender render;
        App app;
        IRender render2;
        App app2;
        IEngine engineProxy;
        EngineRouter engineRouter;
        App app3;
        IEngine engineProxy2;
        Intrinsics.h(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        String appId = null;
        MiniAppActivity miniAppActivity = activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null;
        if (miniAppActivity != null) {
            miniAppActivity.setFirstLaunch(true);
        }
        Page page = this$0.page;
        if (page == null || (app2 = page.getApp()) == null || (engineProxy = app2.getEngineProxy()) == null || (engineRouter = engineProxy.getEngineRouter()) == null) {
            workerById = null;
        } else {
            Page page2 = this$0.page;
            workerById = engineRouter.getWorkerById((page2 == null || (app3 = page2.getApp()) == null || (engineProxy2 = app3.getEngineProxy()) == null) ? null : engineProxy2.getWorkerId());
        }
        if (workerById != null) {
            workerById.debugRefresh();
        }
        Page page3 = this$0.page;
        View view = (page3 == null || (render2 = page3.getRender()) == null) ? null : render2.getView();
        WebView webView = view instanceof WebView ? (WebView) view : null;
        if (webView != null) {
            webView.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
        }
        if (this$0.getAppLoadResult() != null) {
            final IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(this$0.app);
            if (eventCenterInstance != null) {
                eventCenterInstance.register(EventConstants.EVENT_RENDER_ON_MSG_READY, new IEventSubscriber() { // from class: com.cloud.tmc.miniapp.ui.MiniFragment$debugRefresh$1$1$1
                    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                    public boolean onEvent(IEvent iEvent) {
                        WebviewBridgeHelper webviewBridgeHelper;
                        IRender render3;
                        IRender render4;
                        Page page4 = ((TmcFragment) this.this$0).page;
                        if (!StringsKt.I((page4 == null || (render4 = page4.getRender()) == null) ? null : render4.getRenderId(), iEvent != null ? iEvent.getRenderId() : null, false, 2, null)) {
                            return false;
                        }
                        Page page5 = ((TmcFragment) this.this$0).page;
                        View view2 = (page5 == null || (render3 = page5.getRender()) == null) ? null : render3.getView();
                        SystemWebView systemWebView = view2 instanceof SystemWebView ? (SystemWebView) view2 : null;
                        if (systemWebView != null && (webviewBridgeHelper = systemWebView.getWebviewBridgeHelper()) != null) {
                            webviewBridgeHelper.registerMessageChannel();
                        }
                        this.this$0.openPage();
                        eventCenterInstance.unregister(EventConstants.EVENT_RENDER_ON_MSG_READY, this);
                        return true;
                    }
                });
            }
            LoadParams loadParams = new LoadParams();
            Page page4 = this$0.page;
            loadParams.url = page4 != null ? page4.getPageURI() : null;
            Page page5 = this$0.page;
            loadParams.pagePath = page5 != null ? page5.getPagePath() : null;
            Page page6 = this$0.page;
            if (page6 != null && (app = page6.getApp()) != null) {
                appId = app.getAppId();
            }
            loadParams.appId = appId;
            Page page7 = this$0.page;
            if (page7 == null || (render = page7.getRender()) == null) {
                return;
            }
            render.load(loadParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean hideCustomView(boolean z10) {
        FrameLayout frameLayout;
        if (this.mCustomView == null) {
            return false;
        }
        if (z10) {
            this.needRefreshYCoordinate = true;
        }
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.a()), null, null, new AnonymousClass1(null), 3, null);
        OooO00o oooO00o = this.binding;
        if (oooO00o != null && (frameLayout = oooO00o.OooO0OO) != null) {
            frameLayout.setVisibility(8);
            frameLayout.removeView(this.mCustomView);
        }
        View view = this.mCustomView;
        if (view != null) {
            view.setVisibility(8);
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.mCustomViewCallback;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
        }
        this.mCustomView = null;
        this.mCustomViewCallback = null;
        if (getHasVirtualNavBar()) {
            showVirtualNavBar();
        }
        FullScreenExtensionKt.landScapeToProtrait(this);
        return true;
    }

    private final void hideWebViewMask() {
        OooO00o oooO00o;
        final View view;
        try {
            boolean zEnableWebViewMask = MiniAppLaunch.INSTANCE.enableWebViewMask();
            TmcLogger.d(TAG, "hideWebViewMask enableWebViewMask: " + zEnableWebViewMask);
            if (zEnableWebViewMask && (oooO00o = this.binding) != null && (view = oooO00o.OooO0oo) != null) {
                removeCallbacksAndMessages(view);
                ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.o0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniFragment.hideWebViewMask$lambda$42(view);
                    }
                });
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hideWebViewMask$lambda$42(View maskView) {
        Intrinsics.h(maskView, "$maskView");
        try {
            if (maskView.getVisibility() != 4) {
                ViewExtKt.toInvisible(maskView);
                TmcLogger.d(TAG, "hideWebViewMask maskView 隐藏成功");
            }
            TmcLogger.d(TAG, "hideWebViewMask 执行完毕");
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }

    private final void init() {
        IRender render;
        IRender render2;
        PageContainerView pageContainerView;
        PageContainerView pageContainerView2;
        IRender render3;
        App app;
        AppLoadResult appLoadResult = getAppLoadResult();
        Page page = this.page;
        if (page != null && (app = page.getApp()) != null) {
            app.setData(AppLoadResult.class, appLoadResult);
        }
        try {
            Boolean boolIsDebug = ((BuildConfigProxy) TmcProxy.get(BuildConfigProxy.class)).isDebug();
            Intrinsics.g(boolIsDebug, "get(BuildConfigProxy::class.java).isDebug");
            if (boolIsDebug.booleanValue() || AppUtils.enableWebViewDebugger()) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
        } catch (Throwable unused) {
        }
        Page page2 = this.page;
        View view = (page2 == null || (render3 = page2.getRender()) == null) ? null : render3.getView();
        if (view == null) {
            return;
        }
        this.contextView = view;
        AppLoadResult appLoadResult2 = getAppLoadResult();
        Page page3 = this.page;
        MiniAppConfigModel.WindowBean windowOptimalConfiguration = MiniAppConfigUtils.getWindowOptimalConfiguration(appLoadResult2, page3 != null ? page3.getPagePath() : null);
        if (windowOptimalConfiguration != null) {
            try {
                String contentBgColor = windowOptimalConfiguration.getContentBgColor();
                if (contentBgColor != null && contentBgColor.length() > 0) {
                    int color = Color.parseColor(contentBgColor);
                    showWebViewMask(color);
                    OooO00o oooO00o = this.binding;
                    if (oooO00o != null && (pageContainerView = oooO00o.OooO0O0) != null) {
                        pageContainerView.setBackgroundColor(color);
                    }
                    Page page4 = this.page;
                    if (page4 != null && (render2 = page4.getRender()) != null) {
                        render2.setBgColor(contentBgColor);
                    }
                }
            } catch (Exception e11) {
                TmcLogger.e(TAG, "set content background color error", e11);
            }
            Boolean enablePullDownRefresh = windowOptimalConfiguration.getEnablePullDownRefresh();
            Boolean bool = Boolean.TRUE;
            if (Intrinsics.c(enablePullDownRefresh, bool) || Intrinsics.c(windowOptimalConfiguration.getEnablePullUpRefresh(), bool)) {
                View view2 = this.contextView;
                if (view2 == null) {
                    Intrinsics.z("contextView");
                    view2 = null;
                }
                this.contextView = attachToRefresh(view2, windowOptimalConfiguration);
            }
            try {
                if (Intrinsics.c(windowOptimalConfiguration.getLimitTextZoom(), bool)) {
                    Page page5 = this.page;
                    View view3 = (page5 == null || (render = page5.getRender()) == null) ? null : render.getView();
                    WebView webView = view3 instanceof WebView ? (WebView) view3 : null;
                    WebSettings settings = webView != null ? webView.getSettings() : null;
                    if (settings != null) {
                        settings.setTextZoom(100);
                    }
                }
            } catch (Throwable unused2) {
            }
        }
        OooO00o oooO00o2 = this.binding;
        if (oooO00o2 != null && (pageContainerView2 = oooO00o2.OooO0O0) != null) {
            View view4 = this.contextView;
            if (view4 == null) {
                Intrinsics.z("contextView");
                view4 = null;
            }
            ViewExtKt.removeSelf(view4);
            pageContainerView2.addView(view4);
        }
        prePage();
        Page page6 = this.page;
        IRender render4 = page6 != null ? page6.getRender() : null;
        Page page7 = this.page;
        injectRenderFramework(render4, page7 != null ? page7.getApp() : null);
        FragmentActivity activity = getActivity();
        MiniAppActivity miniAppActivity = activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null;
        if (miniAppActivity != null) {
            miniAppActivity.hideStatusLoadingDelay(MiniAppLaunch.INSTANCE.getStartLoadingNativeAnimDelayTime());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$12$lambda$11$lambda$10(MiniAppActivity miniAppActivity, View view) {
        if (miniAppActivity != null) {
            miniAppActivity.goBack();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$12$lambda$11$lambda$8(MiniAppActivity miniAppActivity, View view) {
        if (miniAppActivity != null) {
            MiniAppActivity.addScreen$default(miniAppActivity, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$12$lambda$11$lambda$9(MiniFragment this$0, MiniAppActivity miniAppActivity, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.checkBackToPageInterceptAndRemoveIt();
        if (miniAppActivity != null) {
            miniAppActivity.goHome();
        }
    }

    private final void injectRenderFramework(IRender iRender, App app) {
        App app2;
        App app3;
        App app4;
        Bundle startParams;
        IRender render;
        NativeComponentManager nativeComponentManager = NativeComponentManager.INSTANCE;
        String appId = app != null ? app.getAppId() : null;
        if (appId == null) {
            appId = "";
        }
        String renderId = iRender != null ? iRender.getRenderId() : null;
        nativeComponentManager.addAppId(appId, renderId != null ? renderId : "");
        Page page = this.page;
        if (page == null || (render = page.getRender()) == null || !render.getFromWarmup()) {
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.TYPE, "page");
            bundle.putString(ChainPoint.CHAIN_ID, String.valueOf((app == null || (startParams = app.getStartParams()) == null) ? null : startParams.getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE)));
            String str = ChainPoint.PAGE_PATH;
            Page page2 = this.page;
            bundle.putString(str, String.valueOf(page2 != null ? page2.getPagePath() : null));
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            Page page3 = this.page;
            performanceAnalyseProxy.record((page3 == null || (app4 = page3.getApp()) == null) ? null : app4.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.LoadRenderFramework, bundle);
            Bundle bundle2 = new Bundle();
            String str2 = ChainPoint.PAGE_PATH;
            Page page4 = this.page;
            bundle2.putString(str2, String.valueOf(page4 != null ? page4.getPagePath() : null));
            String str3 = ChainPoint.PAGE_ID;
            Page page5 = this.page;
            bundle2.putString(str3, String.valueOf(page5 != null ? page5.getPageId() : null));
            PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            Page page6 = this.page;
            performanceAnalyseProxy2.record((page6 == null || (app3 = page6.getApp()) == null) ? null : app3.getAppId(), PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.PageLoadRenderFramework, bundle2);
            PerformanceAnalyseProxy performanceAnalyseProxy3 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            Page page7 = this.page;
            performanceAnalyseProxy3.record((page7 == null || (app2 = page7.getApp()) == null) ? null : app2.getAppId(), PointAnalyseType.POINT_PAGE_CHAIN_START, ChainPoint.PageLoadRenderFramework, bundle2);
            LoadRenderFrameworkStartState loadRenderFrameworkStartState = new LoadRenderFrameworkStartState(bundle2);
            Page page8 = this.page;
            loadRenderFrameworkStartState.setChainContext(page8 != null ? page8.getPageChainContext() : null);
            LoadParams loadParams = new LoadParams();
            Page page9 = this.page;
            loadParams.url = page9 != null ? page9.getPageURI() : null;
            Page page10 = this.page;
            loadParams.pagePath = page10 != null ? page10.getPagePath() : null;
            loadParams.appId = app != null ? app.getAppId() : null;
            if (iRender != null) {
                iRender.load(loadParams);
            }
            View view = iRender != null ? iRender.getView() : null;
            WebView webView = view instanceof WebView ? (WebView) view : null;
            if (webView != null) {
                webView.setVerticalScrollBarEnabled(false);
                webView.setHorizontalScrollBarEnabled(false);
            }
        }
    }

    private final boolean isLowClient() {
        return ((Boolean) this.isLowClient$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(MiniFragment this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.hideCustomView(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openPage() {
        JSI workerById;
        App app;
        IEngine engineProxy;
        EngineRouter engineRouter;
        App app2;
        IEngine engineProxy2;
        App app3;
        App app4;
        Bundle startParams;
        IRender render;
        App app5;
        try {
            Page page = this.page;
            AppModel appModel = (page == null || (app5 = page.getApp()) == null) ? null : app5.getAppModel();
            if (appModel != null && AppUtils.INSTANCE.checkUesCommonresApp(appModel.getMiniappSubtype())) {
                Page page2 = this.page;
                View view = (page2 == null || (render = page2.getRender()) == null) ? null : render.getView();
                SystemWebView systemWebView = view instanceof SystemWebView ? (SystemWebView) view : null;
                if (systemWebView != null) {
                    systemWebView.setCommonresId(appModel.getTemplateMiniappId());
                }
                TmcLogger.d(TAG, "use commonres miniapp, commonresId is " + appModel.getTemplateMiniappId());
            }
        } catch (Throwable unused) {
        }
        Bundle bundle = new Bundle();
        bundle.putString(ChainPoint.TYPE, "page");
        String str = ChainPoint.CHAIN_ID;
        Page page3 = this.page;
        bundle.putString(str, String.valueOf((page3 == null || (app4 = page3.getApp()) == null || (startParams = app4.getStartParams()) == null) ? null : startParams.getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE)));
        String str2 = ChainPoint.PAGE_PATH;
        Page page4 = this.page;
        bundle.putString(str2, String.valueOf(page4 != null ? page4.getPagePath() : null));
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        Page page5 = this.page;
        performanceAnalyseProxy.record((page5 == null || (app3 = page5.getApp()) == null) ? null : app3.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.DrawView, bundle);
        checkFirstNormalPageOpened();
        TmcLogger.d("subPkg", "openPage");
        FragmentActivity activity = getActivity();
        MiniAppActivity miniAppActivity = activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null;
        if (miniAppActivity == null || !miniAppActivity.isFirstLaunch()) {
            TmcLogger.d("subPkg", EventConstants.EVENT_NAME_PAGE_READY);
            sendPageReadyToRender();
            Bundle bundle2 = new Bundle();
            String str3 = ChainPoint.PAGE_PATH;
            Page page6 = this.page;
            bundle2.putString(str3, String.valueOf(page6 != null ? page6.getPagePath() : null));
            String str4 = ChainPoint.PAGE_ID;
            Page page7 = this.page;
            bundle2.putString(str4, String.valueOf(page7 != null ? page7.getPageId() : null));
            PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            App app6 = this.app;
            performanceAnalyseProxy2.record(app6 != null ? app6.getAppId() : null, PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.PageDrawView, bundle2);
            PerformanceAnalyseProxy performanceAnalyseProxy3 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            App app7 = this.app;
            performanceAnalyseProxy3.record(app7 != null ? app7.getAppId() : null, PointAnalyseType.POINT_PAGE_CHAIN_START, ChainPoint.PageDrawView, bundle2);
            Page page8 = this.page;
            if (page8 == null || (app = page8.getApp()) == null || (engineProxy = app.getEngineProxy()) == null || (engineRouter = engineProxy.getEngineRouter()) == null) {
                workerById = null;
            } else {
                Page page9 = this.page;
                workerById = engineRouter.getWorkerById((page9 == null || (app2 = page9.getApp()) == null || (engineProxy2 = app2.getEngineProxy()) == null) ? null : engineProxy2.getWorkerId());
            }
            Bundle bundle3 = new Bundle();
            String str5 = ChainPoint.PAGE_PATH;
            Page page10 = this.page;
            bundle3.putString(str5, String.valueOf(page10 != null ? page10.getPagePath() : null));
            String str6 = ChainPoint.PAGE_ID;
            Page page11 = this.page;
            bundle3.putString(str6, String.valueOf(page11 != null ? page11.getPageId() : null));
            bundle3.putLong(ChainPoint.TIME, System.currentTimeMillis());
            CreateWorkerStartState createWorkerStartState = new CreateWorkerStartState(bundle3);
            Page page12 = this.page;
            createWorkerStartState.setChainContext(page12 != null ? page12.getPageChainContext() : null);
            CreateWorkerEndState createWorkerEndState = new CreateWorkerEndState(bundle3);
            Page page13 = this.page;
            createWorkerEndState.setChainContext(page13 != null ? page13.getPageChainContext() : null);
            Bundle bundle4 = new Bundle();
            bundle4.putLong(ChainPoint.TIME, System.currentTimeMillis());
            String str7 = ChainPoint.PAGE_PATH;
            Page page14 = this.page;
            bundle4.putString(str7, String.valueOf(page14 != null ? page14.getPagePath() : null));
            String str8 = ChainPoint.PAGE_ID;
            Page page15 = this.page;
            bundle4.putString(str8, String.valueOf(page15 != null ? page15.getPageId() : null));
            LoadWorkerFrameworkStartState loadWorkerFrameworkStartState = new LoadWorkerFrameworkStartState(bundle4);
            Page page16 = this.page;
            loadWorkerFrameworkStartState.setChainContext(page16 != null ? page16.getPageChainContext() : null);
            LoadWorkerFrameworkEndState loadWorkerFrameworkEndState = new LoadWorkerFrameworkEndState(bundle4);
            Page page17 = this.page;
            loadWorkerFrameworkEndState.setChainContext(page17 != null ? page17.getPageChainContext() : null);
            ChainMidStartState chainMidStartState = new ChainMidStartState(bundle4);
            Page page18 = this.page;
            chainMidStartState.setChainContext(page18 != null ? page18.getPageChainContext() : null);
            if (workerById != null ? Intrinsics.c(workerById.firstGetPackageFileStatus(), Boolean.TRUE) : false) {
                MiniAppBaseFragment.sendPageEnterToWorker$default(this, null, 1, null);
            } else {
                IEventCenterFactory iEventCenterFactory = (IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class);
                Page page19 = this.page;
                IEventCenter eventCenterInstance = iEventCenterFactory.getEventCenterInstance(page19 != null ? page19.getApp() : null);
                if (eventCenterInstance != null) {
                    eventCenterInstance.register(WorkerManager.INSTANCE.getEVENT_RESEND_PAGE_ENTER(), new IEventSubscriber() { // from class: com.cloud.tmc.miniapp.ui.MiniFragment.openPage.2
                        @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                        public boolean onEvent(IEvent iEvent) {
                            MiniAppBaseFragment.sendPageEnterToWorker$default(MiniFragment.this, null, 1, null);
                            return false;
                        }
                    });
                }
            }
        } else {
            TmcLogger.d("subPkg", EventConstants.EVENT_NAME_APP_READY);
            sendAppReadyToRender();
            FragmentActivity activity2 = getActivity();
            MiniAppActivity miniAppActivity2 = activity2 instanceof MiniAppActivity ? (MiniAppActivity) activity2 : null;
            if (miniAppActivity2 != null) {
                miniAppActivity2.setFirstLaunch(false);
            }
        }
        try {
            IEventCenter eventCenterInstance2 = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(this.page);
            if (eventCenterInstance2 != null) {
                eventCenterInstance2.register(EventConstants.EVENT_NAME_SLAVE_LOADED, new IEventSubscriber() { // from class: com.cloud.tmc.miniapp.ui.m0
                    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                    public final boolean onEvent(IEvent iEvent) {
                        return MiniFragment.openPage$lambda$24(this.f23766a, iEvent);
                    }
                });
            }
            IEventCenter eventCenterInstance3 = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(this.page);
            if (eventCenterInstance3 != null) {
                eventCenterInstance3.register(EventConstants.EVENT_NAME_SLAVE_ATTACHED, new IEventSubscriber() { // from class: com.cloud.tmc.miniapp.ui.n0
                    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                    public final boolean onEvent(IEvent iEvent) {
                        return MiniFragment.openPage$lambda$25(this.f23770a, iEvent);
                    }
                });
            }
            IEventCenter eventCenterInstance4 = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(this.page);
            if (eventCenterInstance4 != null) {
                eventCenterInstance4.register(EventConstants.EVENT_NAME_ON_SWITCH_TAB, new IEventSubscriber() { // from class: com.cloud.tmc.miniapp.ui.MiniFragment.openPage.5
                    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                    public boolean onEvent(IEvent iEvent) {
                        if (iEvent == null) {
                            return true;
                        }
                        MiniFragment.this.sendPageEnterToWorker(iEvent.getData());
                        return true;
                    }
                });
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean openPage$lambda$24(MiniFragment this$0, IEvent iEvent) {
        Intrinsics.h(this$0, "this$0");
        this$0.hideLoadingDialog();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean openPage$lambda$25(MiniFragment this$0, IEvent iEvent) {
        Intrinsics.h(this$0, "this$0");
        this$0.hideWebViewMask();
        return false;
    }

    private final void prePage() {
        IRender render;
        Page page = this.page;
        if (page == null || (render = page.getRender()) == null || !render.getFromWarmup()) {
            final IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(this.app);
            if (eventCenterInstance != null) {
                eventCenterInstance.register(EventConstants.EVENT_RENDER_ON_MSG_READY, new IEventSubscriber() { // from class: com.cloud.tmc.miniapp.ui.MiniFragment.prePage.1
                    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                    public boolean onEvent(IEvent iEvent) {
                        WebviewBridgeHelper webviewBridgeHelper;
                        IRender render2;
                        App app;
                        String appId;
                        App app2;
                        App app3;
                        App app4;
                        App app5;
                        Bundle startParams;
                        IRender render3;
                        Page page2 = ((TmcFragment) MiniFragment.this).page;
                        if (!StringsKt.I((page2 == null || (render3 = page2.getRender()) == null) ? null : render3.getRenderId(), iEvent != null ? iEvent.getRenderId() : null, false, 2, null)) {
                            return false;
                        }
                        Bundle bundle = new Bundle();
                        bundle.putString(ChainPoint.TYPE, "page");
                        String str = ChainPoint.CHAIN_ID;
                        Page page3 = ((TmcFragment) MiniFragment.this).page;
                        bundle.putString(str, String.valueOf((page3 == null || (app5 = page3.getApp()) == null || (startParams = app5.getStartParams()) == null) ? null : startParams.getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE)));
                        String str2 = ChainPoint.PAGE_PATH;
                        Page page4 = ((TmcFragment) MiniFragment.this).page;
                        bundle.putString(str2, String.valueOf(page4 != null ? page4.getPagePath() : null));
                        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                        Page page5 = ((TmcFragment) MiniFragment.this).page;
                        performanceAnalyseProxy.record((page5 == null || (app4 = page5.getApp()) == null) ? null : app4.getAppId(), PointAnalyseType.POINT_CHAIN_END, ChainPoint.LoadRenderFramework, bundle);
                        Bundle bundle2 = new Bundle();
                        MiniFragment miniFragment = MiniFragment.this;
                        String str3 = ChainPoint.PAGE_PATH;
                        Page page6 = ((TmcFragment) miniFragment).page;
                        bundle2.putString(str3, String.valueOf(page6 != null ? page6.getPagePath() : null));
                        String str4 = ChainPoint.PAGE_ID;
                        Page page7 = ((TmcFragment) miniFragment).page;
                        bundle2.putString(str4, String.valueOf(page7 != null ? page7.getPageId() : null));
                        PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                        Page page8 = ((TmcFragment) MiniFragment.this).page;
                        performanceAnalyseProxy2.record((page8 == null || (app3 = page8.getApp()) == null) ? null : app3.getAppId(), PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.PageLoadRenderFramework, bundle2);
                        PerformanceAnalyseProxy performanceAnalyseProxy3 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                        Page page9 = ((TmcFragment) MiniFragment.this).page;
                        performanceAnalyseProxy3.record((page9 == null || (app2 = page9.getApp()) == null) ? null : app2.getAppId(), PointAnalyseType.POINT_PAGE_CHAIN_END, ChainPoint.PageLoadRenderFramework, bundle2);
                        LoadRenderFrameworkEndState loadRenderFrameworkEndState = new LoadRenderFrameworkEndState(bundle2);
                        Page page10 = ((TmcFragment) MiniFragment.this).page;
                        loadRenderFrameworkEndState.setChainContext(page10 != null ? page10.getPageChainContext() : null);
                        Page page11 = ((TmcFragment) MiniFragment.this).page;
                        if (page11 != null && (app = page11.getApp()) != null && (appId = app.getAppId()) != null) {
                            ((IUpdateLoadingStepProxy) TmcProxy.get(IUpdateLoadingStepProxy.class)).notifyUpdateLoadingStep(appId, LoadStepAction.STEP_FINISH_LOAD_RENDER);
                        }
                        Page page12 = ((TmcFragment) MiniFragment.this).page;
                        View view = (page12 == null || (render2 = page12.getRender()) == null) ? null : render2.getView();
                        SystemWebView systemWebView = view instanceof SystemWebView ? (SystemWebView) view : null;
                        if (systemWebView != null && (webviewBridgeHelper = systemWebView.getWebviewBridgeHelper()) != null) {
                            webviewBridgeHelper.registerMessageChannel();
                        }
                        MiniFragment.this.openPage();
                        IEventCenter iEventCenter = eventCenterInstance;
                        if (iEventCenter != null) {
                            iEventCenter.unregister(EventConstants.EVENT_RENDER_ON_MSG_READY, this);
                        }
                        return true;
                    }
                });
                return;
            }
            return;
        }
        Bundle bundle = new Bundle();
        String str = ChainPoint.PAGE_PATH;
        Page page2 = this.page;
        bundle.putString(str, String.valueOf(page2 != null ? page2.getPagePath() : null));
        String str2 = ChainPoint.PAGE_ID;
        Page page3 = this.page;
        bundle.putString(str2, String.valueOf(page3 != null ? page3.getPageId() : null));
        openPage();
    }

    private final void sendAppReadyToRender() {
        MiniAppBaseFragment.sendAppOrPageReadyToRender$default(this, EventConstants.EVENT_NAME_APP_READY, null, 2, null);
    }

    private final void sendPageReadyToRender() {
        MiniAppBaseFragment.sendAppOrPageReadyToRender$default(this, EventConstants.EVENT_NAME_PAGE_READY, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setPage$lambda$17(MiniFragment this$0, Page page) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(page, "$page");
        OooO00o oooO00o = this$0.binding;
        if ((oooO00o != null ? oooO00o.OooO00o : null) != null) {
            this$0.setPageOnMain(page);
        } else {
            this$0.mPendingSetPage = page;
        }
    }

    private final void setPageOnMain(final Page page) {
        try {
            this.page = page;
            ((IScreenInspectProxy) TmcProxy.get(IScreenInspectProxy.class)).start(this.app, String.valueOf(page != null ? page.getPagePath() : null));
            if (page != null) {
                FragmentActivity activity = getActivity();
                MiniAppActivity miniAppActivity = activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null;
                page.bindContext(this, Boolean.valueOf(miniAppActivity != null ? miniAppActivity.isFirstLaunch() : false), new Page.CreateRenderListener() { // from class: com.cloud.tmc.miniapp.ui.k0
                    @Override // com.cloud.tmc.integration.structure.Page.CreateRenderListener
                    public final void success() {
                        MiniFragment.setPageOnMain$lambda$28(page, this);
                    }
                });
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "setPageOnMain error", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setPageOnMain$lambda$28(Page page, final MiniFragment this$0) {
        IRender render;
        IRender render2;
        Intrinsics.h(this$0, "this$0");
        if (page != null && (render2 = page.getRender()) != null) {
            render2.registerPageCallback(this$0);
        }
        FullScreenExtensionKt.addADJSIListener(this$0, page, this$0);
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            OooO00o oooO00o = this$0.binding;
            FullScreenExtensionKt.addFullScreenJSIListener(this$0, page, oooO00o != null ? oooO00o.OooO0OO : null, activity, this$0.app, this$0);
        }
        if (page != null && (render = page.getRender()) != null) {
            render.registerICustomViewVisiable(new ICustomViewVisiable() { // from class: com.cloud.tmc.miniapp.ui.MiniFragment$setPageOnMain$1$2
                @Override // com.cloud.tmc.kernel.render.ICustomViewVisiable
                public void onHideCustomView() {
                    this.this$0.isFullScreen().set(false);
                    this.this$0.hideCustomView(false);
                }

                @Override // com.cloud.tmc.kernel.render.ICustomViewVisiable
                public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                    this.this$0.isFullScreen().set(true);
                    this.this$0.showCustomView(view, customViewCallback);
                }
            });
        }
        this$0.initView();
        this$0.init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout;
        if (this.mCustomView != null) {
            if (customViewCallback != null) {
                customViewCallback.onCustomViewHidden();
                return;
            }
            return;
        }
        this.mCustomView = view;
        OooO00o oooO00o = this.binding;
        if (oooO00o != null && (frameLayout = oooO00o.OooO0OO) != null) {
            frameLayout.setVisibility(0);
            FragmentActivity it = getActivity();
            if (it != null) {
                Intrinsics.g(it, "it");
                FullScreenExtensionKt.tryToProtrait(this, frameLayout, it, this.app);
            }
            frameLayout.addView(this.mCustomView, 0);
        }
        if (this.contextView == null) {
            Intrinsics.z("contextView");
        }
        View view2 = this.contextView;
        if (view2 == null) {
            Intrinsics.z("contextView");
            view2 = null;
        }
        this.mScrollY = view2.getScrollY();
        this.mCustomViewCallback = customViewCallback;
    }

    private final void showWebViewMask(final int i11) {
        OooO00o oooO00o;
        final View view;
        try {
            boolean zEnableWebViewMask = MiniAppLaunch.INSTANCE.enableWebViewMask();
            TmcLogger.d(TAG, "showWebViewMask enableWebViewMask: " + zEnableWebViewMask);
            if (zEnableWebViewMask && (oooO00o = this.binding) != null && (view = oooO00o.OooO0oo) != null) {
                removeCallbacksAndMessages(view);
                ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.p0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniFragment.showWebViewMask$lambda$41(i11, view, this);
                    }
                });
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }

    public static /* synthetic */ void showWebViewMask$default(MiniFragment miniFragment, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = 0;
        }
        miniFragment.showWebViewMask(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showWebViewMask$lambda$41(int i11, View maskView, final MiniFragment this$0) {
        Intrinsics.h(maskView, "$maskView");
        Intrinsics.h(this$0, "this$0");
        if (i11 != 0) {
            try {
                maskView.setBackgroundColor(i11);
                TmcLogger.d(TAG, "showWebViewMask maskView background 设置成功");
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "", th2);
                return;
            }
        }
        if (!ViewExtKt.getVisible(maskView)) {
            ViewExtKt.toVisible(maskView);
            TmcLogger.d(TAG, "showWebViewMask maskView 显示成功");
        }
        this$0.postDelayed(maskView, 5000L, new Runnable() { // from class: com.cloud.tmc.miniapp.ui.r0
            @Override // java.lang.Runnable
            public final void run() {
                MiniFragment.showWebViewMask$lambda$41$lambda$40(this.f23789a);
            }
        });
        TmcLogger.d(TAG, "showWebViewMask 执行完毕");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showWebViewMask$lambda$41$lambda$40(MiniFragment this$0) {
        Intrinsics.h(this$0, "this$0");
        TmcLogger.d(TAG, "showWebViewMask 执行超时关闭遮罩");
        this$0.hideWebViewMask();
    }

    private final void updateTabBarMessage() {
        App app;
        TabBarMessageStore tabBarMessageStore;
        Page page;
        try {
            Page page2 = this.page;
            if (page2 != null && (app = page2.getApp()) != null && (tabBarMessageStore = (TabBarMessageStore) app.getData(TabBarMessageStore.class)) != null) {
                Iterator<Map.Entry<Integer, TabBarRedDotMessage>> it = tabBarMessageStore.getRedDotMessageHashMap().entrySet().iterator();
                while (it.hasNext()) {
                    TabBarRedDotMessage value = it.next().getValue();
                    if (value.getShowRedDot()) {
                        Page page3 = this.page;
                        if (page3 != null) {
                            page3.showTabBarRedDot(value.getIndex());
                        }
                    } else {
                        Page page4 = this.page;
                        if (page4 != null) {
                            page4.hideTabBarRedDot(value.getIndex());
                        }
                    }
                    if (value.getShowUnreadIcon()) {
                        Page page5 = this.page;
                        if (page5 != null) {
                            Intrinsics.g(page5, "page");
                            int index = value.getIndex();
                            String unreadIcon = value.getUnreadIcon();
                            if (unreadIcon == null) {
                                unreadIcon = "";
                            }
                            TabBarNode.DefaultImpls.showTabBarUnreadIcon$default(page5, index, unreadIcon, null, 4, null);
                        }
                    } else {
                        Page page6 = this.page;
                        if (page6 != null) {
                            page6.hideTabBarUnreadIcon(value.getIndex());
                        }
                    }
                }
                Iterator<Map.Entry<Integer, TabBarBadgeMessage>> it2 = tabBarMessageStore.getBadgeMessageHashMap().entrySet().iterator();
                while (it2.hasNext()) {
                    TabBarBadgeMessage value2 = it2.next().getValue();
                    if (value2.getShowBadge()) {
                        Page page7 = this.page;
                        if (page7 != null) {
                            page7.setTabBarBadge(value2.getIndex(), value2.getText());
                        }
                    } else {
                        Page page8 = this.page;
                        if (page8 != null) {
                            page8.removeTabBarBadge(value2.getIndex());
                        }
                    }
                }
                TabBarStyle tabBarStyle = tabBarMessageStore.getTabBarStyle();
                if (tabBarStyle == null || (page = this.page) == null) {
                    return;
                }
                page.setTabBarStyle(tabBarStyle.getColor(), tabBarStyle.getSelectedColor(), tabBarStyle.getBackgroundColor(), tabBarStyle.getBorderStyle());
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    private final void updateTabBarStyle() {
        MiniAppConfigModel.TabBarBean tabBarConfig;
        App app;
        AppModel appModel;
        String templateMiniappId;
        AppModel appModel2;
        App app2;
        MiniAppConfigModel miniAppConfigModel;
        AppLoadResult appLoadResult = getAppLoadResult();
        int i11 = 0;
        if ((appLoadResult == null || (miniAppConfigModel = appLoadResult.appConfigModel) == null) ? false : miniAppConfigModel.tabBarManual()) {
            Page page = this.page;
            Integer miniappSubtype = null;
            TabBarManualConfigStore tabBarManualConfigStore = (page == null || (app2 = page.getApp()) == null) ? null : (TabBarManualConfigStore) app2.getData(TabBarManualConfigStore.class);
            if (tabBarManualConfigStore == null || (tabBarConfig = tabBarManualConfigStore.getTabBarConfig()) == null) {
                return;
            }
            MiniAppConfigModel.TabBarBean tabBar$default = MiniAppConfigUtils.getTabBar$default(tabBarConfig, appLoadResult, false, 4, null);
            List<MiniAppConfigModel.TabBarBean.ListBean> list = tabBar$default.list;
            if (list == null) {
                i11 = -1;
                break;
            }
            Iterator<MiniAppConfigModel.TabBarBean.ListBean> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    i11 = -1;
                    break;
                }
                String str = it.next().pagePath;
                Page page2 = this.page;
                if (Intrinsics.c(str, page2 != null ? page2.getPagePath() : null)) {
                    break;
                } else {
                    i11++;
                }
            }
            if (i11 != -1) {
                Page page3 = this.page;
                if (page3 != null) {
                    page3.setTabPage(true);
                }
                AppUtils appUtils = AppUtils.INSTANCE;
                App app3 = this.app;
                if (app3 != null && (appModel2 = app3.getAppModel()) != null) {
                    miniappSubtype = appModel2.getMiniappSubtype();
                }
                String str2 = "";
                if (appUtils.checkUesCommonresApp(miniappSubtype) && (app = this.app) != null && (appModel = app.getAppModel()) != null && (templateMiniappId = appModel.getTemplateMiniappId()) != null) {
                    str2 = templateMiniappId;
                }
                loadTabBar(tabBar$default, str2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTitleBarStyle() {
        checkUpdateScreenButton();
        MiniAppConfigModel.WindowBean window = getWindow();
        if (window != null && window.navigationStyleIsHide()) {
            Page page = this.page;
            if (page != null) {
                page.setTitleBarVisible(false);
            }
            Page page2 = this.page;
            if (page2 != null) {
                page2.setNavigationBarTitleColor(window.navigationBarTextStyleIsWhite());
            }
            Page page3 = this.page;
            if (page3 != null) {
                page3.setNavigationBarIconStyle(window.navigationBarIconStyleIsWhite());
                return;
            }
            return;
        }
        checkUpdateHomeButton();
        OooO00o oooO00o = this.binding;
        ProgressBar progressBar = oooO00o != null ? oooO00o.OooO0o0 : null;
        if (progressBar != null) {
            progressBar.setTag(Boolean.valueOf(window != null ? Intrinsics.c(window.getEnableNavigationBarLoading(), Boolean.TRUE) : false));
        }
        if (window != null && window.navigationStyleIsCustom()) {
            customNavigationStyle(window);
            return;
        }
        Page page4 = this.page;
        if (page4 != null) {
            page4.setNavigationBarTitleColor(this.navigationBarDefaultStyleIsWhite);
        }
        Page page5 = this.page;
        if (page5 != null) {
            page5.setNavigationBarBackgroundColor(IntegrationConstants.INSTANCE.getDefaultNavigationBarBackgroundColor(getContext()));
        }
        Page page6 = this.page;
        if (page6 != null) {
            page6.setNavigationBarTransparent(false);
        }
        Page page7 = this.page;
        if (page7 != null) {
            page7.setNavigationBarIconStyle(this.navigationBarDefaultStyleIsWhite);
        }
    }

    @Override // com.cloud.tmc.integration.ui.action.TitleBarAction
    public void changeNavigationBarProgress(final int i11, final int i12, final long j11) {
        ProgressBar progressBar;
        if (i11 > i12) {
            setNavigationBarProgressUpdating(false);
            return;
        }
        setNavigationBarProgressUpdating(true);
        OooO00o oooO00o = this.binding;
        if (oooO00o != null && (progressBar = oooO00o.OooO0o0) != null) {
            progressBar.postDelayed(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.t0
                @Override // java.lang.Runnable
                public final void run() {
                    MiniFragment.changeNavigationBarProgress$lambda$26(this.f23792a, i11, i12, j11);
                }
            }, j11);
        }
        onProgressChanged(null, i11);
    }

    public final void checkUpdateScreenButton() {
        boolean abilityEnableStatus;
        App app = this.app;
        if (app != null) {
            AbilitiesUtils abilitiesUtils = AbilitiesUtils.INSTANCE;
            String appId = app.getAppId();
            Intrinsics.g(appId, "it.appId");
            abilityEnableStatus = abilitiesUtils.getAbilityEnableStatus(appId, TmcConstants.MENU_KEY_TITLE_BAR_ADD_HOME);
        } else {
            abilityEnableStatus = true;
        }
        Page page = this.page;
        String stringValue = page != null ? page.getStringValue(TmcConstants.KEY_IS_API_ADD_SCREEN_ENABLED) : null;
        if (Intrinsics.c(stringValue, "showAddScreenButton")) {
            if (abilityEnableStatus) {
                Page page2 = this.page;
                if (page2 != null) {
                    page2.showAddScreenButton();
                    return;
                }
                return;
            }
            Page page3 = this.page;
            if (page3 != null) {
                page3.hideAddScreenButton();
                return;
            }
            return;
        }
        if (Intrinsics.c(stringValue, "hideAddScreenButton")) {
            Page page4 = this.page;
            if (page4 != null) {
                page4.hideAddScreenButton();
                return;
            }
            return;
        }
        if (abilityEnableStatus) {
            Page page5 = this.page;
            if (page5 != null) {
                page5.showAddScreenButton();
                return;
            }
            return;
        }
        Page page6 = this.page;
        if (page6 != null) {
            page6.hideAddScreenButton();
        }
    }

    @Override // com.cloud.tmc.kernel.debug.DebugCallback
    public void debugRefresh() {
        DebugConfig.DEBUG_REFRESH = true;
        Context context = getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.s0
                @Override // java.lang.Runnable
                public final void run() {
                    MiniFragment.debugRefresh$lambda$44(this.f23791a);
                }
            });
        }
    }

    @Override // com.cloud.tmc.miniapp.base.MiniAppBaseFragment, com.cloud.tmc.integration.structure.PageContext
    public void destroy() {
        IRender render;
        IRender render2;
        IRender render3;
        Bundle startParams;
        App app;
        super.destroy();
        IEventCenter iEventCenter = this.eventCenter;
        if (iEventCenter != null) {
            iEventCenter.unregister(EventConstants.EVENT_CONSUME_TIME, this);
        }
        IEventCenter iEventCenter2 = this.eventCenter;
        if (iEventCenter2 != null) {
            iEventCenter2.unregister("create_miniapp_worker_fail", this.eventCreateMiniAppFail);
        }
        IEventCenter iEventCenter3 = this.eventCenter_page;
        if (iEventCenter3 != null) {
            iEventCenter3.unregister("create_miniapp_worker_fail", this.eventCreateMiniAppFail);
        }
        FullScreenExtensionKt.removeFullScreenJSIListener(this, this.page);
        FullScreenExtensionKt.removeADJSIListener(this, this.page);
        IEventCenter iEventCenter4 = this.eventCenter_page;
        if (iEventCenter4 != null) {
            iEventCenter4.unregister(EventConstants.EVENT_NAME_ON_PAGE_READY, this.eventCreateOnPageReady);
        }
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        Page page = this.page;
        String renderId = null;
        String appId = (page == null || (app = page.getApp()) == null) ? null : app.getAppId();
        PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_CHAIN_CLEAR;
        Bundle bundle = new Bundle();
        bundle.putString(ChainPoint.TYPE, "page");
        String str = ChainPoint.CHAIN_ID;
        App app2 = this.app;
        bundle.putString(str, String.valueOf((app2 == null || (startParams = app2.getStartParams()) == null) ? null : startParams.getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE)));
        String str2 = ChainPoint.PAGE_PATH;
        Page page2 = this.page;
        bundle.putString(str2, String.valueOf(page2 != null ? page2.getPagePath() : null));
        Page page3 = this.page;
        bundle.putString(TmcConstants.KEY_PAGE_RANDOM_ID, page3 != null ? page3.getPageRandomIdByGAId() : null);
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.record(appId, pointAnalyseType, "clear", bundle);
        IScreenInspectProxy iScreenInspectProxy = (IScreenInspectProxy) TmcProxy.get(IScreenInspectProxy.class);
        Page page4 = this.page;
        App app3 = page4 != null ? page4.getApp() : null;
        Page page5 = this.page;
        iScreenInspectProxy.destroy(app3, String.valueOf(page5 != null ? page5.getPagePath() : null));
        Page page6 = this.page;
        if (page6 == null || (render2 = page6.getRender()) == null || !render2.getFromWarmup()) {
            Page page7 = this.page;
            if (page7 == null || (render = page7.getRender()) == null) {
                return;
            }
            render.destroy();
            return;
        }
        IInnerRenderPool iInnerRenderPool = (IInnerRenderPool) TmcProxy.get(IInnerRenderPool.class);
        Page page8 = this.page;
        if (page8 != null && (render3 = page8.getRender()) != null) {
            renderId = render3.getRenderId();
        }
        iInnerRenderPool.removeRender(renderId);
    }

    @Override // com.cloud.tmc.integration.ui.fragment.TmcFragment
    public Boolean exitFullScreen() {
        return Boolean.valueOf(hideCustomView(false));
    }

    public final String getAdTag() {
        return this.adTag;
    }

    public final boolean getAdm() {
        return this.adm;
    }

    public final String getCallbackId() {
        return this.callbackId;
    }

    @Override // com.cloud.tmc.integration.structure.PageContext
    public ViewGroup getContentView() {
        OooO00o oooO00o = this.binding;
        if (oooO00o != null) {
            return oooO00o.OooO00o;
        }
        return null;
    }

    @Override // com.cloud.tmc.integration.ui.fragment.TmcFragment
    public String getCurrentPath() {
        Page page = this.page;
        if (page != null) {
            return page.getPagePath();
        }
        return null;
    }

    @Override // com.cloud.tmc.integration.structure.PageContext
    public ErrorView getErrorView() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    public final IEventCenter getEventCenter() {
        return this.eventCenter;
    }

    public final IEventCenter getEventCenter_page() {
        return this.eventCenter_page;
    }

    public final IEventSubscriber getEventCreateMiniAppFail() {
        return this.eventCreateMiniAppFail;
    }

    public final IEventSubscriber getEventCreateOnPageReady() {
        return this.eventCreateOnPageReady;
    }

    public final String getGlobalObjectScript(String key, JsonObject jsonObject) {
        Intrinsics.h(key, "key");
        Intrinsics.h(jsonObject, "jsonObject");
        return "(function() {window." + key + " = " + jsonObject + "; })();";
    }

    @Override // com.cloud.tmc.integration.structure.PageContext
    public LoadingView getLoadingView() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.cloud.tmc.integration.structure.PageContext
    public PageContainer getPageContainer() {
        OooO00o oooO00o = this.binding;
        if (oooO00o != null) {
            return oooO00o.OooO0O0;
        }
        return null;
    }

    @Override // com.cloud.tmc.integration.structure.PageContext
    public ProgressBar getProgressBar() {
        OooO00o oooO00o = this.binding;
        if (oooO00o != null) {
            return oooO00o.OooO0o0;
        }
        return null;
    }

    @Override // com.cloud.tmc.integration.structure.PageContext
    public TabBar getTabBar() {
        OooO00o oooO00o = this.binding;
        if (oooO00o != null) {
            return oooO00o.OooO0o;
        }
        return null;
    }

    @Override // com.cloud.tmc.integration.structure.PageContext
    public TitleBar getTitleBar() {
        OooO00o oooO00o = this.binding;
        if (oooO00o != null) {
            return oooO00o.OooO0oO;
        }
        return null;
    }

    @Override // com.cloud.tmc.integration.ui.action.TitleBarAction
    public void hideNavigationBarLoading() {
        ProgressBar progressBar;
        OooO00o oooO00o = this.binding;
        ProgressBar progressBar2 = oooO00o != null ? oooO00o.OooO0o0 : null;
        if (progressBar2 != null) {
            progressBar2.setTag(Boolean.FALSE);
        }
        OooO00o oooO00o2 = this.binding;
        if (oooO00o2 == null || (progressBar = oooO00o2.OooO0o0) == null) {
            return;
        }
        ViewExtKt.toGone(progressBar);
    }

    @Override // com.cloud.tmc.miniapp.base.MiniAppBaseFragment
    public void initView() {
        String navigationBarTitleText;
        String templateMiniappId;
        App app;
        AppModel appModel;
        AppModel appModel2;
        MiniAppConfigModel miniAppConfigModel;
        super.initView();
        FragmentActivity activity = getActivity();
        Integer miniappSubtype = null;
        final MiniAppActivity miniAppActivity = activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null;
        EntryInfo entryInfo = getEntryInfo();
        OooO00o oooO00o = this.binding;
        if (oooO00o != null) {
            ImmersiveTitleBarView immersiveTitleBarView = oooO00o.OooO0oO;
            immersiveTitleBarView.attachPage(this.page);
            MiniAppConfigModel.WindowBean window = getWindow();
            if (window == null || (navigationBarTitleText = window.getNavigationBarTitleText()) == null) {
                navigationBarTitleText = entryInfo != null ? entryInfo.title : null;
            }
            immersiveTitleBarView.setTitle(navigationBarTitleText);
            immersiveTitleBarView.setOnAddScreenClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.ui.u0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MiniFragment.initView$lambda$12$lambda$11$lambda$8(miniAppActivity, view);
                }
            });
            immersiveTitleBarView.setOnHomeClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.ui.v0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MiniFragment.initView$lambda$12$lambda$11$lambda$9(this.f23803a, miniAppActivity, view);
                }
            });
            immersiveTitleBarView.setOnBackClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.ui.w0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MiniFragment.initView$lambda$12$lambda$11$lambda$10(miniAppActivity, view);
                }
            });
            AppLoadResult appLoadResult = getAppLoadResult();
            if (!((appLoadResult == null || (miniAppConfigModel = appLoadResult.appConfigModel) == null) ? false : miniAppConfigModel.tabBarManual())) {
                MiniAppConfigModel.TabBarBean tabBar = MiniAppConfigUtils.getTabBar(appLoadResult);
                AppUtils appUtils = AppUtils.INSTANCE;
                App app2 = this.app;
                if (app2 != null && (appModel2 = app2.getAppModel()) != null) {
                    miniappSubtype = appModel2.getMiniappSubtype();
                }
                if (!appUtils.checkUesCommonresApp(miniappSubtype) || (app = this.app) == null || (appModel = app.getAppModel()) == null || (templateMiniappId = appModel.getTemplateMiniappId()) == null) {
                    templateMiniappId = "";
                }
                loadTabBar(tabBar, templateMiniappId);
            }
        }
        try {
            checkUpdateTitleBarStyle();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        View viewAttachToSwipeBack;
        Intrinsics.h(inflater, "inflater");
        this.navigationBarDefaultStyleIsWhite = SystemUtils.darkThemeIsEnabled(getContext());
        this.binding = OooO00o.OooO00o(inflater);
        Page page = this.page;
        if (page == null || !page.isTabPage()) {
            OooO00o oooO00o = this.binding;
            Intrinsics.e(oooO00o);
            ConstraintLayout constraintLayout = oooO00o.OooO00o;
            Intrinsics.g(constraintLayout, "binding!!.root");
            viewAttachToSwipeBack = attachToSwipeBack(constraintLayout);
        } else {
            OooO00o oooO00o2 = this.binding;
            Intrinsics.e(oooO00o2);
            viewAttachToSwipeBack = oooO00o2.OooO00o;
            Intrinsics.g(viewAttachToSwipeBack, "binding!!.root");
        }
        ViewExtKt.removeSelf(viewAttachToSwipeBack);
        return viewAttachToSwipeBack;
    }

    @Override // com.cloud.tmc.miniapp.base.MiniAppBaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        PageChainContext pageChainContext;
        IRender render;
        IRender render2;
        NativeComponentManager nativeComponentManager = NativeComponentManager.INSTANCE;
        App app = this.app;
        String appId = app != null ? app.getAppId() : null;
        Page page = this.page;
        nativeComponentManager.onDestoryForRenderId(appId, (page == null || (render2 = page.getRender()) == null) ? null : render2.getRenderId());
        Page page2 = this.page;
        View view = (page2 == null || (render = page2.getRender()) == null) ? null : render.getView();
        WebView webView = view instanceof WebView ? (WebView) view : null;
        if (webView != null) {
            webView.destroy();
        }
        super.onDestroy();
        Bundle bundle = new Bundle();
        bundle.putString(ChainPoint.OPEN_PAGE_FAILED_REASON, this.exitType.getDes());
        String str = ChainPoint.PAGE_PATH;
        Page page3 = this.page;
        bundle.putString(str, String.valueOf(page3 != null ? page3.getPagePath() : null));
        String str2 = ChainPoint.PAGE_ID;
        Page page4 = this.page;
        bundle.putString(str2, String.valueOf(page4 != null ? page4.getPageId() : null));
        Page page5 = this.page;
        bundle.putString(TmcConstants.KEY_PAGE_RANDOM_ID, String.valueOf(page5 != null ? page5.getPageRandomIdByGAId() : null));
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        App app2 = this.app;
        performanceAnalyseProxy.record(app2 != null ? app2.getAppId() : null, PointAnalyseType.POINT_PAGE_CHAIN_CLEAR, "clear", bundle);
        PageInsertState pageInsertState = new PageInsertState(bundle);
        Page page6 = this.page;
        pageInsertState.setChainContext(page6 != null ? page6.getPageChainContext() : null);
        Page page7 = this.page;
        if (page7 == null || (pageChainContext = page7.getPageChainContext()) == null) {
            return;
        }
        pageChainContext.destroy(bundle);
    }

    @Override // com.cloud.tmc.miniapp.base.MiniAppBaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        PageContainerView pageContainerView;
        super.onDestroyView();
        com.cloud.tmc.kernel.debug.a.c(this);
        OooO00o oooO00o = this.binding;
        if (oooO00o != null && (pageContainerView = oooO00o.OooO0O0) != null) {
            pageContainerView.removeAllViews();
        }
        this.binding = null;
        Page page = this.page;
        if (page != null) {
            ((EngineRouter) TmcProxy.get(EngineRouter.class)).unRegisterRender(page.getPageId());
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
    public boolean onEvent(IEvent iEvent) {
        Map<String, Object> data;
        if (iEvent == null) {
            return false;
        }
        try {
            String name = iEvent.getName();
            if (name == null) {
                return false;
            }
            Page page = this.page;
            if (!name.equals(page != null ? page.getPageId() : null) || (data = iEvent.getData()) == null || !data.containsKey(IntegrationConstants.EVENT_DATA)) {
                return false;
            }
            Object obj = data.get(IntegrationConstants.EVENT_DATA);
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Long>");
            ICommunicationTimeProxy iCommunicationTimeProxy = (ICommunicationTimeProxy) TmcProxy.get(ICommunicationTimeProxy.class);
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                long jLongValue = ((Number) it.next()).longValue();
                Page page2 = this.page;
                iCommunicationTimeProxy.plusTime(page2 != null ? page2.getPageId() : null, jLongValue);
                Page page3 = this.page;
                iCommunicationTimeProxy.plusNum(page3 != null ? page3.getPageId() : null, 1);
            }
            return false;
        } catch (Exception unused) {
            TraceLog.i(OfflineConstantsKt.OFFLINE_TYPE_MINIAPP, "parse consumeTime from EventCenter fail");
            return false;
        }
    }

    @Override // com.cloud.tmc.miniapp.base.MiniAppBaseFragment, com.cloud.tmc.miniapp.action.RefreshAction
    public void onLoadMoreEvent() {
        super.onLoadMoreEvent();
        TmcLogger.d("[MiniFragment]：onLoadMoreEvent");
        MiniAppBaseFragment.sendEventOrLifecycleToWorker$default(this, EventConstants.EVENT_NAME_PAGE_PULL_UP_REFRESH, true, null, 4, null);
    }

    @Override // com.cloud.tmc.kernel.render.IPageCallback
    public void onPageFinished(WebView webView, String str) {
    }

    @Override // com.cloud.tmc.kernel.render.IPageCallback
    public void onPageStarted(WebView webView, String str) {
    }

    @Override // com.cloud.tmc.miniapp.base.MiniAppBaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        IRender render;
        IRender render2;
        String renderId;
        super.onPause();
        Page page = this.page;
        if (page != null && (render2 = page.getRender()) != null && (renderId = render2.getRenderId()) != null) {
            NativeComponentManager.INSTANCE.onPauseForRenderId(renderId);
        }
        Page page2 = this.page;
        View view = (page2 == null || (render = page2.getRender()) == null) ? null : render.getView();
        WebView webView = view instanceof WebView ? (WebView) view : null;
        if (webView != null) {
            webView.onPause();
        }
    }

    @Override // com.cloud.tmc.kernel.render.IPageEventCallback
    public void onProgressChanged(WebView webView, int i11) {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        OooO00o oooO00o;
        ProgressBar progressBar3;
        ProgressBar progressBar4;
        ProgressBar progressBar5;
        OooO00o oooO00o2 = this.binding;
        boolean z10 = false;
        if ((oooO00o2 == null || (progressBar5 = oooO00o2.OooO0o0) == null) ? false : Intrinsics.c(progressBar5.getTag(), Boolean.FALSE)) {
            OooO00o oooO00o3 = this.binding;
            if (oooO00o3 != null && (progressBar4 = oooO00o3.OooO0o0) != null && ViewExtKt.getVisible(progressBar4)) {
                z10 = true;
            }
            if (!z10 || (oooO00o = this.binding) == null || (progressBar3 = oooO00o.OooO0o0) == null) {
                return;
            }
            ViewExtKt.toGone(progressBar3);
            return;
        }
        if (i11 == 0) {
            OooO00o oooO00o4 = this.binding;
            if (oooO00o4 == null || (progressBar2 = oooO00o4.OooO0o0) == null) {
                return;
            }
            ViewExtKt.toVisible(progressBar2);
            return;
        }
        if (i11 == 100 && !this.perfSendFlag) {
            this.perfSendFlag = true;
            OooO00o oooO00o5 = this.binding;
            if (oooO00o5 != null && (progressBar = oooO00o5.OooO0o0) != null) {
                ViewExtKt.toGone(progressBar);
            }
        }
        OooO00o oooO00o6 = this.binding;
        ProgressBar progressBar6 = oooO00o6 != null ? oooO00o6.OooO0o0 : null;
        if (progressBar6 == null) {
            return;
        }
        progressBar6.setProgress(i11);
    }

    @Override // com.cloud.tmc.kernel.render.IPageCallback
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
    }

    @Override // com.cloud.tmc.kernel.render.IPageCallback
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
    }

    @Override // com.cloud.tmc.kernel.render.IPageEventCallback
    public /* synthetic */ void onReceivedIcon(Bitmap bitmap) {
        com.cloud.tmc.kernel.render.b.b(this, bitmap);
    }

    @Override // com.cloud.tmc.kernel.render.IPageEventCallback
    public /* synthetic */ void onReceivedTitle(String str) {
        com.cloud.tmc.kernel.render.b.c(this, str);
    }

    @Override // com.cloud.tmc.miniapp.base.MiniAppBaseFragment, com.cloud.tmc.miniapp.action.RefreshAction
    public void onRefreshEvent() {
        super.onRefreshEvent();
        TmcLogger.d("[MiniFragment]：onRefreshEvent");
        MiniAppBaseFragment.sendEventOrLifecycleToWorker$default(this, EventConstants.EVENT_NAME_PAGE_PULL_DOWN_REFRESH, true, null, 4, null);
    }

    @Override // com.cloud.tmc.kernel.render.IPageCallback
    public Boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        if (Build.VERSION.SDK_INT < 26) {
            return Boolean.FALSE;
        }
        try {
            FragmentActivity activity = getActivity();
            MiniAppActivity miniAppActivity = activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null;
            if (miniAppActivity != null) {
                miniAppActivity.refresh();
            }
        } catch (Throwable th2) {
            TmcLogger.e("refresh fail!!,msg:" + th2);
        }
        return Boolean.TRUE;
    }

    @Override // com.cloud.tmc.kernel.render.IPageEventCallback
    public /* synthetic */ void onRequestFocus() {
        com.cloud.tmc.kernel.render.b.d(this);
    }

    @Override // com.cloud.tmc.miniapp.base.MiniAppBaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        IRender render;
        String renderId;
        IRender render2;
        super.onResume();
        try {
            Page page = this.page;
            if (page == null || (render = page.getRender()) == null || (renderId = render.getRenderId()) == null) {
                return;
            }
            Page page2 = this.page;
            TmcLogger.d(TAG, "resume:->" + (page2 != null ? page2.getPagePath() : null));
            App app = this.app;
            if (Intrinsics.c(app != null ? app.getActivePage() : null, this.page)) {
                if (this.needRefreshYCoordinate) {
                    this.needRefreshYCoordinate = false;
                    kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.a()), null, null, new MiniFragment$onResume$1$1(this, null), 3, null);
                }
                checkUpdateTitleBarStyle();
                Page page3 = this.page;
                View view = (page3 == null || (render2 = page3.getRender()) == null) ? null : render2.getView();
                WebView webView = view instanceof WebView ? (WebView) view : null;
                if (webView != null) {
                    webView.onResume();
                }
                NativeComponentManager.INSTANCE.onResumeForRenderId(renderId);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    @Override // com.cloud.tmc.miniapp.base.MiniAppBaseFragment, androidx.fragment.app.Fragment
    public void onStop() {
        IRender render;
        String renderId;
        super.onStop();
        TmcLogger.d(TAG, "onStop");
        Page page = this.page;
        if (page != null && (render = page.getRender()) != null && (renderId = render.getRenderId()) != null) {
            NativeComponentManager.INSTANCE.onStopForRenderId(renderId);
        }
        hideCustomView(true);
    }

    @Override // com.cloud.tmc.miniapp.base.MiniAppBaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        ImageView imageView;
        App app;
        App app2;
        App app3;
        App app4;
        Bundle startParams;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, bundle);
        PageChainContext pageChainContext = this.pageChainContext;
        App app5 = this.app;
        pageChainContext.setAppChainContext(app5 != null ? app5.getAppChainContext() : null);
        Page page = this.page;
        if (page != null) {
            page.setPageChainContext(this.pageChainContext);
        }
        Bundle bundle2 = new Bundle();
        String str = ChainPoint.PAGE_PATH;
        Page page2 = this.page;
        String pagePath = page2 != null ? page2.getPagePath() : null;
        if (pagePath == null) {
            pagePath = "";
        } else {
            Intrinsics.g(pagePath, "page?.pagePath ?: \"\"");
        }
        bundle2.putString(str, pagePath);
        String str2 = ChainPoint.PAGE_ID;
        Page page3 = this.page;
        String pageId = page3 != null ? page3.getPageId() : null;
        if (pageId == null) {
            pageId = "";
        } else {
            Intrinsics.g(pageId, "page?.pageId ?: \"\"");
        }
        bundle2.putString(str2, pageId);
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        App app6 = this.app;
        performanceAnalyseProxy.record(app6 != null ? app6.getAppId() : null, PointAnalyseType.POINT_APP_CHAIN_START, ChainPoint.PageCreateContainer, bundle2);
        PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        App app7 = this.app;
        performanceAnalyseProxy2.record(app7 != null ? app7.getAppId() : null, PointAnalyseType.POINT_PAGE_CHAIN_START, ChainPoint.PageCreateContainer, bundle2);
        PerformanceAnalyseProxy performanceAnalyseProxy3 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        App app8 = this.app;
        performanceAnalyseProxy3.record(app8 != null ? app8.getAppId() : null, PointAnalyseType.POINT_APP_CHAIN_END, ChainPoint.PageCreateContainer, bundle2);
        PerformanceAnalyseProxy performanceAnalyseProxy4 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        App app9 = this.app;
        performanceAnalyseProxy4.record(app9 != null ? app9.getAppId() : null, PointAnalyseType.POINT_PAGE_CHAIN_END, ChainPoint.PageCreateContainer, bundle2);
        new CreateContainerStartState(bundle2).setChainContext(this.pageChainContext);
        new CreateContainerEndState(bundle2).setChainContext(this.pageChainContext);
        this.eventCreateMiniAppFail = new CreateMiniAppFail(this, this.page);
        this.eventCenter = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(this.app);
        if (getActivity() != null) {
            this.eventCreateOnPageReady = new OnPageReadyEventSubscriber(this);
        }
        this.eventCenter_page = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(this.page);
        IEventCenter iEventCenter = this.eventCenter;
        if (iEventCenter != null) {
            iEventCenter.register(EventConstants.EVENT_CONSUME_TIME, this);
        }
        IEventCenter iEventCenter2 = this.eventCenter;
        if (iEventCenter2 != null) {
            iEventCenter2.register("create_miniapp_worker_fail", this.eventCreateMiniAppFail);
        }
        IEventCenter iEventCenter3 = this.eventCenter_page;
        if (iEventCenter3 != null) {
            iEventCenter3.register(EventConstants.EVENT_NAME_ON_PAGE_READY, this.eventCreateOnPageReady);
        }
        IEventCenter iEventCenter4 = this.eventCenter_page;
        if (iEventCenter4 != null) {
            iEventCenter4.register("create_miniapp_worker_fail", this.eventCreateMiniAppFail);
        }
        Bundle bundle3 = new Bundle();
        bundle3.putString(ChainPoint.TYPE, "page");
        String str3 = ChainPoint.CHAIN_ID;
        Page page4 = this.page;
        bundle3.putString(str3, String.valueOf((page4 == null || (app4 = page4.getApp()) == null || (startParams = app4.getStartParams()) == null) ? null : startParams.getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE)));
        String str4 = ChainPoint.PAGE_PATH;
        Page page5 = this.page;
        bundle3.putString(str4, String.valueOf(page5 != null ? page5.getPagePath() : null));
        PerformanceAnalyseProxy performanceAnalyseProxy5 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        Page page6 = this.page;
        performanceAnalyseProxy5.record((page6 == null || (app3 = page6.getApp()) == null) ? null : app3.getAppId(), PointAnalyseType.POINT_CHAIN_START, ChainPoint.page, bundle3);
        PerformanceAnalyseProxy performanceAnalyseProxy6 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        Page page7 = this.page;
        performanceAnalyseProxy6.record((page7 == null || (app2 = page7.getApp()) == null) ? null : app2.getAppId(), PointAnalyseType.POINT_PAGE_CREATE, "");
        FragmentActivity activity = getActivity();
        MiniAppActivity miniAppActivity = activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null;
        if (miniAppActivity != null && !miniAppActivity.isFirstLaunch()) {
            PerformanceAnalyseProxy performanceAnalyseProxy7 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            Page page8 = this.page;
            performanceAnalyseProxy7.record((page8 == null || (app = page8.getApp()) == null) ? null : app.getAppId(), PointAnalyseType.POINT_PAGE_PV, "");
        }
        Page page9 = this.mPendingSetPage;
        if (page9 != null) {
            Intrinsics.e(page9);
            setPage(page9);
            this.mPendingSetPage = null;
        }
        com.cloud.tmc.kernel.debug.a.a(this, this);
        OooO00o oooO00o = this.binding;
        if (oooO00o == null || (imageView = oooO00o.OooO0Oo) == null) {
            return;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.ui.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MiniFragment.onViewCreated$lambda$3(this.f23763a, view2);
            }
        });
    }

    public final void setAdTag(String str) {
        Intrinsics.h(str, "<set-?>");
        this.adTag = str;
    }

    public final void setAdm(boolean z10) {
        this.adm = z10;
    }

    public final void setCallbackId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.callbackId = str;
    }

    @Override // com.cloud.tmc.integration.ui.action.TitleBarAction
    public void setCapsuleStyle(boolean z10) {
        CapsuleView capsule;
        int i11 = !z10 ? 1 : 0;
        FragmentActivity activity = getActivity();
        MiniAppActivity miniAppActivity = activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null;
        if (miniAppActivity == null || (capsule = miniAppActivity.getCapsule()) == null) {
            return;
        }
        CapsuleView.OooO00o(capsule, i11, null, 2);
    }

    public final void setEventCenter(IEventCenter iEventCenter) {
        this.eventCenter = iEventCenter;
    }

    public final void setEventCenter_page(IEventCenter iEventCenter) {
        this.eventCenter_page = iEventCenter;
    }

    public final void setEventCreateMiniAppFail(IEventSubscriber iEventSubscriber) {
        this.eventCreateMiniAppFail = iEventSubscriber;
    }

    public final void setEventCreateOnPageReady(IEventSubscriber iEventSubscriber) {
        this.eventCreateOnPageReady = iEventSubscriber;
    }

    @Override // com.cloud.tmc.integration.ui.action.TitleBarAction
    public void setNavigationBarIconStyle(boolean z10) {
        ImmersiveTitleBarView immersiveTitleBarView;
        int i11 = !z10 ? 1 : 0;
        OooO00o oooO00o = this.binding;
        if (oooO00o == null || (immersiveTitleBarView = oooO00o.OooO0oO) == null) {
            return;
        }
        immersiveTitleBarView.setThemeMode(i11);
    }

    @Override // com.cloud.tmc.miniapp.base.MiniAppBaseFragment, com.cloud.tmc.integration.ui.fragment.TmcFragment
    public void setPage(final Page page) {
        ICheckMiniAppLifecycleCallback appLifecycleCallback;
        Intrinsics.h(page, "page");
        super.setPage(page);
        this.page = page;
        App app = (App) page.bubbleFindNode(App.class);
        this.app = app;
        if (app != null) {
            try {
                appLifecycleCallback = app.getAppLifecycleCallback();
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
        } else {
            appLifecycleCallback = null;
        }
        if (appLifecycleCallback == null) {
            TmcLogger.d(TAG, "setMiniappLifecycleCallback");
            App app2 = this.app;
            if (app2 != null) {
                FragmentActivity activity = getActivity();
                app2.setMiniappLifecycleCallback(activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null);
            }
        }
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.q0
            @Override // java.lang.Runnable
            public final void run() {
                MiniFragment.setPage$lambda$17(this.f23784a, page);
            }
        });
    }

    @Override // com.cloud.tmc.kernel.render.IPageCallback
    public Boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        String string;
        IRender render;
        RenderBridge renderBridge;
        Uri url;
        if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (string = url.toString()) == null) {
            string = "";
        }
        if (StringsKt.W(string, "https://100000", false, 2, null) || !Intrinsics.c(this.adTag, "ad_click") || !this.adm) {
            Boolean boolB = com.cloud.tmc.kernel.render.a.b(this, webView, webResourceRequest);
            Intrinsics.g(boolB, "super.shouldOverrideUrlLoading(view, request)");
            return boolB;
        }
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        jsonObject.addProperty("abilityName", "callback");
        Page page = this.page;
        jsonObject.addProperty("renderId", String.valueOf(page != null ? page.getPageId() : null));
        jsonObject.addProperty("target", "native");
        jsonObject.addProperty(EventConstants.KEY_SOURCE, EventConstants.ADDRESS_RENDER);
        jsonObject.addProperty("callbackId", this.callbackId);
        jsonObject2.addProperty("dataJson", GsonUtils.toJson(MapsKt.j(TuplesKt.a("adUrl", string))));
        jsonObject2.addProperty("callbackId", this.callbackId);
        jsonObject.add("dataJson", jsonObject2);
        Page page2 = this.page;
        RenderCallContext.Builder builderParam = RenderCallContext.newBuilder(page2 != null ? page2.getRender() : null).action("message").type("call").param(jsonObject);
        Page page3 = this.page;
        if (page3 != null && (render = page3.getRender()) != null && (renderBridge = render.getRenderBridge()) != null) {
            renderBridge.sendToRender(builderParam.build(), null);
        }
        this.adTag = "";
        this.adm = false;
        this.callbackId = "";
        return Boolean.TRUE;
    }

    @Override // com.cloud.tmc.integration.ui.action.TitleBarAction
    public void showNavigationBarLoading() {
        ProgressBar progressBar;
        OooO00o oooO00o = this.binding;
        ProgressBar progressBar2 = oooO00o != null ? oooO00o.OooO0o0 : null;
        if (progressBar2 != null) {
            progressBar2.setTag(Boolean.TRUE);
        }
        OooO00o oooO00o2 = this.binding;
        if (oooO00o2 == null || (progressBar = oooO00o2.OooO0o0) == null) {
            return;
        }
        ViewExtKt.toVisible(progressBar);
    }
}
