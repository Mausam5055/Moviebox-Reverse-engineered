package com.cloud.tmc.miniapp.base;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.listener.RootViewGlobalLayoutListener;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.TabBarBadgeMessage;
import com.cloud.tmc.integration.model.TabBarMessageStore;
import com.cloud.tmc.integration.model.TabBarRedDotMessage;
import com.cloud.tmc.integration.model.TabBarStyle;
import com.cloud.tmc.integration.params.TmcParams;
import com.cloud.tmc.integration.processor.BackToPageIntercept;
import com.cloud.tmc.integration.processor.IBackPressedProcessor;
import com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept;
import com.cloud.tmc.integration.proxy.IKeyboardProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.integration.structure.ui.TabBar;
import com.cloud.tmc.integration.structure.ui.TitleBar;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.MiniAppConfigUtils;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.integration.utils.UrlUtil;
import com.cloud.tmc.integration.utils.ext.CommonExtKt;
import com.cloud.tmc.integration.utils.ext.PageExtKt;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.listener.OnKeyboardListener;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.HandlerAction;
import com.cloud.tmc.miniapp.action.RefreshAction;
import com.cloud.tmc.miniapp.defaultimpl.OooO0o;
import com.cloud.tmc.miniapp.defaultimpl.OooOO0;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import com.cloud.tmc.miniapp.utils.OooOO0O;
import com.cloud.tmc.miniapp.utils.manager.OooO00o;
import com.cloud.tmc.miniapp.utils.manager.OooO0O0;
import com.cloud.tmc.miniapp.widget.CapsuleView;
import com.cloud.tmc.miniapp.widget.StatusLayout;
import com.cloud.tmc.miniapp.widget.SwipeBackLayout;
import com.cloud.tmc.miniapp.widget.TabBarView;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public abstract class MiniAppBaseFragment extends TmcFragment implements RefreshAction, HandlerAction {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "MiniAppBaseFragment";
    private boolean hasVirtualNavBar;
    private volatile boolean loadingAnimatorPlaying;
    private boolean navigationBarProgressUpdating;
    private boolean pullDownRefresh;
    private boolean pullUpRefresh;
    private Integer refreshFooterDelayed;
    private Integer refreshHeaderDelayed;
    private RootViewGlobalLayoutListener rootViewGlobalLayoutListener;
    private final Lazy swipeBackManager$delegate = LazyKt.b(new Function0<OooOO0>() { // from class: com.cloud.tmc.miniapp.base.MiniAppBaseFragment$swipeBackManager$2
        @Override // kotlin.jvm.functions.Function0
        public final OooOO0 invoke() {
            return new OooOO0();
        }
    });
    private final Lazy refreshManager$delegate = LazyKt.b(new Function0<OooO0o>() { // from class: com.cloud.tmc.miniapp.base.MiniAppBaseFragment$refreshManager$2
        @Override // kotlin.jvm.functions.Function0
        public final OooO0o invoke() {
            return new OooO0o();
        }
    });
    private final AnimatorSet loadingAnimatorSet = new AnimatorSet();
    private AtomicBoolean isFullScreen = new AtomicBoolean(false);
    private final OnKeyboardListener onKeyboardListener = new OnKeyboardListener() { // from class: com.cloud.tmc.miniapp.base.MiniAppBaseFragment$onKeyboardListener$1
        @Override // com.cloud.tmc.kernel.listener.OnKeyboardListener
        public void onKeyBoardChanged(int i11, int i12) {
            try {
                TmcLogger.d("MiniAppBaseFragment", "onKeyboardListener: keyboardHeight: " + i11 + ", screenHeight: " + i12);
                this.this$0.tabBarAdjustPan(i11, i12);
            } catch (Throwable th2) {
                TmcLogger.e("MiniAppBaseFragment", "onKeyBoardChanged failed", th2);
            }
        }
    };

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final synchronized void cancelAnimator() {
        try {
            TmcLogger.d(TAG, "cancelAnimator");
            if (!this.loadingAnimatorPlaying) {
                return;
            }
            this.loadingAnimatorSet.cancel();
            this.loadingAnimatorPlaying = false;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    private final boolean checkAlertBeforeUnload() {
        Page page = this.page;
        if (page != null) {
            return PageExtKt.checkAlertBeforeUnload(page, new Function0<Unit>() { // from class: com.cloud.tmc.miniapp.base.MiniAppBaseFragment.checkAlertBeforeUnload.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m251invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m251invoke() {
                    FragmentActivity activity = MiniAppBaseFragment.this.getActivity();
                    MiniAppActivity miniAppActivity = activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null;
                    if (miniAppActivity != null) {
                        miniAppActivity.goBack();
                    }
                }
            });
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enableHeaderTranslationContent$lambda$11(MiniAppBaseFragment this$0) {
        View content;
        Intrinsics.h(this$0, "this$0");
        try {
            MiniAppConfigModel.WindowBean window = this$0.getWindow();
            String strOrDefault = StringExtKt.orDefault(window != null ? window.getRefreshHeaderStyle() : null, "default");
            float px2dp = CommonExtKt.getPx2dp(MiniBarUtils.getStatusHeight());
            TitleBar titleBar = this$0.getTitleBar();
            float px2dp2 = (titleBar == null || (content = titleBar.getContent()) == null) ? -1.0f : CommonExtKt.getPx2dp(content.getHeight());
            Page page = this$0.page;
            float intValue = page != null ? page.getIntValue(TmcParams.CAPSULE_TRANSLATION_Y) : 0.0f;
            Page page2 = this$0.page;
            float px2dp3 = CommonExtKt.getPx2dp(intValue + (page2 != null ? page2.getIntValue(TmcParams.CAPSULE_HEIGHT) : 0.0f));
            if (!Intrinsics.c(strOrDefault, "custom")) {
                px2dp3 = px2dp2 == -1.0f ? px2dp + CommonExtKt.getPx2dp(19.2f) : (px2dp2 / 5) * 3;
            }
            if (Intrinsics.c(strOrDefault, "custom")) {
                px2dp = 0.0f;
            }
            this$0.getRefreshManager().OooO0O0(px2dp3);
            this$0.getRefreshManager().OooO00o(px2dp);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Error refreshing", th2);
        }
    }

    private final OooO00o getRefreshManager() {
        return (OooO00o) this.refreshManager$delegate.getValue();
    }

    private final OooO0O0 getSwipeBackManager() {
        return (OooO0O0) this.swipeBackManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hideLoadingDialog$lambda$39(MiniAppBaseFragment this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            ViewGroup contentView = this$0.getContentView();
            FrameLayout frameLayout = contentView != null ? (FrameLayout) contentView.findViewById(R.id.fl_loading_mask) : null;
            if ((frameLayout == null || frameLayout.getVisibility() != 8) && frameLayout != null) {
                ViewExtKt.toGone(frameLayout);
            }
            this$0.cancelAnimator();
            ViewGroup contentView2 = this$0.getContentView();
            ImageView imageView = contentView2 != null ? (ImageView) contentView2.findViewById(R.id.iv_loading) : null;
            if (imageView != null) {
                this$0.removeCallbacksAndMessages(imageView);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshApp$lambda$32(FragmentActivity fragmentActivity) {
        ((MiniAppActivity) fragmentActivity).refreshApp();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void sendAppOrPageReadyToRender$default(MiniAppBaseFragment miniAppBaseFragment, String str, Map map, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendAppOrPageReadyToRender");
        }
        if ((i11 & 2) != 0) {
            map = null;
        }
        miniAppBaseFragment.sendAppOrPageReadyToRender(str, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void sendEventOrLifecycleToWorker$default(MiniAppBaseFragment miniAppBaseFragment, String str, boolean z10, Map map, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendEventOrLifecycleToWorker");
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            map = null;
        }
        miniAppBaseFragment.sendEventOrLifecycleToWorker(str, z10, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void sendPageEnterToWorker$default(MiniAppBaseFragment miniAppBaseFragment, Map map, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendPageEnterToWorker");
        }
        if ((i11 & 1) != 0) {
            map = null;
        }
        miniAppBaseFragment.sendPageEnterToWorker(map);
    }

    private final void setCapsuleParams() {
        FragmentActivity activity = getActivity();
        MiniAppActivity miniAppActivity = activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null;
        final CapsuleView capsule = miniAppActivity != null ? miniAppActivity.getCapsule() : null;
        if (capsule != null) {
            capsule.post(new Runnable() { // from class: com.cloud.tmc.miniapp.base.e
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppBaseFragment.setCapsuleParams$lambda$31$lambda$30(this.f23503a, capsule);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setCapsuleParams$lambda$31$lambda$30(MiniAppBaseFragment this$0, CapsuleView v11) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(v11, "$v");
        Page page = this$0.page;
        if (page != null) {
            page.putIntValue(TmcParams.CAPSULE_HEIGHT, v11.getHeight());
            page.putIntValue(TmcParams.CAPSULE_WIDTH, v11.getWidth());
            page.putIntValue(TmcParams.CAPSULE_TOP, (int) v11.getY());
            page.putIntValue(TmcParams.CAPSULE_RIGHT, v11.getWidth() + ((int) v11.getX()));
            page.putIntValue(TmcParams.CAPSULE_BOTTOM, v11.getHeight() + ((int) v11.getY()));
            page.putIntValue(TmcParams.CAPSULE_LEFT, (int) v11.getX());
            page.putIntValue(TmcParams.CAPSULE_TRANSLATION_X, (int) v11.getTranslationX());
            page.putIntValue(TmcParams.CAPSULE_TRANSLATION_Y, (int) v11.getTranslationY());
        }
    }

    private final void setHostActivityStatusBackground(final Page page) {
        try {
            TmcLogger.d(TAG, "setHostActivityStatusBackground page: " + page.getPagePath());
            App app = page.getApp();
            AppNode appNode = app instanceof AppNode ? (AppNode) app : null;
            AppLoadResult appLoadResult = appNode != null ? appNode.getmAppLoadResult() : null;
            if (appLoadResult == null) {
                TmcLogger.d(TAG, "setHostActivityStatusBackground: appLoadResult is null");
                return;
            }
            MiniAppConfigModel.WindowBean windowOptimalConfiguration = MiniAppConfigUtils.getWindowOptimalConfiguration(appLoadResult, page.getPagePath());
            final String contentBgColor = windowOptimalConfiguration != null ? windowOptimalConfiguration.getContentBgColor() : null;
            if (contentBgColor == null || contentBgColor.length() <= 0) {
                return;
            }
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.base.j
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppBaseFragment.setHostActivityStatusBackground$lambda$35$lambda$34(contentBgColor, this, page);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "setHostActivityStatusBackground parse color failed!", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setHostActivityStatusBackground$lambda$35$lambda$34(String color, MiniAppBaseFragment this$0, Page page) {
        StatusLayout statusLayout;
        AppContext appContext;
        Intrinsics.h(color, "$color");
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(page, "$page");
        try {
            TmcLogger.d(TAG, "setHostActivityStatusBackground: contentBackground: : " + color);
            int color2 = Color.parseColor(color);
            FragmentActivity activity = this$0.getActivity();
            MiniAppActivity miniAppActivity = null;
            MiniAppActivity miniAppActivity2 = activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null;
            if (miniAppActivity2 == null) {
                App app = page.getApp();
                Context context = (app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext();
                if (context instanceof MiniAppActivity) {
                    miniAppActivity = (MiniAppActivity) context;
                }
            } else {
                miniAppActivity = miniAppActivity2;
            }
            if (miniAppActivity != null && (statusLayout = miniAppActivity.getStatusLayout()) != null) {
                statusLayout.setBackgroundColor(color2);
                TmcLogger.d(TAG, "setHostActivityStatusBackground: 设置 activity 的状态布局背景色成功");
            }
            TmcLogger.d(TAG, "setHostActivityStatusBackground: 执行完毕");
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "setHostActivityStatusBackground parse color failed!!!", th2);
        }
    }

    private final void setParallaxOffset(float f11) {
        getSwipeBackManager().OooO00o(f11);
    }

    public static /* synthetic */ void setParallaxOffset$default(MiniAppBaseFragment miniAppBaseFragment, float f11, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setParallaxOffset");
        }
        if ((i11 & 1) != 0) {
            f11 = 0.5f;
        }
        miniAppBaseFragment.setParallaxOffset(f11);
    }

    private final void setShowLoading(Page page) {
        try {
            TmcLogger.d(TAG, "setShowLoading");
            if (getContentView() == null) {
                TmcLogger.d(TAG, "setShowLoading 当面页面未渲染，不再执行");
                return;
            }
            App app = page.getApp();
            String stringValue = app != null ? app.getStringValue(TmcConstants.KEY_FIRST_STARTED_PAGE_PATH) : null;
            if (stringValue == null) {
                return;
            }
            TmcLogger.d(TAG, "setShowLoading firstStartedPagePath: " + stringValue);
            String pagePath = page.getPagePath();
            if (pagePath == null) {
                return;
            }
            TmcLogger.d(TAG, "setShowLoading current pagePath: " + pagePath);
            if (Intrinsics.c(stringValue, pagePath)) {
                TmcLogger.d(TAG, "setShowLoading 首个启动页面不展示页面Loading");
                return;
            }
            if (UrlUtil.isHttpOrHttpsUrl(pagePath)) {
                TmcLogger.d(TAG, "setShowLoading 混合页面不支持显示页面Loading");
                return;
            }
            App app2 = page.getApp();
            boolean booleanValue = app2 != null ? app2.getBooleanValue(TmcConstants.KEY_FIRST_NORMAL_PAGE_OPENED) : false;
            TmcLogger.d(TAG, "setShowLoading 首个正常小程序页面是否打开过：" + booleanValue);
            MiniAppConfigModel.WindowBean window = getWindow();
            boolean zC = window != null ? Intrinsics.c(window.getEnablePageLoading(), Boolean.TRUE) : false;
            TmcLogger.d(TAG, "setShowLoading 业务小程序配置Loading的开关：" + zC);
            if (UrlUtil.isHttpOrHttpsUrl(stringValue) && !booleanValue) {
                TmcLogger.d(TAG, "setShowLoading 首个页面为H5混合页，首个正常小程序页面尚未打开过");
                zC = true;
            }
            if (zC) {
                showLoadingDialog();
            } else {
                TmcLogger.d(TAG, "setShowLoading 关闭页面调整Loading");
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "setShowLoading fail!!!", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLoadingDialog$lambda$37(final MiniAppBaseFragment this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            ViewGroup contentView = this$0.getContentView();
            FrameLayout frameLayout = contentView != null ? (FrameLayout) contentView.findViewById(R.id.fl_loading_mask) : null;
            ViewGroup contentView2 = this$0.getContentView();
            ImageView imageView = contentView2 != null ? (ImageView) contentView2.findViewById(R.id.iv_loading) : null;
            if (imageView == null) {
                return;
            }
            if ((frameLayout == null || frameLayout.getVisibility() != 0) && frameLayout != null) {
                ViewExtKt.toVisible(frameLayout);
            }
            this$0.removeCallbacksAndMessages(imageView);
            this$0.startAnimator(imageView);
            this$0.postDelayed(imageView, 2000L, new Runnable() { // from class: com.cloud.tmc.miniapp.base.g
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppBaseFragment.showLoadingDialog$lambda$37$lambda$36(this.f23506a);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLoadingDialog$lambda$37$lambda$36(MiniAppBaseFragment this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.hideLoadingDialog();
    }

    private final synchronized void startAnimator(ImageView imageView) {
        try {
            TmcLogger.d(TAG, "startAnimator");
            if (this.loadingAnimatorPlaying) {
                return;
            }
            if (imageView != null) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "rotation", 0.0f, 360.0f);
                Intrinsics.g(objectAnimatorOfFloat, "ofFloat(it, \"rotation\", 0F, 360F)");
                objectAnimatorOfFloat.setDuration(600L);
                objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
                objectAnimatorOfFloat.setRepeatCount(-1);
                this.loadingAnimatorSet.play(objectAnimatorOfFloat);
                this.loadingAnimatorSet.start();
                this.loadingAnimatorPlaying = true;
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tabBarAdjustPan(int i11, int i12) {
        try {
            MiniAppConfigModel.WindowBean window = getWindow();
            if (!(window != null ? Intrinsics.c(window.getEnableTabBarAdjustPan(), Boolean.TRUE) : false)) {
                TmcLogger.d(TAG, "onTabBarAdjustPan enableTabBarAdjustPan is not enabled");
                return;
            }
            Page page = this.page;
            if (!(page != null ? page.isTabPage() : false)) {
                TmcLogger.d(TAG, "onTabBarAdjustPan: page is not tabPage " + this.page);
                return;
            }
            Page page2 = this.page;
            if (Intrinsics.c(page2 != null ? page2.getStringValue(TmcConstants.KEY_IS_API_SHOW_TAB_BAR_ENABLED) : null, "hideTabBar")) {
                Page page3 = this.page;
                if (page3 != null) {
                    page3.hideTabBar(false);
                    return;
                }
                return;
            }
            if (i11 > ((double) i12) * 0.15d) {
                Page page4 = this.page;
                if (page4 != null) {
                    page4.hideTabBar(false);
                    return;
                }
                return;
            }
            Page page5 = this.page;
            if (page5 != null) {
                page5.showTabBar(false);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "tabBarAdjustPan failed", th2);
        }
    }

    @Override // com.cloud.tmc.kernel.node.KeyBoardNode
    public void addOnKeyboardListener(OnKeyboardListener listener) {
        Intrinsics.h(listener, "listener");
        RootViewGlobalLayoutListener rootViewGlobalLayoutListener = this.rootViewGlobalLayoutListener;
        if (rootViewGlobalLayoutListener != null) {
            rootViewGlobalLayoutListener.addOnKeyboardListener(listener);
        }
    }

    public final View attachToRefresh(View view, MiniAppConfigModel.WindowBean window) {
        Intrinsics.h(view, "view");
        Intrinsics.h(window, "window");
        this.refreshHeaderDelayed = window.getRefreshHeaderDelayed();
        this.refreshFooterDelayed = window.getRefreshFooterDelayed();
        OooO00o refreshManager = getRefreshManager();
        ViewExtKt.removeSelf(view);
        Unit unit = Unit.f67061a;
        View viewOooO00o = refreshManager.OooO00o(this, view);
        Boolean enablePullDownRefresh = window.getEnablePullDownRefresh();
        Boolean bool = Boolean.TRUE;
        enableRefresh(Intrinsics.c(enablePullDownRefresh, bool));
        enableLoadMore(Intrinsics.c(window.getEnablePullUpRefresh(), bool));
        String refreshHeaderStyle = window.getRefreshHeaderStyle();
        if (refreshHeaderStyle != null && Intrinsics.c(refreshHeaderStyle, "custom")) {
            OooOO0O oooOO0O = OooOO0O.OooO00o;
            File fileOooO00o = oooOO0O.OooO00o(window.getRefreshHeaderCustomLoadingGif(), this.app, true);
            File fileOooO00o2 = oooOO0O.OooO00o(window.getRefreshHeaderCustomSuccessGif(), this.app, true);
            File fileOooO00o3 = oooOO0O.OooO00o(window.getRefreshHeaderCustomLoading(), this.app, false);
            File fileOooO00o4 = oooOO0O.OooO00o(window.getRefreshHeaderCustomSuccess(), this.app, false);
            if (fileOooO00o != null && fileOooO00o2 != null && fileOooO00o3 != null && fileOooO00o4 != null) {
                getRefreshManager().OooO00o("custom");
                getRefreshManager().OooO0O0(Intrinsics.c(window.getRefreshHeaderCustomTextEnable(), bool));
                getRefreshManager().OooO00o(fileOooO00o, fileOooO00o2, fileOooO00o3, fileOooO00o4);
            }
        }
        enableHeaderTranslationContent(Intrinsics.c(window.getRefreshHeaderTranslationContent(), bool));
        try {
            String refreshHeaderAccentColor = window.getRefreshHeaderAccentColor();
            if (refreshHeaderAccentColor != null && refreshHeaderAccentColor.length() > 0) {
                getRefreshManager().OooO0Oo(Color.parseColor(refreshHeaderAccentColor));
            }
        } catch (Exception e11) {
            TmcLogger.e(TAG, "set header accent color error", e11);
        }
        try {
            String refreshHeaderBackgroundColor = window.getRefreshHeaderBackgroundColor();
            if (refreshHeaderBackgroundColor != null && refreshHeaderBackgroundColor.length() > 0) {
                getRefreshManager().OooO0O0(Color.parseColor(refreshHeaderBackgroundColor));
            }
        } catch (Exception e12) {
            TmcLogger.e(TAG, "set header background color error", e12);
        }
        try {
            String refreshFooterAccentColor = window.getRefreshFooterAccentColor();
            if (refreshFooterAccentColor != null && refreshFooterAccentColor.length() > 0) {
                getRefreshManager().OooO00o(Color.parseColor(refreshFooterAccentColor));
            }
        } catch (Exception e13) {
            TmcLogger.e(TAG, "set footer accent color error", e13);
        }
        try {
            String refreshFooterBackgroundColor = window.getRefreshFooterBackgroundColor();
            if (refreshFooterBackgroundColor != null && refreshFooterBackgroundColor.length() > 0) {
                getRefreshManager().OooO0OO(Color.parseColor(refreshFooterBackgroundColor));
            }
        } catch (Exception e14) {
            TmcLogger.e(TAG, "set footer background color error", e14);
        }
        return viewOooO00o;
    }

    public final View attachToSwipeBack(View view) {
        Intrinsics.h(view, "view");
        OooO0O0 swipeBackManager = getSwipeBackManager();
        ViewExtKt.removeSelf(view);
        setEdgeLevel(CommonExtKt.getDp2px(25));
        return swipeBackManager.OooO00o(view);
    }

    public final void checkBackToPageInterceptAndRemoveIt() {
        IBackPressedProcessor backPressedProcessor;
        List<IBackPressedIntercept> interceptors;
        Object next;
        App app;
        IBackPressedProcessor backPressedProcessor2;
        try {
            App app2 = this.app;
            if (app2 == null || (backPressedProcessor = app2.getBackPressedProcessor()) == null || (interceptors = backPressedProcessor.getInterceptors()) == null) {
                return;
            }
            Iterator<T> it = interceptors.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((IBackPressedIntercept) next).getInterceptName(), BackToPageIntercept.TAG));
            IBackPressedIntercept iBackPressedIntercept = (IBackPressedIntercept) next;
            if (iBackPressedIntercept == null || (app = this.app) == null || (backPressedProcessor2 = app.getBackPressedProcessor()) == null) {
                return;
            }
            backPressedProcessor2.removeInterceptors(iBackPressedIntercept);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
    }

    @Override // com.cloud.tmc.integration.structure.PageContext
    public void destroy() {
        try {
            hideLoadingDialog();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "remove callbacks and messages", th2);
        }
    }

    @Override // com.cloud.tmc.miniapp.action.RefreshAction
    public void enableHeaderTranslationContent(boolean z10) {
        View view;
        if (this.pullDownRefresh) {
            getRefreshManager().OooO00o(z10);
            if (z10) {
                return;
            }
            MiniAppConfigModel.WindowBean window = getWindow();
            if (!(window != null ? Intrinsics.c(window.getEnableTransparentStatusBar(), Boolean.TRUE) : false) || (view = getView()) == null) {
                return;
            }
            view.post(new Runnable() { // from class: com.cloud.tmc.miniapp.base.h
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppBaseFragment.enableHeaderTranslationContent$lambda$11(this.f23507a);
                }
            });
        }
    }

    @Override // com.cloud.tmc.miniapp.action.RefreshAction
    public void enableLoadMore(boolean z10) {
        this.pullUpRefresh = z10;
        getRefreshManager().OooO0Oo(z10);
    }

    @Override // com.cloud.tmc.miniapp.action.RefreshAction
    public void enableRefresh(boolean z10) {
        this.pullDownRefresh = z10;
        getRefreshManager().OooO0OO(z10);
    }

    public final AppLoadResult getAppLoadResult() {
        return (AppLoadResult) BundleUtils.getParcelable(getSceneParams(), TmcConstants.EXTRA_APP_LOAD_RESULT);
    }

    public final EntryInfo getEntryInfo() {
        return (EntryInfo) BundleUtils.getParcelable(getSceneParams(), TmcConstants.EXTRA_ENTRY_INFO);
    }

    @Override // com.cloud.tmc.miniapp.action.HandlerAction
    public Handler getHandler() {
        return HandlerAction.DefaultImpls.getHandler(this);
    }

    public final boolean getHasVirtualNavBar() {
        return this.hasVirtualNavBar;
    }

    @Override // com.cloud.tmc.integration.ui.action.TitleBarAction
    public boolean getNavigationBarProgressUpdateStatus() {
        return this.navigationBarProgressUpdating;
    }

    public final boolean getNavigationBarProgressUpdating() {
        return this.navigationBarProgressUpdating;
    }

    public final Bundle getSceneParams() {
        App app;
        Page page = this.page;
        if (page == null || (app = page.getApp()) == null) {
            return null;
        }
        return app.getSceneParams();
    }

    public final MiniAppConfigModel.WindowBean getWindow() {
        AppLoadResult appLoadResult = getAppLoadResult();
        Page page = this.page;
        return MiniAppConfigUtils.getWindowOptimalConfiguration(appLoadResult, page != null ? page.getPagePath() : null);
    }

    public final boolean hasVirtualNavBar(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("window");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        int i11 = displayMetrics.heightPixels;
        int i12 = displayMetrics.widthPixels;
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics2);
        return i12 - displayMetrics2.widthPixels > 0 || i11 - displayMetrics2.heightPixels > 0;
    }

    public final void hideLoadingDialog() {
        try {
            TmcLogger.d(TAG, "hideLoadingDialog");
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.base.k
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppBaseFragment.hideLoadingDialog$lambda$39(this.f23512a);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public boolean hideTabBar(boolean z10) {
        TabBar tabBar = getTabBar();
        if (tabBar != null) {
            return tabBar.hideTabBar(z10);
        }
        return false;
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public boolean hideTabBarRedDot(int i11) {
        HashMap<Integer, TabBarRedDotMessage> redDotMessageHashMap;
        App app;
        TabBar tabBar = getTabBar();
        boolean unreadVisible = tabBar != null ? tabBar.setUnreadVisible(i11, false) : false;
        if (unreadVisible) {
            Page page = this.page;
            TabBarRedDotMessage tabBarRedDotMessage = null;
            TabBarMessageStore tabBarMessageStore = (page == null || (app = page.getApp()) == null) ? null : (TabBarMessageStore) app.getData(TabBarMessageStore.class, true);
            if (tabBarMessageStore != null && (redDotMessageHashMap = tabBarMessageStore.getRedDotMessageHashMap()) != null) {
                tabBarRedDotMessage = redDotMessageHashMap.get(Integer.valueOf(i11));
            }
            if (tabBarRedDotMessage != null) {
                tabBarRedDotMessage.setShowRedDot(false);
            }
        }
        return unreadVisible;
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public boolean hideTabBarUnreadIcon(int i11) {
        HashMap<Integer, TabBarRedDotMessage> redDotMessageHashMap;
        App app;
        TabBar tabBar = getTabBar();
        boolean unreadIconVisible = tabBar != null ? tabBar.setUnreadIconVisible(i11, false) : false;
        if (unreadIconVisible) {
            Page page = this.page;
            TabBarRedDotMessage tabBarRedDotMessage = null;
            TabBarMessageStore tabBarMessageStore = (page == null || (app = page.getApp()) == null) ? null : (TabBarMessageStore) app.getData(TabBarMessageStore.class, true);
            if (tabBarMessageStore != null && (redDotMessageHashMap = tabBarMessageStore.getRedDotMessageHashMap()) != null) {
                tabBarRedDotMessage = redDotMessageHashMap.get(Integer.valueOf(i11));
            }
            if (tabBarRedDotMessage != null) {
                tabBarRedDotMessage.setShowUnreadIcon(false);
            }
        }
        return unreadIconVisible;
    }

    public final void hideVirtualNavBar() {
        View decorView = requireActivity().getWindow().getDecorView();
        Intrinsics.g(decorView, "requireActivity().window.decorView");
        decorView.setSystemUiVisibility(2050);
    }

    public void initView() {
        setCapsuleParams();
    }

    public final AtomicBoolean isFullScreen() {
        return this.isFullScreen;
    }

    public final boolean isHomepage(AppLoadResult appLoadResult) {
        return AppUtils.isHomepage(this.page, appLoadResult);
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public boolean loadTabBar(MiniAppConfigModel.TabBarBean tabBar, String str) {
        Intrinsics.h(tabBar, "tabBar");
        TabBar tabBar2 = getTabBar();
        boolean z10 = false;
        if (tabBar2 == null || !(tabBar2 instanceof TabBarView)) {
            return false;
        }
        TabBarView tabBarView = (TabBarView) tabBar2;
        Page page = this.page;
        if (page != null && page.isTabPage()) {
            z10 = true;
        }
        ViewExtKt.toVisibleOrGone(tabBarView, z10);
        Page page2 = this.page;
        if (page2 != null && page2.isTabPage()) {
            Page page3 = this.page;
            if (str == null) {
                str = "";
            }
            tabBarView.setTabs(tabBar, page3, str);
        }
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext()");
        this.hasVirtualNavBar = hasVirtualNavBar(contextRequireContext);
        Page page = this.page;
        if (page == null || !page.isTabPage()) {
            getSwipeBackManager().OooO00o(this, bundle);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getSwipeBackManager().onDestroy();
        if (this.pullDownRefresh || this.pullUpRefresh) {
            getRefreshManager().onDestroy();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        try {
            getSwipeBackManager().OooO00o();
            ((IKeyboardProxy) TmcProxy.get(IKeyboardProxy.class)).releaseKeyBoardChange(requireView());
            RootViewGlobalLayoutListener rootViewGlobalLayoutListener = this.rootViewGlobalLayoutListener;
            if (rootViewGlobalLayoutListener != null) {
                rootViewGlobalLayoutListener.release();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "onDestroyView failed", th2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z10) {
        super.onHiddenChanged(z10);
        getSwipeBackManager().OooO00o(z10);
    }

    @Override // com.cloud.tmc.miniapp.action.RefreshAction
    public void onLoadMoreEvent() {
        Integer num;
        int iIntValue;
        if (!this.pullUpRefresh || (num = this.refreshFooterDelayed) == null || (iIntValue = num.intValue()) <= 0) {
            return;
        }
        getRefreshManager().OooO00o(iIntValue, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        ViewTreeObserver viewTreeObserver;
        super.onPause();
        try {
            View view = getView();
            if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this.rootViewGlobalLayoutListener);
            }
            ((IKeyboardProxy) TmcProxy.get(IKeyboardProxy.class)).setKeyBoardListener(null);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "onPause failed", th2);
        }
    }

    @Override // com.cloud.tmc.miniapp.action.RefreshAction
    public void onRefreshEvent() {
        Integer num;
        int iIntValue;
        if (!this.pullDownRefresh || (num = this.refreshHeaderDelayed) == null || (iIntValue = num.intValue()) <= 0) {
            return;
        }
        getRefreshManager().OooO0O0(iIntValue, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        RootViewGlobalLayoutListener rootViewGlobalLayoutListener;
        ViewTreeObserver viewTreeObserver;
        super.onResume();
        try {
            View view = getView();
            if (view != null && (rootViewGlobalLayoutListener = this.rootViewGlobalLayoutListener) != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                viewTreeObserver.addOnGlobalLayoutListener(rootViewGlobalLayoutListener);
            }
            ((IKeyboardProxy) TmcProxy.get(IKeyboardProxy.class)).setKeyBoardListener(new com.cloud.tmc.integration.proxy.OnKeyboardListener() { // from class: com.cloud.tmc.miniapp.base.MiniAppBaseFragment.onResume.2
                private final IEvent createEvent;
                private final IEventCenterFactory eventCenterFactory;

                {
                    IEventCenterFactory iEventCenterFactory = (IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class);
                    this.eventCenterFactory = iEventCenterFactory;
                    this.createEvent = iEventCenterFactory.createEvent(EventConstants.EVENT_KEYBOARD_HEIGHT_CHANGE);
                }

                public final IEvent getCreateEvent() {
                    return this.createEvent;
                }

                public final IEventCenterFactory getEventCenterFactory() {
                    return this.eventCenterFactory;
                }

                @Override // com.cloud.tmc.integration.proxy.OnKeyboardListener
                public void onKeyBoardAnimEnd() {
                    TmcLogger.d(MiniAppBaseFragment.TAG, "Keyboard anim end");
                }

                @Override // com.cloud.tmc.integration.proxy.OnKeyboardListener
                public void onKeyBoardAnimStart() {
                    TmcLogger.d(MiniAppBaseFragment.TAG, "Keyboard anim start");
                }

                @Override // com.cloud.tmc.integration.proxy.OnKeyboardListener
                public void onKeyBoardHeightChange(int i11) {
                    TmcLogger.d(MiniAppBaseFragment.TAG, "Keyboard height:" + i11);
                    this.createEvent.setData(MapsKt.j(TuplesKt.a("page", ((TmcFragment) MiniAppBaseFragment.this).page), TuplesKt.a("height", String.valueOf(i11))));
                    IEventCenter eventCenterInstance = this.eventCenterFactory.getEventCenterInstance(((TmcFragment) MiniAppBaseFragment.this).app);
                    if (eventCenterInstance != null) {
                        eventCenterInstance.postEvent(EventConstants.EVENT_KEYBOARD_HEIGHT_CHANGE, this.createEvent);
                    }
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "onResume failed", th2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, bundle);
        ((IKeyboardProxy) TmcProxy.get(IKeyboardProxy.class)).initKeyBoardChange(requireView());
        RootViewGlobalLayoutListener rootViewGlobalLayoutListener = new RootViewGlobalLayoutListener(this);
        rootViewGlobalLayoutListener.addOnKeyboardListener(this.onKeyboardListener);
        this.rootViewGlobalLayoutListener = rootViewGlobalLayoutListener;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        setParallaxOffset$default(this, 0.0f, 1, null);
    }

    @Override // com.cloud.tmc.miniapp.action.HandlerAction
    public boolean post(Runnable runnable) {
        return HandlerAction.DefaultImpls.post(this, runnable);
    }

    @Override // com.cloud.tmc.miniapp.action.HandlerAction
    public boolean postAtTime(Runnable runnable, long j11) {
        return HandlerAction.DefaultImpls.postAtTime(this, runnable, j11);
    }

    @Override // com.cloud.tmc.miniapp.action.HandlerAction
    public boolean postDelayed(Object obj, long j11, Runnable runnable) {
        return HandlerAction.DefaultImpls.postDelayed(this, obj, j11, runnable);
    }

    @Override // com.cloud.tmc.miniapp.action.HandlerAction
    public boolean postDelayed(Runnable runnable, long j11) {
        return HandlerAction.DefaultImpls.postDelayed(this, runnable, j11);
    }

    @Override // com.cloud.tmc.integration.structure.PageContext
    public void refreshApp() {
        final FragmentActivity activity = getActivity();
        if (activity instanceof MiniAppActivity) {
            if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                ((MiniAppActivity) activity).refreshApp();
            } else {
                ExecutorUtils.execute(ExecutorType.UI, new Runnable() { // from class: com.cloud.tmc.miniapp.base.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniAppBaseFragment.refreshApp$lambda$32(activity);
                    }
                });
            }
        }
    }

    @Override // com.cloud.tmc.miniapp.action.HandlerAction
    public void removeCallbacks() {
        HandlerAction.DefaultImpls.removeCallbacks(this);
    }

    @Override // com.cloud.tmc.miniapp.action.HandlerAction
    public void removeCallbacks(Runnable runnable) {
        HandlerAction.DefaultImpls.removeCallbacks(this, runnable);
    }

    @Override // com.cloud.tmc.miniapp.action.HandlerAction
    public void removeCallbacksAndMessages(Object obj) {
        HandlerAction.DefaultImpls.removeCallbacksAndMessages(this, obj);
    }

    @Override // com.cloud.tmc.kernel.node.KeyBoardNode
    public void removeOnKeyboardListener(OnKeyboardListener listener) {
        Intrinsics.h(listener, "listener");
        RootViewGlobalLayoutListener rootViewGlobalLayoutListener = this.rootViewGlobalLayoutListener;
        if (rootViewGlobalLayoutListener != null) {
            rootViewGlobalLayoutListener.removeOnKeyboardListener(listener);
        }
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public boolean removeTabBarBadge(int i11) {
        HashMap<Integer, TabBarBadgeMessage> badgeMessageHashMap;
        TabBarBadgeMessage tabBarBadgeMessage;
        App app;
        TabBar tabBar = getTabBar();
        boolean zRemoveTabBarBadge = tabBar != null ? tabBar.removeTabBarBadge(i11) : false;
        if (zRemoveTabBarBadge) {
            Page page = this.page;
            TabBarMessageStore tabBarMessageStore = (page == null || (app = page.getApp()) == null) ? null : (TabBarMessageStore) app.getData(TabBarMessageStore.class, true);
            if (tabBarMessageStore != null && (badgeMessageHashMap = tabBarMessageStore.getBadgeMessageHashMap()) != null && (tabBarBadgeMessage = badgeMessageHashMap.get(Integer.valueOf(i11))) != null) {
                tabBarBadgeMessage.setShowBadge(false);
                tabBarBadgeMessage.setText(null);
            }
        }
        return zRemoveTabBarBadge;
    }

    public final void sendAppOrPageReadyToRender(String eventName, Map<String, String> map) {
        Intrinsics.h(eventName, "eventName");
        AppUtils.sendAppOrPageReadyToRender(this.page, eventName, map);
    }

    public final void sendEventOrLifecycleToWorker(String eventName, boolean z10, Map<String, ? extends Object> map) {
        Intrinsics.h(eventName, "eventName");
        AppUtils.sendEventOrLifecycleToWorker(this.page, eventName, z10, map);
    }

    public final void sendPageEnterToWorker(Map<String, ? extends Object> map) {
        String routeType;
        Integer numValueOf;
        App app;
        Page prePage;
        App app2;
        Page page = this.page;
        String pageId = null;
        if (page == null || (app2 = page.getApp()) == null) {
            routeType = null;
        } else {
            Page page2 = this.page;
            String pagePath = page2 != null ? page2.getPagePath() : null;
            if (pagePath == null) {
                pagePath = "";
            }
            routeType = app2.getRouteType(pagePath);
        }
        String strOrDefault = StringExtKt.orDefault(StringExtKt.takeIfNotEmpty(routeType), "navigateTo");
        String str = Intrinsics.c(strOrDefault, TmcConstants.ROUTE_UNKNOWN) ? "navigateTo" : strOrDefault;
        App app3 = this.app;
        if (app3 != null) {
            Page page3 = this.page;
            String pagePath2 = page3 != null ? page3.getPagePath() : null;
            if (pagePath2 == null) {
                pagePath2 = "";
            }
            numValueOf = Integer.valueOf(app3.getPageType(pagePath2));
        } else {
            numValueOf = null;
        }
        HashMap map2 = new HashMap();
        map2.put(FrameworkConstants.GLOBAL_DATA_KEY_DELTA, 0);
        map2.put(FrameworkConstants.GLOBAL_DATA_KEY_ROUTE_TYPE, str);
        boolean z10 = true;
        if (numValueOf != null && numValueOf.intValue() == 1) {
            z10 = false;
        }
        map2.put(FrameworkConstants.GLOBAL_DATA_KEY_IS_MIXED_PAGE, Boolean.valueOf(z10));
        Page page4 = this.page;
        if (page4 != null && (app = page4.getApp()) != null && (prePage = app.getPrePage()) != null) {
            pageId = prePage.getPageId();
        }
        map2.put(FrameworkConstants.GLOBAL_DATA_KEY_PRE_RENDER_ID, pageId != null ? pageId : "");
        if (map != null) {
            map2.putAll(map);
        }
        sendEventOrLifecycleToWorker(EventConstants.EVENT_NAME_PAGE_ENTER, false, map2);
    }

    public final void setEdgeLevel(int i11) {
        getSwipeBackManager().OooO00o(i11);
    }

    public final void setEdgeLevel(SwipeBackLayout.EdgeLevel edgeLevel) {
        Intrinsics.h(edgeLevel, "edgeLevel");
        getSwipeBackManager().OooO00o(edgeLevel);
    }

    public final void setFullScreen(AtomicBoolean atomicBoolean) {
        Intrinsics.h(atomicBoolean, "<set-?>");
        this.isFullScreen = atomicBoolean;
    }

    public final void setHasVirtualNavBar(boolean z10) {
        this.hasVirtualNavBar = z10;
    }

    public final void setNavigationBarProgressUpdating(boolean z10) {
        this.navigationBarProgressUpdating = z10;
    }

    @Override // com.cloud.tmc.integration.ui.fragment.TmcFragment
    public void setPage(Page page) {
        Intrinsics.h(page, "page");
        try {
            try {
                App app = this.app;
                if ((app != null ? app.getAppLifecycleCallback() : null) == null) {
                    TmcLogger.d(TAG, "setMiniappLifecycleCallback");
                    App app2 = this.app;
                    if (app2 != null) {
                        FragmentActivity activity = getActivity();
                        app2.setMiniappLifecycleCallback(activity instanceof MiniAppActivity ? (MiniAppActivity) activity : null);
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
            setHostActivityStatusBackground(page);
            setShowLoading(page);
        } catch (Throwable th3) {
            TmcLogger.e(TAG, "setPage fail!", th3);
        }
    }

    public final void setSwipeBackEnable(boolean z10) {
        getSwipeBackManager().OooO0O0(z10);
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public boolean setTabBarBadge(int i11, String str) {
        HashMap<Integer, TabBarRedDotMessage> redDotMessageHashMap;
        App app;
        TabBar tabBar = getTabBar();
        boolean tabBarBadge = tabBar != null ? tabBar.setTabBarBadge(i11, str) : false;
        if (tabBarBadge) {
            Page page = this.page;
            TabBarMessageStore tabBarMessageStore = (page == null || (app = page.getApp()) == null) ? null : (TabBarMessageStore) app.getData(TabBarMessageStore.class, true);
            TabBarRedDotMessage tabBarRedDotMessage = (tabBarMessageStore == null || (redDotMessageHashMap = tabBarMessageStore.getRedDotMessageHashMap()) == null) ? null : redDotMessageHashMap.get(Integer.valueOf(i11));
            if (tabBarRedDotMessage != null) {
                tabBarRedDotMessage.setShowRedDot(false);
            }
            HashMap<Integer, TabBarBadgeMessage> badgeMessageHashMap = tabBarMessageStore != null ? tabBarMessageStore.getBadgeMessageHashMap() : null;
            if (badgeMessageHashMap != null) {
                badgeMessageHashMap.put(Integer.valueOf(i11), new TabBarBadgeMessage(i11, true, str));
            }
        }
        return tabBarBadge;
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public boolean setTabBarItem(int i11, MiniAppConfigModel.TabBarBean.ListBean tab) {
        Intrinsics.h(tab, "tab");
        Page page = this.page;
        if (page != null) {
            TabBar tabBar = getTabBar();
            Boolean boolValueOf = tabBar != null ? Boolean.valueOf(tabBar.updateTabItem(i11, tab, page)) : null;
            if (boolValueOf != null) {
                return boolValueOf.booleanValue();
            }
        }
        TmcLogger.d(TAG, "set tab item for index " + i11 + " with tab " + tab + " is failed");
        return false;
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public boolean setTabBarItems(ArrayList<MiniAppConfigModel.TabBarBean.ListBean> tabs) {
        Intrinsics.h(tabs, "tabs");
        Page page = this.page;
        if (page != null) {
            TabBar tabBar = getTabBar();
            Boolean boolValueOf = tabBar != null ? Boolean.valueOf(tabBar.updateAllTabs(tabs, page)) : null;
            if (boolValueOf != null) {
                return boolValueOf.booleanValue();
            }
        }
        TmcLogger.d(TAG, "set tab items is failed");
        return false;
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public boolean setTabBarStyle(String str, String str2, String str3, String str4) {
        App app;
        TabBar tabBar = getTabBar();
        boolean tabBarStyle = tabBar != null ? tabBar.setTabBarStyle(str, str2, str3, str4) : false;
        if (tabBarStyle) {
            Page page = this.page;
            TabBarMessageStore tabBarMessageStore = (page == null || (app = page.getApp()) == null) ? null : (TabBarMessageStore) app.getData(TabBarMessageStore.class, true);
            if (tabBarMessageStore != null) {
                tabBarMessageStore.setTabBarStyle(new TabBarStyle(str, str2, str3, str4));
            }
        }
        return tabBarStyle;
    }

    public boolean shouldInterceptOnKeyDown() {
        return checkAlertBeforeUnload();
    }

    public final void showLoadingDialog() {
        try {
            TmcLogger.d(TAG, "showLoadingDialog");
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.base.f
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppBaseFragment.showLoadingDialog$lambda$37(this.f23505a);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
        }
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public boolean showTabBar(boolean z10) {
        TabBar tabBar = getTabBar();
        if (tabBar != null) {
            return tabBar.showTabBar(z10);
        }
        return false;
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public boolean showTabBarRedDot(int i11) {
        HashMap<Integer, TabBarBadgeMessage> badgeMessageHashMap;
        TabBarBadgeMessage tabBarBadgeMessage;
        App app;
        TabBar tabBar = getTabBar();
        boolean unreadVisible = tabBar != null ? tabBar.setUnreadVisible(i11, true) : false;
        if (unreadVisible) {
            Page page = this.page;
            TabBarMessageStore tabBarMessageStore = (page == null || (app = page.getApp()) == null) ? null : (TabBarMessageStore) app.getData(TabBarMessageStore.class, true);
            HashMap<Integer, TabBarRedDotMessage> redDotMessageHashMap = tabBarMessageStore != null ? tabBarMessageStore.getRedDotMessageHashMap() : null;
            if (redDotMessageHashMap != null) {
                redDotMessageHashMap.put(Integer.valueOf(i11), new TabBarRedDotMessage(i11, true, null, false, 12, null));
            }
            if (tabBarMessageStore != null && (badgeMessageHashMap = tabBarMessageStore.getBadgeMessageHashMap()) != null && (tabBarBadgeMessage = badgeMessageHashMap.get(Integer.valueOf(i11))) != null) {
                tabBarBadgeMessage.setShowBadge(false);
                tabBarBadgeMessage.setText(null);
            }
        }
        return unreadVisible;
    }

    @Override // com.cloud.tmc.integration.ui.action.TabBarAction
    public void showTabBarUnreadIcon(final int i11, final String iconPath, final Function1<? super Boolean, Unit> function1) {
        TabBar tabBar;
        Intrinsics.h(iconPath, "iconPath");
        Page page = this.page;
        if (page == null || (tabBar = getTabBar()) == null) {
            return;
        }
        tabBar.showTabBarUnreadIcon(i11, iconPath, page, new Function1<Boolean, Unit>() { // from class: com.cloud.tmc.miniapp.base.MiniAppBaseFragment$showTabBarUnreadIcon$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return Unit.f67061a;
            }

            public final void invoke(boolean z10) {
                HashMap<Integer, TabBarRedDotMessage> redDotMessageHashMap;
                HashMap<Integer, TabBarRedDotMessage> redDotMessageHashMap2;
                App app;
                if (z10) {
                    Page page2 = ((TmcFragment) this.this$0).page;
                    TabBarRedDotMessage tabBarRedDotMessage = null;
                    TabBarMessageStore tabBarMessageStore = (page2 == null || (app = page2.getApp()) == null) ? null : (TabBarMessageStore) app.getData(TabBarMessageStore.class, true);
                    TabBarRedDotMessage tabBarRedDotMessage2 = (tabBarMessageStore == null || (redDotMessageHashMap2 = tabBarMessageStore.getRedDotMessageHashMap()) == null) ? null : redDotMessageHashMap2.get(Integer.valueOf(i11));
                    if (tabBarRedDotMessage2 != null) {
                        tabBarRedDotMessage2.setUnreadIcon(iconPath);
                    }
                    if (tabBarMessageStore != null && (redDotMessageHashMap = tabBarMessageStore.getRedDotMessageHashMap()) != null) {
                        tabBarRedDotMessage = redDotMessageHashMap.get(Integer.valueOf(i11));
                    }
                    if (tabBarRedDotMessage != null) {
                        tabBarRedDotMessage.setShowUnreadIcon(true);
                    }
                }
                Function1<Boolean, Unit> function2 = function1;
                if (function2 != null) {
                    function2.invoke(Boolean.valueOf(z10));
                }
            }
        });
    }

    public final void showVirtualNavBar() {
        View decorView = requireActivity().getWindow().getDecorView();
        Intrinsics.g(decorView, "requireActivity().window.decorView");
        decorView.setSystemUiVisibility(1024);
    }

    @Override // com.cloud.tmc.miniapp.action.RefreshAction
    public boolean startRefresh() {
        if (this.pullDownRefresh) {
            return getRefreshManager().startRefresh();
        }
        return false;
    }

    @Override // com.cloud.tmc.miniapp.action.RefreshAction
    public boolean stopLoadMore() {
        if (this.pullUpRefresh) {
            getRefreshManager().stopLoadMore();
        }
        return this.pullUpRefresh;
    }

    @Override // com.cloud.tmc.miniapp.action.RefreshAction
    public boolean stopRefresh() {
        if (this.pullDownRefresh) {
            getRefreshManager().stopRefresh();
        }
        return this.pullDownRefresh;
    }
}
