package com.transsion.home.fragment.bottom;

import ak.g;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.a0;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.activity.k;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.commercializationapi.IPsLinkApi;
import com.transsion.home.R$id;
import com.transsion.home.adapter.d;
import com.transsion.home.fragment.bottom.BottomOpFragment;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.j;
import java.util.LinkedHashMap;
import jg.c;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import yj.a;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004R\u0016\u0010#\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006)"}, d2 = {"Lcom/transsion/home/fragment/bottom/BottomOpFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lgl/j;", "<init>", "()V", "", "k0", "j0", "f0", "e0", "i0", "Landroid/view/LayoutInflater;", "inflater", "d0", "(Landroid/view/LayoutInflater;)Lgl/j;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "hidden", "onHiddenChanged", "(Z)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "", "c0", "()I", "lazyLoadData", "onResume", "a", "I", "tabId", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "tabCode", "c", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BottomOpFragment extends BaseFragment<j> {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f44878d = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int tabId = HomeTabId.INSTANCE.e();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String tabCode;

    /* JADX INFO: renamed from: com.transsion.home.fragment.bottom.BottomOpFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final BottomOpFragment a(int i11, String str) {
            Bundle bundle = new Bundle();
            bundle.putInt("tab_id", i11);
            bundle.putString(WebConstants.TAB_CODE, str);
            BottomOpFragment bottomOpFragment = new BottomOpFragment();
            bottomOpFragment.setArguments(bundle);
            return bottomOpFragment;
        }
    }

    public static final class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(BottomOpFragment bottomOpFragment, int i11) {
            MagicIndicator magicIndicator;
            j mViewBinding = bottomOpFragment.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f63742h) == null) {
                return;
            }
            magicIndicator.onPageSelected(i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i11);
            j mViewBinding = BottomOpFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f63742h) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i11, f11, i12);
            j mViewBinding = BottomOpFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f63742h) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i11, f11, i12);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(final int i11) {
            View view;
            View view2;
            MagicIndicator magicIndicator;
            super.onPageSelected(i11);
            j mViewBinding = BottomOpFragment.this.getMViewBinding();
            if (mViewBinding != null && (magicIndicator = mViewBinding.f63742h) != null) {
                final BottomOpFragment bottomOpFragment = BottomOpFragment.this;
                magicIndicator.post(new Runnable() { // from class: jl.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        BottomOpFragment.b.b(bottomOpFragment, i11);
                    }
                });
            }
            if (i11 == 0) {
                j mViewBinding2 = BottomOpFragment.this.getMViewBinding();
                if (mViewBinding2 == null || (view2 = mViewBinding2.f63744j) == null) {
                    return;
                }
                view2.setVisibility(8);
                return;
            }
            j mViewBinding3 = BottomOpFragment.this.getMViewBinding();
            if (mViewBinding3 == null || (view = mViewBinding3.f63744j) == null) {
                return;
            }
            view.setVisibility(0);
        }
    }

    private final void e0() {
        MagicIndicator magicIndicator;
        FrameLayout frameLayout;
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (frameLayout = mViewBinding.f63736b) != null) {
            c.h(frameLayout);
        }
        CommonNavigator commonNavigator = new CommonNavigator(getContext());
        commonNavigator.setAdapter(new d(getMViewBinding()));
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (magicIndicator = mViewBinding2.f63742h) == null) {
            return;
        }
        magicIndicator.setNavigator(commonNavigator);
    }

    private final void f0() {
        View view;
        MagicIndicator magicIndicator;
        ViewPager2 viewPager2;
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (viewPager2 = mViewBinding.f63745k) != null) {
            c.h(viewPager2);
        }
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (magicIndicator = mViewBinding2.f63742h) != null) {
            c.h(magicIndicator);
        }
        j mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (view = mViewBinding3.f63744j) != null) {
            c.h(view);
        }
        Bundle arguments = getArguments();
        getChildFragmentManager().p().s(R$id.bottom_op_container, SubTabFragment.INSTANCE.b(this.tabId, arguments != null ? arguments.getString(WebConstants.TAB_CODE) : null)).i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(BottomOpFragment bottomOpFragment, View view) {
        yj.b bVar = (yj.b) a.f79022a.a(yj.b.class);
        if (bVar != null) {
            Context contextRequireContext = bottomOpFragment.requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            bVar.c("", contextRequireContext);
        }
        bottomOpFragment.k0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(BottomOpFragment bottomOpFragment, View view) {
        Navigator.x(TheRouter.c("/commercial/playstore"), bottomOpFragment.requireContext(), null, 2, null);
        bottomOpFragment.j0();
    }

    private final void i0() {
        ViewPager2 viewPager2;
        j mViewBinding = getMViewBinding();
        com.transsion.home.adapter.c cVar = new com.transsion.home.adapter.c(mViewBinding != null ? mViewBinding.f63745k : null, this.tabId, this.tabCode, this);
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null) {
            mViewBinding2.f63745k.setAdapter(cVar);
        }
        j mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (viewPager2 = mViewBinding3.f63745k) == null) {
            return;
        }
        viewPager2.registerOnPageChangeCallback(new b());
    }

    private final void j0() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "app_center");
        com.transsion.baselib.helper.a.f43262a.i(SubTabFragment.INSTANCE.a(this.tabId), linkedHashMap);
    }

    private final void k0() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "search");
        linkedHashMap.put("hot_search_word", "");
        com.transsion.baselib.helper.a.f43262a.i(SubTabFragment.INSTANCE.a(this.tabId), linkedHashMap);
    }

    public final int c0() {
        int iA = a0.a(56.0f) + com.blankj.utilcode.util.d.c();
        return this.tabId == HomeTabId.INSTANCE.e() ? iA + a0.a(22.0f) : iA;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public j getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        j jVarC = j.c(inflater);
        Intrinsics.g(jVarC, "inflate(...)");
        return jVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        j mViewBinding;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        TnTextView tnTextView;
        ConstraintLayout constraintLayout;
        Intrinsics.h(view, "view");
        Bundle arguments = getArguments();
        this.tabId = arguments != null ? arguments.getInt("tab_id") : this.tabId;
        Bundle arguments2 = getArguments();
        ViewGroup.LayoutParams layoutParams = null;
        this.tabCode = arguments2 != null ? arguments2.getString(WebConstants.TAB_CODE) : null;
        if (this.tabId != HomeTabId.INSTANCE.e() || g.f639a.b()) {
            f0();
        } else {
            i0();
            e0();
        }
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (constraintLayout = mViewBinding2.f63740f) != null) {
            layoutParams = constraintLayout.getLayoutParams();
        }
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams)).topMargin = com.blankj.utilcode.util.d.c();
        j mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (tnTextView = mViewBinding3.f63741g) != null) {
            tnTextView.setOnClickListener(new View.OnClickListener() { // from class: jl.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BottomOpFragment.g0(this.f66220a, view2);
                }
            });
        }
        j mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatImageView2 = mViewBinding4.f63738d) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: jl.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BottomOpFragment.h0(this.f66221a, view2);
                }
            });
        }
        IPsLinkApi iPsLinkApi = (IPsLinkApi) TheRouter.d(IPsLinkApi.class, new Object[0]);
        if ((iPsLinkApi != null && iPsLinkApi.a() && !rl.a.f74545a.a()) || (mViewBinding = getMViewBinding()) == null || (appCompatImageView = mViewBinding.f63738d) == null) {
            return;
        }
        c.g(appCompatImageView);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        String str = this.tabCode;
        if (str == null) {
            str = "BottomOpFragment: " + this.tabId;
        }
        return new hj.b(str, false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
        k.h(null, this, hidden, null, 9, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }
}
