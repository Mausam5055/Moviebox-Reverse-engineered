package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.PageContext;
import com.cloud.tmc.integration.structure.ui.TitleBar;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.integration.utils.ext.CommonExtKt;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniutils.util.SystemUtils;
import com.cloud.tmc.miniutils.util.ViewUtils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class ImmersiveTitleBarView extends FrameLayout implements TitleBar {
    public final Lazy OooO;
    public View.OnClickListener OooO00o;
    public View.OnClickListener OooO0O0;
    public View.OnClickListener OooO0OO;
    public final Lazy OooO0Oo;
    public final Lazy OooO0o;
    public final Lazy OooO0o0;
    public final Lazy OooO0oO;
    public final Lazy OooO0oo;
    public int OooOO0;
    public boolean OooOO0O;
    public int OooOO0o;
    public AddScreenView OooOOO;
    public int OooOOO0;

    public static final class OooO extends Lambda implements Function0<FrameLayout> {
        public OooO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (FrameLayout) ImmersiveTitleBarView.this.findViewById(R.id.fl_menu_container);
        }
    }

    public static final class OooO00o extends Lambda implements Function0<Unit> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            ImmersiveTitleBarView immersiveTitleBarView = ImmersiveTitleBarView.this;
            View.OnClickListener onClickListener = immersiveTitleBarView.OooO00o;
            if (onClickListener != null) {
                onClickListener.onClick(immersiveTitleBarView.getCapsule());
            }
            return Unit.f67061a;
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<Unit> {
        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            ImmersiveTitleBarView immersiveTitleBarView = ImmersiveTitleBarView.this;
            View.OnClickListener onClickListener = immersiveTitleBarView.OooO0O0;
            if (onClickListener != null) {
                onClickListener.onClick(immersiveTitleBarView.getCapsule());
            }
            return Unit.f67061a;
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<CapsuleView> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (CapsuleView) ImmersiveTitleBarView.this.findViewById(R.id.capsule);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<FrameLayout> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (FrameLayout) ImmersiveTitleBarView.this.findViewById(R.id.fl_home);
        }
    }

    public static final class OooOO0 extends Lambda implements Function0<AppCompatImageView> {
        public OooOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) ImmersiveTitleBarView.this.findViewById(R.id.iv_add_screen);
        }
    }

    public static final class OooOO0O extends Lambda implements Function0<AppCompatImageView> {
        public OooOO0O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) ImmersiveTitleBarView.this.findViewById(R.id.iv_home);
        }
    }

    public static final class OooOOO0 extends Lambda implements Function0<TextView> {
        public OooOOO0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) ImmersiveTitleBarView.this.findViewById(R.id.tv_app_title);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveTitleBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.OooO0Oo = LazyKt.b(new OooO0o());
        this.OooO0o0 = LazyKt.b(new OooOO0O());
        this.OooO0o = LazyKt.b(new OooO0OO());
        this.OooO0oO = LazyKt.b(new OooO());
        this.OooO0oo = LazyKt.b(new OooOO0());
        this.OooO = LazyKt.b(new OooOOO0());
        this.OooOO0o = 1;
        LayoutInflater.from(context).inflate(R.layout.layout_mini_app_title_bar, this);
        getIvHome().setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImmersiveTitleBarView.OooO00o(this.f23870a, view);
            }
        });
        try {
            getIvHome().setRotationY(ViewUtils.isLayoutRtl() ? 180.0f : 0.0f);
        } catch (Throwable th2) {
            TmcLogger.e("TitleBarView", th2);
        }
        CapsuleView capsule = getCapsule();
        capsule.setOnLeftClickListener(new OooO00o());
        capsule.setOnRightClickListener(new OooO0O0());
        OooO00o();
    }

    public static final void OooO00o(ImmersiveTitleBarView this$0, View view) {
        View.OnClickListener onClickListener;
        Intrinsics.h(this$0, "this$0");
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        int i11 = this$0.OooOO0;
        if (i11 != 0) {
            if (i11 == 1 && (onClickListener = this$0.OooO00o) != null) {
                onClickListener.onClick(view);
                return;
            }
            return;
        }
        View.OnClickListener onClickListener2 = this$0.OooO0O0;
        if (onClickListener2 != null) {
            onClickListener2.onClick(view);
        }
    }

    public static final void OooO0O0(ImmersiveTitleBarView this$0, View view) {
        View.OnClickListener onClickListener;
        Intrinsics.h(this$0, "this$0");
        if (FastClickUtil.isFastDoubleClick() || (onClickListener = this$0.OooO0OO) == null) {
            return;
        }
        onClickListener.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CapsuleView getCapsule() {
        Object value = this.OooO0o.getValue();
        Intrinsics.g(value, "<get-capsule>(...)");
        return (CapsuleView) value;
    }

    private final FrameLayout getFlHome() {
        Object value = this.OooO0Oo.getValue();
        Intrinsics.g(value, "<get-flHome>(...)");
        return (FrameLayout) value;
    }

    private final FrameLayout getFlMenuContainer() {
        Object value = this.OooO0oO.getValue();
        Intrinsics.g(value, "<get-flMenuContainer>(...)");
        return (FrameLayout) value;
    }

    private final AppCompatImageView getIvAddScreen() {
        Object value = this.OooO0oo.getValue();
        Intrinsics.g(value, "<get-ivAddScreen>(...)");
        return (AppCompatImageView) value;
    }

    private final AppCompatImageView getIvHome() {
        Object value = this.OooO0o0.getValue();
        Intrinsics.g(value, "<get-ivHome>(...)");
        return (AppCompatImageView) value;
    }

    private final TextView getTvAppTitle() {
        Object value = this.OooO.getValue();
        Intrinsics.g(value, "<get-tvAppTitle>(...)");
        return (TextView) value;
    }

    public final void OooO00o() {
        int i11 = !SystemUtils.darkThemeIsEnabled(getContext()) ? 1 : 0;
        this.OooOO0o = i11;
        setThemeMode(i11);
        setPadding(0, isInEditMode() ? CommonExtKt.getDp2px(24) : MiniBarUtils.getStatusHeight(), 0, 0);
        try {
            setBackgroundColor(Color.parseColor(IntegrationConstants.INSTANCE.getDefaultNavigationBarBackgroundColor(getContext())));
        } catch (Throwable th2) {
            TmcLogger.e("[ImmersiveTitleBarView]: error", th2);
        }
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void attachPage(Page page) {
        AddScreenView addScreenView;
        PageContext pageContext;
        ViewGroup contentView;
        if (page == null || (pageContext = page.getPageContext()) == null || (contentView = pageContext.getContentView()) == null || (addScreenView = (AddScreenView) contentView.findViewById(R.id.addScreenView)) == null) {
            addScreenView = null;
        } else {
            addScreenView.setTranslationY(addScreenView.getTranslationY() + MiniBarUtils.getStatusHeight());
            addScreenView.setTranslationX(ViewUtils.isLayoutRtl() ? getResources().getDimension(R.dimen.mini_dp_100) : getResources().getDimension(R.dimen.mini_dp_m_100));
            addScreenView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.widget.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ImmersiveTitleBarView.OooO0O0(this.f23869a, view);
                }
            });
        }
        this.OooOOO = addScreenView;
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public boolean getAddScreenVisibility() {
        AddScreenView addScreenView = this.OooOOO;
        return addScreenView != null && ViewExtKt.getVisible(addScreenView);
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public View getContent() {
        return this;
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public Integer getHomeAction() {
        return Integer.valueOf(this.OooOO0);
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public boolean isTransparent() {
        return this.OooOO0O;
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setAddScreenVisibility(boolean z10) {
    }

    @Override // android.view.View
    public void setBackgroundColor(int i11) {
        super.setBackgroundColor(i11);
        if (this.OooOO0O) {
            return;
        }
        this.OooOOO0 = i11;
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setHomeAction(int i11, boolean z10) {
        this.OooOO0 = i11;
        if (z10) {
            setThemeMode(this.OooOO0o);
        }
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setHomeVisibility(boolean z10) {
        ViewExtKt.toVisibleOrGone(getFlHome(), z10);
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setOnAddScreenClickListener(View.OnClickListener onClickListener) {
        this.OooO0OO = onClickListener;
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setOnBackClickListener(View.OnClickListener onClickListener) {
        this.OooO00o = onClickListener;
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setOnHomeClickListener(View.OnClickListener onClickListener) {
        this.OooO0O0 = onClickListener;
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setThemeMode(int i11) {
        AddScreenView addScreenView;
        this.OooOO0o = i11;
        AddScreenView addScreenView2 = this.OooOOO;
        if (addScreenView2 != null && ViewExtKt.getVisible(addScreenView2) && (addScreenView = this.OooOOO) != null) {
            addScreenView.setThemeMode(i11);
        }
        if (ViewExtKt.getVisible(this)) {
            int i12 = 0;
            ViewExtKt.toVisibleOrGone(getIvHome(), this.OooOO0 != 2);
            ViewExtKt.toVisibleOrGone(getCapsule(), this.OooOO0 == 2);
            if (ViewExtKt.getVisible(getCapsule())) {
                CapsuleView.OooO00o(getCapsule(), i11, null, 2);
            }
            if (i11 == 0) {
                getIvHome().setBackgroundResource(R.drawable.shape_bg_title_bar_no_stroke_white_mode);
                AppCompatImageView ivHome = getIvHome();
                int i13 = this.OooOO0;
                if (i13 == 0) {
                    i12 = R.drawable.mini_ic_title_home_white_mode;
                } else if (i13 == 1) {
                    i12 = R.drawable.mini_ic_title_back_white_mode;
                }
                ivHome.setImageResource(i12);
                return;
            }
            if (i11 != 1) {
                return;
            }
            getIvHome().setBackgroundResource(R.drawable.shape_bg_title_bar_no_stroke_black_mode);
            AppCompatImageView ivHome2 = getIvHome();
            int i14 = this.OooOO0;
            if (i14 == 0) {
                i12 = R.drawable.mini_ic_immersive_title_bar_home_black_mode;
            } else if (i14 == 1) {
                i12 = R.drawable.mini_ic_immersive_title_bar_back_black_mode;
            }
            ivHome2.setImageResource(i12);
        }
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setTitle(String str) {
        TextView tvAppTitle = getTvAppTitle();
        if (str != null) {
            tvAppTitle.setText(str);
        }
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setTitleBarVisible(boolean z10) {
        if (z10) {
            setThemeMode(this.OooOO0o);
        }
        ViewExtKt.toVisibleOrGone(this, z10);
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setTitleColor(boolean z10) {
        getTvAppTitle().setTextColor(androidx.core.content.b.getColor(getContext(), z10 ? R.color.default_navigation_bar_title_white_color : R.color.default_navigation_bar_title_black_color));
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setTitleVisible(boolean z10) {
        ViewExtKt.toVisibleOrGone(getTvAppTitle(), z10);
    }

    @Override // com.cloud.tmc.integration.structure.ui.TitleBar
    public void setTransparent(boolean z10) {
        this.OooOO0O = z10;
        if (z10) {
            setBackgroundColor(0);
        } else {
            setBackgroundColor(this.OooOOO0);
        }
    }
}
