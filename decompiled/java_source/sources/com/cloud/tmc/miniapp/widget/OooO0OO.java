package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.RegexUtils;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.miniapp.R;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO extends RelativeLayout {
    public Page OooO;
    public final Lazy OooO00o;
    public final Lazy OooO0O0;
    public final Lazy OooO0OO;
    public final Lazy OooO0Oo;
    public final IResourceProcessor OooO0o;
    public final Lazy OooO0o0;
    public MiniAppConfigModel.TabBarBean OooO0oO;
    public MiniAppConfigModel.TabBarBean.ListBean OooO0oo;
    public com.cloud.tmc.miniapp.widget.badgeview.OooO00o OooOO0;
    public boolean OooOO0O;
    public String OooOO0o;

    @DebugMetadata(c = "com.cloud.tmc.miniapp.widget.TabBarItemView$requestDrawable$1", f = "TabBarView.kt", l = {}, m = "invokeSuspend")
    public static final class OooO extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        public final /* synthetic */ String OooO0O0;
        public final /* synthetic */ String OooO0OO;
        public final /* synthetic */ Function1<Drawable, Unit> OooO0Oo;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public OooO(String str, String str2, Function1<? super Drawable, Unit> function1, Continuation<? super OooO> continuation) {
            super(2, continuation);
            this.OooO0O0 = str;
            this.OooO0OO = str2;
            this.OooO0Oo = function1;
        }

        public static final void OooO00o(Function1 function1, File file) {
            if (function1 != null) {
                function1.invoke(Drawable.createFromPath(file != null ? file.getAbsolutePath() : null));
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OooO0OO.this.new OooO(this.OooO0O0, this.OooO0OO, this.OooO0Oo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public Object invoke(Object obj, Object obj2) {
            return OooO0OO.this.new OooO(this.OooO0O0, this.OooO0OO, this.OooO0Oo, (Continuation) obj2).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            final File file;
            IntrinsicsKt.f();
            ResultKt.b(obj);
            if (OooO0OO.this.OooOO0o.length() > 0) {
                OooO0OO oooO0OO = OooO0OO.this;
                file = oooO0OO.OooO0o.get(this.OooO0O0, this.OooO0OO, oooO0OO.OooOO0o);
            } else {
                file = OooO0OO.this.OooO0o.get(this.OooO0O0, this.OooO0OO);
            }
            AppCompatImageView ivTabIcon = OooO0OO.this.getIvTabIcon();
            final Function1<Drawable, Unit> function1 = this.OooO0Oo;
            ivTabIcon.post(new Runnable() { // from class: com.cloud.tmc.miniapp.widget.o
                @Override // java.lang.Runnable
                public final void run() {
                    OooO0OO.OooO.OooO00o(function1, file);
                }
            });
            return Unit.f67061a;
        }
    }

    public static final class OooO00o extends Lambda implements Function0<AppCompatImageView> {
        public OooO00o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) OooO0OO.this.findViewById(R.id.iv_badge);
        }
    }

    public static final class OooO0O0 extends Lambda implements Function0<AppCompatImageView> {
        public OooO0O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) OooO0OO.this.findViewById(R.id.iv_red);
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.widget.OooO0OO$OooO0OO, reason: collision with other inner class name */
    public static final class C0350OooO0OO extends Lambda implements Function0<AppCompatImageView> {
        public C0350OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) OooO0OO.this.findViewById(R.id.iv_red_icon);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<AppCompatImageView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) OooO0OO.this.findViewById(R.id.iv_tab_icon);
        }
    }

    public static final class OooOO0 extends Lambda implements Function1<Drawable, Unit> {
        public OooOO0() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            OooO0OO.this.getIvTabIcon().setImageDrawable((Drawable) obj);
            return Unit.f67061a;
        }
    }

    public static final class OooOO0O extends Lambda implements Function0<AppCompatTextView> {
        public OooOO0O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatTextView) OooO0OO.this.findViewById(R.id.tv_tab_name);
        }
    }

    public static final class OooOOO0 extends Lambda implements Function1<Drawable, Unit> {
        public OooOOO0() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            OooO0OO.this.getIvTabIcon().setImageDrawable((Drawable) obj);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooO0OO(Context context, AttributeSet attributeSet) {
        super(context, null);
        Intrinsics.h(context, "context");
        this.OooO00o = LazyKt.b(new OooO0o());
        this.OooO0O0 = LazyKt.b(new OooOO0O());
        this.OooO0OO = LazyKt.b(new OooO0O0());
        this.OooO0Oo = LazyKt.b(new C0350OooO0OO());
        this.OooO0o0 = LazyKt.b(new OooO00o());
        Object obj = TmcProxy.get(IResourceProcessor.class);
        Intrinsics.g(obj, "get(\n        IResourceProcessor::class.java\n    )");
        this.OooO0o = (IResourceProcessor) obj;
        LayoutInflater.from(context).inflate(R.layout.layout_mini_tab_item, this);
        setGravity(17);
        this.OooOO0o = "";
    }

    private final AppCompatImageView getIvBadge() {
        Object value = this.OooO0o0.getValue();
        Intrinsics.g(value, "<get-ivBadge>(...)");
        return (AppCompatImageView) value;
    }

    private final AppCompatImageView getIvRed() {
        Object value = this.OooO0OO.getValue();
        Intrinsics.g(value, "<get-ivRed>(...)");
        return (AppCompatImageView) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppCompatImageView getIvRedIcon() {
        Object value = this.OooO0Oo.getValue();
        Intrinsics.g(value, "<get-ivRedIcon>(...)");
        return (AppCompatImageView) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppCompatImageView getIvTabIcon() {
        Object value = this.OooO00o.getValue();
        Intrinsics.g(value, "<get-ivTabIcon>(...)");
        return (AppCompatImageView) value;
    }

    private final AppCompatTextView getTvTabName() {
        Object value = this.OooO0O0.getValue();
        Intrinsics.g(value, "<get-tvTabName>(...)");
        return (AppCompatTextView) value;
    }

    public final void OooO00o() {
        com.cloud.tmc.miniapp.widget.badgeview.OooO00o oooO00o = this.OooOO0;
        if (oooO00o != null) {
            ((com.cloud.tmc.miniapp.widget.badgeview.OooO0o) oooO00o).OooO00o(0);
        }
        getIvBadge().setTag(Boolean.FALSE);
    }

    public final void OooO00o(MiniAppConfigModel.TabBarBean.ListBean tab, Page page) {
        String str;
        App app;
        Intrinsics.h(tab, "tab");
        MiniAppConfigModel.TabBarBean tabBarBean = this.OooO0oO;
        if (tabBarBean != null && tabBarBean.tabBarPositionIsTop()) {
            ViewExtKt.toGone(getIvTabIcon());
            return;
        }
        String str2 = tab.selectedIconPath;
        if (str2 != null && str2.length() != 0 && (str = tab.iconPath) != null && str.length() != 0) {
            String appId = null;
            String str3 = Intrinsics.c(page != null ? page.getPagePath() : null, tab.pagePath) ? tab.selectedIconPath : tab.iconPath;
            if (page != null && (app = page.getApp()) != null) {
                appId = app.getAppId();
            }
            OooO00o(str3, appId, new OooOOO0());
        }
        String str4 = tab.text;
        if (str4 != null) {
            getTvTabName().setText(str4);
        }
    }

    public final void OooO00o(MiniAppConfigModel.TabBarBean tabBarConfig, MiniAppConfigModel.TabBarBean.ListBean tab, Page page) {
        App app;
        Intrinsics.h(tabBarConfig, "tabBarConfig");
        Intrinsics.h(tab, "tab");
        this.OooO0oO = tabBarConfig;
        this.OooO0oo = tab;
        this.OooO = page;
        String appId = null;
        this.OooOO0O = Intrinsics.c(page != null ? page.getPagePath() : null, tab.pagePath);
        if (tabBarConfig.tabBarPositionIsTop()) {
            ViewExtKt.toGone(getIvTabIcon());
        } else {
            String str = this.OooOO0O ? tab.selectedIconPath : tab.iconPath;
            if (page != null && (app = page.getApp()) != null) {
                appId = app.getAppId();
            }
            OooO00o(str, appId, new OooOO0());
        }
        getTvTabName().setText(tab.text);
        OooO00o(this.OooOO0O ? tabBarConfig.getSelectedColor() : tabBarConfig.getColor());
    }

    public final void OooO00o(String str) {
        if (str != null) {
            try {
                if (str.length() == 0) {
                    return;
                }
                getTvTabName().setTextColor(Color.parseColor(str));
            } catch (Exception e11) {
                TmcLogger.e("[TabBarItemView]: set tab item text color error", e11);
            }
        }
    }

    public final void OooO00o(String str, String str2, Function1<? super Drawable, Unit> function1) {
        if (str == null || str.length() == 0) {
            function1.invoke(null);
        } else if (RegexUtils.isURL(str) && !StringsKt.c0(str, ".miniapp.transsion.com", false, 2, null)) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new OooO(str, str2, function1, null), 3, null);
        } else {
            File file = this.OooOO0o.length() > 0 ? this.OooO0o.get(str, str2, this.OooOO0o) : this.OooO0o.get(str, str2);
            function1.invoke(Drawable.createFromPath(file != null ? file.getAbsolutePath() : null));
        }
    }

    public final Page getPage() {
        return this.OooO;
    }

    public final MiniAppConfigModel.TabBarBean getTabBarConfig() {
        return this.OooO0oO;
    }

    public final MiniAppConfigModel.TabBarBean.ListBean getTabBarList() {
        return this.OooO0oo;
    }

    public final boolean getTabSelected() {
        return this.OooOO0O;
    }

    public final void setCommonresId(String id2) {
        Intrinsics.h(id2, "id");
        this.OooOO0o = id2;
    }

    public final void setPage(Page page) {
        this.OooO = page;
    }

    public final void setTabBarBadge(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        if (this.OooOO0 == null) {
            com.cloud.tmc.miniapp.widget.badgeview.OooO0o oooO0o = (com.cloud.tmc.miniapp.widget.badgeview.OooO0o) new com.cloud.tmc.miniapp.widget.badgeview.OooO0o(getContext(), null).OooO00o(getIvBadge());
            oooO0o.OooO0oo = 8388627;
            oooO0o.invalidate();
            oooO0o.OooO0OO = com.cloud.tmc.miniapp.widget.badgeview.OooO0OO.OooO00o(oooO0o.getContext(), 8.0f);
            oooO0o.OooO0OO();
            oooO0o.invalidate();
            oooO0o.OooO0Oo = com.cloud.tmc.miniapp.widget.badgeview.OooO0OO.OooO00o(oooO0o.getContext(), 2.0f);
            oooO0o.invalidate();
            oooO0o.OooO = com.cloud.tmc.miniapp.widget.badgeview.OooO0OO.OooO00o(oooO0o.getContext(), 0.0f);
            oooO0o.OooOO0 = com.cloud.tmc.miniapp.widget.badgeview.OooO0OO.OooO00o(oooO0o.getContext(), 0.0f);
            oooO0o.invalidate();
            oooO0o.OooO0oO = false;
            oooO0o.invalidate();
            this.OooOO0 = oooO0o;
        }
        if (ViewExtKt.getVisible(getIvRed())) {
            setUnreadVisible(false);
        }
        if (ViewExtKt.getVisible(getIvRedIcon())) {
            setUnreadIconVisible(false);
        }
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
        int i11 = new Regex(".*[\\u4e00-\\u9fa5]+.*").matches(str) ? 6 : 4;
        com.cloud.tmc.miniapp.widget.badgeview.OooO00o oooO00o = this.OooOO0;
        if (oooO00o != null) {
            if (bytes.length > i11) {
                str = "...";
            }
            com.cloud.tmc.miniapp.widget.badgeview.OooO0o oooO0o2 = (com.cloud.tmc.miniapp.widget.badgeview.OooO0o) oooO00o;
            oooO0o2.OooO0o = str;
            oooO0o2.OooO0o0 = 1;
            oooO0o2.OooO0OO();
            oooO0o2.invalidate();
        }
        getIvBadge().setTag(Boolean.TRUE);
    }

    public final void setTabBarConfig(MiniAppConfigModel.TabBarBean tabBarBean) {
        this.OooO0oO = tabBarBean;
    }

    public final void setTabBarList(MiniAppConfigModel.TabBarBean.ListBean listBean) {
        this.OooO0oo = listBean;
    }

    public final void setTabSelected(boolean z10) {
        this.OooOO0O = z10;
    }

    public final void setUnreadIconVisible(boolean z10) {
        if (z10 && Intrinsics.c(getIvBadge().getTag(), Boolean.TRUE)) {
            OooO00o();
        }
        ViewExtKt.toVisibleOrInvisible(getIvRedIcon(), z10);
    }

    public final void setUnreadVisible(boolean z10) {
        if (z10 && Intrinsics.c(getIvBadge().getTag(), Boolean.TRUE)) {
            OooO00o();
        }
        ViewExtKt.toVisibleOrInvisible(getIvRed(), z10);
    }
}
