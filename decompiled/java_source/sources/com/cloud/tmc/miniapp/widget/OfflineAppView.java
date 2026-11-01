package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cloud.tmc.integration.model.MiniAppCenterInfoData;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.io.File;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineAppView extends LinearLayout {
    public String OooO;
    public final String OooO00o;
    public ImageView OooO0O0;
    public TextView OooO0OO;
    public TextView OooO0Oo;
    public String OooO0o;
    public boolean OooO0o0;
    public String OooO0oO;
    public String OooO0oo;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public OfflineAppView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public OfflineAppView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public OfflineAppView(final Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.OooO00o = "OfflineAppExtension";
        this.OooO0o = "";
        this.OooO0oO = "";
        this.OooO0oo = "";
        this.OooO = "";
        LayoutInflater.from(context).inflate(R.layout.mini_view_offlineapp, this);
        View viewFindViewById = findViewById(R.id.iv_icon);
        Intrinsics.g(viewFindViewById, "findViewById(R.id.iv_icon)");
        this.OooO0O0 = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.tv_name);
        Intrinsics.g(viewFindViewById2, "findViewById(R.id.tv_name)");
        this.OooO0OO = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.tv_button);
        Intrinsics.g(viewFindViewById3, "findViewById(R.id.tv_button)");
        this.OooO0Oo = (TextView) viewFindViewById3;
        try {
            this.OooO0O0.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OfflineAppView.OooO00o(this.f23879a, context, view);
                }
            });
            this.OooO0Oo.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OfflineAppView.OooO0O0(this.f23881a, context, view);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, "init fail:", th2);
        }
    }

    public /* synthetic */ OfflineAppView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    public static final void OooO00o(OfflineAppView this$0) {
        Intrinsics.h(this$0, "this$0");
        ((ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class)).loadImgRoundCorners(this$0.getContext(), new File(this$0.OooO), this$0.OooO0O0, SizeUtils.dp2px(12.0f), R.drawable.mini_icon_placeholder);
    }

    public static final void OooO00o(OfflineAppView this$0, Context context, View view) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(context, "$context");
        if (TextUtils.isEmpty(this$0.OooO0o)) {
            return;
        }
        Bundle bundle = new Bundle();
        if (this$0.OooO0o0) {
            bundle.putString("mfah", "1");
        }
        ByteAppManager.launchMiniAppForId(context, this$0.OooO0o, "120011", bundle);
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_LATER_OFFLINE_CLICK;
        Bundle bundle2 = new Bundle();
        bundle2.putString(NativeComponentConstants.KEY_COMPONENT_TYPE, RewardPlus.ICON);
        bundle2.putString("miniappid", this$0.OooO0o);
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.record("", pointAnalyseType, "", bundle2);
    }

    public static final void OooO0O0(OfflineAppView this$0, Context context, View view) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(context, "$context");
        if (TextUtils.isEmpty(this$0.OooO0o)) {
            return;
        }
        if (!this$0.OooO0o0) {
            ByteAppManager.launchMiniAppForId$default(context, this$0.OooO0o, "120011", null, 8, null);
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            PointAnalyseType pointAnalyseType = PointAnalyseType.POINT_LATER_OFFLINE_CLICK;
            Bundle bundle = new Bundle();
            bundle.putString(NativeComponentConstants.KEY_COMPONENT_TYPE, MRAIDPresenter.OPEN);
            bundle.putString("miniappid", this$0.OooO0o);
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.record("", pointAnalyseType, "", bundle);
            return;
        }
        new MiniAppCenterInfoData(this$0.OooO0o, this$0.OooO0oO, null, this$0.OooO0oo, this$0.OooO);
        this$0.OooO00o(null, null);
        PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        PointAnalyseType pointAnalyseType2 = PointAnalyseType.POINT_LATER_OFFLINE_CLICK;
        Bundle bundle2 = new Bundle();
        bundle2.putString(NativeComponentConstants.KEY_COMPONENT_TYPE, "get");
        bundle2.putString("miniappid", this$0.OooO0o);
        Unit unit2 = Unit.f67061a;
        performanceAnalyseProxy2.record("", pointAnalyseType2, "", bundle2);
    }

    public final void OooO00o() {
        try {
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.widget.l
                @Override // java.lang.Runnable
                public final void run() {
                    OfflineAppView.OooO00o(this.f23878a);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, "updateImage fail:", th2);
        }
    }

    public final void OooO00o(String appId, String logoUrl, String appName, String logoPath) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(logoUrl, "logoUrl");
        Intrinsics.h(appName, "appName");
        Intrinsics.h(logoPath, "logoPath");
        this.OooO0o = appId;
        this.OooO0oo = logoUrl;
        this.OooO0oO = appName;
        File file = ((IResourceProcessor) TmcProxy.get(IResourceProcessor.class)).get(logoPath, "1000886706715795456");
        String absolutePath = file != null ? file.getAbsolutePath() : null;
        if (absolutePath == null) {
            absolutePath = "";
        }
        this.OooO = absolutePath;
    }

    public final void OooO00o(String str, Function3<? super String, ? super String, ? super String, Unit> function3) {
        if (Intrinsics.c(str, this.OooO0o) && function3 != null) {
            function3.invoke(this.OooO, this.OooO0oO, this.OooO0o);
        }
        if (str == null || str.length() == 0) {
            str = this.OooO0o;
        }
        Context context = getContext();
        Intrinsics.g(context, "context");
        this.OooO0o0 = !AppUtils.INSTANCE.queryShortcutExist(context, str);
        if (!((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean(LauncherMiniAppConfigHelper.KEY_ADD_HOME_SWITCH, false)) {
            TmcLogger.d(this.OooO00o, "addHomeSwitch close");
            this.OooO0o0 = false;
        }
        if (this.OooO0o0) {
            this.OooO0Oo.setText(getResources().getText(R.string.mini_offlineapps_get));
        } else {
            this.OooO0Oo.setText(getResources().getText(R.string.mini_offlineapps_open));
        }
    }
}
