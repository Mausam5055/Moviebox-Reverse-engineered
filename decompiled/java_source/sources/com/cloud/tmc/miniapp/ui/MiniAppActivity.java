package com.cloud.tmc.miniapp.ui;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.animation.AnimationUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.tmc.ad.IAdManagerProxy;
import com.cloud.tmc.integration.ActivityHelper;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.SoftHideKeyBoardUtil;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.activity.StartClientBundle;
import com.cloud.tmc.integration.callback.IAllowMFAHListener;
import com.cloud.tmc.integration.callback.IAppCallback;
import com.cloud.tmc.integration.callback.IAsyncStartLoadingCallback;
import com.cloud.tmc.integration.callback.ICheckMiniAppLifecycleCallback;
import com.cloud.tmc.integration.callback.IShowAddHomeCallback;
import com.cloud.tmc.integration.callback.ISubpackageLoadCheckCallback;
import com.cloud.tmc.integration.chain.app.AppChainContext;
import com.cloud.tmc.integration.chain.errorState.AppErrorState;
import com.cloud.tmc.integration.chain.insert.AppInsertState;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.minicover.NativeComponentManager;
import com.cloud.tmc.integration.model.AlertBeforeUnloadCache;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.CSMKBean;
import com.cloud.tmc.integration.model.EntryInfo;
import com.cloud.tmc.integration.model.ForegroundRangTime;
import com.cloud.tmc.integration.model.ForegroundTime;
import com.cloud.tmc.integration.model.MiniAppAutoOperationConfig;
import com.cloud.tmc.integration.model.MiniAppAutoPopover;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.model.MiniAppUpdateMessageStore;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.model.PrepareData;
import com.cloud.tmc.integration.model.StartTime;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.integration.performanceanalyse.screen.IScreenInspectProxy;
import com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept;
import com.cloud.tmc.integration.proxy.IUpdateLoadingStepProxy;
import com.cloud.tmc.integration.proxy.OfflineAppProxy;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.integration.proxy.StartActivityProxy;
import com.cloud.tmc.integration.proxy.UpdateLoadingStepListener;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.AppLoadResult;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.VirtualAppManager;
import com.cloud.tmc.integration.structure.app.BaseAppContext;
import com.cloud.tmc.integration.structure.app.TmcAppContext;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.integration.ui.fragment.IFragmentManager;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.CreateShortCutUtils;
import com.cloud.tmc.integration.utils.LatestUseUtils;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.integration.utils.MiniForceAddHomeManager;
import com.cloud.tmc.integration.utils.PopWindowManager;
import com.cloud.tmc.integration.utils.ext.CommonExtKt;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.constants.MiniAppType;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.DefaultExtensionManager;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.LogEProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointConstants;
import com.cloud.tmc.kernel.proxy.renderprocess.IOnRenderProcessGoneProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.NewTaskManager;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.TmcInitializer;
import com.cloud.tmc.miniapp.action.StatusAction;
import com.cloud.tmc.miniapp.action.VersionUpdateAction;
import com.cloud.tmc.miniapp.base.MiniAppBaseActivity;
import com.cloud.tmc.miniapp.base.MiniAppBaseFragment;
import com.cloud.tmc.miniapp.bridge.PrivacyBridge;
import com.cloud.tmc.miniapp.defaultimpl.OooO0OO;
import com.cloud.tmc.miniapp.dialog.BottomDialog$MenuItem;
import com.cloud.tmc.miniapp.dialog.OooOOO0;
import com.cloud.tmc.miniapp.dialog.o0Oo0oo;
import com.cloud.tmc.miniapp.performanceanalyse.OooOO0O;
import com.cloud.tmc.miniapp.point.CreateBottomMenuPoint;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.manager.TmcResourceManager;
import com.cloud.tmc.miniapp.prepare.steps.OooOo;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prestrategy.PreStrategyManager;
import com.cloud.tmc.miniapp.prestrategy.strategy.OooO00o;
import com.cloud.tmc.miniapp.proxy.IClientStarter;
import com.cloud.tmc.miniapp.task.OooO0O0;
import com.cloud.tmc.miniapp.ui.extension.PinForLaterExtensionKt;
import com.cloud.tmc.miniapp.utils.AddHomeToastUtils;
import com.cloud.tmc.miniapp.utils.MessageBubbleUtils;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniapp.utils.OooO;
import com.cloud.tmc.miniapp.utils.OooOOO;
import com.cloud.tmc.miniapp.widget.CapsuleView;
import com.cloud.tmc.miniapp.widget.LoadingTextView;
import com.cloud.tmc.miniapp.widget.StatusLayout;
import com.cloud.tmc.miniapp.widget.popupview.AddHomeCustom1PopUpWindowView;
import com.cloud.tmc.miniapp.widget.popupview.AddHomeCustom2PopUpWindowView;
import com.cloud.tmc.miniapp.widget.popupview.AddHomeCustomBottomTipView;
import com.cloud.tmc.miniapp.widget.popupview.AddHomeCustomTopTipView;
import com.cloud.tmc.miniapp.widget.popupview.MiniAddHomeTipDialogView;
import com.cloud.tmc.miniapp.widget.popupview.MsgBubblePopUpWindowView;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.cloud.tmc.miniutils.util.SystemUtils;
import com.cloud.tmc.miniutils.util.ViewUtils;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.render.proxy.SessionUtilProxy;
import com.cloud.tmc.worker.WorkerManager;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public class MiniAppActivity extends MiniAppBaseActivity implements StatusAction, VersionUpdateAction, OooOo, IOnRenderProcessGoneProxy.Listener, UpdateLoadingStepListener, ICheckMiniAppLifecycleCallback, StatusLayout.OooO00o, IAllowMFAHListener, OfflineAppProxy.CreateShortCutsListener, IShowAddHomeCallback {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "MiniAppActivity";
    private final Lazy addHomeDialogView$delegate;
    private final AppChainContext appChainContext;
    private String appId;
    private final Lazy capsule$delegate;
    private PrepareController controller;
    private long currentDelayTime;
    private boolean delayShowError;
    private String devToken;
    private final Lazy dialog$delegate;
    private boolean enableQuickMode;
    private PrepareException errorException;
    private IEventCenter eventCenter;
    private boolean isFirstLaunch;
    private AtomicBoolean isResendH5PageStack;
    private boolean isValidOnResume;
    private final ActivityHelper mActivityHelper;
    private final ArrayList<Function0<Unit>> mMFAHInterceptList;
    private final Lazy mShowCompleteTaskQueue$delegate;
    private final Lazy mStatusLayout$delegate = LazyKt.b(new Function0<StatusLayout>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$mStatusLayout$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final StatusLayout invoke() {
            return (StatusLayout) this.this$0.findViewById(R.id.sl_status);
        }
    });
    private final Lazy miniAppPopWindowToken$delegate;
    private long miniappForegroundTime;
    private long miniappResumeTimestamp;
    private long miniappStartTime;
    private String mode;
    private String msgAppName;
    private long onPauseStopTimeStamp;
    private PrepareContext prepareContext;
    private final Lazy pvAddHomeBottomTip$delegate;
    private final Lazy pvAddHomeCustom1$delegate;
    private final Lazy pvAddHomeCustom2$delegate;
    private final Lazy pvAddHomeTopTip$delegate;
    private final Lazy pvMsgBubble$delegate;
    private PrepareController quickModeController;
    private boolean quickModeStartStatus;
    private String rootTaskId;
    private String sceneId;
    private final PopWindowManager.IPopWindowManagerController showMsgBubbleController;
    private boolean showOpenAppDialog;
    private Runnable showPopUpWindowRunnable;
    private String tempAppLogo;
    private String tempAppName;
    private Long uniqueChainId;
    private String version;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ui.MiniAppActivity$checkAndShowAddHomeCustomToast$1, reason: invalid class name */
    public static final class AnonymousClass1 extends Lambda implements Function0<Unit> {
        public final /* synthetic */ long $closeAddHomeDelayTime;
        public final /* synthetic */ String $iconUrl;
        public final /* synthetic */ String $showToastMessage;
        public final /* synthetic */ int $showType;
        public final /* synthetic */ MiniAppActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i11, MiniAppActivity miniAppActivity, String str, String str2, long j11) {
            super(0);
            this.$showType = i11;
            this.this$0 = miniAppActivity;
            this.$showToastMessage = str;
            this.$iconUrl = str2;
            this.$closeAddHomeDelayTime = j11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$1(final MiniAppActivity this$0, String str, String str2, long j11) {
            Intrinsics.h(this$0, "this$0");
            AddHomeCustom1PopUpWindowView pvAddHomeCustom1 = this$0.getPvAddHomeCustom1();
            if (pvAddHomeCustom1 != null) {
                ViewExtKt.toVisible(pvAddHomeCustom1.OooO00o(str).OooO00o(this$0.getAppId(), str2));
            }
            this$0.postDelayed(this$0.getPvAddHomeCustom1(), j11, new Runnable() { // from class: com.cloud.tmc.miniapp.ui.f0
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppActivity.AnonymousClass1.invoke$lambda$1$lambda$0(this$0);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$1$lambda$0(MiniAppActivity this$0) {
            Intrinsics.h(this$0, "this$0");
            AddHomeCustom1PopUpWindowView pvAddHomeCustom1 = this$0.getPvAddHomeCustom1();
            if (pvAddHomeCustom1 != null) {
                ViewExtKt.toGone(pvAddHomeCustom1);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$3(final MiniAppActivity this$0, String str, String str2, long j11) {
            Intrinsics.h(this$0, "this$0");
            AddHomeCustom2PopUpWindowView pvAddHomeCustom2 = this$0.getPvAddHomeCustom2();
            if (pvAddHomeCustom2 != null) {
                ViewExtKt.toVisible(pvAddHomeCustom2.OooO00o(str).OooO00o(this$0.getAppId(), str2));
            }
            this$0.postDelayed(this$0.getPvAddHomeCustom2(), j11, new Runnable() { // from class: com.cloud.tmc.miniapp.ui.g0
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppActivity.AnonymousClass1.invoke$lambda$3$lambda$2(this$0);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$3$lambda$2(MiniAppActivity this$0) {
            Intrinsics.h(this$0, "this$0");
            AddHomeCustom2PopUpWindowView pvAddHomeCustom2 = this$0.getPvAddHomeCustom2();
            if (pvAddHomeCustom2 != null) {
                ViewExtKt.toGone(pvAddHomeCustom2);
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            m253invoke();
            return Unit.f67061a;
        }

        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
        public final void m253invoke() {
            int i11 = this.$showType;
            if (i11 == 1) {
                MiniAppActivity miniAppActivity = this.this$0;
                miniAppActivity.removeCallbacksAndMessages(miniAppActivity.getPvAddHomeCustom1());
                final MiniAppActivity miniAppActivity2 = this.this$0;
                final String str = this.$showToastMessage;
                final String str2 = this.$iconUrl;
                final long j11 = this.$closeAddHomeDelayTime;
                miniAppActivity2.post(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.i0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniAppActivity.AnonymousClass1.invoke$lambda$1(miniAppActivity2, str, str2, j11);
                    }
                });
                return;
            }
            if (i11 != 2) {
                return;
            }
            MiniAppActivity miniAppActivity3 = this.this$0;
            miniAppActivity3.removeCallbacksAndMessages(miniAppActivity3.getPvAddHomeCustom2());
            final MiniAppActivity miniAppActivity4 = this.this$0;
            final String str3 = this.$showToastMessage;
            final String str4 = this.$iconUrl;
            final long j12 = this.$closeAddHomeDelayTime;
            miniAppActivity4.post(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.h0
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppActivity.AnonymousClass1.invoke$lambda$3(miniAppActivity4, str3, str4, j12);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ui.MiniAppActivity$createSuccess$2, reason: invalid class name */
    public /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function3<String, String, String, Unit> {
        public AnonymousClass2(Object obj) {
            super(3, obj, MiniAppActivity.class, "showOpenAppDialog", "showOpenAppDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((String) obj, (String) obj2, (String) obj3);
            return Unit.f67061a;
        }

        public final void invoke(String p11, String p12, String p13) {
            Intrinsics.h(p11, "p0");
            Intrinsics.h(p12, "p1");
            Intrinsics.h(p13, "p2");
            ((MiniAppActivity) this.receiver).showOpenAppDialog(p11, p12, p13);
        }
    }

    public MiniAppActivity() {
        AppChainContext appChainContext = new AppChainContext();
        this.appChainContext = appChainContext;
        this.mActivityHelper = new ActivityHelper(this, appChainContext);
        this.capsule$delegate = LazyKt.b(new Function0<CapsuleView>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$capsule$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CapsuleView invoke() {
                return (CapsuleView) this.this$0.findViewById(R.id.capsule);
            }
        });
        this.pvAddHomeCustom1$delegate = LazyKt.b(new Function0<AddHomeCustom1PopUpWindowView>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$pvAddHomeCustom1$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AddHomeCustom1PopUpWindowView invoke() {
                return (AddHomeCustom1PopUpWindowView) this.this$0.findViewById(R.id.pv_add_home_custom1);
            }
        });
        this.pvAddHomeCustom2$delegate = LazyKt.b(new Function0<AddHomeCustom2PopUpWindowView>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$pvAddHomeCustom2$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AddHomeCustom2PopUpWindowView invoke() {
                return (AddHomeCustom2PopUpWindowView) this.this$0.findViewById(R.id.pv_add_home_custom2);
            }
        });
        this.pvAddHomeTopTip$delegate = LazyKt.b(new Function0<AddHomeCustomTopTipView>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$pvAddHomeTopTip$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AddHomeCustomTopTipView invoke() {
                return (AddHomeCustomTopTipView) this.this$0.findViewById(R.id.pv_add_home_top_tip);
            }
        });
        this.pvAddHomeBottomTip$delegate = LazyKt.b(new Function0<AddHomeCustomBottomTipView>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$pvAddHomeBottomTip$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AddHomeCustomBottomTipView invoke() {
                return (AddHomeCustomBottomTipView) this.this$0.findViewById(R.id.pv_add_home_bottom_tip);
            }
        });
        this.pvMsgBubble$delegate = LazyKt.b(new Function0<MsgBubblePopUpWindowView>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$pvMsgBubble$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final MsgBubblePopUpWindowView invoke() {
                return (MsgBubblePopUpWindowView) this.this$0.findViewById(R.id.pv_msg_bubble);
            }
        });
        this.addHomeDialogView$delegate = LazyKt.b(new Function0<MiniAddHomeTipDialogView>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$addHomeDialogView$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final MiniAddHomeTipDialogView invoke() {
                return (MiniAddHomeTipDialogView) this.this$0.findViewById(R.id.add_home_dialog_view);
            }
        });
        this.isFirstLaunch = true;
        this.isValidOnResume = true;
        this.isResendH5PageStack = new AtomicBoolean(false);
        this.msgAppName = "";
        this.miniappStartTime = System.currentTimeMillis();
        this.miniAppPopWindowToken$delegate = LazyKt.b(new Function0<String>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$miniAppPopWindowToken$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return this.this$0.getAppId() + "_" + this.this$0.getMiniappStartTime();
            }
        });
        this.mShowCompleteTaskQueue$delegate = LazyKt.b(new Function0<OooO0O0>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$mShowCompleteTaskQueue$2
            @Override // kotlin.jvm.functions.Function0
            public final OooO0O0 invoke() {
                return new OooO0O0();
            }
        });
        this.mMFAHInterceptList = new ArrayList<>();
        this.tempAppLogo = "";
        this.tempAppName = "";
        this.dialog$delegate = LazyKt.b(new MiniAppActivity$dialog$2(this));
        this.rootTaskId = "";
        this.showMsgBubbleController = new PopWindowManager.IPopWindowManagerController() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$showMsgBubbleController$1
            @Override // com.cloud.tmc.integration.utils.PopWindowManager.IPopWindowManagerController
            public void onRefresh(PopWindowManager.PopWindowData bean) {
                Intrinsics.h(bean, "bean");
                TmcLogger.d("MiniAppActivity", "onRefresh:" + (System.currentTimeMillis() - this.this$0.getMiniappStartTime()));
                this.this$0.showPopUpWindowRunnable(bean.getDelayTime() - (System.currentTimeMillis() - this.this$0.getMiniappStartTime()));
            }

            @Override // com.cloud.tmc.integration.utils.PopWindowManager.IPopWindowManagerController
            public void show(String appId) {
                Intrinsics.h(appId, "appId");
                TmcLogger.d("MiniAppActivity", "msgBubbleToast");
                try {
                    if (this.this$0.getResumed()) {
                        this.this$0.showMsgBubbleToast();
                    }
                } catch (Throwable th2) {
                    TmcLogger.e("MiniAppActivity", th2);
                }
            }
        };
    }

    public static /* synthetic */ void addScreen$default(MiniAppActivity miniAppActivity, String str, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addScreen");
        }
        if ((i11 & 1) != 0) {
            str = "0";
        }
        miniAppActivity.addScreen(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void backgroundDownloadZipAsync$lambda$35(MiniAppActivity this$0, boolean z10) {
        Intrinsics.h(this$0, "this$0");
        this$0.dispatchOnUpdateApp(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void capsuleSetOnLeftClick() {
        AppModel appModel;
        if (isLoadStatusLoadingOrError()) {
            return;
        }
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, PointAnalyseType.POINT_MORE_ENTER, "");
        App app = this.mActivityHelper.getApp();
        if (app == null || (appModel = app.getAppModel()) == null) {
            return;
        }
        getDialog().show();
        OooOOO0 dialog = getDialog();
        dialog.getClass();
        Intrinsics.h(appModel, "appModel");
        if (TextUtils.isEmpty(appModel.getDeveloper())) {
            TextView textViewOooO0OO = dialog.OooO0OO();
            if (textViewOooO0OO != null) {
                textViewOooO0OO.setVisibility(8);
            }
        } else {
            TextView textViewOooO0OO2 = dialog.OooO0OO();
            if (textViewOooO0OO2 != null) {
                textViewOooO0OO2.setVisibility(0);
            }
            TextView textViewOooO0OO3 = dialog.OooO0OO();
            if (textViewOooO0OO3 != null) {
                textViewOooO0OO3.setText(appModel.getDeveloper());
            }
        }
        TextView textView = (TextView) dialog.OooO0O0.getValue();
        if (textView != null) {
            textView.setText(appModel.getName());
        }
        dialog.OooO0oO = appModel.getAppId();
        AppCompatImageView appCompatImageView = (AppCompatImageView) dialog.OooO00o.getValue();
        if (appCompatImageView != null) {
            ImageLoaderProxy imageLoaderProxy = (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
            Context context = dialog.getContext();
            String logo = appModel.getLogo();
            String str = logo == null ? "" : logo;
            int dp2px = CommonExtKt.getDp2px(6);
            int i11 = R.drawable.drawable_app_icon_place_holder;
            imageLoaderProxy.loadImgRoundCorners(context, str, appCompatImageView, dp2px, i11, i11);
        }
        OooOOO0 dialog2 = getDialog();
        dialog2.getClass();
        Intrinsics.h(this, "activity");
        ((CreateBottomMenuPoint) ExtensionPoint.as(CreateBottomMenuPoint.class).create()).buildBottomDialog(this, dialog2);
    }

    public static /* synthetic */ void capsuleSetOnRightClick$default(MiniAppActivity miniAppActivity, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: capsuleSetOnRightClick");
        }
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        miniAppActivity.capsuleSetOnRightClick(z10);
    }

    private final boolean checkAddHomeForbidShowPopWindow(String str) {
        try {
            Object objFromJson = GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_MINI_POPWINDOW_ADD_HOME_FORBID_ID, MiniAppConfigHelper.DEFAULT_MINI_POPWINDOW_ADD_HOME_FORBID_ID), (Class<Object>) List.class);
            List arrayList = objFromJson instanceof List ? (List) objFromJson : null;
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            return arrayList.contains(str);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    private final void checkAddHomeTipStatus() {
        String str;
        String str2;
        String str3;
        try {
            AddHomeCustomTopTipView pvAddHomeTopTip = getPvAddHomeTopTip();
            if (pvAddHomeTopTip != null && (str3 = this.appId) != null && pvAddHomeTopTip.OooO0oo) {
                pvAddHomeTopTip.OooO0oo = false;
                pvAddHomeTopTip.OooO00o(str3, pvAddHomeTopTip.OooO0oO, pvAddHomeTopTip.OooO);
            }
            AddHomeCustomBottomTipView pvAddHomeBottomTip = getPvAddHomeBottomTip();
            if (pvAddHomeBottomTip != null && (str2 = this.appId) != null) {
                TmcLogger.d(pvAddHomeBottomTip.OooO0oO, "checkAddHomeBottomTipStatus");
                if (pvAddHomeBottomTip.OooOO0) {
                    pvAddHomeBottomTip.OooOO0 = false;
                    pvAddHomeBottomTip.OooO00o(str2, pvAddHomeBottomTip.OooO, pvAddHomeBottomTip.OooOO0O);
                }
            }
            MiniAddHomeTipDialogView addHomeDialogView = getAddHomeDialogView();
            if (addHomeDialogView == null || (str = this.appId) == null || !addHomeDialogView.OooOO0O) {
                return;
            }
            addHomeDialogView.OooOO0O = false;
            addHomeDialogView.OooO00o(str, addHomeDialogView.OooOO0, addHomeDialogView.OooOO0o);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    private final void checkAndExecuteAddHomeAutoTips(MiniAppAutoOperationConfig miniAppAutoOperationConfig, String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        if (miniAppAutoOperationConfig != null) {
            showAddHomeTips(str, miniAppAutoOperationConfig);
            return;
        }
        TmcLogger.d(TAG, "checkAndExecuteAddHomeAutoTips miniAppAutoExecuteConfig is null ->" + str);
    }

    public static /* synthetic */ void checkAndShowAddHomeCustomToast$default(MiniAppActivity miniAppActivity, int i11, long j11, long j12, String str, String str2, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkAndShowAddHomeCustomToast");
        }
        miniAppActivity.checkAndShowAddHomeCustomToast(i11, j11, j12, (i12 & 8) != 0 ? null : str, (i12 & 16) != 0 ? null : str2);
    }

    private final void dispatchOnCheckForUpdateListener() {
        WeakHashMap<String, BridgeCallback> onCheckForUpdate;
        BridgeCallback bridgeCallback;
        MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
        String str = this.appId;
        if (str == null) {
            str = "";
        }
        boolean zIsNeedUpdate = miniAppLaunch.isNeedUpdate(this, str);
        App app = this.mActivityHelper.getApp();
        MiniAppUpdateMessageStore miniAppUpdateMessageStore = app != null ? (MiniAppUpdateMessageStore) app.getData(MiniAppUpdateMessageStore.class) : null;
        if (miniAppUpdateMessageStore == null || (onCheckForUpdate = miniAppUpdateMessageStore.getOnCheckForUpdate()) == null || (bridgeCallback = onCheckForUpdate.get(this.appId)) == null) {
            return;
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("hasUpdate", Boolean.valueOf(zIsNeedUpdate));
        bridgeCallback.sendSuccessResponse(jsonObject);
    }

    private final void dispatchOnUpdateApp(boolean z10) {
        WeakHashMap<String, BridgeCallback> onUpdateFailed;
        BridgeCallback bridgeCallback;
        WeakHashMap<String, BridgeCallback> onUpdateReady;
        BridgeCallback bridgeCallback2;
        App app = this.mActivityHelper.getApp();
        MiniAppUpdateMessageStore miniAppUpdateMessageStore = app != null ? (MiniAppUpdateMessageStore) app.getData(MiniAppUpdateMessageStore.class) : null;
        if (z10) {
            if (miniAppUpdateMessageStore == null || (onUpdateReady = miniAppUpdateMessageStore.getOnUpdateReady()) == null || (bridgeCallback2 = onUpdateReady.get(this.appId)) == null) {
                return;
            }
            bridgeCallback2.sendSuccessResponse();
            return;
        }
        if (miniAppUpdateMessageStore == null || (onUpdateFailed = miniAppUpdateMessageStore.getOnUpdateFailed()) == null || (bridgeCallback = onUpdateFailed.get(this.appId)) == null) {
            return;
        }
        bridgeCallback.sendSuccessResponse();
    }

    public static /* synthetic */ void finishMiniActivity$default(MiniAppActivity miniAppActivity, TmcFragment.ExitType exitType, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: finishMiniActivity");
        }
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        miniAppActivity.finishMiniActivity(exitType, z10);
    }

    private final MiniAddHomeTipDialogView getAddHomeDialogView() {
        return (MiniAddHomeTipDialogView) this.addHomeDialogView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bundle getAppBrandBundle(AppModel appModel) {
        Bundle bundle = new Bundle();
        try {
            String name = appModel.getName();
            String str = "";
            if (name == null) {
                name = "";
            }
            bundle.putString(TmcConstants.EXTRA_APP_NAME, name);
            String miniAppVersion = MiniAppLaunch.INSTANCE.getMiniAppVersion(appModel);
            if (miniAppVersion != null) {
                str = miniAppVersion;
            }
            bundle.putString("version", str);
            bundle.putString(TmcConstants.EXTRA_APP_INFO_DESC, appModel.getDesc());
            bundle.putString(TmcConstants.EXTRA_APP_INFO_LOGO_URL, appModel.getLogo());
            bundle.putString(TmcConstants.EXTRA_APP_INFO_REGISTER_TYPE, appModel.getRegisterType());
            bundle.putString(TmcConstants.EXTRA_APP_INFO_DEVELOPER, appModel.getDeveloper());
            bundle.putLong(TmcConstants.EXTRA_APP_INFO_RLEASE_TIME, appModel.getReleaseTime());
        } catch (Throwable unused) {
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OooOOO0 getDialog() {
        return (OooOOO0) this.dialog$delegate.getValue();
    }

    private final OooO0O0 getMShowCompleteTaskQueue() {
        return (OooO0O0) this.mShowCompleteTaskQueue$delegate.getValue();
    }

    private final StatusLayout getMStatusLayout() {
        return (StatusLayout) this.mStatusLayout$delegate.getValue();
    }

    private final AddHomeCustomBottomTipView getPvAddHomeBottomTip() {
        return (AddHomeCustomBottomTipView) this.pvAddHomeBottomTip$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AddHomeCustom1PopUpWindowView getPvAddHomeCustom1() {
        return (AddHomeCustom1PopUpWindowView) this.pvAddHomeCustom1$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AddHomeCustom2PopUpWindowView getPvAddHomeCustom2() {
        return (AddHomeCustom2PopUpWindowView) this.pvAddHomeCustom2$delegate.getValue();
    }

    private final AddHomeCustomTopTipView getPvAddHomeTopTip() {
        return (AddHomeCustomTopTipView) this.pvAddHomeTopTip$delegate.getValue();
    }

    private final MsgBubblePopUpWindowView getPvMsgBubble() {
        return (MsgBubblePopUpWindowView) this.pvMsgBubble$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:37:0x008a  */
    /* JADX WARN: Code duplicated, block: B:40:0x0092  */
    /* JADX WARN: Code duplicated, block: B:41:0x0093 A[Catch: all -> 0x0086, TryCatch #1 {all -> 0x0086, blocks: (B:33:0x0081, B:38:0x008c, B:41:0x0093, B:43:0x0099, B:44:0x00a2), top: B:67:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0099 A[Catch: all -> 0x0086, TryCatch #1 {all -> 0x0086, blocks: (B:33:0x0081, B:38:0x008c, B:41:0x0093, B:43:0x0099, B:44:0x00a2), top: B:67:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a2 A[Catch: all -> 0x0086, TRY_LEAVE, TryCatch #1 {all -> 0x0086, blocks: (B:33:0x0081, B:38:0x008c, B:41:0x0093, B:43:0x0099, B:44:0x00a2), top: B:67:0x0081 }] */
    public static final void hideStatusLoading$lambda$10(final MiniAppActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        if (this$0.showComplete()) {
            String str = this$0.appId;
            if (str != null) {
                this$0.miniappStartTime = System.currentTimeMillis();
                String appId = null;
                MiniForceAddHomeManager.notifyHideLoading$default(MiniForceAddHomeManager.INSTANCE, str, null, 2, null);
                App app = this$0.mActivityHelper.getApp();
                if (app != null) {
                    app.setAppStartTime(this$0.miniappStartTime);
                }
                App app2 = this$0.mActivityHelper.getApp();
                if (app2 != null) {
                    app2.setAddhomeShowCallback(this$0);
                }
                App app3 = this$0.mActivityHelper.getApp();
                if (app3 != null && !this$0.enableQuickMode) {
                    AppNode appNode = app3 instanceof AppNode ? (AppNode) app3 : null;
                    if (appNode != null) {
                        appNode.setAsyncLaunchStatus(true);
                    }
                }
                this$0.getMShowCompleteTaskQueue().OooO00o();
                boolean configTargetBool = false;
                try {
                    if (MessageBubbleUtils.OooO00o.OooO0O0()) {
                        configTargetBool = MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_MINI_MSG_BUBBLE_ENABLE, false);
                    }
                } catch (Throwable th2) {
                    TmcLogger.e("MessageBubbleUtils", th2);
                }
                if (configTargetBool) {
                    MessageBubbleUtils messageBubbleUtils = MessageBubbleUtils.OooO00o;
                    App app4 = this$0.mActivityHelper.getApp();
                    com.cloud.tmc.miniapp.utils.OooO0O0 oooO0O0 = new com.cloud.tmc.miniapp.utils.OooO0O0() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$hideStatusLoading$2$1$2
                        @Override // com.cloud.tmc.miniapp.utils.OooO0O0
                        public void show(String str2, String str3) {
                            if (str2 != null) {
                                MiniAppActivity miniAppActivity = this.this$0;
                                if (str3 == null) {
                                    str3 = "";
                                }
                                miniAppActivity.setMsgAppName(str3);
                                MessageBubbleUtils.OooO00o.OooO00o(miniAppActivity, str2, miniAppActivity.getMiniAppPopWindowToken(), miniAppActivity.getShowMsgBubbleController());
                            }
                        }
                    };
                    if (app4 != null) {
                        try {
                            appId = app4.getAppId();
                            if (appId == null) {
                                appId = "";
                            }
                            if (!messageBubbleUtils.OooO00o(appId)) {
                                if (NetworkUtils.isConnected()) {
                                    TmcLogger.d("MessageBubbleUtils", "refreshMsgBubble -> requestMsgInfo");
                                    messageBubbleUtils.OooO0O0(app4, oooO0O0);
                                } else {
                                    messageBubbleUtils.OooO00o(app4, oooO0O0);
                                }
                            }
                        } catch (Throwable th3) {
                            TmcLogger.e("MessageBubbleUtils", th3);
                        }
                    } else {
                        if (appId == null) {
                            appId = "";
                        }
                        if (!messageBubbleUtils.OooO00o(appId)) {
                            if (NetworkUtils.isConnected()) {
                                TmcLogger.d("MessageBubbleUtils", "refreshMsgBubble -> requestMsgInfo");
                                messageBubbleUtils.OooO0O0(app4, oooO0O0);
                            } else {
                                messageBubbleUtils.OooO00o(app4, oooO0O0);
                            }
                        }
                    }
                }
            }
            String appId2 = this$0.appId;
            if (appId2 != null) {
                OooO00o oooO00o = OooO00o.OooO00o;
                Intrinsics.h(appId2, "appId");
                try {
                    OooO00o.OooO0O0.remove(appId2);
                } catch (Throwable th4) {
                    TmcLogger.e(OooO00o.OooO0OO, "removePreAppinfo", th4);
                }
            }
            try {
                ExecutorUtils.execute(ExecutorType.IDLE, new Runnable() { // from class: com.cloud.tmc.miniapp.ui.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniAppActivity.hideStatusLoading$lambda$10$lambda$7(this.f23790a);
                    }
                });
            } catch (Throwable th5) {
                TmcLogger.e(TAG, th5);
            }
            if (this$0.appId != null) {
                try {
                    ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.ui.t
                        @Override // java.lang.Runnable
                        public final void run() {
                            MiniAppActivity.hideStatusLoading$lambda$10$lambda$9$lambda$8();
                        }
                    });
                } catch (Throwable th6) {
                    TmcLogger.e(TAG, th6);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hideStatusLoading$lambda$10$lambda$7(MiniAppActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            com.cloud.tmc.miniapp.prestrategy.OooO00o oooO00o = com.cloud.tmc.miniapp.prestrategy.OooO00o.OooO00o;
            Application application = this$0.getApplication();
            Intrinsics.g(application, "this.application");
            oooO00o.OooO0OO(application);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hideStatusLoading$lambda$10$lambda$9$lambda$8() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hideStatusLoadingDelay$lambda$1(MiniAppActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.hideStatusLoading();
    }

    private final void initMiniActivityData() {
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        String str;
        Bundle startParams;
        Bundle startParams2;
        Bundle startParams3;
        Bundle startParams4;
        Bundle bundle4;
        Bundle bundle5;
        String string;
        if (getSavedInstance() != null) {
            Bundle savedInstance = getSavedInstance();
            if (savedInstance == null || (string = savedInstance.getString(TmcConstants.EXTRA_APP_ID)) == null) {
                MiniAppLaunch.INSTANCE.reportMiniAppLauncherFailedTrack(this.appId, "3");
                TmcLogger.d(TAG, "savedInstance is not null,appId is null");
                finishMiniActivity$default(this, TmcFragment.ExitType.CLOSE_APP, false, 2, null);
                return;
            } else {
                this.appId = string;
                Bundle savedInstance2 = getSavedInstance();
                this.mode = savedInstance2 != null ? savedInstance2.getString("mode") : null;
                Bundle savedInstance3 = getSavedInstance();
                this.version = savedInstance3 != null ? savedInstance3.getString("version") : null;
                Bundle savedInstance4 = getSavedInstance();
                this.devToken = savedInstance4 != null ? savedInstance4.getString(TmcConstants.EXTRA_APP_DEV_TOKEN) : null;
            }
        } else {
            try {
                if (MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_MINI_ENABLE_NEW_INIT, true)) {
                    newDataInitialize();
                } else {
                    oldDataInitialize();
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                oldDataInitialize();
            }
            this.enableQuickMode = getBoolean(TmcConstants.EXTRA_APP_ENABLE_QUICK_MODE);
        }
        String str2 = this.appId;
        if (str2 == null || str2.length() == 0) {
            return;
        }
        NewTaskManager.Companion companion = NewTaskManager.Companion;
        companion.updateTaskIdByAppId(this.appId, getTaskId());
        MiniForceAddHomeManager miniForceAddHomeManager = MiniForceAddHomeManager.INSTANCE;
        miniForceAddHomeManager.addMFAHListener(this.appId, this);
        this.mActivityHelper.setAppId(this.appId);
        ((LogEProxy) TmcProxy.get(LogEProxy.class)).init(this.appId);
        IUpdateLoadingStepProxy iUpdateLoadingStepProxy = (IUpdateLoadingStepProxy) TmcProxy.get(IUpdateLoadingStepProxy.class);
        String str3 = this.appId;
        if (str3 == null) {
            str3 = "";
        }
        iUpdateLoadingStepProxy.addUpdateLoadingListener(str3, this);
        OfflineManager.addOfflineLifecycleObserver(this.appId, getLifecycle());
        if (companion.getInstance().checkUseSingleTaskMode(this.appId)) {
            String taskRootAppId = companion.getInstance().getTaskRootAppId();
            if (taskRootAppId == null) {
                taskRootAppId = "";
            }
            this.rootTaskId = taskRootAppId;
            TmcLogger.d(TAG, "tootTaskId:" + taskRootAppId);
        }
        TmcLogger.d(TAG, "initMiniActivityData:checkTaskId:" + this.appId);
        companion.getInstance().checkTaskId(this.appId, getClass());
        StartClientBundle startClientBundle = (StartClientBundle) BundleUtils.getParcelable(getBundle(), TmcConstants.EXTRA_START_BUNDLE);
        if (startClientBundle != null) {
            try {
                bundle = startClientBundle.startParams;
            } catch (Throwable th3) {
                TmcLogger.e(TAG, "", th3);
            }
        } else {
            bundle = null;
        }
        miniForceAddHomeManager.checkForceAddHome(bundle);
        VirtualAppManager virtualAppManager = (VirtualAppManager) TmcProxy.get(VirtualAppManager.class);
        String str4 = this.appId;
        if (startClientBundle == null || (bundle2 = startClientBundle.startParams) == null) {
            bundle2 = new Bundle();
        }
        if (startClientBundle == null || (bundle3 = startClientBundle.sceneParams) == null) {
            bundle3 = new Bundle();
        }
        virtualAppManager.startApp(str4, bundle2, bundle3);
        OooOO0O.OooO00o oooO00o = OooOO0O.OooO0o0;
        this.uniqueChainId = Long.valueOf(OooOO0O.OooO0o.addAndGet(1L) + (((long) Process.myPid()) * 1000000));
        if (this.quickModeStartStatus) {
            this.enableQuickMode = false;
        }
        String str5 = this.appId;
        if (str5 == null) {
            str5 = "";
        }
        Bundle bundle6 = new Bundle();
        bundle6.putString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, String.valueOf(this.uniqueChainId));
        if (startClientBundle != null && (bundle5 = startClientBundle.startParams) != null) {
            bundle6.putAll(bundle5);
        }
        Unit unit = Unit.f67061a;
        Bundle bundle7 = new Bundle();
        if (startClientBundle != null && (bundle4 = startClientBundle.sceneParams) != null) {
            bundle7.putAll(bundle4);
        }
        PrepareContext prepareContext = new PrepareContext(this, str5, bundle6, bundle7, false, this.appChainContext, this, null, 144, null);
        this.prepareContext = prepareContext;
        prepareContext.setAppType(this.mode);
        PrepareContext prepareContext2 = this.prepareContext;
        if (prepareContext2 != null) {
            prepareContext2.setAppVersion(this.version);
        }
        PrepareContext prepareContext3 = this.prepareContext;
        if (prepareContext3 != null) {
            prepareContext3.setAppToken(this.devToken);
        }
        PrepareContext prepareContext4 = this.prepareContext;
        if (prepareContext4 != null) {
            prepareContext4.setQuickMode(this.enableQuickMode);
        }
        if (this.enableQuickMode) {
            ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).addPeroformanceImprove(this.appId, "quickStart");
        }
        ((SessionUtilProxy) TmcProxy.get(SessionUtilProxy.class)).updateSession(this.appId, false, true);
        if (getInitDataChannel() == 0) {
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            String str6 = this.appId;
            PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_LAUNCH_MINIAPP_START;
            Bundle bundle8 = new Bundle();
            bundle8.putString("miniapp_id", this.appId);
            bundle8.putString("queryShortcutExist", String.valueOf(AppUtils.INSTANCE.queryShortcutExist(this, this.appId)));
            PrepareContext prepareContext5 = this.prepareContext;
            bundle8.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, (prepareContext5 == null || (startParams4 = prepareContext5.getStartParams()) == null) ? null : startParams4.getString("scene_id", "100000"));
            PrepareContext prepareContext6 = this.prepareContext;
            this.sceneId = (prepareContext6 == null || (startParams3 = prepareContext6.getStartParams()) == null) ? null : startParams3.getString("scene_id", "100000");
            PrepareContext prepareContext7 = this.prepareContext;
            bundle8.putString("fis_type", (prepareContext7 == null || (startParams2 = prepareContext7.getStartParams()) == null) ? null : startParams2.getString("fis_type", "0"));
            str = "";
            performanceAnalyseProxy.record(str6, pointAnalyseType, str, bundle8);
        } else {
            str = "";
        }
        Bundle bundle9 = new Bundle();
        bundle9.putString(ChainPoint.TYPE, "app");
        String str7 = ChainPoint.CHAIN_ID;
        PrepareContext prepareContext8 = this.prepareContext;
        bundle9.putString(str7, (prepareContext8 == null || (startParams = prepareContext8.getStartParams()) == null) ? null : startParams.getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, PointAnalyseType.POINT_CHAIN_START, ChainPoint.app, bundle9);
        PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String str8 = this.appId;
        performanceAnalyseProxy2.record(str8, PointAnalyseType.POINT_START, String.valueOf(str8));
        PerformanceAnalyseProxy performanceAnalyseProxy3 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String str9 = this.appId;
        PointAnalyseType pointAnalyseType2 = PointAnalyseType.POINT_PAGE_PV;
        Bundle bundle10 = new Bundle();
        bundle10.putString("miniapp_id", this.appId);
        performanceAnalyseProxy3.record(str9, pointAnalyseType2, str, bundle10);
        ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.ui.k
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.initMiniActivityData$lambda$62(this.f23757a);
            }
        });
        recordStart1s();
        ((CreateBottomMenuPoint) ExtensionPoint.as(CreateBottomMenuPoint.class).create()).requestBottomAbilityConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initMiniActivityData$lambda$62(MiniAppActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        boolean z10 = this$0.enableQuickMode;
        if (z10) {
            PrepareController prepareControllerCreateQuickModePrepareController = ((IClientStarter) TmcProxy.get(IClientStarter.class)).createQuickModePrepareController(this$0.prepareContext, new OooO0OO(this$0.prepareContext, this$0));
            this$0.quickModeController = prepareControllerCreateQuickModePrepareController;
            if (prepareControllerCreateQuickModePrepareController != null) {
                prepareControllerCreateQuickModePrepareController.start();
                return;
            }
            return;
        }
        PrepareContext prepareContext = this$0.prepareContext;
        if (prepareContext != null) {
            prepareContext.setVirtualStart(z10);
        }
        PrepareController prepareControllerCreatePrepareController = ((IClientStarter) TmcProxy.get(IClientStarter.class)).createPrepareController(this$0.prepareContext, new OooO0OO(this$0.prepareContext, this$0));
        this$0.controller = prepareControllerCreatePrepareController;
        if (prepareControllerCreatePrepareController != null) {
            prepareControllerCreatePrepareController.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$50(MiniAppActivity this$0, int i11) {
        Intrinsics.h(this$0, "this$0");
        StatusLayout statusLayout = this$0.getStatusLayout();
        if (statusLayout != null) {
            statusLayout.setBackgroundColor(i11);
            TmcLogger.d(TAG, "setHostActivityStatusBackground: 设置 activity 的状态布局背景色成功");
        }
        TmcLogger.d(TAG, "setHostActivityStatusBackground: 执行完毕");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadError$lambda$16(PrepareException prepareException, final MiniAppActivity this$0) {
        String code;
        String str;
        String code2;
        Intrinsics.h(this$0, "this$0");
        Integer numValueOf = (prepareException == null || (code2 = prepareException.getCode()) == null) ? null : Integer.valueOf(Integer.parseInt(code2));
        int i11 = Integer.parseInt("3");
        if (numValueOf != null && numValueOf.intValue() == i11) {
            code = prepareException != null ? prepareException.getCode() : null;
            str = code != null ? code : "0";
            Bundle bundle = new Bundle();
            bundle.putString(ChainPoint.OPEN_MINI_APP_FAILED_REASON, PrepareException.codeToDes(str));
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this$0.appId, PointAnalyseType.POINT_APP_CHAIN_FAIL, "appOpenFail", bundle);
            new AppInsertState(bundle).setChainContext(this$0.appChainContext);
            this$0.showNoNetwork(prepareException);
            return;
        }
        int i12 = Integer.parseInt("4");
        if (numValueOf != null && numValueOf.intValue() == i12) {
            code = prepareException != null ? prepareException.getCode() : null;
            str = code != null ? code : "0";
            Bundle bundle2 = new Bundle();
            bundle2.putString(ChainPoint.OPEN_MINI_APP_FAILED_REASON, PrepareException.codeToDes(str));
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this$0.appId, PointAnalyseType.POINT_APP_CHAIN_FAIL, "appOpenFail", bundle2);
            new AppInsertState(bundle2).setChainContext(this$0.appChainContext);
            if (NetworkUtils.isConnected()) {
                StatusAction.DefaultImpls.showUnstableNetwork$default(this$0, new StatusLayout.OooO0O0() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$loadError$1$2
                    @Override // com.cloud.tmc.miniapp.widget.StatusLayout.OooO0O0
                    public void onRetry(StatusLayout statusLayout) {
                        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                        String appId = this.this$0.getAppId();
                        Bundle bundle3 = new Bundle();
                        bundle3.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
                        Unit unit = Unit.f67061a;
                        performanceAnalyseProxy.recordForCommon(appId, TmcConstants.REPORTER_NO_NET_WORK_RETRY, bundle3);
                        MiniAppActivity.reload$default(this.this$0, false, null, 3, null);
                    }
                }, 0, null, this$0.appId, PinForLaterExtensionKt.getPinForLaterListener(this$0), 6, null);
                return;
            } else {
                StatusAction.DefaultImpls.showNoNetwork$default(this$0, new StatusLayout.OooO0O0() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$loadError$1$1
                    @Override // com.cloud.tmc.miniapp.widget.StatusLayout.OooO0O0
                    public void onRetry(StatusLayout statusLayout) {
                        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                        String appId = this.this$0.getAppId();
                        Bundle bundle3 = new Bundle();
                        bundle3.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                        Unit unit = Unit.f67061a;
                        performanceAnalyseProxy.recordForCommon(appId, TmcConstants.REPORTER_NO_NET_WORK_RETRY, bundle3);
                        MiniAppActivity.reload$default(this.this$0, false, null, 3, null);
                    }
                }, 0, null, this$0.appId, PinForLaterExtensionKt.getPinForLaterListener(this$0), 6, null);
                return;
            }
        }
        if (numValueOf != null && numValueOf.intValue() == 9) {
            code = prepareException != null ? prepareException.getCode() : null;
            str = code != null ? code : "0";
            Bundle bundle3 = new Bundle();
            bundle3.putString(ChainPoint.OPEN_MINI_APP_FAILED_REASON, PrepareException.codeToDes(str));
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this$0.appId, PointAnalyseType.POINT_APP_CHAIN_FAIL, "appOpenFail", bundle3);
            new AppInsertState(bundle3).setChainContext(this$0.appChainContext);
            Integer viewThemeMode = this$0.getViewThemeMode();
            StatusAction.DefaultImpls.showErrorLayout$default(this$0, (viewThemeMode != null && viewThemeMode.intValue() == 2) ? R.drawable.mini_ic_closed_normal_mode : R.drawable.mini_ic_closed, R.string.loading_error_miniapp_closed, (StatusLayout.OooO0O0) null, (String) null, (StatusLayout.OooO00o) null, 24, (Object) null);
            return;
        }
        if (numValueOf == null || numValueOf.intValue() != 30004) {
            try {
                this$0.showErrorLayout(prepareException, PinForLaterExtensionKt.getPinForLaterListener(this$0));
                return;
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                this$0.showErrorLayout(prepareException, PinForLaterExtensionKt.getPinForLaterListener(this$0));
                return;
            }
        }
        code = prepareException != null ? prepareException.getCode() : null;
        str = code != null ? code : "0";
        Bundle bundle4 = new Bundle();
        bundle4.putString(ChainPoint.OPEN_MINI_APP_FAILED_REASON, PrepareException.codeToDes(str));
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this$0.appId, PointAnalyseType.POINT_APP_CHAIN_FAIL, "appOpenFail", bundle4);
        new AppInsertState(bundle4).setChainContext(this$0.appChainContext);
        Integer viewThemeMode2 = this$0.getViewThemeMode();
        StatusAction.DefaultImpls.showErrorLayout$default(this$0, (viewThemeMode2 != null && viewThemeMode2.intValue() == 2) ? R.drawable.mini_ic_no_available_normal_mode : R.drawable.mini_ic_no_available, R.string.loading_error_miniapp_no_longer_available, (StatusLayout.OooO0O0) null, (String) null, (StatusLayout.OooO00o) null, 24, (Object) null);
    }

    private final boolean nativeComponentIntercept() {
        Page activePage;
        IRender render;
        String renderId;
        try {
            App app = this.mActivityHelper.getApp();
            if (app == null || (activePage = app.getActivePage()) == null || (render = activePage.getRender()) == null || (renderId = render.getRenderId()) == null) {
                return false;
            }
            return NativeComponentManager.INSTANCE.shouldInterceptBackPressed(renderId);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    private final void newDataInitialize() {
        String str = this.appId;
        if (str == null || str.length() == 0) {
            String string = getString(TmcConstants.EXTRA_APP_ID);
            if (string == null) {
                MiniAppLaunch.INSTANCE.reportMiniAppLauncherFailedTrack(this.appId, "5");
                TmcLogger.d(TAG, "newDataInitialize appId is null");
                finishMiniActivity$default(this, TmcFragment.ExitType.CLOSE_APP, false, 2, null);
                return;
            }
            this.appId = string;
        }
        String str2 = this.mode;
        if (str2 == null || str2.length() == 0) {
            this.mode = getString("mode");
        }
        String str3 = this.version;
        if (str3 == null || str3.length() == 0) {
            this.version = getString("version");
        }
        String str4 = this.devToken;
        if (str4 == null || str4.length() == 0) {
            this.devToken = getString(TmcConstants.EXTRA_APP_DEV_TOKEN);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyShowAddHome$lambda$96(int i11, MiniAppActivity this$0) {
        MsgBubblePopUpWindowView pvMsgBubble;
        MiniAddHomeTipDialogView addHomeDialogView;
        AddHomeCustomBottomTipView pvAddHomeBottomTip;
        Intrinsics.h(this$0, "this$0");
        if (i11 > 81) {
            try {
                if (this$0.getPvMsgBubble() != null && (pvMsgBubble = this$0.getPvMsgBubble()) != null) {
                    ViewExtKt.toGone(pvMsgBubble);
                }
                AddHomeCustomTopTipView pvAddHomeTopTip = this$0.getPvAddHomeTopTip();
                if (pvAddHomeTopTip != null) {
                    ViewExtKt.toGone(pvAddHomeTopTip);
                }
                AddHomeCustom1PopUpWindowView pvAddHomeCustom1 = this$0.getPvAddHomeCustom1();
                if (pvAddHomeCustom1 != null) {
                    ViewExtKt.toGone(pvAddHomeCustom1);
                }
                AddHomeCustom2PopUpWindowView pvAddHomeCustom2 = this$0.getPvAddHomeCustom2();
                if (pvAddHomeCustom2 != null) {
                    ViewExtKt.toGone(pvAddHomeCustom2);
                }
            } catch (Throwable unused) {
                return;
            }
        }
        if (i11 > 82 && (pvAddHomeBottomTip = this$0.getPvAddHomeBottomTip()) != null) {
            ViewExtKt.toGone(pvAddHomeBottomTip);
        }
        if (i11 <= 83 || (addHomeDialogView = this$0.getAddHomeDialogView()) == null) {
            return;
        }
        addHomeDialogView.OooO00o(false);
    }

    private final void oldDataInitialize() {
        String string = getString(TmcConstants.EXTRA_APP_ID);
        if (string == null) {
            MiniAppLaunch.INSTANCE.reportMiniAppLauncherFailedTrack(this.appId, "2");
            TmcLogger.d(TAG, "oldDataInitialize appId is null");
            finishMiniActivity$default(this, TmcFragment.ExitType.CLOSE_APP, false, 2, null);
        } else {
            this.appId = string;
            this.mode = getString("mode");
            this.version = getString("version");
            this.devToken = getString(TmcConstants.EXTRA_APP_DEV_TOKEN);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onDestroy$lambda$78() {
        try {
            CreateShortCutUtils createShortCutUtils = CreateShortCutUtils.INSTANCE;
            if (createShortCutUtils.getAddHomeAppIdList().isEmpty()) {
                return;
            }
            Iterator<T> it = createShortCutUtils.getAddHomeAppIdList().iterator();
            while (it.hasNext()) {
                CreateShortCutUtils.INSTANCE.getAppMap().remove((String) it.next());
            }
            CreateShortCutUtils.INSTANCE.getAddHomeAppIdList().clear();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "onDestroy", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPinForLaterClick$lambda$94$lambda$93(MiniAppActivity this$0, String it) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(it, "$it");
        PreStrategyManager.OooO00o.OooO00o(this$0, CollectionsKt.q(it), TmcConstants.KEY_PREFETCH_PIN);
    }

    private final void recordStart1s() {
        try {
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.x
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppActivity.recordStart1s$lambda$64(this.f23807a);
                }
            }, 1000L);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "report error", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void recordStart1s$lambda$64(MiniAppActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            StatusLayout statusLayout = this$0.getStatusLayout();
            if (statusLayout == null || !statusLayout.OooOOOo) {
                if (this$0.getResumed()) {
                    ReportProxy reportProxy = (ReportProxy) TmcProxy.get(ReportProxy.class);
                    String str = this$0.appId;
                    Bundle bundle = new Bundle();
                    bundle.putString("miniappid", this$0.appId);
                    Unit unit = Unit.f67061a;
                    reportProxy.report(str, "miniapp_start_suc", bundle);
                } else {
                    TmcLogger.d(TAG, "not report miniapp_start_suc ,resume is false");
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "report error", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshAppInfo$lambda$34(MiniAppActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.dispatchOnCheckForUpdateListener();
    }

    public static /* synthetic */ void reload$default(MiniAppActivity miniAppActivity, boolean z10, Bundle bundle, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reload");
        }
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        if ((i11 & 2) != 0) {
            bundle = null;
        }
        miniAppActivity.reload(z10, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void reload$lambda$25(MiniAppActivity this$0, Bundle bundle, boolean z10) {
        Intrinsics.h(this$0, "this$0");
        this$0.isFirstLaunch = true;
        if (bundle != null) {
            Intent intent = new Intent();
            intent.putExtras(bundle);
            intent.putExtra(TmcConstants.EXTRA_LAUNCH_MODE, TmcConstants.EXTRA_LAUNCH_MODE_COLD);
            super.onNewIntent(intent);
        }
        if (z10) {
            App app = this$0.mActivityHelper.getApp();
            if (app != null) {
                app.putBooleanValue(TmcConstants.MINIAPP_RELOAD, true);
            }
            if (app != null) {
                app.exit();
            }
        }
        this$0.showStatusLoading();
        this$0.setInitDataChannel(1);
        this$0.initData();
    }

    private final void showAddHomeTips(final String str, final MiniAppAutoOperationConfig miniAppAutoOperationConfig) {
        if (!MiniForceAddHomeManager.INSTANCE.checkInterectMFAH(str)) {
            if (AppUtils.INSTANCE.queryShortcutExist(this, this.appId)) {
                return;
            }
            ExecutorUtils.execute(ExecutorType.UI, new Runnable() { // from class: com.cloud.tmc.miniapp.ui.v
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppActivity.showAddHomeTips$lambda$11(this.f23800a, str, miniAppAutoOperationConfig);
                }
            });
        } else {
            TmcLogger.d(TAG, "showAddHomeTips checkInterectMFAH is true ->" + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAddHomeTips$lambda$11(MiniAppActivity this$0, String miniappId, MiniAppAutoOperationConfig miniAppAutoExecuteConfig) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(miniappId, "$miniappId");
        Intrinsics.h(miniAppAutoExecuteConfig, "$miniAppAutoExecuteConfig");
        try {
            TmcLogger.d(TAG, "addhomeStatus is false");
            AddHomeCustomTopTipView pvAddHomeTopTip = this$0.getPvAddHomeTopTip();
            if (pvAddHomeTopTip != null) {
                MiniAppAutoPopover topPopover = miniAppAutoExecuteConfig.getTopPopover();
                int i11 = AddHomeCustomTopTipView.OooOO0o;
                pvAddHomeTopTip.OooO00o(miniappId, topPopover, 0L);
            }
            AddHomeCustomBottomTipView pvAddHomeBottomTip = this$0.getPvAddHomeBottomTip();
            if (pvAddHomeBottomTip != null) {
                MiniAppAutoPopover bottomPopover = miniAppAutoExecuteConfig.getBottomPopover();
                int i12 = AddHomeCustomBottomTipView.OooOOO0;
                pvAddHomeBottomTip.OooO00o(miniappId, bottomPopover, 0L);
            }
            MiniAddHomeTipDialogView addHomeDialogView = this$0.getAddHomeDialogView();
            if (addHomeDialogView != null) {
                MiniAppAutoPopover exitReminder = miniAppAutoExecuteConfig.getExitReminder();
                int i13 = MiniAddHomeTipDialogView.OooOOOo;
                addHomeDialogView.OooO00o(miniappId, exitReminder, 0L);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    private final void showErrorLayout(PrepareException prepareException, StatusLayout.OooO00o oooO00o) {
        String code = prepareException != null ? prepareException.getCode() : null;
        if (code == null) {
            code = "0";
        }
        Bundle bundle = new Bundle();
        bundle.putString(ChainPoint.OPEN_MINI_APP_FAILED_REASON, PrepareException.codeToDes(code));
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, PointAnalyseType.POINT_APP_CHAIN_FAIL, "appOpenFail", bundle);
        new AppInsertState(bundle).setChainContext(this.appChainContext);
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String str = this.appId;
        Bundle bundle2 = new Bundle();
        bundle2.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 4);
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.recordForCommon(str, TmcConstants.REPORTER_NO_NET_WORK_PAGE, bundle2);
        showError(new StatusLayout.OooO0O0() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity.showErrorLayout.2
            @Override // com.cloud.tmc.miniapp.widget.StatusLayout.OooO0O0
            public void onRetry(StatusLayout statusLayout) {
                PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                String appId = MiniAppActivity.this.getAppId();
                Bundle bundle3 = new Bundle();
                bundle3.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 4);
                Unit unit2 = Unit.f67061a;
                performanceAnalyseProxy2.recordForCommon(appId, TmcConstants.REPORTER_NO_NET_WORK_RETRY, bundle3);
                MiniAppActivity.reload$default(MiniAppActivity.this, false, null, 3, null);
            }
        }, R.string.loading_error_tv, prepareException != null ? prepareException.getMessage() : null, this.appId, oooO00o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showLoadingPage() {
        getHandler().post(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.w
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.showLoadingPage$lambda$83(this.f23805a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLoadingPage$lambda$83(MiniAppActivity this$0) {
        AppModel appModel;
        Intrinsics.h(this$0, "this$0");
        if (this$0.errorException != null) {
            TmcLogger.d(TAG, "showAsyncStatusLoading loadError");
            this$0.loadError(null, this$0.errorException);
            this$0.errorException = null;
            return;
        }
        TmcLogger.d(TAG, "showAsyncStatusLoading showLoading");
        this$0.showLoading();
        App app = this$0.mActivityHelper.getApp();
        if (app == null || (appModel = app.getAppModel()) == null) {
            return;
        }
        String name = appModel.getName();
        if (name == null) {
            name = "";
        }
        String logo = appModel.getLogo();
        this$0.showLoadingLogo(name, logo != null ? logo : "");
        this$0.updateStepProgress(LoadStepAction.STEP_START_LOADING);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLoadingView$lambda$44(final EntryInfo entryInfo, MiniAppActivity this$0) {
        String string;
        Unit unit;
        Intrinsics.h(this$0, "this$0");
        if (entryInfo != null) {
            try {
                string = this$0.getString(R.string.dialog_loading_tv);
            } catch (Throwable unused) {
                string = "Loading...";
            }
            Intrinsics.g(string, "try {\n                  …ing...\"\n                }");
            String str = entryInfo.title;
            if (str != null) {
                string = str;
            }
            this$0.showLoadingLogo(string, StringExtKt.orDefault(entryInfo.iconUrl, ""));
            this$0.addMFAHInterceptAction(entryInfo.appId, new Function0<Unit>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$showLoadingView$1$1$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m256invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m256invoke() {
                    EntryInfo entryInfo2 = entryInfo;
                    LatestUseUtils.addAppUse(entryInfo2.appId, entryInfo2.title, entryInfo2.iconUrl, entryInfo2.desc, entryInfo2.getClassificationNames(), entryInfo.getExclusiveLogoUrl(), 0);
                }
            });
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit == null) {
            try {
                String string2 = this$0.getString(R.string.dialog_loading_tv);
                Intrinsics.g(string2, "getString(R.string.dialog_loading_tv)");
                this$0.showLoadingLogo(string2, "");
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showMsgBubbleToast$lambda$70(final MiniAppActivity this$0) {
        long configTargetInt;
        Intrinsics.h(this$0, "this$0");
        try {
            if (this$0.getPvMsgBubble() == null) {
                TmcLogger.d(TAG, "pvMsgBubble is null");
                return;
            }
            MsgBubblePopUpWindowView pvMsgBubble = this$0.getPvMsgBubble();
            if (pvMsgBubble != null) {
                ViewExtKt.toVisible(pvMsgBubble);
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                Bundle bundle = new Bundle();
                bundle.putString("jump_confi", pvMsgBubble.OooO0OO ? "0" : "1");
                Unit unit = Unit.f67061a;
                performanceAnalyseProxy.recordForCommon(null, TmcConstants.REPORTER_SHOW_MSG_BUBBLE, bundle);
            }
            MsgBubblePopUpWindowView pvMsgBubble2 = this$0.getPvMsgBubble();
            if (pvMsgBubble2 != null) {
                pvMsgBubble2.OooO00o(this$0.msgAppName);
            }
            TmcLogger.d(TAG, "showMsgBubbleToast");
            String str = this$0.appId;
            if (str != null) {
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(this$0, str, TmcConstants.KEY_SHOW_MSG_BUBBLE_TIME, System.currentTimeMillis());
            }
            try {
                configTargetInt = MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINI_POPWINDOW_TIME, 5000);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                configTargetInt = 5000;
            }
            this$0.postDelayed(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.r
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppActivity.showMsgBubbleToast$lambda$70$lambda$69(this.f23788a);
                }
            }, configTargetInt);
            Context context = this$0.getContext();
            Intrinsics.h(context, "context");
            Intrinsics.h("", "msgStr");
            try {
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, "miniMsgProvider", "miniLatestUnreadMsg", "");
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, TmcConstants.KEY_MSG_ID, TmcConstants.KEY_MINI_NEW_MESSAGE_STATUS, !Intrinsics.c("", ""));
            } catch (Throwable th3) {
                TmcLogger.e("MiniappMsgDataProvider", th3);
            }
        } catch (Throwable th4) {
            TmcLogger.e(TAG, "showMsgBubbleToast", th4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showMsgBubbleToast$lambda$70$lambda$69(MiniAppActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        MsgBubblePopUpWindowView pvMsgBubble = this$0.getPvMsgBubble();
        if (pvMsgBubble != null) {
            ViewExtKt.toGone(pvMsgBubble);
        }
    }

    private final void showNoNetwork(PrepareException prepareException) {
        Bundle bundle;
        String string;
        Bundle extras = getIntent().getExtras();
        Unit unit = null;
        unit = null;
        unit = null;
        Object obj = extras != null ? extras.get(TmcConstants.EXTRA_START_BUNDLE) : null;
        StartClientBundle startClientBundle = obj instanceof StartClientBundle ? (StartClientBundle) obj : null;
        if (startClientBundle != null && (bundle = startClientBundle.startParams) != null && (string = bundle.getString(TmcConstants.EXTRA_DATA)) != null) {
            Map mapMapFromJson = TmcGsonUtils.mapFromJson(string);
            String str = mapMapFromJson != null ? (String) mapMapFromJson.get("logo") : null;
            String str2 = mapMapFromJson != null ? (String) mapMapFromJson.get("name") : null;
            String str3 = mapMapFromJson != null ? (String) mapMapFromJson.get(CampaignEx.JSON_KEY_DESC) : null;
            this.tempAppLogo = str == null ? "" : str;
            this.tempAppName = str2 != null ? str2 : "";
            if (str == null || str.length() <= 0 || NetworkUtils.isConnected()) {
                StatusAction.DefaultImpls.showNoNetwork$default(this, new StatusLayout.OooO0O0() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$showNoNetwork$1$2
                    @Override // com.cloud.tmc.miniapp.widget.StatusLayout.OooO0O0
                    public void onRetry(StatusLayout statusLayout) {
                        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                        String appId = this.this$0.getAppId();
                        Bundle bundle2 = new Bundle();
                        bundle2.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                        Unit unit2 = Unit.f67061a;
                        performanceAnalyseProxy.recordForCommon(appId, TmcConstants.REPORTER_NO_NET_WORK_RETRY, bundle2);
                        MiniAppActivity.reload$default(this.this$0, false, null, 3, null);
                    }
                }, 0, null, this.appId, PinForLaterExtensionKt.getPinForLaterListener(this), 6, null);
            } else {
                String code = prepareException != null ? prepareException.getCode() : null;
                if (code == null) {
                    code = "0";
                } else {
                    Intrinsics.g(code, "exception?.code ?: \"0\"");
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString(ChainPoint.OPEN_MINI_APP_FAILED_REASON, PrepareException.codeToDes(code));
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, PointAnalyseType.POINT_APP_CHAIN_FAIL, "appOpenFail", bundle2);
                new AppInsertState(bundle2).setChainContext(this.appChainContext);
                showCustomErrorLayout(str2, str, str3, new StatusLayout.OooO0O0() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$showNoNetwork$1$1
                    @Override // com.cloud.tmc.miniapp.widget.StatusLayout.OooO0O0
                    public void onRetry(StatusLayout statusLayout) {
                        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                        String appId = this.this$0.getAppId();
                        Bundle bundle3 = new Bundle();
                        bundle3.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                        Unit unit2 = Unit.f67061a;
                        performanceAnalyseProxy.recordForCommon(appId, TmcConstants.REPORTER_NO_NET_WORK_RETRY, bundle3);
                        MiniAppActivity.reload$default(this.this$0, false, null, 3, null);
                    }
                }, this.appId, PinForLaterExtensionKt.getPinForLaterListener(this));
            }
            unit = Unit.f67061a;
        }
        if (unit == null) {
            StatusAction.DefaultImpls.showNoNetwork$default(this, new StatusLayout.OooO0O0() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$showNoNetwork$2$1
                @Override // com.cloud.tmc.miniapp.widget.StatusLayout.OooO0O0
                public void onRetry(StatusLayout statusLayout) {
                    PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                    String appId = this.this$0.getAppId();
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                    Unit unit2 = Unit.f67061a;
                    performanceAnalyseProxy.recordForCommon(appId, TmcConstants.REPORTER_NO_NET_WORK_RETRY, bundle3);
                    MiniAppActivity.reload$default(this.this$0, false, null, 3, null);
                }
            }, 0, null, this.appId, PinForLaterExtensionKt.getPinForLaterListener(this), 6, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showOpenAppDialog(String str, String str2, String str3) {
        if (this.showOpenAppDialog) {
            return;
        }
        o0Oo0oo o0oo0oo = new o0Oo0oo(this, str3);
        try {
            ImageView imageView = (ImageView) o0oo0oo.OooO0OO.getValue();
            if (imageView != null) {
                ImageLoaderProxy imageLoaderProxy = (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
                Context context = o0oo0oo.OooO00o;
                if (str == null) {
                    str = "";
                }
                imageLoaderProxy.loadImgRoundCorners(context, new File(str), imageView, SizeUtils.dp2px(12.0f), R.drawable.mini_icon_placeholder);
            }
        } catch (Throwable unused) {
        }
        o0oo0oo.addOnShowListener(new com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity.showOpenAppDialog.1
            @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000
            public void onShow(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
                MiniAppActivity.this.showOpenAppDialog = true;
            }
        }).addOnDismissListener(new com.cloud.tmc.miniapp.dialog.OooO0O0.OooOo00() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity.showOpenAppDialog.2
            @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooOo00
            public void onDismiss(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
                MiniAppActivity.this.showOpenAppDialog = false;
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPopUpWindowRunnable$lambda$72(MiniAppActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        PopWindowManager.INSTANCE.showPopWindow(this$0.getMiniAppPopWindowToken(), System.currentTimeMillis() - this$0.miniappStartTime);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showStatusLoading$lambda$0(MiniAppActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.showLoading();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startApp$lambda$29(final MiniAppActivity this$0, Intent intent) {
        Intrinsics.h(this$0, "this$0");
        try {
            TmcLogger.d(TAG, "startApp success");
            if (intent != null) {
                intent.putExtra(TmcConstants.EXTRA_LAUNCH_MODE, TmcConstants.EXTRA_LAUNCH_MODE_REOPEN);
            } else {
                intent = null;
            }
            this$0.startMiniApp(intent);
            this$0.isValidOnResume = false;
            this$0.onResume();
            if (this$0.enableQuickMode) {
                this$0.quickModeStartStatus = true;
                TmcLogger.d(TAG, "quickModeStart complete");
                PrepareContext prepareContext = this$0.prepareContext;
                if (prepareContext != null) {
                    prepareContext.setVirtualStart(this$0.enableQuickMode);
                }
                ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.ui.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniAppActivity.startApp$lambda$29$lambda$28(this.f23772a);
                    }
                });
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startApp$lambda$29$lambda$28(MiniAppActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        PrepareController prepareControllerCreatePrepareController = ((IClientStarter) TmcProxy.get(IClientStarter.class)).createPrepareController(this$0.prepareContext, new OooO0OO(this$0.prepareContext, this$0));
        this$0.controller = prepareControllerCreatePrepareController;
        if (prepareControllerCreatePrepareController != null) {
            prepareControllerCreatePrepareController.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startAsyncApp$lambda$33$lambda$32$lambda$31(AppNode appNode) {
        Intrinsics.h(appNode, "$appNode");
        TmcLogger.d(TAG, "startAsyncApp backToPagePath -> " + appNode.getBackToPagePath());
        String backToPagePath = appNode.getBackToPagePath();
        Bundle startParams = appNode.getStartParams();
        Bundle sceneParams = appNode.getSceneParams();
        sceneParams.putString("navigationType", TmcConstants.NAVIGATION_START_ASYNC_APP);
        Unit unit = Unit.f67061a;
        appNode.relaunchToUrl(backToPagePath, startParams, sceneParams);
        appNode.setBackToPagePath("");
    }

    private final void startMiniApp(Intent intent) {
        App app;
        Bundle extras;
        if ((intent == null || (extras = intent.getExtras()) == null || !extras.containsKey(TmcConstants.EXTRA_LAUNCH_MODE)) && intent != null) {
            intent.putExtra(TmcConstants.EXTRA_LAUNCH_MODE, TmcConstants.EXTRA_LAUNCH_MODE_HOT);
        }
        TmcLogger.d(TAG, "onNewIntent: " + this.appId);
        TmcLogger.d(TAG, "startMiniApp:checkTaskId:" + this.appId);
        NewTaskManager.Companion.getInstance().checkTaskId(this.appId, getClass());
        this.mActivityHelper.onNewIntent(intent);
        IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(this.mActivityHelper.getApp());
        this.eventCenter = eventCenterInstance;
        if (eventCenterInstance != null) {
            App app2 = this.mActivityHelper.getApp();
            eventCenterInstance.register("resendH5PageStack_" + (app2 != null ? app2.getAppId() : null), new IEventSubscriber() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity.startMiniApp.1
                @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
                public boolean onEvent(IEvent iEvent) {
                    MiniAppActivity.this.reSendDelayPageEnterToWorker();
                    IEventCenter iEventCenter = MiniAppActivity.this.eventCenter;
                    if (iEventCenter == null) {
                        return true;
                    }
                    App app3 = MiniAppActivity.this.getMActivityHelper().getApp();
                    iEventCenter.unregister("resendH5PageStack_" + (app3 != null ? app3.getAppId() : null), this);
                    return true;
                }
            });
        }
        if (this.enableQuickMode && (app = this.mActivityHelper.getApp()) != null) {
            app.setAsyncStartLoadingCallback(new IAsyncStartLoadingCallback() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity.startMiniApp.2
                @Override // com.cloud.tmc.integration.callback.IAsyncStartLoadingCallback
                public void showAsyncStatusLoading() {
                    TmcLogger.d(MiniAppActivity.TAG, "showAsyncStatusLoading");
                    MiniAppActivity.this.showLoadingPage();
                }
            });
        }
        App app3 = this.mActivityHelper.getApp();
        if (app3 != null) {
            app3.setAppCallback(new IAppCallback() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity.startMiniApp.3
                @Override // com.cloud.tmc.integration.callback.IAppCallback
                public boolean validPushPage(String path, AppModel appModel, Context context, Bundle startParams, Bundle sceneParams, ISubpackageLoadCheckCallback loadCheckCallback) {
                    Intrinsics.h(path, "path");
                    Intrinsics.h(appModel, "appModel");
                    Intrinsics.h(context, "context");
                    Intrinsics.h(startParams, "startParams");
                    Intrinsics.h(sceneParams, "sceneParams");
                    Intrinsics.h(loadCheckCallback, "loadCheckCallback");
                    return OooOOO.OooO00o(path, appModel, context, startParams, sceneParams, loadCheckCallback);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateStepProgress$lambda$26(MiniAppActivity this$0, LoadStepAction step) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(step, "$step");
        this$0.updateStepAnimation(step);
    }

    @Override // com.cloud.tmc.integration.callback.IAllowMFAHListener
    public void addMFAHInterceptAction(String str, Function0<Unit> function0) {
        IAllowMFAHListener.DefaultImpls.addMFAHInterceptAction(this, str, function0);
    }

    public final void addScreen(String location) {
        AppContext appContext;
        Context context;
        AddHomeCustomTopTipView pvAddHomeTopTip;
        Intrinsics.h(location, "location");
        try {
            if (isLoadStatusLoadingOrError()) {
                return;
            }
            if (Intrinsics.c(location, "0") && (pvAddHomeTopTip = getPvAddHomeTopTip()) != null && ViewExtKt.getVisible(pvAddHomeTopTip)) {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForCommon(this.appId, "upper_pop_click", new Bundle());
                location = "10";
            }
            String str = location;
            AddHomeCustomTopTipView pvAddHomeTopTip2 = getPvAddHomeTopTip();
            if (pvAddHomeTopTip2 != null) {
                pvAddHomeTopTip2.OooO00o();
            }
            AddHomeCustomBottomTipView pvAddHomeBottomTip = getPvAddHomeBottomTip();
            if (pvAddHomeBottomTip != null) {
                try {
                    if (ViewExtKt.getVisible(pvAddHomeBottomTip)) {
                        pvAddHomeBottomTip.startAnimation(AnimationUtils.loadAnimation(pvAddHomeBottomTip.getContext(), R.anim.mini_view_toast_exit));
                        ViewExtKt.toInvisible(pvAddHomeBottomTip);
                    }
                } catch (Throwable th2) {
                    TmcLogger.e(pvAddHomeBottomTip.OooO0oO, "toAddCustomBottomVisible error", th2);
                }
            }
            MiniAddHomeTipDialogView addHomeDialogView = getAddHomeDialogView();
            if (addHomeDialogView != null) {
                addHomeDialogView.OooO00o(false);
            }
            App app = this.mActivityHelper.getApp();
            if (app != null && (appContext = app.getAppContext()) != null && (context = appContext.getContext()) != null) {
                Intrinsics.g(context, "context");
                Class<?> launcherShortCutActivity = ((StartActivityProxy) TmcProxy.get(StartActivityProxy.class)).getLauncherShortCutActivity();
                Intrinsics.g(launcherShortCutActivity, "get(StartActivityProxy::….launcherShortCutActivity");
                CreateShortCutUtils.createShortcut$default(context, launcherShortCutActivity, app, str, 0, false, false, 112, null);
            }
            try {
                removeCallbacksAndMessages(getPvAddHomeCustom1());
                removeCallbacksAndMessages(getPvAddHomeCustom2());
                AddHomeCustom1PopUpWindowView pvAddHomeCustom1 = getPvAddHomeCustom1();
                if (pvAddHomeCustom1 != null) {
                    ViewExtKt.toGone(pvAddHomeCustom1);
                }
                AddHomeCustom2PopUpWindowView pvAddHomeCustom2 = getPvAddHomeCustom2();
                if (pvAddHomeCustom2 != null) {
                    ViewExtKt.toGone(pvAddHomeCustom2);
                    return;
                }
                return;
            } catch (Throwable th3) {
                TmcLogger.e(TAG, th3);
                return;
            }
            TmcLogger.e(TAG, th);
        } catch (Throwable th4) {
            TmcLogger.e(TAG, th4);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void backgroundDownloadZipAsync(AppModel appModelNew, final boolean z10) {
        Intrinsics.h(appModelNew, "appModelNew");
        TmcLogger.d(TAG, "backgroundDownloadZipAsync: miniappStartTime: " + this.miniappStartTime + " isSuccess: " + z10 + " appModelNew: " + appModelNew);
        if (this.miniappStartTime != 0) {
            dispatchOnUpdateApp(z10);
        } else {
            getMShowCompleteTaskQueue().OooO00o(new com.cloud.tmc.miniapp.task.OooO00o("onUpdateApp", new Runnable() { // from class: com.cloud.tmc.miniapp.ui.j
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppActivity.backgroundDownloadZipAsync$lambda$35(this.f23753a, z10);
                }
            }));
        }
    }

    public final void capsuleSetOnRightClick(boolean z10) {
        Unit unit;
        try {
            try {
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, PointAnalyseType.POINT_EXIT_CLICK, "");
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
            }
            OfflineManager.INSTANCE.clearCache(this);
            if (z10) {
                finishMiniActivity(TmcFragment.ExitType.CLOSE_APP, true);
                return;
            }
            App app = this.mActivityHelper.getApp();
            if (app != null) {
                if (!app.getBackPressedProcessor().startBackPressedInterceptorChain(new IBackPressedIntercept.Params(this, this.appId, app instanceof AppNode ? (AppNode) app : null, true, 2)).isIntercept()) {
                    finishMiniActivity(TmcFragment.ExitType.CLOSE_APP, false);
                }
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            if (unit == null) {
                finishMiniActivity$default(this, TmcFragment.ExitType.CLOSE_APP, false, 2, null);
            }
        } catch (Throwable th3) {
            TmcLogger.e(TAG, th3);
        }
    }

    public final void checkAndShowAddHomeCustomToast(int i11, long j11, long j12, String str, String str2) {
        AddHomeToastUtils.OooO00o.OooO00o(this, this.appId, getMiniAppPopWindowToken(), this.miniappStartTime, j11, new AnonymousClass1(i11, this, str, str2, j12));
    }

    @Override // com.cloud.tmc.integration.callback.ICheckMiniAppLifecycleCallback
    public boolean checkIsForeground() {
        return getResumed();
    }

    @Override // com.cloud.tmc.integration.callback.IAllowMFAHListener
    public void clearMFAHIntercept() {
        IAllowMFAHListener.DefaultImpls.clearMFAHIntercept(this);
    }

    @Override // com.cloud.tmc.integration.proxy.OfflineAppProxy.CreateShortCutsListener
    public void createSuccess(String appId) {
        Intrinsics.h(appId, "appId");
        try {
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(this, "1000886706715795456_web", "csmk");
            if (string == null) {
                string = "";
            }
            if (((CSMKBean) GsonUtils.fromJson(string, CSMKBean.class)).getContinueShow()) {
                statusLayoutCreateShortCutsSuccess(appId, new AnonymousClass2(this));
            } else {
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_GET_TOAST_ADD_EX;
                Bundle bundle = new Bundle();
                bundle.putString("miniappid", appId);
                Unit unit = Unit.f67061a;
                performanceAnalyseProxy.record("", pointAnalyseType, "", bundle);
                statusLayoutCreateShortCutsSuccess(appId, null);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
    }

    public final void finishMiniActivity(TmcFragment.ExitType exitType, boolean z10) {
        List arrayList;
        AppContext appContext;
        IFragmentManager fragmentManager;
        Set<TmcFragment> fragments;
        Intrinsics.h(exitType, "exitType");
        try {
            App app = this.mActivityHelper.getApp();
            Unit unit = null;
            AppContext appContext2 = app != null ? app.getAppContext() : null;
            TmcAppContext tmcAppContext = appContext2 instanceof TmcAppContext ? (TmcAppContext) appContext2 : null;
            if (tmcAppContext != null && (fragmentManager = tmcAppContext.getFragmentManager()) != null && (fragments = fragmentManager.getFragments()) != null) {
                Iterator<T> it = fragments.iterator();
                while (it.hasNext()) {
                    ((TmcFragment) it.next()).setExitType(exitType);
                }
            }
            App app2 = this.mActivityHelper.getApp();
            if (app2 == null) {
                if (!NewTaskManager.Companion.getInstance().checkOpenMutipleTask(this.appId)) {
                    finish();
                    return;
                }
                try {
                    String str = this.appId;
                    if (str == null || str.length() == 0) {
                        finishAndRemoveTask();
                    } else {
                        ((StartActivityProxy) TmcProxy.get(StartActivityProxy.class)).removeMiniAppTask(this.appId, this);
                    }
                    return;
                } catch (Throwable unused) {
                    finishAndRemoveTask();
                    return;
                }
            }
            if (z10) {
                app2.exit();
                return;
            }
            MiniAppConfigHelper miniAppConfigHelper = MiniAppConfigHelper.INSTANCE;
            if (!miniAppConfigHelper.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_MINI_ENABLE_MOVE_TO_BACK, true)) {
                TmcLogger.d(TAG, "finishMiniActivity enableMoveToBack -> false");
                app2.exit();
                return;
            }
            NewTaskManager.Companion companion = NewTaskManager.Companion;
            NewTaskManager companion2 = companion.getInstance();
            App app3 = this.mActivityHelper.getApp();
            if (!companion2.checkOpenMutipleTask(app3 != null ? app3.getAppId() : null)) {
                TmcLogger.d(TAG, "finishMiniActivity checkOpenMutipleTask -> false");
                app2.exit();
                return;
            }
            NewTaskManager companion3 = companion.getInstance();
            App app4 = this.mActivityHelper.getApp();
            if (companion3.checkUseSingleTaskMode(app4 != null ? app4.getAppId() : null)) {
                TmcLogger.d(TAG, "finishMiniActivity feedback -> finish");
                app2.exit();
                return;
            }
            NewTaskManager companion4 = companion.getInstance();
            App app5 = this.mActivityHelper.getApp();
            if (companion4.checkMiniAppServerApp(app5 != null ? app5.getAppId() : null)) {
                TmcLogger.d(TAG, "finishMiniActivity setting -> finish");
                app2.exit();
                return;
            }
            App app6 = this.mActivityHelper.getApp();
            if (app6 != null && !app6.getMiniAppLoadStatus()) {
                TmcLogger.d(TAG, "finishMiniActivity miniAppLoadStatus -> false");
                app2.exit();
                return;
            }
            try {
                try {
                    Object objFromJson = GsonUtils.fromJson(miniAppConfigHelper.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_FORCE_FINISH_MINIAPP, "[]"), (Class<Object>) List.class);
                    arrayList = objFromJson instanceof List ? (List) objFromJson : null;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                } catch (Throwable th2) {
                    TmcLogger.e(TAG, th2);
                    arrayList = new ArrayList();
                }
                App app7 = this.mActivityHelper.getApp();
                if (CollectionsKt.b0(arrayList, app7 != null ? app7.getAppId() : null)) {
                    TmcLogger.d(TAG, "finishMiniActivity forceFinishList -> finish");
                    app2.exit();
                    return;
                }
            } catch (Throwable unused2) {
            }
            App app8 = this.mActivityHelper.getApp();
            if (app8 != null && (appContext = app8.getAppContext()) != null) {
                boolean zMoveToBackground = appContext.moveToBackground();
                TmcLogger.e(TAG, "mActivityHelper not null, moveToBackground status ->" + zMoveToBackground);
                if (!zMoveToBackground) {
                    app2.exit();
                }
                unit = Unit.f67061a;
            }
            if (unit == null) {
                TmcLogger.e(TAG, "app or appContext is null,exit app");
                app2.exit();
            }
        } catch (Throwable th3) {
            TmcLogger.e("miniappactivity", th3);
        }
    }

    public final String getAppId() {
        return this.appId;
    }

    public final CapsuleView getCapsule() {
        return (CapsuleView) this.capsule$delegate.getValue();
    }

    public final PrepareController getController() {
        return this.controller;
    }

    @Override // com.cloud.tmc.integration.callback.IAllowMFAHListener
    public App getCurrentApp() {
        return this.mActivityHelper.getApp();
    }

    public final long getCurrentDelayTime() {
        return this.currentDelayTime;
    }

    public final boolean getDelayShowError() {
        return this.delayShowError;
    }

    public final String getDevToken() {
        return this.devToken;
    }

    public final boolean getEnableQuickMode() {
        return this.enableQuickMode;
    }

    public final PrepareException getErrorException() {
        return this.errorException;
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_mini_main;
    }

    public final ActivityHelper getMActivityHelper() {
        return this.mActivityHelper;
    }

    @Override // com.cloud.tmc.integration.callback.IAllowMFAHListener
    public ArrayList<Function0<Unit>> getMFAHIntercept() {
        return IAllowMFAHListener.DefaultImpls.getMFAHIntercept(this);
    }

    @Override // com.cloud.tmc.integration.callback.IAllowMFAHListener
    public ArrayList<Function0<Unit>> getMFAHInterceptList() {
        return this.mMFAHInterceptList;
    }

    public final String getMiniAppPopWindowToken() {
        return (String) this.miniAppPopWindowToken$delegate.getValue();
    }

    public final long getMiniappForegroundTime() {
        return this.miniappForegroundTime;
    }

    public final long getMiniappResumeTimestamp() {
        return this.miniappResumeTimestamp;
    }

    public final long getMiniappStartTime() {
        return this.miniappStartTime;
    }

    public final String getMode() {
        return this.mode;
    }

    public final String getMsgAppName() {
        return this.msgAppName;
    }

    public final long getOnPauseStopTimeStamp() {
        return this.onPauseStopTimeStamp;
    }

    public final PrepareContext getPrepareContext() {
        return this.prepareContext;
    }

    public final PrepareController getQuickModeController() {
        return this.quickModeController;
    }

    public final boolean getQuickModeStartStatus() {
        return this.quickModeStartStatus;
    }

    public boolean getResumed() {
        return getMResumed();
    }

    public final String getRootTaskId() {
        return this.rootTaskId;
    }

    public final String getSceneId() {
        return this.sceneId;
    }

    public final PopWindowManager.IPopWindowManagerController getShowMsgBubbleController() {
        return this.showMsgBubbleController;
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public StatusLayout getStatusLayout() {
        return getMStatusLayout();
    }

    public final String getTempAppLogo() {
        return this.tempAppLogo;
    }

    public final String getTempAppName() {
        return this.tempAppName;
    }

    public final String getVersion() {
        return this.version;
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public Integer getViewThemeMode() {
        App app = this.mActivityHelper.getApp();
        AppModel appModel = app != null ? app.getAppModel() : null;
        return (appModel != null && (MiniAppType.SHELL.getType() == appModel.getAppinfoCategoryType() || MiniAppType.SHELL_GAME.getType() == appModel.getAppinfoCategoryType())) ? 2 : 1;
    }

    public final void goBack() {
        if (isLoadStatusLoadingOrError()) {
            return;
        }
        onKeyUp(4, new KeyEvent(1, 4));
    }

    public final void goHome() {
        if (this.enableQuickMode) {
            App app = this.mActivityHelper.getApp();
            AppNode appNode = app instanceof AppNode ? (AppNode) app : null;
            if (appNode != null && !appNode.isAsyncLaunchStatus()) {
                App app2 = this.mActivityHelper.getApp();
                AppNode appNode2 = app2 instanceof AppNode ? (AppNode) app2 : null;
                if (appNode2 != null) {
                    App app3 = this.mActivityHelper.getApp();
                    appNode2.setBackToPagePath(app3 != null ? app3.getHomePagePath() : null);
                }
                showLoadingPage();
                return;
            }
        }
        if (isLoadStatusLoadingOrError()) {
            return;
        }
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, PointAnalyseType.POINT_NAV_HOME_PRESSED, "");
        try {
            App app4 = this.mActivityHelper.getApp();
            if (app4 != null) {
                app4.exitToHomePage();
            }
        } catch (Throwable th2) {
            TmcLogger.e(th2.getMessage());
        }
    }

    public final void hideAddHomeTips() {
        try {
            AddHomeCustomTopTipView pvAddHomeTopTip = getPvAddHomeTopTip();
            if (pvAddHomeTopTip != null) {
                pvAddHomeTopTip.OooO00o();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void hideStatusLoading() {
        App app = this.mActivityHelper.getApp();
        if (app != null) {
            ((IAdManagerProxy) TmcProxy.get(IAdManagerProxy.class)).onCreate(app);
            app.updateHideMiniappLoadingStatus(true);
        }
        getHandler().post(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.a0
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.hideStatusLoading$lambda$10(this.f23690a);
            }
        });
    }

    public final void hideStatusLoadingDelay(long j11) {
        postDelayed(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.m
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.hideStatusLoadingDelay$lambda$1(this.f23765a);
            }
        }, j11);
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void initData() {
        if (!ByteAppManager.isInit()) {
            TmcLogger.d(TAG, "ByteAppManager is not init");
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            Application application = getApplication();
            Intrinsics.g(application, "this.application");
            miniAppLaunch.byteAppInit$com_cloud_tmc_miniapp_sdk(application);
        }
        initMiniActivityData();
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void initView() {
        CapsuleView capsule = getCapsule();
        if (capsule != null) {
            capsule.setTranslationY(capsule.getTranslationY() + MiniBarUtils.getStatusHeight());
            capsule.setTranslationX(ViewUtils.isLayoutRtl() ? getResources().getDimension(R.dimen.mini_dp_8) : getResources().getDimension(R.dimen.mini_dp_m_8));
            capsule.setOnLeftClickListener(new Function0<Unit>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$initView$1$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m254invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m254invoke() {
                    this.this$0.capsuleSetOnLeftClick();
                }
            });
            capsule.setOnRightClickListener(new Function0<Unit>() { // from class: com.cloud.tmc.miniapp.ui.MiniAppActivity$initView$1$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m255invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m255invoke() {
                    MiniAppActivity.capsuleSetOnRightClick$default(this.this$0, false, 1, null);
                }
            });
        }
        this.mActivityHelper.setOnSetHostActivityStatusBackgroundCallback(new ActivityHelper.OnSetHostActivityStatusBackgroundCallback() { // from class: com.cloud.tmc.miniapp.ui.b0
            @Override // com.cloud.tmc.integration.ActivityHelper.OnSetHostActivityStatusBackgroundCallback
            public final void setHostActivityStatusBackground(int i11) {
                MiniAppActivity.initView$lambda$50(this.f23694a, i11);
            }
        });
    }

    public final boolean isAsyncLaunchStatus() {
        try {
            App app = this.mActivityHelper.getApp();
            AppNode appNode = app instanceof AppNode ? (AppNode) app : null;
            if (appNode != null) {
                return appNode.isAsyncLaunchStatus();
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public final boolean isFirstLaunch() {
        return this.isFirstLaunch;
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public boolean isLoadStatusLoadingOrError() {
        return StatusAction.DefaultImpls.isLoadStatusLoadingOrError(this);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void killActivity() {
        TmcLogger.d("NewTaskManager", "kill activity");
        TmcLogger.e("launch step error,finish activity");
        finishMiniActivity$default(this, TmcFragment.ExitType.CLOSE_APP, false, 2, null);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void loadError(PrepareData prepareData, final PrepareException prepareException) {
        if (this.enableQuickMode && this.quickModeStartStatus && this.errorException == null) {
            this.errorException = prepareException;
            return;
        }
        String code = prepareException != null ? prepareException.getCode() : null;
        String message = prepareException != null ? prepareException.getMessage() : null;
        TmcLogger.e(TAG, "loadError errorCode: " + code + " errorMessage: " + message + ", Just print: " + Log.getStackTraceString(prepareException));
        App app = this.mActivityHelper.getApp();
        if (app != null) {
            app.setMiniAppLoadStatus(false);
        }
        new AppErrorState(new Bundle()).setChainContext(this.appChainContext);
        getHandler().post(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.n
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.loadError$lambda$16(prepareException, this);
            }
        });
    }

    @Override // com.cloud.tmc.integration.callback.IAllowMFAHListener
    public void mfahAllow(String str) {
        IAllowMFAHListener.DefaultImpls.mfahAllow(this, str);
    }

    @Override // com.cloud.tmc.integration.callback.IShowAddHomeCallback
    public void notifyShowAddHome(final int i11) {
        runOnUiThread(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.h
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.notifyShowAddHome$lambda$96(i11, this);
            }
        });
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        App app = this.mActivityHelper.getApp();
        AppContext appContext = app != null ? app.getAppContext() : null;
        if (!(appContext instanceof TmcAppContext) || ((TmcAppContext) appContext).getFragmentManager().onBackPressed()) {
            return;
        }
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        int i11 = newConfig.orientation;
        if (i11 == 1) {
            CapsuleView capsule = getCapsule();
            if (capsule != null) {
                capsule.setVisibility(0);
            }
            getWindow().clearFlags(1024);
            getWindow().addFlags(2048);
            return;
        }
        if (i11 != 2) {
            return;
        }
        CapsuleView capsule2 = getCapsule();
        if (capsule2 != null) {
            capsule2.setVisibility(8);
        }
        getWindow().clearFlags(2048);
        getWindow().addFlags(1024);
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SoftHideKeyBoardUtil.assistActivity(this);
        ((IOnRenderProcessGoneProxy) TmcProxy.get(IOnRenderProcessGoneProxy.class)).register(this);
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        String appId;
        Bundle startParams;
        Bundle startParams2;
        StartTime startTime;
        String str = "";
        super.onDestroy();
        TmcLogger.d("MiniAppBasePage", "onDestroy invoke..appId:" + this.appId + ",isDarkMode:" + SystemUtils.darkThemeIsEnabled(this));
        String str2 = this.appId;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ondestory:");
        sb2.append(str2);
        TmcLogger.d(TAG, sb2.toString());
        try {
            OooO.OooO00o.OooO00o().OooO00o.clear();
        } catch (Throwable th2) {
            TmcLogger.e("NormalTaskQueueUtils", "", th2);
        }
        NewTaskManager.Companion.getInstance().removeActivityStack(this.appId);
        ((LogEProxy) TmcProxy.get(LogEProxy.class)).destroy(this.appId);
        IEventCenter iEventCenter = this.eventCenter;
        if (iEventCenter != null) {
            App app = this.mActivityHelper.getApp();
            iEventCenter.unregister("resendH5PageStack_" + (app != null ? app.getAppId() : null));
        }
        ((IOnRenderProcessGoneProxy) TmcProxy.get(IOnRenderProcessGoneProxy.class)).unRegister(this);
        IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(this.mActivityHelper.getApp());
        if (eventCenterInstance != null) {
            eventCenterInstance.unregister(WorkerManager.INSTANCE.getEVENT_RESEND_PAGE_ENTER());
        }
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String str3 = this.appId;
        PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_CHAIN_CLEAR;
        Bundle bundle = new Bundle();
        bundle.putString(ChainPoint.TYPE, "app");
        bundle.putString(ChainPoint.CHAIN_ID, String.valueOf(this.uniqueChainId));
        bundle.putString("miniapp_id", this.appId);
        bundle.putString("queryShortcutExist", String.valueOf(AppUtils.INSTANCE.queryShortcutExist(this, this.appId)));
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.record(str3, pointAnalyseType, "clear", bundle);
        PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        String str4 = this.appId;
        PointAnalyseType pointAnalyseType2 = PointAnalyseType.POINT_APP_CHAIN_CLEAR;
        Bundle bundle2 = new Bundle();
        bundle2.putString("openMiniAppFailedReason", "关闭");
        performanceAnalyseProxy2.record(str4, pointAnalyseType2, "clear", bundle2);
        ((IScreenInspectProxy) TmcProxy.get(IScreenInspectProxy.class)).appDestroy(this.mActivityHelper.getApp());
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).clearDownloadCall();
        PrepareController prepareController = this.controller;
        if (prepareController != null) {
            prepareController.finish();
        }
        this.controller = null;
        PrepareController prepareController2 = this.quickModeController;
        if (prepareController2 != null) {
            prepareController2.finish();
        }
        this.quickModeController = null;
        App app2 = this.mActivityHelper.getApp();
        long startTime2 = (app2 == null || (startTime = (StartTime) app2.getData(StartTime.class)) == null) ? 0L : startTime.getStartTime();
        if (startTime2 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - startTime2;
            App app3 = this.mActivityHelper.getApp();
            TmcLogger.d("[MiniAppActivity]: app usageTime:" + jElapsedRealtime + " ms, appId:" + (app3 != null ? app3.getAppId() : null));
            PerformanceAnalyseProxy performanceAnalyseProxy3 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            String str5 = this.appId;
            PointAnalyseType pointAnalyseTypePutData = PointAnalyseType.POINT_EXIT_MINIAPP.putData("usageTime", Long.valueOf(jElapsedRealtime));
            App app4 = this.mActivityHelper.getApp();
            PointAnalyseType pointAnalyseTypePutData2 = pointAnalyseTypePutData.putData(TmcConstants.KEY_MINI_APPID, app4 != null ? app4.getAppId() : null).putData("miniapp_id", this.appId);
            App app5 = this.mActivityHelper.getApp();
            PointAnalyseType pointAnalyseTypePutData3 = pointAnalyseTypePutData2.putData(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, (app5 == null || (startParams2 = app5.getStartParams()) == null) ? null : startParams2.getString("scene_id", "100000"));
            App app6 = this.mActivityHelper.getApp();
            performanceAnalyseProxy3.record(str5, pointAnalyseTypePutData3.putData("fis_type", (app6 == null || (startParams = app6.getStartParams()) == null) ? null : startParams.getString("fis_type", "0")), "");
        }
        App app7 = this.mActivityHelper.getApp();
        if (app7 != null && (appId = app7.getAppId()) != null) {
            ((IAdManagerProxy) TmcProxy.get(IAdManagerProxy.class)).onDestroy(appId);
        }
        this.mActivityHelper.onDestroy();
        PopWindowManager.INSTANCE.clearPopWindow(getMiniAppPopWindowToken());
        try {
            TypeIntrinsics.d(CreateShortCutUtils.INSTANCE.getAppMap()).remove(this.appId);
            IUpdateLoadingStepProxy iUpdateLoadingStepProxy = (IUpdateLoadingStepProxy) TmcProxy.get(IUpdateLoadingStepProxy.class);
            String str6 = this.appId;
            if (str6 != null) {
                str = str6;
            }
            iUpdateLoadingStepProxy.removeUpdateLoadingListener(str);
            ((TmcResourceManager) TmcProxy.get(TmcResourceManager.class)).clearDownloadAppMap();
            App app8 = this.mActivityHelper.getApp();
            if (app8 != null) {
                app8.setMiniappLifecycleCallback(null);
            }
            App app9 = this.mActivityHelper.getApp();
            if (app9 != null) {
                app9.setAddhomeShowCallback(null);
            }
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.ui.p
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppActivity.onDestroy$lambda$78();
                }
            });
        } catch (Throwable th3) {
            TmcLogger.e(TAG, th3);
        }
        ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).clearPerformanceImproves(this.appId);
        Bundle bundle3 = new Bundle();
        bundle3.putString(ChainPoint.OPEN_MINI_APP_FAILED_REASON, "关闭");
        new AppInsertState(bundle3).setChainContext(this.appChainContext);
        this.appChainContext.destroy(new Bundle());
        ((SessionUtilProxy) TmcProxy.get(SessionUtilProxy.class)).removeSession(this.appId);
        ((VirtualAppManager) TmcProxy.get(VirtualAppManager.class)).exitApp(((VirtualAppManager) TmcProxy.get(VirtualAppManager.class)).findApp(this.appId));
        String str7 = this.appId;
        if (str7 != null) {
            NativeComponentManager.INSTANCE.removeForAppId(str7);
        }
        MiniForceAddHomeManager miniForceAddHomeManager = MiniForceAddHomeManager.INSTANCE;
        miniForceAddHomeManager.removeInterectMFAH(this.appId, false);
        miniForceAddHomeManager.removeAllMfahListener(this.appId);
        try {
            PrivacyBridge.Companion.getClass();
            if (PrivacyBridge.OooO0O0.containsKey(this.appId)) {
                TmcLogger.d(TAG, "removePrivacyDialog appId = " + this.appId);
                TypeIntrinsics.d(PrivacyBridge.OooO0O0).remove(this.appId);
            }
            if (PrivacyBridge.OooO0OO.containsKey(this.appId)) {
                TmcLogger.d(TAG, "removePrivacySimpleDialog appId = " + this.appId);
                TypeIntrinsics.d(PrivacyBridge.OooO0OO).remove(this.appId);
            }
            ExtensionManager extensionManager = TmcInitializer.getExtensionManager();
            DefaultExtensionManager defaultExtensionManager = extensionManager instanceof DefaultExtensionManager ? (DefaultExtensionManager) extensionManager : null;
            Map<Node, Map<String, Extension>> nodeExtensionMap = defaultExtensionManager != null ? defaultExtensionManager.getNodeExtensionMap() : null;
            if (nodeExtensionMap != null) {
                for (Node node : nodeExtensionMap.keySet()) {
                    String str8 = this.appId;
                    if (str8 != null) {
                        AppNode appNode = node instanceof AppNode ? (AppNode) node : null;
                        if (Intrinsics.c(appNode != null ? appNode.getAppId() : null, str8)) {
                            nodeExtensionMap.remove(node);
                            TmcLogger.d(TAG, "nodeExtensionMap remove " + node);
                        }
                    }
                }
                TmcLogger.d(TAG, "nodeExtensionMap size ->" + nodeExtensionMap.size());
            }
        } catch (Throwable th4) {
            TmcLogger.e(TAG, "privacyDialogMap", th4);
        }
    }

    public String onGetCurrentAppId() {
        String str = this.appId;
        return str == null ? "" : str;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i11, KeyEvent keyEvent) {
        TmcFragment tmcFragmentFindFragmentForPage;
        IFragmentManager fragmentManager;
        TmcLogger.d("[MiniActivity]：onKeyUp()");
        if (keyEvent == null || keyEvent.getKeyCode() != 4 || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        if ((keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0) ? nativeComponentIntercept() : false) {
            return true;
        }
        App app = this.mActivityHelper.getApp();
        AppContext appContext = app != null ? app.getAppContext() : null;
        BaseAppContext baseAppContext = appContext instanceof BaseAppContext ? (BaseAppContext) appContext : null;
        if (baseAppContext == null || (fragmentManager = baseAppContext.getFragmentManager()) == null) {
            tmcFragmentFindFragmentForPage = null;
        } else {
            App app2 = this.mActivityHelper.getApp();
            tmcFragmentFindFragmentForPage = fragmentManager.findFragmentForPage(app2 != null ? app2.getActivePage() : null);
        }
        MiniAppBaseFragment miniAppBaseFragment = tmcFragmentFindFragmentForPage instanceof MiniAppBaseFragment ? (MiniAppBaseFragment) tmcFragmentFindFragmentForPage : null;
        if (miniAppBaseFragment != null && miniAppBaseFragment.shouldInterceptOnKeyDown()) {
            return true;
        }
        try {
            return this.mActivityHelper.onKeyUp(i11, keyEvent);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return false;
        }
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        startMiniApp(intent);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void onPackageLoadFailed(PrepareData prepareData, PrepareException prepareException) {
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void onPackageLoadSuccess() {
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        TmcLogger.d(TAG, "onPause: " + this.appId);
        this.mActivityHelper.onPause();
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.onPauseStopTimeStamp = jCurrentTimeMillis;
        long j11 = this.miniappResumeTimestamp;
        if (j11 == 0) {
            this.miniappForegroundTime = (jCurrentTimeMillis - this.miniappStartTime) + this.miniappForegroundTime;
        } else {
            this.miniappForegroundTime = (jCurrentTimeMillis - j11) + this.miniappForegroundTime;
        }
    }

    public void onPinForLaterClick(StatusLayout statusLayout) {
        PinForLaterExtensionKt.pinForLater(this);
        final String str = this.appId;
        if (str != null) {
            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.ui.c0
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppActivity.onPinForLaterClick$lambda$94$lambda$93(this.f23698a, str);
                }
            });
        }
    }

    @Override // com.cloud.tmc.kernel.proxy.renderprocess.IOnRenderProcessGoneProxy.Listener
    public void onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        App app;
        ActivityHelper activityHelper = this.mActivityHelper;
        TmcLogger.e("onRenderProcessGone", "miniappId=" + ((activityHelper == null || (app = activityHelper.getApp()) == null) ? null : app.getAppId()) + " is Destroy by onRenderProcessGone");
        MiniAppLaunch.INSTANCE.reportMiniAppLauncherFailedTrack(this.appId, "4");
        finishMiniActivity$default(this, TmcFragment.ExitType.CLOSE_APP, false, 2, null);
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        TmcLogger.d(TAG, "onResume: " + this.appId);
        String str = this.appId;
        if (str != null) {
            ((SessionUtilProxy) TmcProxy.get(SessionUtilProxy.class)).updateSession(str, this.isValidOnResume, false);
            this.isValidOnResume = true;
            TmcLogger.d(TAG, "onResume:checkTaskId:" + str);
            NewTaskManager.Companion companion = NewTaskManager.Companion;
            companion.getInstance().checkTaskId(str, getClass());
            String str2 = this.appId;
            if (str2 == null) {
                str2 = "";
            }
            if (companion.getInstance().checkUseSingleTaskMode(this.appId)) {
                str2 = this.rootTaskId;
            } else {
                str = "";
            }
            companion.getInstance().moveToForeground(str2, str);
            companion.getInstance().addActivityStack(this.appId);
        }
        this.mActivityHelper.onResume();
        try {
            OooO.OooO00o.OooO00o().OooO00o();
        } catch (Throwable th2) {
            TmcLogger.e("NormalTaskQueueUtils", "", th2);
        }
        PinForLaterExtensionKt.checkPinForLaterStatus(this, this.appId);
        this.miniappResumeTimestamp = System.currentTimeMillis();
        checkAddHomeTipStatus();
        statusLayoutOnResume();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        TmcLogger.d(TAG, "onSaveInstanceState" + this.appId);
        outState.putString(TmcConstants.EXTRA_APP_ID, this.appId);
        outState.putString("mode", this.mode);
        outState.putString("version", this.version);
        outState.putString(TmcConstants.EXTRA_APP_DEV_TOKEN, this.devToken);
        super.onSaveInstanceState(outState);
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        ForegroundTime foregroundTime;
        super.onStart();
        TmcLogger.d(TAG, "onStart: " + this.appId);
        ((OfflineAppProxy) TmcProxy.get(OfflineAppProxy.class)).addShortCutListener(this);
        App app = this.mActivityHelper.getApp();
        if (app == null || (foregroundTime = (ForegroundTime) app.getData(ForegroundTime.class)) == null) {
            return;
        }
        foregroundTime.setStartTime();
        foregroundTime.addStartCount();
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        Bundle sceneParams;
        Bundle startParams;
        ForegroundTime foregroundTime;
        super.onStop();
        this.mActivityHelper.onStop();
        App app = this.mActivityHelper.getApp();
        if (app != null && (foregroundTime = (ForegroundTime) app.getData(ForegroundTime.class)) != null) {
            try {
                ForegroundRangTime endTime = foregroundTime.setEndTime();
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                String str = this.appId;
                PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_MINIAPP_FOREGROUND_TIME;
                Bundle bundle = new Bundle();
                bundle.putString(PointConstants.POINT_FOREGROUND_RANDOM_ID, endTime.getForegroundRandomId());
                bundle.putLong(PointConstants.POINT_FOREGROUND_START_TIME, endTime.getStartTime());
                bundle.putLong(PointConstants.POINT_FOREGROUND_END_TIME, endTime.getEndTime());
                bundle.putLong(PointConstants.POINT_FOREGROUND_COST_TIME, endTime.getCostTime());
                bundle.putInt(PointConstants.POINT_FOREGROUND_START_COUNT, endTime.getForegroundStartCount());
                App app2 = this.mActivityHelper.getApp();
                String homePagePath = app2 != null ? app2.getHomePagePath() : null;
                if (homePagePath == null) {
                    homePagePath = "";
                }
                bundle.putString(PointConstants.POINT_PAGE_PATH, homePagePath);
                Unit unit = Unit.f67061a;
                performanceAnalyseProxy.record(str, pointAnalyseType, "", bundle);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "Failed to report foreground time", th2);
            }
        }
        App app3 = this.mActivityHelper.getApp();
        if (app3 != null && (startParams = app3.getStartParams()) != null) {
            startParams.remove(TmcConstants.EXTRA_OPEN_MC_SCENE);
        }
        App app4 = this.mActivityHelper.getApp();
        if (app4 != null && (sceneParams = app4.getSceneParams()) != null) {
            sceneParams.remove(TmcConstants.EXTRA_OPEN_MC_SCENE);
        }
        ((OfflineAppProxy) TmcProxy.get(OfflineAppProxy.class)).removeShortCutListener(this);
    }

    @Override // com.cloud.tmc.integration.proxy.UpdateLoadingStepListener
    public void onUpdateStep(LoadStepAction step) {
        Intrinsics.h(step, "step");
        updateStepProgress(step);
    }

    public final void reSendDelayPageEnterToWorker() {
        IFragmentManager fragmentManager;
        Set<TmcFragment> fragments;
        if (this.isResendH5PageStack.getAndSet(true)) {
            return;
        }
        App app = this.mActivityHelper.getApp();
        AppContext appContext = app != null ? app.getAppContext() : null;
        TmcAppContext tmcAppContext = appContext instanceof TmcAppContext ? (TmcAppContext) appContext : null;
        if (tmcAppContext == null || (fragmentManager = tmcAppContext.getFragmentManager()) == null || (fragments = fragmentManager.getFragments()) == null) {
            return;
        }
        int i11 = 0;
        for (Object obj : fragments) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            TmcFragment tmcFragment = (TmcFragment) obj;
            if (i11 == fragments.size() - 1) {
                return;
            }
            if (tmcFragment != null) {
                Intrinsics.g(tmcFragment, "tmcFragment");
                if (tmcFragment instanceof MiniH5Fragment) {
                    MiniH5Fragment miniH5Fragment = (MiniH5Fragment) tmcFragment;
                    if (!miniH5Fragment.isSendPageEnter()) {
                        miniH5Fragment.setSendPageEnter(true);
                        MiniAppBaseFragment miniAppBaseFragment = tmcFragment instanceof MiniAppBaseFragment ? (MiniAppBaseFragment) tmcFragment : null;
                        if (miniAppBaseFragment != null) {
                            MiniAppBaseFragment.sendPageEnterToWorker$default(miniAppBaseFragment, null, 1, null);
                        }
                    }
                }
            }
            i11 = i12;
        }
    }

    public final void refresh() {
        try {
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.appId, PointAnalyseType.POINT_REFRESH, "");
            getDialog().dismiss();
            refreshApp();
        } catch (Throwable th2) {
            TmcLogger.e("refresh fail!!,msg:" + th2);
        }
    }

    public final void refreshApp() {
        MiniAppConfigModel miniAppConfigModel;
        List<String> list;
        TmcLogger.d(TAG, "Refresh app...");
        try {
            App app = this.mActivityHelper.getApp();
            AppLoadResult appLoadResult = (AppLoadResult) BundleUtils.getParcelable(app != null ? app.getSceneParams() : null, TmcConstants.EXTRA_APP_LOAD_RESULT);
            String str = (appLoadResult == null || (miniAppConfigModel = appLoadResult.appConfigModel) == null || (list = miniAppConfigModel.pages) == null) ? null : (String) CollectionsKt.k0(list);
            Bundle startParams = app != null ? app.getStartParams() : null;
            Bundle sceneParams = app != null ? app.getSceneParams() : null;
            if (str != null && str.length() != 0 && startParams != null && sceneParams != null) {
                app.putRouteType(str, "reLaunch");
                sceneParams.putString("navigationType", "refreshApp");
                app.relaunchToUrl(str, startParams, sceneParams);
                return;
            }
            TmcLogger.d(TAG, "refreshApp null");
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "Refresh fail!", th2);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void refreshAppInfo(AppModel appModelNew) {
        Intrinsics.h(appModelNew, "appModelNew");
        TmcLogger.d(TAG, "refreshAppInfo: miniappStartTime: " + this.miniappStartTime + " appModelNew: " + appModelNew);
        if (this.miniappStartTime != 0) {
            dispatchOnCheckForUpdateListener();
        } else {
            getMShowCompleteTaskQueue().OooO00o(new com.cloud.tmc.miniapp.task.OooO00o("onCheckForUpdate", new Runnable() { // from class: com.cloud.tmc.miniapp.ui.q
                @Override // java.lang.Runnable
                public final void run() {
                    MiniAppActivity.refreshAppInfo$lambda$34(this.f23783a);
                }
            }));
        }
    }

    public final void reload(final boolean z10, final Bundle bundle) {
        IFragmentManager fragmentManager;
        Set<TmcFragment> fragments;
        try {
            this.mActivityHelper.reportFailureClickReloadButton();
            App app = this.mActivityHelper.getApp();
            if (app != null) {
                app.updateHideMiniappLoadingStatus(false);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
        App app2 = this.mActivityHelper.getApp();
        AppContext appContext = app2 != null ? app2.getAppContext() : null;
        TmcAppContext tmcAppContext = appContext instanceof TmcAppContext ? (TmcAppContext) appContext : null;
        if (tmcAppContext != null && (fragmentManager = tmcAppContext.getFragmentManager()) != null && (fragments = fragmentManager.getFragments()) != null) {
            Iterator<T> it = fragments.iterator();
            while (it.hasNext()) {
                ((TmcFragment) it.next()).setExitType(TmcFragment.ExitType.REFRESH);
            }
        }
        runOnUiThread(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.u
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.reload$lambda$25(this.f23796a, bundle, z10);
            }
        });
    }

    public final void removeBottomDialogMenu(String id2) {
        Intrinsics.h(id2, "id");
        getDialog().OooO00o(id2);
    }

    public final void restoreBottomDialogMenu(String id2) {
        Intrinsics.h(id2, "id");
        OooOOO0 dialog = getDialog();
        dialog.getClass();
        Intrinsics.h(id2, "id");
        for (Map.Entry<Integer, BottomDialog$MenuItem> entry : dialog.OooO.entrySet()) {
            if (Intrinsics.c(entry.getValue().getId(), id2)) {
                com.cloud.tmc.miniapp.dialog.OooOOO oooOOO = dialog.OooO0o;
                Integer key = entry.getKey();
                Intrinsics.g(key, "it.key");
                int iIntValue = key.intValue();
                BottomDialog$MenuItem value = entry.getValue();
                Intrinsics.g(value, "it.value");
                oooOOO.addItem(iIntValue, value);
                dialog.OooO.remove(entry.getKey());
                return;
            }
        }
    }

    public final void setAppId(String str) {
        this.appId = str;
    }

    public final void setController(PrepareController prepareController) {
        this.controller = prepareController;
    }

    public final void setCurrentDelayTime(long j11) {
        this.currentDelayTime = j11;
    }

    public final void setDelayShowError(boolean z10) {
        this.delayShowError = z10;
    }

    public final void setDevToken(String str) {
        this.devToken = str;
    }

    public final void setEnableQuickMode(boolean z10) {
        this.enableQuickMode = z10;
    }

    public final void setErrorException(PrepareException prepareException) {
        this.errorException = prepareException;
    }

    public final void setFirstLaunch(boolean z10) {
        this.isFirstLaunch = z10;
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void setLoadingProgressConfig(LoadingTextView.LoadingAnimationModel loadingAnimationModel) {
        StatusAction.DefaultImpls.setLoadingProgressConfig(this, loadingAnimationModel);
    }

    public final void setMiniappForegroundTime(long j11) {
        this.miniappForegroundTime = j11;
    }

    public final void setMiniappResumeTimestamp(long j11) {
        this.miniappResumeTimestamp = j11;
    }

    public final void setMiniappStartTime(long j11) {
        this.miniappStartTime = j11;
    }

    public final void setMode(String str) {
        this.mode = str;
    }

    public final void setMsgAppName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.msgAppName = str;
    }

    public final void setOnPauseStopTimeStamp(long j11) {
        this.onPauseStopTimeStamp = j11;
    }

    public final void setPrepareContext(PrepareContext prepareContext) {
        this.prepareContext = prepareContext;
    }

    public final void setQuickModeController(PrepareController prepareController) {
        this.quickModeController = prepareController;
    }

    public final void setQuickModeStartStatus(boolean z10) {
        this.quickModeStartStatus = z10;
    }

    public final void setRootTaskId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.rootTaskId = str;
    }

    public final void setSceneId(String str) {
        this.sceneId = str;
    }

    public final void setTempAppLogo(String str) {
        Intrinsics.h(str, "<set-?>");
        this.tempAppLogo = str;
    }

    public final void setTempAppName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.tempAppName = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public final void showAddHomeTipsDialog(int i11) {
        MiniAddHomeTipDialogView addHomeDialogView;
        String appId = this.appId;
        if (appId == null || (addHomeDialogView = getAddHomeDialogView()) == null) {
            return;
        }
        Intrinsics.h(appId, "appId");
        addHomeDialogView.OooOOO0 = i11;
        Context context = addHomeDialogView.getContext();
        Intrinsics.g(context, "context");
        addHomeDialogView.OooO00o(context, appId, false);
        Context context2 = addHomeDialogView.getContext();
        Intrinsics.g(context2, "context");
        addHomeDialogView.OooO0O0(context2, appId);
        addHomeDialogView.startAnimation(AnimationUtils.loadAnimation(addHomeDialogView.getContext(), R.anim.mini_view_toast_enter));
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForCommon(appId, "quit_pop_ex", new Bundle());
        ViewExtKt.toVisible(addHomeDialogView);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public boolean showComplete() {
        return StatusAction.DefaultImpls.showComplete(this);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showCustomErrorLayout(String str, String str2, String str3, StatusLayout.OooO0O0 oooO0O0, String str4, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showCustomErrorLayout(this, str, str2, str3, oooO0O0, str4, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showError(StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showError(this, oooO0O0, i11, str, str2, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showErrorLayout(int i11, int i12, int i13, StatusLayout.OooO0O0 oooO0O0, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, i11, i12, i13, oooO0O0, z10, z11, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showErrorLayout(int i11, int i12, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, i11, i12, oooO0O0, str, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showErrorLayout(Drawable drawable, CharSequence charSequence, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, drawable, charSequence, oooO0O0, str, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showErrorLayout(Drawable drawable, CharSequence charSequence, CharSequence charSequence2, StatusLayout.OooO0O0 oooO0O0, String str, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, drawable, charSequence, charSequence2, oooO0O0, str, z10, z11, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showLoading() {
        StatusAction.DefaultImpls.showLoading(this);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showLoadingLogo(String str, String str2) {
        StatusAction.DefaultImpls.showLoadingLogo(this, str, str2);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void showLoadingView(final EntryInfo entryInfo) {
        getHandler().post(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.y
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.showLoadingView$lambda$44(entryInfo, this);
            }
        });
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showMainLayoutAlpha(float f11) {
        StatusAction.DefaultImpls.showMainLayoutAlpha(this, f11);
    }

    public final void showMsgBubbleToast() {
        post(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.d0
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.showMsgBubbleToast$lambda$70(this.f23703a);
            }
        });
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showNoNetwork(StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showNoNetwork(this, oooO0O0, i11, str, str2, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showPhotoEmpty(int i11, int i12, StatusLayout.OooO0O0 oooO0O0) {
        StatusAction.DefaultImpls.showPhotoEmpty(this, i11, i12, oooO0O0);
    }

    public final void showPopUpWindowRunnable(long j11) {
        Runnable runnable = this.showPopUpWindowRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.cloud.tmc.miniapp.ui.g
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.showPopUpWindowRunnable$lambda$72(this.f23736a);
            }
        };
        this.showPopUpWindowRunnable = runnable2;
        postDelayed(runnable2, j11);
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void showStatusLoading() {
        getHandler().post(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.z
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.showStatusLoading$lambda$0(this.f23814a);
            }
        });
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void showTaskDescription(String str, String str2) {
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showUnstableNetwork(StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showUnstableNetwork(this, oooO0O0, i11, str, str2, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void showUpgradeHintPrompt(String str) {
        showUpgradeHintView(str, getViewThemeMode());
    }

    @Override // com.cloud.tmc.miniapp.action.VersionUpdateAction
    public void showUpgradeHintView(String str, Integer num) {
        VersionUpdateAction.DefaultImpls.showUpgradeHintView(this, str, num);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void startApp(final Intent intent) {
        TmcLogger.d(TAG, TmcStartParams.START_SCENE_START_APP);
        runOnUiThread(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.l
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.startApp$lambda$29(this.f23761a, intent);
            }
        });
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void startAsyncApp(Intent intent) {
        TmcLogger.d(TAG, TmcConstants.NAVIGATION_START_ASYNC_APP);
        try {
            App app = this.mActivityHelper.getApp();
            if (app != null) {
                StartClientBundle startClientBundle = (StartClientBundle) BundleUtils.getParcelable(intent != null ? intent.getExtras() : null, TmcConstants.EXTRA_START_BUNDLE);
                AppModel appModel = (AppModel) BundleUtils.getParcelable(intent != null ? intent.getExtras() : null, TmcConstants.EXTRA_START_APP_MODEL);
                if (appModel != null) {
                    app.updateAppModel(appModel);
                }
                final AppNode appNode = app instanceof AppNode ? (AppNode) app : null;
                if (appNode != null) {
                    TmcLogger.d(TAG, "startAsyncApp success");
                    appNode.setAsyncLaunchStatus(true);
                    appNode.setmStartParams(startClientBundle.startParams);
                    appNode.setmSceneParams(startClientBundle.sceneParams);
                    AppLoadResult appLoadResult = (AppLoadResult) BundleUtils.getParcelable(startClientBundle.sceneParams, TmcConstants.EXTRA_APP_LOAD_RESULT);
                    appNode.setmAppLoadResult(appLoadResult);
                    app.setData(AppLoadResult.class, appLoadResult);
                    String backToPagePath = appNode.getBackToPagePath();
                    Intrinsics.g(backToPagePath, "appNode.backToPagePath");
                    if (backToPagePath.length() > 0) {
                        getHandler().post(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.i
                            @Override // java.lang.Runnable
                            public final void run() {
                                MiniAppActivity.startAsyncApp$lambda$33$lambda$32$lambda$31(appNode);
                            }
                        });
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, TmcConstants.NAVIGATION_START_ASYNC_APP, th2);
        }
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void statusLayoutCreateShortCutsSuccess(String str, Function3<? super String, ? super String, ? super String, Unit> function3) {
        StatusAction.DefaultImpls.statusLayoutCreateShortCutsSuccess(this, str, function3);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void statusLayoutOnResume() {
        StatusAction.DefaultImpls.statusLayoutOnResume(this);
    }

    public final void swipeBack(TmcFragment mFragment) {
        AlertBeforeUnloadCache alertBeforeUnloadCache;
        Intrinsics.h(mFragment, "mFragment");
        Page page = mFragment.getPage();
        if (page == null || (alertBeforeUnloadCache = (AlertBeforeUnloadCache) page.getData(AlertBeforeUnloadCache.class)) == null) {
            return;
        }
        alertBeforeUnloadCache.setEnabled(false);
        goBack();
    }

    public final void updateBottomDialogMenu(BottomDialog$MenuItem data) {
        Intrinsics.h(data, "data");
        OooOOO0 dialog = getDialog();
        dialog.getClass();
        Intrinsics.h(data, "data");
        Iterator<T> it = dialog.OooO0o.getData().iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            }
            Object next = it.next();
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(((BottomDialog$MenuItem) next).getId(), data.getId())) {
                break;
            } else {
                i11 = i12;
            }
        }
        if (i11 != -1) {
            BottomDialog$MenuItem item = dialog.OooO0o.getItem(i11);
            item.setIcon(data.getIcon());
            item.setName(data.getName());
            dialog.OooO0o.notifyItemChanged(i11);
        }
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void updateStepAnimation(LoadStepAction loadStepAction) {
        StatusAction.DefaultImpls.updateStepAnimation(this, loadStepAction);
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.OooOo
    public void updateStepProgress(final LoadStepAction step) {
        Intrinsics.h(step, "step");
        getHandler().post(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.e0
            @Override // java.lang.Runnable
            public final void run() {
                MiniAppActivity.updateStepProgress$lambda$26(this.f23706a, step);
            }
        });
    }
}
