package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.miniutils.util.SizeUtils;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class StatusLayout extends FrameLayout {
    public TextView OooO;
    public ViewGroup OooO00o;
    public TextView OooO0O0;
    public TextView OooO0OO;
    public AppCompatImageView OooO0Oo;
    public LinearLayout OooO0o;
    public TextView OooO0o0;
    public ConstraintLayout OooO0oO;
    public LoadingTextView OooO0oo;
    public MiniappLaunchLoadingView OooOO0;
    public UpgradeHostAppPromptLayout OooOO0O;
    public TextView OooOO0o;
    public TextView OooOOO;
    public MiniNoNetworkView OooOOO0;
    public OooO0O0 OooOOOO;
    public boolean OooOOOo;
    public final View.OnClickListener OooOOo;
    public boolean OooOOo0;

    public interface OooO00o {
    }

    public interface OooO0O0 {
        void onRetry(StatusLayout statusLayout);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public StatusLayout(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public StatusLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public StatusLayout(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public StatusLayout(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        this.OooOOo = new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StatusLayout.OooO00o(this.f23913a, view);
            }
        };
    }

    public /* synthetic */ StatusLayout(Context context, AttributeSet attributeSet, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i13 & 2) != 0 ? null : attributeSet, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0 : i12);
    }

    public static final void OooO00o(StatusLayout this$0, View view) {
        OooO0O0 oooO0O0;
        Intrinsics.h(this$0, "this$0");
        if (!Intrinsics.c(view, this$0.OooO0o0) || (oooO0O0 = this$0.OooOOOO) == null) {
            return;
        }
        oooO0O0.onRetry(this$0);
    }

    public static final void OooO0O0(StatusLayout this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        try {
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            Bundle bundle = new Bundle();
            if (this$0.OooOOo0) {
                bundle.putString(RequestParameters.SUBRESOURCE_LOCATION, "1");
            } else {
                bundle.putString(RequestParameters.SUBRESOURCE_LOCATION, "0");
            }
            Unit unit = Unit.f67061a;
            performanceAnalyseProxy.recordForCommon(null, TmcConstants.REPORTER_SETTINGS_CLICK, bundle);
            if (NetworkUtils.isWifiConnected()) {
                this$0.getContext().getApplicationContext().startActivity(new Intent("android.settings.WIFI_SETTINGS").setFlags(ASTNode.DEOP));
            } else if (NetworkUtils.isMobileData()) {
                this$0.getContext().getApplicationContext().startActivity(new Intent("android.settings.NETWORK_OPERATOR_SETTINGS").setFlags(ASTNode.DEOP));
            } else {
                this$0.getContext().getApplicationContext().startActivity(new Intent("android.settings.SETTINGS").setFlags(ASTNode.DEOP));
            }
        } catch (Throwable unused) {
        }
    }

    public final void OooO00o() {
        try {
            MiniappLaunchLoadingView miniappLaunchLoadingView = this.OooOO0;
            if (miniappLaunchLoadingView != null) {
                try {
                    miniappLaunchLoadingView.OooO0o0 = 0;
                    TranslateAnimation translateAnimation = miniappLaunchLoadingView.OooO;
                    if (translateAnimation != null) {
                        translateAnimation.cancel();
                    }
                    AnimationSet animationSet = miniappLaunchLoadingView.OooO0oo;
                    if (animationSet != null) {
                        animationSet.cancel();
                    }
                    ExecutorUtils.removeOnMain(miniappLaunchLoadingView.OooOO0);
                    miniappLaunchLoadingView.OooO = null;
                    miniappLaunchLoadingView.OooO0oo = null;
                    miniappLaunchLoadingView.OooO0o = false;
                    miniappLaunchLoadingView.OooO0oO = false;
                } catch (Throwable th2) {
                    TmcLogger.e(miniappLaunchLoadingView.OooO0Oo, th2);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void OooO00o(Integer num) {
        if (num != null && num.intValue() == 2) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.widget_status_layout_normal_mode, (ViewGroup) this, false);
            Intrinsics.f(viewInflate, "null cannot be cast to non-null type android.view.ViewGroup");
            this.OooO00o = (ViewGroup) viewInflate;
        } else {
            View viewInflate2 = LayoutInflater.from(getContext()).inflate(R.layout.widget_status_layout, (ViewGroup) this, false);
            Intrinsics.f(viewInflate2, "null cannot be cast to non-null type android.view.ViewGroup");
            this.OooO00o = (ViewGroup) viewInflate2;
        }
        ViewGroup viewGroup = this.OooO00o;
        this.OooO0O0 = viewGroup != null ? (TextView) viewGroup.findViewById(R.id.tv_status_title) : null;
        ViewGroup viewGroup2 = this.OooO00o;
        this.OooO0OO = viewGroup2 != null ? (TextView) viewGroup2.findViewById(R.id.tv_status_text) : null;
        ViewGroup viewGroup3 = this.OooO00o;
        this.OooO0Oo = viewGroup3 != null ? (AppCompatImageView) viewGroup3.findViewById(R.id.iv_error_icon) : null;
        ViewGroup viewGroup4 = this.OooO00o;
        this.OooO0o0 = viewGroup4 != null ? (TextView) viewGroup4.findViewById(R.id.tv_status_retry) : null;
        ViewGroup viewGroup5 = this.OooO00o;
        this.OooO0oO = viewGroup5 != null ? (ConstraintLayout) viewGroup5.findViewById(R.id.ll_error_layout) : null;
        ViewGroup viewGroup6 = this.OooO00o;
        this.OooO0o = viewGroup6 != null ? (LinearLayout) viewGroup6.findViewById(R.id.ll_loading_layout) : null;
        ViewGroup viewGroup7 = this.OooO00o;
        MiniappLaunchLoadingView miniappLaunchLoadingView = viewGroup7 != null ? (MiniappLaunchLoadingView) viewGroup7.findViewById(R.id.cl_launcher_loading) : null;
        this.OooOO0 = miniappLaunchLoadingView;
        if (miniappLaunchLoadingView != null) {
            miniappLaunchLoadingView.OooO0OO = num;
            if (num != null && num.intValue() == 2) {
                LayoutInflater.from(miniappLaunchLoadingView.getContext()).inflate(R.layout.layout_miniapp_launch_normal_mode, miniappLaunchLoadingView);
            } else {
                LayoutInflater.from(miniappLaunchLoadingView.getContext()).inflate(R.layout.layout_miniapp_launch, miniappLaunchLoadingView);
            }
            View viewFindViewById = miniappLaunchLoadingView.findViewById(R.id.iv_loading_img);
            Intrinsics.g(viewFindViewById, "findViewById(R.id.iv_loading_img)");
            miniappLaunchLoadingView.OooO00o = (AppCompatImageView) viewFindViewById;
            View viewFindViewById2 = miniappLaunchLoadingView.findViewById(R.id.ll_bottom);
            Intrinsics.g(viewFindViewById2, "findViewById(R.id.ll_bottom)");
            miniappLaunchLoadingView.OooO0O0 = (LinearLayoutCompat) viewFindViewById2;
        }
        ViewGroup viewGroup8 = this.OooO00o;
        this.OooO = viewGroup8 != null ? (TextView) viewGroup8.findViewById(R.id.tv_loading_name) : null;
        ViewGroup viewGroup9 = this.OooO00o;
        this.OooO0oo = viewGroup9 != null ? (LoadingTextView) viewGroup9.findViewById(R.id.tv_loading_progress) : null;
        ViewGroup viewGroup10 = this.OooO00o;
        this.OooOO0o = viewGroup10 != null ? (TextView) viewGroup10.findViewById(R.id.tv_error_msg) : null;
        ViewGroup viewGroup11 = this.OooO00o;
        this.OooOOO = viewGroup11 != null ? (TextView) viewGroup11.findViewById(R.id.tv_go_setting) : null;
        ViewGroup viewGroup12 = this.OooO00o;
        MiniNoNetworkView miniNoNetworkView = viewGroup12 != null ? (MiniNoNetworkView) viewGroup12.findViewById(R.id.cl_no_network_view) : null;
        this.OooOOO0 = miniNoNetworkView;
        if (miniNoNetworkView != null) {
            miniNoNetworkView.OooO00o(num);
        }
        ViewGroup viewGroup13 = this.OooO00o;
        this.OooOO0O = viewGroup13 != null ? (UpgradeHostAppPromptLayout) viewGroup13.findViewById(R.id.ul_upgrade) : null;
        ViewGroup viewGroup14 = this.OooO00o;
        if ((viewGroup14 != null ? viewGroup14.getBackground() : null) == null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{android.R.attr.windowBackground});
            Intrinsics.g(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…R.attr.windowBackground))");
            ViewGroup viewGroup15 = this.OooO00o;
            if (viewGroup15 != null) {
                viewGroup15.setBackground(typedArrayObtainStyledAttributes.getDrawable(0));
            }
            ViewGroup viewGroup16 = this.OooO00o;
            if (viewGroup16 != null) {
                viewGroup16.setClickable(true);
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        TextView textView = this.OooOOO;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StatusLayout.OooO0O0(this.f23885a, view);
                }
            });
        }
        TextView textView2 = this.OooO0o0;
        if (textView2 != null) {
            textView2.setOnClickListener(this.OooOOo);
        }
        ViewGroup viewGroup17 = this.OooO00o;
        if (viewGroup17 != null) {
            viewGroup17.setPadding(0, SizeUtils.dp2px(56.0f) + MiniBarUtils.getStatusHeight(), 0, 0);
        }
        ViewGroup viewGroup18 = this.OooO00o;
        ViewExtKt.removeSelf(viewGroup18);
        addView(viewGroup18);
    }

    public final void OooO00o(String str, boolean z10, boolean z11) {
        this.OooOOOo = true;
        this.OooOOo0 = z11;
        ConstraintLayout constraintLayout = this.OooO0oO;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(0);
        }
        LinearLayout linearLayout = this.OooO0o;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        MiniNoNetworkView miniNoNetworkView = this.OooOOO0;
        if (miniNoNetworkView != null) {
            miniNoNetworkView.setVisibility(8);
        }
        TextView textView = this.OooO0o0;
        if (textView != null) {
            ViewExtKt.toVisibleOrInvisible(textView, this.OooOOOO != null);
        }
        try {
            if (z10) {
                TextView textView2 = this.OooOOO;
                if (textView2 != null) {
                    ViewExtKt.toVisible(textView2);
                }
            } else {
                TextView textView3 = this.OooOOO;
                if (textView3 != null) {
                    ViewExtKt.toGone(textView3);
                }
            }
            LoadingTextView loadingTextView = this.OooO0oo;
            if (loadingTextView != null) {
                loadingTextView.OooO00o();
            }
            if (AppDynamicBuildConfig.getDEV_MODE()) {
                if (str == null || str.length() == 0) {
                    TextView textView4 = this.OooOO0o;
                    if (textView4 != null) {
                        ViewExtKt.toInvisible(textView4);
                    }
                } else {
                    TextView textView5 = this.OooOO0o;
                    if (textView5 != null) {
                        ViewExtKt.toVisible(textView5);
                        textView5.setText(str);
                    }
                }
            }
            if (str != null) {
                TmcLogger.e("launch step error:" + str);
            }
        } catch (Throwable th2) {
            TmcLogger.e("launcher step error", th2);
        }
    }

    public final void OooO0O0() {
        if (this.OooO00o == null || !OooO0OO() || this.OooOOOo) {
            return;
        }
        ViewGroup viewGroup = this.OooO00o;
        if (viewGroup != null) {
            viewGroup.setVisibility(4);
        }
        LoadingTextView loadingTextView = this.OooO0oo;
        if (loadingTextView != null) {
            loadingTextView.OooO00o();
        }
    }

    public final void OooO0O0(Integer num) {
        ViewGroup viewGroup;
        if (this.OooO00o == null) {
            OooO00o(num);
        }
        if (OooO0OO() || (viewGroup = this.OooO00o) == null) {
            return;
        }
        viewGroup.setVisibility(0);
    }

    public final boolean OooO0OO() {
        ViewGroup viewGroup = this.OooO00o;
        return viewGroup != null && viewGroup.getVisibility() == 0;
    }

    public final void OooO0Oo() {
        this.OooOOOo = false;
        LinearLayout linearLayout = this.OooO0o;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        ConstraintLayout constraintLayout = this.OooO0oO;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(8);
        }
        MiniNoNetworkView miniNoNetworkView = this.OooOOO0;
        if (miniNoNetworkView != null) {
            miniNoNetworkView.setVisibility(8);
        }
    }

    public final void setHint(int i11) {
        setHint(getResources().getString(i11));
    }

    public final void setHint(CharSequence charSequence) {
        TextView textView = this.OooO0OO;
        if (textView == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        textView.setText(charSequence);
    }

    public final void setHintColor(int i11) {
        TextView textView = this.OooO0OO;
        if (textView != null) {
            textView.setTextColor(androidx.core.content.b.getColor(getContext(), i11));
        }
    }

    public final void setIcon(int i11) {
        setIcon(androidx.core.content.b.getDrawable(getContext(), i11));
    }

    public final void setIcon(Drawable drawable) {
        AppCompatImageView appCompatImageView = this.OooO0Oo;
        if (appCompatImageView != null) {
            appCompatImageView.setImageDrawable(drawable);
        }
    }

    public final void setLoadingProgressConfig(LoadingTextView.LoadingAnimationModel progressConfig) {
        Intrinsics.h(progressConfig, "progressConfig");
        LoadingTextView loadingTextView = this.OooO0oo;
        if (loadingTextView == null) {
            return;
        }
        loadingTextView.setProgressConfigModel(progressConfig);
    }

    public final void setMainLayoutAlpha(float f11) {
        ViewGroup viewGroup = this.OooO00o;
        if (viewGroup == null) {
            return;
        }
        viewGroup.setAlpha(f11);
    }

    public final void setOnCustomNoNetWorkOnPinForLaterListener(OooO00o oooO00o) {
    }

    public final void setOnCustomNoNetWorkRetryListener(OooO0O0 oooO0O0) {
        MiniNoNetworkView miniNoNetworkView = this.OooOOO0;
        if (miniNoNetworkView != null) {
            miniNoNetworkView.setOnRetryListener(oooO0O0);
        }
    }

    public final void setOnPinForLaterListener(OooO00o oooO00o) {
    }

    public final void setOnRetryListener(OooO0O0 oooO0O0) {
        TextView textView;
        this.OooOOOO = oooO0O0;
        if (!OooO0OO() || (textView = this.OooO0o0) == null) {
            return;
        }
        textView.setVisibility(this.OooOOOO == null ? 4 : 0);
    }

    public final void setTitle(int i11) {
        setTitle(getResources().getString(i11));
    }

    public final void setTitle(CharSequence charSequence) {
        TextView textView = this.OooO0O0;
        if (textView != null) {
            textView.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
        }
        TextView textView2 = this.OooO0O0;
        if (textView2 == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        textView2.setText(charSequence);
    }

    public final void setTitleColor(int i11) {
        TextView textView = this.OooO0O0;
        if (textView != null) {
            textView.setTextColor(androidx.core.content.b.getColor(getContext(), i11));
        }
    }
}
