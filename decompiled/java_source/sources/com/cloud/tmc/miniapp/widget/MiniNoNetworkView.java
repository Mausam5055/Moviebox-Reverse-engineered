package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.BidiFormatter;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.integration.utils.RegexUtils;
import com.cloud.tmc.integration.utils.ext.SpannableExtKt;
import com.cloud.tmc.integration.utils.ext.TextViewExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.resource.IPackageResourceManager;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.ui.extension.OfflineAppExtensionKt;
import com.cloud.tmc.miniutils.util.ColorUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.cloud.tmc.miniutils.util.StringUtils;
import com.cloud.tmc.miniutils.util.ViewUtils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class MiniNoNetworkView extends ConstraintLayout {
    public final Lazy OooO;
    public AppCompatImageView OooO00o;
    public TextView OooO0O0;
    public TextView OooO0OO;
    public TextView OooO0Oo;
    public StatusLayout.OooO0O0 OooO0o;
    public TextView OooO0o0;
    public final Lazy OooO0oO;
    public final Lazy OooO0oo;
    public final Lazy OooOO0;
    public final Lazy OooOO0O;
    public final Lazy OooOO0o;

    public static final class OooO extends Lambda implements Function0<LinearLayout> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (LinearLayout) MiniNoNetworkView.this.findViewById(R.id.ll_offline_apps);
        }
    }

    public static final class OooO00o extends Lambda implements Function0<ConstraintLayout> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ConstraintLayout) MiniNoNetworkView.this.findViewById(R.id.cl_offline_apps_container);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function1<View, Unit> {
        public OooO0O0() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            View it = (View) obj;
            Intrinsics.h(it, "it");
            try {
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                Bundle bundle = new Bundle();
                bundle.putString(RequestParameters.SUBRESOURCE_LOCATION, "0");
                Unit unit = Unit.f67061a;
                performanceAnalyseProxy.recordForCommon(null, TmcConstants.REPORTER_SETTINGS_CLICK, bundle);
                if (NetworkUtils.isWifiConnected()) {
                    MiniNoNetworkView.this.getContext().getApplicationContext().startActivity(new Intent("android.settings.WIFI_SETTINGS").setFlags(ASTNode.DEOP));
                } else {
                    MiniNoNetworkView.this.getContext().getApplicationContext().startActivity(new Intent("android.settings.SETTINGS").setFlags(ASTNode.DEOP));
                }
            } catch (Throwable th2) {
                TmcLogger.e("MiniNoNetworkView", th2);
            }
            return Unit.f67061a;
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<ImageView> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ImageView) MiniNoNetworkView.this.findViewById(R.id.iv_offline_apps_icon);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<ImageView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (ImageView) MiniNoNetworkView.this.findViewById(R.id.iv_offline_apps_more);
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<LinearLayout> {
        public OooOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (LinearLayout) MiniNoNetworkView.this.findViewById(R.id.ll_offline_apps_more);
        }
    }

    public static final class OooOO0O extends Lambda implements Function0<TextView> {
        public OooOO0O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) MiniNoNetworkView.this.findViewById(R.id.tv_offline_apps_des);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MiniNoNetworkView(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MiniNoNetworkView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MiniNoNetworkView(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MiniNoNetworkView(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        this.OooO0oO = LazyKt.b(new OooO0OO());
        this.OooO0oo = LazyKt.b(new OooOO0O());
        this.OooO = LazyKt.b(new OooOO0());
        this.OooOO0 = LazyKt.b(new OooO0o());
        this.OooOO0O = LazyKt.b(new OooO());
        this.OooOO0o = LazyKt.b(new OooO00o());
    }

    public /* synthetic */ MiniNoNetworkView(Context context, AttributeSet attributeSet, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i13 & 2) != 0 ? null : attributeSet, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0 : i12);
    }

    public static final void OooO00o(MiniNoNetworkView this$0, View view) {
        StatusLayout.OooO0O0 oooO0O0;
        Intrinsics.h(this$0, "this$0");
        if (FastClickUtil.isFastDoubleClick() || (oooO0O0 = this$0.OooO0o) == null) {
            return;
        }
        oooO0O0.onRetry(null);
    }

    public final void OooO00o(Integer num) {
        if (num != null && num.intValue() == 2) {
            LayoutInflater.from(getContext()).inflate(R.layout.widget_mini_no_network_layout_normal_mode, this);
        } else {
            LayoutInflater.from(getContext()).inflate(R.layout.widget_mini_no_network_layout, this);
        }
        View viewFindViewById = findViewById(R.id.iv_error_logo);
        Intrinsics.g(viewFindViewById, "findViewById(R.id.iv_error_logo)");
        this.OooO00o = (AppCompatImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.tv_error_name);
        Intrinsics.g(viewFindViewById2, "findViewById(R.id.tv_error_name)");
        this.OooO0O0 = (TextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.tv_error_app_intro);
        Intrinsics.g(viewFindViewById3, "findViewById(R.id.tv_error_app_intro)");
        this.OooO0OO = (TextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.tv_no_network_retry);
        Intrinsics.g(viewFindViewById4, "findViewById(R.id.tv_no_network_retry)");
        this.OooO0Oo = (TextView) viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.tv_no_network_info);
        Intrinsics.g(viewFindViewById5, "findViewById(R.id.tv_no_network_info)");
        this.OooO0o0 = (TextView) viewFindViewById5;
        TextView textView = this.OooO0Oo;
        TextView textView2 = null;
        if (textView == null) {
            Intrinsics.z("mTvNoNetworkRetry");
            textView = null;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MiniNoNetworkView.OooO00o(this.f23874a, view);
            }
        });
        try {
            TextView textView3 = this.OooO0o0;
            if (textView3 == null) {
                Intrinsics.z("mTvNoNetworkInfo");
                textView3 = null;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) StringUtils.getString(R.string.mini_no_network_info));
            SpannableExtKt.appendClickable(spannableStringBuilder, (CharSequence) BidiFormatter.getInstance().unicodeWrap(StringUtils.getString(R.string.mini_network_go_setting)), Integer.valueOf(ColorUtils.getColor(R.color.mini_color_primary)), false, (Function1<? super View, Unit>) new OooO0O0());
            TextView textView4 = this.OooO0o0;
            if (textView4 == null) {
                Intrinsics.z("mTvNoNetworkInfo");
                textView4 = null;
            }
            textView4.setMovementMethod(LinkMovementMethod.getInstance());
            TextView textView5 = this.OooO0o0;
            if (textView5 == null) {
                Intrinsics.z("mTvNoNetworkInfo");
            } else {
                textView2 = textView5;
            }
            TextViewExtKt.transparentHighlightColor(textView2);
            textView3.setText(new SpannedString(spannableStringBuilder));
        } catch (Throwable th2) {
            TmcLogger.e("MiniNoNetworkView", th2);
        }
    }

    public final void OooO00o(String str, String str2, String str3) {
        AppCompatImageView appCompatImageView;
        setVisibility(0);
        TextView textView = this.OooO0O0;
        if (textView == null) {
            Intrinsics.z("mTvErrorName");
            textView = null;
        }
        textView.setText(str);
        TextView textView2 = this.OooO0OO;
        if (textView2 == null) {
            Intrinsics.z("mTvErrorAppIntro");
            textView2 = null;
        }
        textView2.setText(str3);
        if (!RegexUtils.isURL(str2)) {
            IPackageResourceManager iPackageResourceManager = (IPackageResourceManager) TmcProxy.get(IPackageResourceManager.class);
            str2 = iPackageResourceManager.getFilePath("1000886706715795456", iPackageResourceManager.getVhost("1000886706715795456") + str2);
        }
        ImageLoaderProxy imageLoaderProxy = (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
        Context context = getContext();
        if (str2 == null) {
            str2 = "";
        }
        String str4 = str2;
        AppCompatImageView appCompatImageView2 = this.OooO00o;
        if (appCompatImageView2 == null) {
            Intrinsics.z("mIvErrorLogo");
            appCompatImageView = null;
        } else {
            appCompatImageView = appCompatImageView2;
        }
        imageLoaderProxy.loadImgRoundCorners(context, str4, appCompatImageView, SizeUtils.dp2px(14.0f), R.drawable.drawable_app_icon_place_holder, R.drawable.drawable_app_icon_place_holder);
        ImageView ivOfflineAppsMore = getIvOfflineAppsMore();
        if (ivOfflineAppsMore != null) {
            ivOfflineAppsMore.setRotationY(ViewUtils.isLayoutRtl() ? 180.0f : 0.0f);
        }
        ImageView ivOfflineAppsIcon = getIvOfflineAppsIcon();
        if (ivOfflineAppsIcon != null) {
            ivOfflineAppsIcon.setRotationY(ViewUtils.isLayoutRtl() ? 180.0f : 0.0f);
        }
        Context context2 = getContext();
        Intrinsics.g(context2, "context");
        OfflineAppExtensionKt.offlineAppUpdate(this, context2, getLlOfflineAppsMore(), getLlOfflineApps(), getClOfflineAppsContainer());
    }

    public final ConstraintLayout getClOfflineAppsContainer() {
        return (ConstraintLayout) this.OooOO0o.getValue();
    }

    public final ImageView getIvOfflineAppsIcon() {
        return (ImageView) this.OooO0oO.getValue();
    }

    public final ImageView getIvOfflineAppsMore() {
        return (ImageView) this.OooOO0.getValue();
    }

    public final LinearLayout getLlOfflineApps() {
        return (LinearLayout) this.OooOO0O.getValue();
    }

    public final LinearLayout getLlOfflineAppsMore() {
        return (LinearLayout) this.OooO.getValue();
    }

    public final TextView getTvOfflineAppsDes() {
        return (TextView) this.OooO0oo.getValue();
    }

    public final void setOnPinForLaterListener(StatusLayout.OooO00o oooO00o) {
    }

    public final void setOnRetryListener(StatusLayout.OooO0O0 oooO0O0) {
        this.OooO0o = oooO0O0;
    }
}
