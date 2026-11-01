package com.cloud.tmc.miniapp.widget.popupview;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.ActivityHelper;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.MiniAppAutoPopover;
import com.cloud.tmc.integration.model.MiniAppMultiLanguageConfig;
import com.cloud.tmc.integration.model.MiniAppMultiLanguageModel;
import com.cloud.tmc.integration.proxy.StartActivityProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.integration.utils.AddHomeToScreenUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.CreateShortCutUtils;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.integration.utils.PopWindowManager;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ui.MiniAppActivity;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class MiniAddHomeTipDialogView extends FrameLayout {
    public static final /* synthetic */ int OooOOOo = 0;
    public final String OooO;
    public final Lazy OooO00o;
    public final Lazy OooO0O0;
    public final Lazy OooO0OO;
    public final Lazy OooO0Oo;
    public final Lazy OooO0o;
    public final Lazy OooO0o0;
    public final String OooO0oO;
    public final String OooO0oo;
    public MiniAppAutoPopover OooOO0;
    public boolean OooOO0O;
    public long OooOO0o;
    public String OooOOO;
    public int OooOOO0;
    public final OooO0OO OooOOOO;

    public static final class OooO extends Lambda implements Function0<TextView> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) MiniAddHomeTipDialogView.this.findViewById(R.id.tv_add_home_now_btn);
        }
    }

    public static final class OooO00o extends Lambda implements Function0<ImageView> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ImageView) MiniAddHomeTipDialogView.this.findViewById(R.id.iv_add_home_tip_close);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<AppCompatImageView> {
        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) MiniAddHomeTipDialogView.this.findViewById(R.id.iv_dialog_mini_app_logo);
        }
    }

    public static final class OooO0OO implements PopWindowManager.IPopWindowManagerController {
        public final /* synthetic */ Context OooO00o;
        public final /* synthetic */ MiniAddHomeTipDialogView OooO0O0;

        public OooO0OO(Context context, MiniAddHomeTipDialogView miniAddHomeTipDialogView) {
            this.OooO00o = context;
            this.OooO0O0 = miniAddHomeTipDialogView;
        }

        @Override // com.cloud.tmc.integration.utils.PopWindowManager.IPopWindowManagerController
        public void onRefresh(PopWindowManager.PopWindowData bean) {
            Intrinsics.h(bean, "bean");
            Context context = this.OooO00o;
            MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
            if (miniAppActivity == null) {
                return;
            }
            TmcLogger.d(this.OooO0O0.OooO0oO, "onRefresh:" + (System.currentTimeMillis() - miniAppActivity.getMiniappStartTime()));
            miniAppActivity.showPopUpWindowRunnable(bean.getDelayTime() - (System.currentTimeMillis() - miniAppActivity.getMiniappStartTime()));
        }

        @Override // com.cloud.tmc.integration.utils.PopWindowManager.IPopWindowManagerController
        public void show(String appId) {
            Long delayDuration;
            Intrinsics.h(appId, "appId");
            Context context = this.OooO00o;
            MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
            if (miniAppActivity == null) {
                return;
            }
            TmcLogger.d(this.OooO0O0.OooO0oO, "showAddHomeTipDialogController");
            CreateShortCutUtils createShortCutUtils = CreateShortCutUtils.INSTANCE;
            if (createShortCutUtils.getAddHomeStatus(this.OooO00o, appId)) {
                return;
            }
            try {
                MiniAppAutoPopover mMiniAppAutoPopover = this.OooO0O0.getMMiniAppAutoPopover();
                long jLongValue = (mMiniAppAutoPopover == null || (delayDuration = mMiniAppAutoPopover.getDelayDuration()) == null) ? MBInterstitialActivity.WEB_LOAD_TIME : delayDuration.longValue();
                long jCurrentTimeMillis = miniAppActivity.getMiniappResumeTimestamp() > miniAppActivity.getOnPauseStopTimeStamp() ? (System.currentTimeMillis() - miniAppActivity.getMiniappResumeTimestamp()) + miniAppActivity.getMiniappForegroundTime() : miniAppActivity.getMiniappForegroundTime();
                TmcLogger.d(this.OooO0O0.OooO0oO, "currentForegroundTime:->" + jCurrentTimeMillis);
                if (!miniAppActivity.getResumed()) {
                    this.OooO0O0.setShowAddHomeDialogStatus(true);
                    this.OooO0O0.setShowAddHomeDialogDelayTime(((System.currentTimeMillis() - miniAppActivity.getMiniappStartTime()) + jLongValue) - jCurrentTimeMillis);
                    return;
                }
                if (jCurrentTimeMillis <= jLongValue) {
                    MiniAddHomeTipDialogView miniAddHomeTipDialogView = this.OooO0O0;
                    miniAddHomeTipDialogView.OooO00o(appId, miniAddHomeTipDialogView.getMMiniAppAutoPopover(), ((System.currentTimeMillis() - miniAppActivity.getMiniappStartTime()) + jLongValue) - jCurrentTimeMillis);
                    return;
                }
                AddHomeToScreenUtils addHomeToScreenUtils = AddHomeToScreenUtils.INSTANCE;
                ActivityHelper mActivityHelper = miniAppActivity.getMActivityHelper();
                if (addHomeToScreenUtils.checkAddhomeShowStatus(83, mActivityHelper != null ? mActivityHelper.getApp() : null)) {
                    TmcLogger.d(this.OooO0O0.OooO0oO, "not allow show ,return ");
                    return;
                }
                App app = miniAppActivity.getMActivityHelper().getApp();
                if (app != null) {
                    app.getBackPressedProcessor().addInterceptors(new com.cloud.tmc.miniapp.utils.intercept.OooO00o());
                    createShortCutUtils.getAppMap().put(appId, app);
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO0O0.OooO0oO, th2);
            }
        }
    }

    public static final class OooO0o extends Lambda implements Function0<TextView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) MiniAddHomeTipDialogView.this.findViewById(R.id.tv_add_home_later_btn);
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<TextView> {
        public OooOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) MiniAddHomeTipDialogView.this.findViewById(R.id.tv_dialog_content_info);
        }
    }

    public static final class OooOO0O extends Lambda implements Function0<TextView> {
        public OooOO0O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) MiniAddHomeTipDialogView.this.findViewById(R.id.tv_dialog_mini_app_name);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public MiniAddHomeTipDialogView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MiniAddHomeTipDialogView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.OooO00o = LazyKt.b(new OooOO0());
        this.OooO0O0 = LazyKt.b(new OooO0O0());
        this.OooO0OO = LazyKt.b(new OooOO0O());
        this.OooO0Oo = LazyKt.b(new OooO());
        this.OooO0o0 = LazyKt.b(new OooO0o());
        this.OooO0o = LazyKt.b(new OooO00o());
        this.OooO0oO = "MiniAddHomeTipDialog";
        this.OooO0oo = "key_latest_show_add_home_dialog_time";
        this.OooO = "key_show_add_home_dialog_num";
        LayoutInflater.from(context).inflate(R.layout.mini_dialog_addhome_tip_layout, this);
        TextView tvAddHomeNowBtn = getTvAddHomeNowBtn();
        if (tvAddHomeNowBtn != null) {
            tvAddHomeNowBtn.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.popupview.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MiniAddHomeTipDialogView.OooO00o(this.f23907a, view);
                }
            });
        }
        setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.popupview.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MiniAddHomeTipDialogView.OooO0O0(this.f23908a, view);
            }
        });
        TextView tvAddHomeLaterBtn = getTvAddHomeLaterBtn();
        if (tvAddHomeLaterBtn != null) {
            tvAddHomeLaterBtn.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.popupview.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MiniAddHomeTipDialogView.OooO0OO(this.f23909a, view);
                }
            });
        }
        ImageView ivAddHomeTipClose = getIvAddHomeTipClose();
        if (ivAddHomeTipClose != null) {
            ivAddHomeTipClose.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.popupview.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MiniAddHomeTipDialogView.OooO0Oo(this.f23910a, view);
                }
            });
        }
        this.OooOOOO = new OooO0OO(context, this);
    }

    public /* synthetic */ MiniAddHomeTipDialogView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    public static final void OooO00o(MiniAddHomeTipDialogView this$0, View view) {
        ActivityHelper mActivityHelper;
        App app;
        Intrinsics.h(this$0, "this$0");
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        Context context = this$0.getContext();
        MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
        if (miniAppActivity != null && (mActivityHelper = miniAppActivity.getMActivityHelper()) != null && (app = mActivityHelper.getApp()) != null) {
            Context context2 = this$0.getContext();
            Intrinsics.g(context2, "getContext()");
            Class<?> launcherShortCutActivity = ((StartActivityProxy) TmcProxy.get(StartActivityProxy.class)).getLauncherShortCutActivity();
            Intrinsics.g(launcherShortCutActivity, "get(StartActivityProxy::….launcherShortCutActivity");
            CreateShortCutUtils.createShortcut$default(context2, launcherShortCutActivity, app, "12", this$0.OooOOO0, false, false, 96, null);
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            String appId = app.getAppId();
            Bundle bundle = new Bundle();
            bundle.putString(RequestParameters.SUBRESOURCE_LOCATION, "12");
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.recordForCommon(appId, "quit_pop_click", bundle);
        }
        this$0.OooO00o(true);
    }

    public static final void OooO0O0(MiniAddHomeTipDialogView this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        TmcLogger.d(this$0.OooO0oO, "");
    }

    public static final void OooO0OO(MiniAddHomeTipDialogView this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        this$0.OooO00o(true);
    }

    public static final void OooO0Oo(MiniAddHomeTipDialogView this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        this$0.OooO00o(false);
    }

    private final ImageView getIvAddHomeTipClose() {
        return (ImageView) this.OooO0o.getValue();
    }

    private final ImageView getIvDialogMiniAppLogo() {
        return (ImageView) this.OooO0O0.getValue();
    }

    private final TextView getTvAddHomeLaterBtn() {
        return (TextView) this.OooO0o0.getValue();
    }

    private final TextView getTvAddHomeNowBtn() {
        return (TextView) this.OooO0Oo.getValue();
    }

    private final TextView getTvDialogContentInfo() {
        return (TextView) this.OooO00o.getValue();
    }

    private final TextView getTvDialogMiniAppName() {
        return (TextView) this.OooO0OO.getValue();
    }

    private final void setLogoResource(String str) {
        ImageView ivDialogMiniAppLogo;
        if (str != null) {
            try {
                if (str.length() == 0 || (ivDialogMiniAppLogo = getIvDialogMiniAppLogo()) == null) {
                    return;
                }
                ((ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class)).loadImg(getContext(), str, ivDialogMiniAppLogo);
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO0oO, th2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00bf  */
    private final void setTitleInfo(MiniAppMultiLanguageConfig miniAppMultiLanguageConfig) {
        MiniAppMultiLanguageModel en2;
        String title;
        MiniAppMultiLanguageModel id2;
        MiniAppMultiLanguageModel ru2;
        MiniAppMultiLanguageModel ar2;
        MiniAppMultiLanguageModel fr2;
        MiniAppMultiLanguageModel en3;
        MiniAppMultiLanguageModel zh2;
        try {
            String language = Locale.getDefault().getLanguage();
            if (Intrinsics.c(language, Locale.CHINESE.getLanguage())) {
                if (miniAppMultiLanguageConfig == null || (zh2 = miniAppMultiLanguageConfig.getZh()) == null) {
                    title = null;
                } else {
                    title = zh2.getTitle();
                }
            } else if (Intrinsics.c(language, Locale.ENGLISH.getLanguage())) {
                if (miniAppMultiLanguageConfig == null || (en3 = miniAppMultiLanguageConfig.getEn()) == null) {
                    title = null;
                } else {
                    title = en3.getTitle();
                }
            } else if (Intrinsics.c(language, Locale.FRANCE.getLanguage())) {
                if (miniAppMultiLanguageConfig == null || (fr2 = miniAppMultiLanguageConfig.getFr()) == null) {
                    title = null;
                } else {
                    title = fr2.getTitle();
                }
            } else if (Intrinsics.c(language, new Locale("ar").getLanguage())) {
                if (miniAppMultiLanguageConfig == null || (ar2 = miniAppMultiLanguageConfig.getAr()) == null) {
                    title = null;
                } else {
                    title = ar2.getTitle();
                }
            } else if (Intrinsics.c(language, new Locale("ru").getLanguage())) {
                if (miniAppMultiLanguageConfig == null || (ru2 = miniAppMultiLanguageConfig.getRu()) == null) {
                    title = null;
                } else {
                    title = ru2.getTitle();
                }
            } else if (Intrinsics.c(language, new Locale("in").getLanguage())) {
                if (miniAppMultiLanguageConfig == null || (id2 = miniAppMultiLanguageConfig.getId()) == null) {
                    title = null;
                } else {
                    title = id2.getTitle();
                }
            } else if (miniAppMultiLanguageConfig == null || (en2 = miniAppMultiLanguageConfig.getEn()) == null) {
                title = null;
            } else {
                title = en2.getTitle();
            }
            String string = getContext().getString(R.string.mini_add_home_tips_default);
            Intrinsics.g(string, "getContext().getString(R…ni_add_home_tips_default)");
            String strOrDefaultAndCheckEmpty = StringExtKt.orDefaultAndCheckEmpty(title, string);
            TmcLogger.d(this.OooO0oO, "setAddHomeBtnInfo: " + strOrDefaultAndCheckEmpty);
            TextView tvDialogContentInfo = getTvDialogContentInfo();
            if (tvDialogContentInfo == null) {
                return;
            }
            tvDialogContentInfo.setText(strOrDefaultAndCheckEmpty);
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO0oO, th2);
        }
    }

    public final int OooO00o(Context context, String str) {
        return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getInt(context, TmcConstants.KEY_MINIAPP_ADD_HOME_TOAST_DATA, this.OooO + "_" + str);
    }

    public final void OooO00o(Context context, String str, boolean z10) {
        if (z10) {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(context, TmcConstants.KEY_MINIAPP_ADD_HOME_TOAST_DATA, this.OooO + "_" + str, 0);
            return;
        }
        int iOooO00o = OooO00o(context, str);
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(context, TmcConstants.KEY_MINIAPP_ADD_HOME_TOAST_DATA, this.OooO + "_" + str, iOooO00o + 1);
    }

    public final void OooO00o(String it, MiniAppAutoPopover miniAppAutoPopover, long j11) {
        Long delayDuration;
        Intrinsics.h(it, "it");
        Context context = getContext();
        MiniAppActivity miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
        if (miniAppActivity == null) {
            return;
        }
        Context context2 = getContext();
        Intrinsics.g(context2, "context");
        if (OooO00o(context2, it, miniAppAutoPopover)) {
            TmcLogger.d(this.OooO0oO, "showAddHomeDialog");
            App app = miniAppActivity.getMActivityHelper().getApp();
            AppModel appModel = app != null ? app.getAppModel() : null;
            if (miniAppAutoPopover != null) {
                this.OooOO0 = miniAppAutoPopover;
                setTitleInfo(miniAppAutoPopover.getConfigs());
            }
            if (appModel != null) {
                this.OooOOO = appModel.getAppId();
                setLogoResource(appModel.getLogo());
                TextView tvDialogMiniAppName = getTvDialogMiniAppName();
                if (tvDialogMiniAppName != null) {
                    tvDialogMiniAppName.setText(appModel.getName());
                }
            }
            PopWindowManager popWindowManager = PopWindowManager.INSTANCE;
            String miniAppPopWindowToken = miniAppActivity.getMiniAppPopWindowToken();
            if (j11 == 0) {
                j11 = (miniAppAutoPopover == null || (delayDuration = miniAppAutoPopover.getDelayDuration()) == null) ? 45000L : delayDuration.longValue();
            }
            popWindowManager.addPopWindow(miniAppPopWindowToken, new PopWindowManager.PopWindowData(it, j11, 1, this.OooOOOO, true));
        }
    }

    public final void OooO00o(boolean z10) {
        MiniAppActivity miniAppActivity;
        try {
            if (!ViewExtKt.getVisible(this)) {
                TmcLogger.d(this.OooO0oO, "hideDialog: not visible");
                return;
            }
            if (z10) {
                int i11 = this.OooOOO0;
                if (i11 == 2) {
                    Context context = getContext();
                    miniAppActivity = context instanceof MiniAppActivity ? (MiniAppActivity) context : null;
                    if (miniAppActivity != null) {
                        miniAppActivity.finishMiniActivity(TmcFragment.ExitType.CLOSE_APP, false);
                    }
                } else if (i11 == 1) {
                    Context context2 = getContext();
                    miniAppActivity = context2 instanceof MiniAppActivity ? (MiniAppActivity) context2 : null;
                    if (miniAppActivity != null) {
                        miniAppActivity.goBack();
                    }
                }
            }
            this.OooOOO0 = 0;
            startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.mini_view_toast_exit));
            ViewExtKt.toGone(this);
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO0oO, th2);
        }
    }

    public final boolean OooO00o(Context context, String appId, MiniAppAutoPopover miniAppAutoPopover) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        if (miniAppAutoPopover != null) {
            try {
                if (!Intrinsics.c(miniAppAutoPopover.getStatus(), Boolean.FALSE)) {
                    if (!MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_ADD_HOME_CUSTOM_BACK_TIP, true)) {
                        TmcLogger.d(this.OooO0oO, "checkAddHomeDialogTipIsNeedShow: backDialogEnable is false");
                        return false;
                    }
                    if (AppUtils.INSTANCE.queryShortcutExist(context, appId)) {
                        TmcLogger.d(this.OooO0oO, "checkAddHomeDialogTipIsNeedShow addhomeStatus is true");
                        return false;
                    }
                    long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, TmcConstants.KEY_MINIAPP_ADD_HOME_TOAST_DATA, this.OooO0oo + "_" + appId);
                    Integer perXDay = miniAppAutoPopover.getPerXDay();
                    long jIntValue = ((long) ((perXDay != null ? perXDay.intValue() : 1) * 86400)) * 1000;
                    int iOooO00o = OooO00o(context, appId);
                    if (System.currentTimeMillis() - j11 > jIntValue) {
                        OooO00o(context, appId, true);
                    } else {
                        Integer displayFrequency = miniAppAutoPopover.getDisplayFrequency();
                        if (iOooO00o >= (displayFrequency != null ? displayFrequency.intValue() : 1)) {
                            String str = this.OooO0oO;
                            Integer displayFrequency2 = miniAppAutoPopover.getDisplayFrequency();
                            TmcLogger.d(str, "checkAddHomeDialogTipIsNeedShow showNum is " + iOooO00o + " >=" + (displayFrequency2 != null ? displayFrequency2.intValue() : 1));
                            return false;
                        }
                    }
                    return true;
                }
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO0oO, "checkAddHomeTopTipIsNeedShow error", th2);
                return true;
            }
        }
        TmcLogger.d(this.OooO0oO, "checkAddHomeDialogTipIsNeedShow: bean is null or status is false");
        return false;
    }

    public final void OooO0O0(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, TmcConstants.KEY_MINIAPP_ADD_HOME_TOAST_DATA, this.OooO0oo + "_" + appId, System.currentTimeMillis());
    }

    public final String getAppId() {
        return this.OooOOO;
    }

    public final int getBackFromType() {
        return this.OooOOO0;
    }

    public final MiniAppAutoPopover getMMiniAppAutoPopover() {
        return this.OooOO0;
    }

    public final long getShowAddHomeDialogDelayTime() {
        return this.OooOO0o;
    }

    public final boolean getShowAddHomeDialogStatus() {
        return this.OooOO0O;
    }

    public final void setAppId(String str) {
        this.OooOOO = str;
    }

    public final void setBackFromType(int i11) {
        this.OooOOO0 = i11;
    }

    public final void setMMiniAppAutoPopover(MiniAppAutoPopover miniAppAutoPopover) {
        this.OooOO0 = miniAppAutoPopover;
    }

    public final void setShowAddHomeDialogDelayTime(long j11) {
        this.OooOO0o = j11;
    }

    public final void setShowAddHomeDialogStatus(boolean z10) {
        this.OooOO0O = z10;
    }
}
