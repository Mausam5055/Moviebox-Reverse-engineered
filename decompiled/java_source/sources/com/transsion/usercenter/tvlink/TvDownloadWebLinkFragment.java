package com.transsion.usercenter.tvlink;

import android.content.Context;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.fragment.app.w;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.m;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.tabs.TabLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$style;
import com.tn.lib.widget.TnTextView;
import com.transsion.base.report.athena.ClickType;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$string;
import com.transsion.web.api.WebConstants;
import com.transsion.web.fragment.WebFragmentV2;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.p0;
import hj.i;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u000b\u0018\u0000 Z2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001HB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0010\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u0017\u0010\u001f\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\rH\u0002¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\rH\u0002¢\u0006\u0004\b\"\u0010\u0004J\u001f\u0010&\u001a\u00020\r2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u0019H\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010+\u001a\u00020*2\u0006\u0010)\u001a\u00020(H\u0002¢\u0006\u0004\b+\u0010,J'\u00103\u001a\u0002022\u0006\u0010.\u001a\u00020-2\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020/H\u0002¢\u0006\u0004\b3\u00104J\u0011\u00106\u001a\u0004\u0018\u000105H\u0002¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020/2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b8\u00109J\u0017\u0010:\u001a\u00020/2\u0006\u00101\u001a\u00020/H\u0002¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\rH\u0002¢\u0006\u0004\b<\u0010\u0004J\u0017\u0010>\u001a\u00020\r2\u0006\u0010=\u001a\u00020\u0019H\u0002¢\u0006\u0004\b>\u0010?J\u001f\u0010B\u001a\u00020\r2\u0006\u0010@\u001a\u00020/2\u0006\u0010A\u001a\u00020/H\u0002¢\u0006\u0004\bB\u0010CJ\u0011\u0010E\u001a\u0004\u0018\u00010DH\u0002¢\u0006\u0004\bE\u0010FR\u001b\u0010L\u001a\u00020G8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010KR\u0016\u0010O\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0016\u0010S\u001a\u00020P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010V\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0018\u0010Y\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010X¨\u0006["}, d2 = {"Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lfw/p0;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "k0", "(Landroid/view/LayoutInflater;)Lfw/p0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "initListener", "lazyLoadData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "outState", "onSaveInstanceState", "(Landroid/os/Bundle;)V", "", "m0", "()Z", "w0", "Lcom/transsion/usercenter/tvlink/d$b;", "urls", "t0", "(Lcom/transsion/usercenter/tvlink/d$b;)V", "u0", "s0", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "selected", "x0", "(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V", "", "textRes", "Lcom/tn/lib/widget/TnTextView;", "g0", "(I)Lcom/tn/lib/widget/TnTextView;", "Landroidx/fragment/app/w;", "transaction", "", "tag", "url", "Landroidx/fragment/app/Fragment;", "i0", "(Landroidx/fragment/app/w;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;", "Lcom/transsion/web/fragment/WebFragmentV2;", "h0", "()Lcom/transsion/web/fragment/WebFragmentV2;", "r0", "(Lcom/transsion/usercenter/tvlink/d$b;)Ljava/lang/String;", "f0", "(Ljava/lang/String;)Ljava/lang/String;", "v0", "isSuccess", "j0", "(Z)V", "moduleName", NativeComponentConstants.KEY_COMPONENT_TYPE, "p0", "(Ljava/lang/String;Ljava/lang/String;)V", "Landroidx/fragment/app/FragmentActivity;", "q0", "()Landroidx/fragment/app/FragmentActivity;", "Lcom/transsion/usercenter/tvlink/d;", "a", "Lkotlin/Lazy;", "l0", "()Lcom/transsion/usercenter/tvlink/d;", "viewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "selectedTab", "", "c", "J", "loadStartedAt", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isInitializingTabs", "e", "Lcom/transsion/usercenter/tvlink/d$b;", "currentUrls", "f", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TvDownloadWebLinkFragment extends BaseFragment<p0> {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int selectedTab;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private long loadStartedAt;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isInitializingTabs;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private d.b currentUrls;

    /* JADX INFO: renamed from: com.transsion.usercenter.tvlink.TvDownloadWebLinkFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TvDownloadWebLinkFragment a(int i11) {
            TvDownloadWebLinkFragment tvDownloadWebLinkFragment = new TvDownloadWebLinkFragment();
            tvDownloadWebLinkFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("arg_initial_tab_index", Integer.valueOf(i11))));
            return tvDownloadWebLinkFragment;
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57496a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57496a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57496a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f57496a.invoke(obj);
        }
    }

    public static final class c implements TabLayout.OnTabSelectedListener {
        c() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
            Intrinsics.h(tab, "tab");
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            Intrinsics.h(tab, "tab");
            TvDownloadWebLinkFragment.this.selectedTab = tab.getPosition();
            TvDownloadWebLinkFragment.this.x0(tab, true);
            TvDownloadWebLinkFragment.this.u0();
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            Intrinsics.h(tab, "tab");
            TvDownloadWebLinkFragment.this.x0(tab, false);
        }
    }

    public TvDownloadWebLinkFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.usercenter.tvlink.TvDownloadWebLinkFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(d.class), new Function0<x0>() { // from class: com.transsion.usercenter.tvlink.TvDownloadWebLinkFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.usercenter.tvlink.TvDownloadWebLinkFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                m mVar = objInvoke instanceof m ? (m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }

    private final String f0(String url) {
        String string = StringsKt.n1(url).toString();
        if (StringsKt.q0(string)) {
            return "";
        }
        String string2 = Uri.parse(string).buildUpon().appendQueryParameter("pageFrom", "/profile/tv_download_web_link").build().toString();
        Intrinsics.g(string2, "toString(...)");
        return string2;
    }

    private final TnTextView g0(int textRes) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        TnTextView tnTextView = new TnTextView(contextRequireContext);
        tnTextView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        tnTextView.setGravity(17);
        tnTextView.setText(textRes);
        return tnTextView;
    }

    private final WebFragmentV2 h0() {
        d.b bVar = this.currentUrls;
        if (bVar == null || StringsKt.q0(r0(bVar))) {
            return null;
        }
        Fragment fragmentK0 = getChildFragmentManager().k0(this.selectedTab == 0 ? "tag_tv_download_web" : "tag_web_link_web");
        if (fragmentK0 instanceof WebFragmentV2) {
            return (WebFragmentV2) fragmentK0;
        }
        return null;
    }

    private final Fragment i0(w transaction, String tag, String url) {
        Fragment tvDownloadWebEmptyFragment;
        Fragment fragmentK0 = getChildFragmentManager().k0(tag);
        if ((StringsKt.q0(url) ? fragmentK0 instanceof TvDownloadWebEmptyFragment : fragmentK0 instanceof WebFragmentV2) && fragmentK0 != null) {
            return fragmentK0;
        }
        if (fragmentK0 != null) {
            transaction.r(fragmentK0);
        }
        if (StringsKt.q0(url)) {
            tvDownloadWebEmptyFragment = new TvDownloadWebEmptyFragment();
        } else {
            WebFragmentV2 webFragmentV2B = WebFragmentV2.INSTANCE.b();
            Pair pairA = TuplesKt.a("url", url);
            Boolean bool = Boolean.TRUE;
            webFragmentV2B.setArguments(androidx.core.os.d.b(pairA, TuplesKt.a(WebConstants.FIELD_TOOL_BAR_HIDDEN, bool), TuplesKt.a(WebConstants.FIELD_STATUS_BAR_HIDDEN, bool)));
            tvDownloadWebEmptyFragment = webFragmentV2B;
        }
        transaction.c(R$id.webFragmentContainer, tvDownloadWebEmptyFragment, tag);
        return tvDownloadWebEmptyFragment;
    }

    private final void j0(boolean isSuccess) {
        HashMap mapG;
        hj.b logViewConfig;
        long jElapsedRealtime = this.loadStartedAt > 0 ? SystemClock.elapsedRealtime() - this.loadStartedAt : 0L;
        if (isSuccess && (logViewConfig = getLogViewConfig()) != null) {
            logViewConfig.k(true);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
        }
        this.loadStartedAt = 0L;
    }

    private final d l0() {
        return (d) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n0(TvDownloadWebLinkFragment tvDownloadWebLinkFragment, d.b bVar) {
        if (tvDownloadWebLinkFragment.q0() == null || tvDownloadWebLinkFragment.getChildFragmentManager().T0()) {
            return Unit.f67061a;
        }
        d.b bVarA = bVar.a(tvDownloadWebLinkFragment.f0(bVar.b()), tvDownloadWebLinkFragment.f0(bVar.c()));
        tvDownloadWebLinkFragment.currentUrls = bVarA;
        if (bVarA != null) {
            tvDownloadWebLinkFragment.t0(bVarA);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(TvDownloadWebLinkFragment tvDownloadWebLinkFragment, View view) {
        tvDownloadWebLinkFragment.p0("scan_code", "banner");
        Navigator.x(TheRouter.c("/profile/qr_code"), tvDownloadWebLinkFragment.requireContext(), null, 2, null);
    }

    private final void p0(String moduleName, String type) {
        i.f64505a.q("/profile/tv_download_web_link", MapsKt.j(TuplesKt.a("module_name", moduleName), TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, type)), ClickType.FEATURE);
    }

    private final FragmentActivity q0() {
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return null;
        }
        return activity;
    }

    private final String r0(d.b urls) {
        return this.selectedTab == 0 ? urls.b() : urls.c();
    }

    private final void s0() {
        TabLayout tabLayout;
        p0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (tabLayout = mViewBinding.f62848i) == null) {
            return;
        }
        this.isInitializingTabs = true;
        tabLayout.removeAllTabs();
        tabLayout.addTab(tabLayout.newTab().setCustomView(g0(R$string.user_center_tv_download_web_link_tv_download)), false);
        tabLayout.addTab(tabLayout.newTab().setCustomView(g0(R$string.user_center_tv_download_web_link_web_link)), false);
        tabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new c());
        int iM = RangesKt.m(this.selectedTab, 0, 1);
        this.selectedTab = iM;
        TabLayout.Tab tabAt = tabLayout.getTabAt(iM);
        if (tabAt != null) {
            tabAt.select();
        }
        for (int i11 = 0; i11 < 2; i11++) {
            TabLayout.Tab tabAt2 = tabLayout.getTabAt(i11);
            if (tabAt2 != null) {
                x0(tabAt2, tabAt2.getPosition() == this.selectedTab);
            }
        }
        this.isInitializingTabs = false;
    }

    private final void t0(d.b urls) {
        w wVarP = getChildFragmentManager().p();
        Intrinsics.g(wVarP, "beginTransaction(...)");
        Fragment fragmentI0 = i0(wVarP, "tag_tv_download_web", urls.b());
        Fragment fragmentI1 = i0(wVarP, "tag_web_link_web", urls.c());
        if (this.selectedTab == 0) {
            wVarP.y(fragmentI0);
            wVarP.p(fragmentI1);
        } else {
            wVarP.p(fragmentI0);
            wVarP.y(fragmentI1);
        }
        wVarP.i();
        j0((StringsKt.q0(urls.b()) || StringsKt.q0(urls.c())) ? false : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u0() {
        if (this.currentUrls == null) {
            return;
        }
        Fragment fragmentK0 = getChildFragmentManager().k0("tag_tv_download_web");
        Fragment fragmentK1 = getChildFragmentManager().k0("tag_web_link_web");
        if (getChildFragmentManager().T0()) {
            return;
        }
        w wVarP = getChildFragmentManager().p();
        if (fragmentK0 != null) {
            Fragment fragment = fragmentK0.isAdded() ? fragmentK0 : null;
            if (fragment != null) {
                wVarP.p(fragment);
            }
        }
        if (fragmentK1 != null) {
            Fragment fragment2 = fragmentK1.isAdded() ? fragmentK1 : null;
            if (fragment2 != null) {
                wVarP.p(fragment2);
            }
        }
        if (this.selectedTab == 0) {
            if (fragmentK0 != null) {
                if (!fragmentK0.isAdded()) {
                    fragmentK0 = null;
                }
                if (fragmentK0 != null) {
                    wVarP.y(fragmentK0);
                }
            }
        } else if (fragmentK1 != null) {
            if (!fragmentK1.isAdded()) {
                fragmentK1 = null;
            }
            if (fragmentK1 != null) {
                wVarP.y(fragmentK1);
            }
        }
        wVarP.i();
    }

    private final void v0() {
        HashMap mapG;
        this.loadStartedAt = SystemClock.elapsedRealtime();
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    private final void w0() {
        boolean z10;
        Group group;
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null) {
            z10 = iPremiumApi.u();
        }
        p0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (group = mViewBinding.f62846g) == null) {
            return;
        }
        group.setVisibility(z10 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x0(TabLayout.Tab tab, boolean selected) {
        View customView = tab.getCustomView();
        TnTextView tnTextView = customView instanceof TnTextView ? (TnTextView) customView : null;
        if (tnTextView == null) {
            return;
        }
        int i11 = selected ? R$style.style_import_text : R$style.style_regular_text;
        float f11 = selected ? 16.0f : 14.0f;
        int i12 = selected ? R$color.white_100 : R$color.white_80;
        androidx.core.widget.m.q(tnTextView, i11);
        tnTextView.setTextSize(2, f11);
        tnTextView.setTextColor(androidx.core.content.b.getColor(requireContext(), i12));
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        l0().b().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.usercenter.tvlink.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TvDownloadWebLinkFragment.n0(this.f57499a, (d.b) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initListener() {
        p0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f62841b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.tvlink.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TvDownloadWebLinkFragment.o0(this.f57498a, view);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        int i11 = 0;
        if (savedInstanceState != null) {
            i11 = savedInstanceState.getInt("state_selected_tab", 0);
        } else {
            Bundle arguments = getArguments();
            if (arguments != null) {
                i11 = arguments.getInt("arg_initial_tab_index", 0);
            }
        }
        this.selectedTab = i11;
        ImageView imageView = (ImageView) view.findViewById(com.tn.lib.widget.R$id.iv_back);
        if (imageView != null) {
            imageView.setImageTintList(ColorStateList.valueOf(androidx.core.content.b.getColor(requireContext(), R$color.white_100)));
        }
        w0();
        s0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public p0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        p0 p0VarC = p0.c(inflater);
        Intrinsics.g(p0VarC, "inflate(...)");
        return p0VarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        v0();
        l0().c();
    }

    public final boolean m0() {
        WebFragmentV2 webFragmentV2H0 = h0();
        return webFragmentV2H0 != null && webFragmentV2H0.u1();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b("/profile/tv_download_web_link", false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        outState.putInt("state_selected_tab", this.selectedTab);
        super.onSaveInstanceState(outState);
    }
}
