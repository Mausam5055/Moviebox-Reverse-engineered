package com.transsion.postdetail.shorttv;

import ak.x;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.GradientLinePagerIndicator;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.shorttv.widget.ShortTVTabTitleView;
import com.transsion.postdetail.ui.fragment.ShortTvVideoFragment;
import com.transsion.postdetail.ui.fragment.VideoFragment;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.R$id;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import so.t;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 I2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001)B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u0004J!\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0015\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010 \u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\bH\u0016¢\u0006\u0004\b\"\u0010\u0004J\u0015\u0010#\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b#\u0010\u0013J\u0017\u0010%\u001a\u00020\b2\u0006\u0010$\u001a\u00020\u001eH\u0016¢\u0006\u0004\b%\u0010&R\u001c\u0010+\u001a\n (*\u0004\u0018\u00010'0'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00020\u000b0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R \u00104\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u000201008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010=\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010:R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010F\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010CR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010H¨\u0006J"}, d2 = {"Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lso/t;", "<init>", "()V", "Landroidx/fragment/app/Fragment;", "p0", "()Landroidx/fragment/app/Fragment;", "", "initViewPager", "k0", "", RequestParameters.POSITION, "", "isBanner", "o0", "(IZ)V", "isWhiteFont", "n0", "(Z)V", "isWhiteBg", "l0", "s0", "()Z", "Landroid/view/LayoutInflater;", "inflater", "q0", "(Landroid/view/LayoutInflater;)Lso/t;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "m0", "outState", "onSaveInstanceState", "(Landroid/os/Bundle;)V", "", "kotlin.jvm.PlatformType", "a", "Ljava/lang/String;", "TAG", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "[Ljava/lang/Integer;", "tabs", "", "Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;", "c", "Ljava/util/Map;", "tabTitleViewMap", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator", "e", "I", "defaultTabIndex", "f", "selectTabIndex", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "g", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "vpAdapter", "h", "Ljava/lang/Integer;", "selectedColor", "i", "normalColor", "j", "Z", CampaignEx.JSON_KEY_AD_K, "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTVHomeFragment extends BaseFragment<t> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG = ShortTVHomeFragment.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Integer[] tabs = {Integer.valueOf(R$string.discover), Integer.valueOf(R$string.title_for_you)};

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Map tabTitleViewMap = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private CommonNavigator commonNavigator;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int defaultTabIndex;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int selectTabIndex;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private FragmentStateAdapter vpAdapter;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private Integer selectedColor;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private Integer normalColor;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isBanner;

    public static final class b extends j00.a {

        public static final class a extends com.transsion.baseui.util.f {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ ShortTVHomeFragment f49171e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ int f49172f;

            a(ShortTVHomeFragment shortTVHomeFragment, int i11) {
                this.f49171e = shortTVHomeFragment;
                this.f49172f = i11;
            }

            @Override // com.transsion.baseui.util.f
            public void c(View view) {
            }

            @Override // com.transsion.baseui.util.f
            public void d(View view) {
                ViewPager2 viewPager2;
                t mViewBinding = this.f49171e.getMViewBinding();
                if (mViewBinding != null && (viewPager2 = mViewBinding.f75719c) != null) {
                    viewPager2.setCurrentItem(this.f49172f, false);
                }
                if (this.f49172f == 0) {
                    this.f49171e.selectTabIndex = 0;
                }
            }
        }

        b() {
        }

        @Override // j00.a
        public int a() {
            return ShortTVHomeFragment.this.tabs.length;
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            Context contextRequireContext = ShortTVHomeFragment.this.requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            GradientLinePagerIndicator gradientLinePagerIndicator = new GradientLinePagerIndicator(contextRequireContext);
            ShortTVHomeFragment shortTVHomeFragment = ShortTVHomeFragment.this;
            gradientLinePagerIndicator.setMode(2);
            gradientLinePagerIndicator.setLineHeight(com.blankj.utilcode.util.i.e(3.0f));
            gradientLinePagerIndicator.setLineWidth(com.blankj.utilcode.util.i.e(24.0f));
            gradientLinePagerIndicator.setRoundRadius(com.blankj.utilcode.util.i.e(1.5f));
            gradientLinePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
            gradientLinePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
            gradientLinePagerIndicator.setColors(androidx.core.content.b.getColor(shortTVHomeFragment.requireContext(), R$color.brand_gradient_start), androidx.core.content.b.getColor(shortTVHomeFragment.requireContext(), R$color.brand_gradient_center), androidx.core.content.b.getColor(shortTVHomeFragment.requireContext(), R$color.brand_gradient_end));
            return gradientLinePagerIndicator;
        }

        @Override // j00.a
        public j00.d c(Context context, int i11) {
            Intrinsics.h(context, "context");
            ShortTVTabTitleView shortTVTabTitleView = new ShortTVTabTitleView(context);
            ShortTVHomeFragment shortTVHomeFragment = ShortTVHomeFragment.this;
            shortTVTabTitleView.setTextById(shortTVHomeFragment.tabs[i11].intValue());
            shortTVTabTitleView.setOnClickListener(new a(shortTVHomeFragment, i11));
            shortTVHomeFragment.tabTitleViewMap.put(Integer.valueOf(i11), shortTVTabTitleView);
            return shortTVTabTitleView;
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i11);
            t mViewBinding = ShortTVHomeFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f75718b) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i11, f11, i12);
            t mViewBinding = ShortTVHomeFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f75718b) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i11, f11, i12);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            MagicIndicator magicIndicator;
            super.onPageSelected(i11);
            t mViewBinding = ShortTVHomeFragment.this.getMViewBinding();
            if (mViewBinding != null && (magicIndicator = mViewBinding.f75718b) != null) {
                magicIndicator.onPageSelected(i11);
            }
            int unused = ShortTVHomeFragment.this.selectTabIndex;
            ShortTVHomeFragment.this.l0(true);
            ShortTVHomeFragment.this.n0(true);
            ShortTVHomeFragment.this.selectTabIndex = i11;
            ShortTVHomeFragment shortTVHomeFragment = ShortTVHomeFragment.this;
            shortTVHomeFragment.m0(shortTVHomeFragment.isBanner);
        }
    }

    public static final class d extends FragmentStateAdapter {
        d() {
            super(ShortTVHomeFragment.this);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = ShortTVHomeFragment.this.TAG;
            Intrinsics.g(str, "access$getTAG$p(...)");
            lg.a.C0828a.f(c0828a, str, "createFragment, position:" + i11, false, 4, null);
            return ShortTVHomeFragment.this.p0();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ShortTVHomeFragment.this.tabs.length;
        }
    }

    private final void initViewPager() {
        ViewPager2 viewPager2;
        this.vpAdapter = new d();
        t mViewBinding = getMViewBinding();
        if (mViewBinding != null && (viewPager2 = mViewBinding.f75719c) != null) {
            viewPager2.setAdapter(this.vpAdapter);
        }
        k0();
        new Handler().postDelayed(new Runnable() { // from class: com.transsion.postdetail.shorttv.i
            @Override // java.lang.Runnable
            public final void run() {
                ShortTVHomeFragment.r0(this.f49221a);
            }
        }, 10L);
    }

    private final void k0() {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        MagicIndicator magicIndicator;
        CommonNavigator commonNavigator = new CommonNavigator(requireContext());
        commonNavigator.setFollowTouch(true);
        commonNavigator.setAdapter(new b());
        this.commonNavigator = commonNavigator;
        t mViewBinding = getMViewBinding();
        if (mViewBinding != null && (magicIndicator = mViewBinding.f75718b) != null) {
            magicIndicator.setNavigator(this.commonNavigator);
        }
        t mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (viewPager3 = mViewBinding2.f75719c) != null) {
            viewPager3.registerOnPageChangeCallback(new c());
        }
        t mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (viewPager2 = mViewBinding3.f75719c) == null) {
            return;
        }
        viewPager2.setCurrentItem(this.selectTabIndex, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l0(boolean isWhiteBg) {
        if (isVisible()) {
            uy.d dVar = new uy.d(isWhiteBg);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = uy.d.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, dVar, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0(boolean isWhiteFont) {
        ImmersionBar immersionBarWith = ImmersionBar.with(this);
        boolean z10 = false;
        if (!isWhiteFont && !x.f658a.a()) {
            z10 = true;
        }
        immersionBarWith.statusBarDarkFont(z10);
        immersionBarWith.init();
    }

    private final void o0(int position, boolean isBanner) {
        LinearLayout linearLayout;
        Context contextRequireContext = requireContext();
        Integer num = this.selectedColor;
        int color = androidx.core.content.b.getColor(contextRequireContext, num != null ? num.intValue() : R$color.text_01);
        Context contextRequireContext2 = requireContext();
        Integer num2 = this.normalColor;
        int color2 = androidx.core.content.b.getColor(contextRequireContext2, num2 != null ? num2.intValue() : com.transsion.postdetail.R$color.short_tv_top_title_gray_color);
        int color3 = androidx.core.content.b.getColor(requireContext(), R$color.white);
        int color4 = androidx.core.content.b.getColor(requireContext(), R$color.white_60);
        CommonNavigator commonNavigator = this.commonNavigator;
        if (commonNavigator != null) {
            LinearLayout linearLayout2 = (LinearLayout) commonNavigator.findViewById(R$id.title_container);
            View childAt = linearLayout2.getChildAt(0);
            View childAt2 = linearLayout2.getChildAt(1);
            if (position != 0) {
                if (position == 1) {
                    if (childAt instanceof ShortTVTabTitleView) {
                        ShortTVTabTitleView shortTVTabTitleView = (ShortTVTabTitleView) childAt;
                        shortTVTabTitleView.setNormalColor(color4);
                        shortTVTabTitleView.setTextColor(color4);
                    }
                    if (childAt2 instanceof ShortTVTabTitleView) {
                        ShortTVTabTitleView shortTVTabTitleView2 = (ShortTVTabTitleView) childAt2;
                        shortTVTabTitleView2.setSelectedColor(color3);
                        shortTVTabTitleView2.setTextColor(color3);
                    }
                }
            } else if (isBanner) {
                if (childAt instanceof ShortTVTabTitleView) {
                    ShortTVTabTitleView shortTVTabTitleView3 = (ShortTVTabTitleView) childAt;
                    shortTVTabTitleView3.setSelectedColor(color3);
                    shortTVTabTitleView3.setTextColor(color3);
                }
                if (childAt2 instanceof ShortTVTabTitleView) {
                    ShortTVTabTitleView shortTVTabTitleView4 = (ShortTVTabTitleView) childAt2;
                    shortTVTabTitleView4.setNormalColor(color4);
                    shortTVTabTitleView4.setTextColor(color4);
                }
            } else {
                if (childAt instanceof ShortTVTabTitleView) {
                    ShortTVTabTitleView shortTVTabTitleView5 = (ShortTVTabTitleView) childAt;
                    shortTVTabTitleView5.setSelectedColor(color);
                    shortTVTabTitleView5.setTextColor(color);
                }
                if (childAt2 instanceof ShortTVTabTitleView) {
                    ShortTVTabTitleView shortTVTabTitleView6 = (ShortTVTabTitleView) childAt2;
                    shortTVTabTitleView6.setNormalColor(color2);
                    shortTVTabTitleView6.setTextColor(color2);
                }
            }
            for (View view : CollectionsKt.o(childAt, childAt2)) {
                ViewGroup.LayoutParams layoutParams = view != null ? view.getLayoutParams() : null;
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                layoutParams2.width = -2;
                layoutParams2.height = -1;
                view.setLayoutParams(layoutParams2);
            }
        }
        CommonNavigator commonNavigator2 = this.commonNavigator;
        if (commonNavigator2 == null || (linearLayout = (LinearLayout) commonNavigator2.findViewById(R$id.indicator_container)) == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            int childCount = linearLayout.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt3 = linearLayout.getChildAt(i11);
                GradientLinePagerIndicator gradientLinePagerIndicator = childAt3 instanceof GradientLinePagerIndicator ? (GradientLinePagerIndicator) childAt3 : null;
                if (isBanner || this.selectTabIndex != 0) {
                    if (gradientLinePagerIndicator != null) {
                        gradientLinePagerIndicator.setColors(color3, color3, color3);
                    }
                } else if (gradientLinePagerIndicator != null) {
                    gradientLinePagerIndicator.setColors(androidx.core.content.b.getColor(requireContext(), R$color.brand_gradient_start), androidx.core.content.b.getColor(requireContext(), R$color.brand_gradient_center), androidx.core.content.b.getColor(requireContext(), R$color.brand_gradient_end));
                }
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Fragment p0() {
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_for_you_mode", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value != null && value.length() != 0 && !Intrinsics.c(value, "1")) {
            return VideoFragment.INSTANCE.a(null, null, null, true, (704 & 16) != 0, (704 & 32) != 0 ? "" : null, (704 & 64) != 0 ? false : true, (704 & 128) != 0 ? "" : null, (704 & 256) != 0 ? null : null, (704 & 512) != 0 ? false : false, (704 & 1024) != 0 ? null : null, (704 & 2048) != 0 ? false : false, (704 & 4096) != 0 ? false : false);
        }
        ShortTvVideoFragment.Companion companion = ShortTvVideoFragment.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        return companion.a(contextRequireContext, null, null, null, true, (64 & 32) != 0, (64 & 64) != 0 ? "" : null, (64 & 128) != 0 ? false : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(ShortTVHomeFragment shortTVHomeFragment) {
        try {
            Result.Companion companion = Result.INSTANCE;
            if (shortTVHomeFragment.isAdded() && shortTVHomeFragment.getContext() != null) {
                shortTVHomeFragment.m0(shortTVHomeFragment.isBanner);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final boolean s0() {
        ConfigBean configBeanC = sm.f.f75407c.a().c("shorts_tab_in_for_you", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null) {
            return false;
        }
        return Intrinsics.c(value, "true");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean, int] */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        MagicIndicator magicIndicator;
        Intrinsics.h(view, "view");
        t mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (mViewBinding == null || (magicIndicator = mViewBinding.f75718b) == null) ? null : magicIndicator.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        ((FrameLayout.LayoutParams) layoutParams).topMargin = com.blankj.utilcode.util.d.c();
        ?? S0 = s0();
        this.defaultTabIndex = S0;
        int i11 = S0;
        if (savedInstanceState != 0) {
            i11 = savedInstanceState.getInt("CURRENT_TAB", S0);
        }
        this.selectTabIndex = i11;
        this.isBanner = savedInstanceState != 0 ? savedInstanceState.getBoolean("IS_BANNER", true) : true;
        initViewPager();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    public final void m0(boolean isBanner) {
        this.isBanner = isBanner;
        o0(this.selectTabIndex, isBanner);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putInt("CURRENT_TAB", this.selectTabIndex);
        outState.putBoolean("IS_BANNER", this.isBanner);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public t getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        t tVarC = t.c(inflater);
        Intrinsics.g(tVarC, "inflate(...)");
        return tVarC;
    }
}
