package com.transsion.postdetail.myactivity;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.m;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$style;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.postdetail.myactivity.MyActivityFragment;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import dz.a;
import f.j;
import java.util.HashMap;
import jg.c;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import so.n;
import wo.h;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 U2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001<B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001e\u001a\u00020\u00062\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0006H\u0002¢\u0006\u0004\b&\u0010\u0005J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\bH\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J!\u00102\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\b\u00101\u001a\u0004\u0018\u000100H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\u0005J\u0017\u00105\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b5\u0010\u0016J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u0010\u0005J\u000f\u00109\u001a\u000208H\u0016¢\u0006\u0004\b9\u0010:R\u001d\u0010@\u001a\u0004\u0018\u00010;8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010J\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010N\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\"\u0010T\u001a\u0010\u0012\f\u0012\n Q*\u0004\u0018\u00010P0P0O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010S¨\u0006V"}, d2 = {"Lcom/transsion/postdetail/myactivity/MyActivityFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lso/n;", "Ldz/a;", "<init>", "()V", "", "q0", "", "o0", "()Z", "", RequestParameters.POSITION, "i0", "(Ljava/lang/Integer;)V", "Landroidx/fragment/app/FragmentActivity;", "x0", "()Landroidx/fragment/app/FragmentActivity;", "v0", "Lcom/transsnet/loginapi/bean/UserInfo;", "user", "m0", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "titleRes", "selected", "Landroid/widget/TextView;", "k0", "(IZ)Landroid/widget/TextView;", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "z0", "(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V", "tabView", "A0", "(Landroid/widget/TextView;Z)V", "Landroid/content/res/ColorStateList;", "j0", "()Landroid/content/res/ColorStateList;", "y0", "isSuccess", "l0", "(Z)V", "Landroid/view/LayoutInflater;", "inflater", "n0", "(Landroid/view/LayoutInflater;)Lso/n;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "onLogin", "onResume", "onDestroyView", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/transsnet/loginapi/ILoginApi;", "a", "Lkotlin/Lazy;", "getLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "loginApi", "Lcom/google/android/material/tabs/TabLayoutMediator;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/google/android/material/tabs/TabLayoutMediator;", "tabMediator", "c", "Ljava/lang/Integer;", "pendingRefreshTabIndex", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isLoginDialogShowing", "", "e", "J", "loadStartedAt", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "f", "Landroidx/activity/result/b;", "loginDialogLauncher", "g", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MyActivityFragment extends BaseFragment<n> implements a {

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy loginApi = LazyKt.b(new Function0() { // from class: wo.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MyActivityFragment.s0();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TabLayoutMediator tabMediator;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Integer pendingRefreshTabIndex;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isLoginDialogShowing;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private long loadStartedAt;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b loginDialogLauncher;

    /* JADX INFO: renamed from: com.transsion.postdetail.myactivity.MyActivityFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MyActivityFragment a() {
            return new MyActivityFragment();
        }
    }

    public static final class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
            MyActivityFragment.this.i0(tab != null ? Integer.valueOf(tab.getPosition()) : null);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            MyActivityFragment.this.z0(tab, true);
            MyActivityFragment.this.i0(tab != null ? Integer.valueOf(tab.getPosition()) : null);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            MyActivityFragment.this.z0(tab, false);
        }
    }

    public MyActivityFragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new j(), new androidx.activity.result.a() { // from class: wo.b
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                MyActivityFragment.t0(this.f77918a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.loginDialogLauncher = bVarRegisterForActivityResult;
    }

    private final void A0(TextView tabView, boolean selected) {
        m.q(tabView, selected ? R$style.style_import_text : R$style.style_regular_text);
        tabView.setTextSize(selected ? 16.0f : 14.0f);
        tabView.setTextColor(androidx.core.content.b.getColor(requireContext(), selected ? R$color.white_100 : R$color.white_80));
    }

    private final ILoginApi getLoginApi() {
        return (ILoginApi) this.loginApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0(Integer position) {
        FragmentActivity fragmentActivityX0;
        Intent intentO;
        if (position == null || position.intValue() == 0) {
            return;
        }
        ILoginApi loginApi = getLoginApi();
        if ((loginApi == null || !loginApi.a()) && (fragmentActivityX0 = x0()) != null) {
            this.pendingRefreshTabIndex = position;
            if (this.isLoginDialogShowing) {
                return;
            }
            this.isLoginDialogShowing = true;
            ILoginApi loginApi2 = getLoginApi();
            if (loginApi2 == null || (intentO = loginApi2.o(fragmentActivityX0)) == null) {
                return;
            }
            this.loginDialogLauncher.a(intentO);
        }
    }

    private final ColorStateList j0() {
        return new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[0]}, new int[]{androidx.core.content.b.getColor(requireContext(), R$color.white_100), androidx.core.content.b.getColor(requireContext(), R$color.white_80)});
    }

    private final TextView k0(int titleRes, boolean selected) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        TnTextView tnTextView = new TnTextView(contextRequireContext);
        tnTextView.setText(titleRes);
        tnTextView.setIncludeFontPadding(false);
        tnTextView.setGravity(17);
        tnTextView.setTextColor(j0());
        A0(tnTextView, selected);
        return tnTextView;
    }

    private final void l0(boolean isSuccess) {
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

    private final void m0(UserInfo user) {
        String userId;
        UserInfo userInfoI;
        ViewPager2 viewPager2;
        n mViewBinding = getMViewBinding();
        RecyclerView.Adapter adapter = (mViewBinding == null || (viewPager2 = mViewBinding.f75626g) == null) ? null : viewPager2.getAdapter();
        h hVar = adapter instanceof h ? (h) adapter : null;
        if (hVar == null) {
            return;
        }
        ILoginApi loginApi = getLoginApi();
        if (loginApi == null || (userInfoI = loginApi.i()) == null || (userId = userInfoI.getUserId()) == null) {
            userId = user.getUserId();
        }
        hVar.i(userId);
    }

    private final boolean o0() {
        UserInfo userInfoI;
        n mViewBinding = getMViewBinding();
        if (mViewBinding == null) {
            return false;
        }
        ILoginApi loginApi = getLoginApi();
        final h hVar = new h(this, (loginApi == null || (userInfoI = loginApi.i()) == null) ? null : userInfoI.getUserId());
        mViewBinding.f75626g.setAdapter(hVar);
        mViewBinding.f75626g.setOffscreenPageLimit(3);
        TabLayoutMediator tabLayoutMediator = new TabLayoutMediator(mViewBinding.f75623d, mViewBinding.f75626g, new TabLayoutMediator.TabConfigurationStrategy() { // from class: wo.d
            @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
            public final void onConfigureTab(TabLayout.Tab tab, int i11) {
                MyActivityFragment.p0(this.f77920a, hVar, tab, i11);
            }
        });
        tabLayoutMediator.attach();
        this.tabMediator = tabLayoutMediator;
        mViewBinding.f75623d.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
        mViewBinding.f75626g.setCurrentItem(0, false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(MyActivityFragment myActivityFragment, h hVar, TabLayout.Tab tab, int i11) {
        Intrinsics.h(tab, "tab");
        tab.setCustomView(myActivityFragment.k0(hVar.k(i11), i11 == 0));
    }

    private final void q0() {
        AppCompatImageView appCompatImageView;
        n mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f75621b) == null) {
            return;
        }
        c.c(appCompatImageView, 0L, new Function1() { // from class: wo.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MyActivityFragment.r0(this.f77919a, (View) obj);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r0(MyActivityFragment myActivityFragment, View it) {
        Intrinsics.h(it, "it");
        FragmentActivity activity = myActivityFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi s0() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(MyActivityFragment myActivityFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        myActivityFragment.v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(MyActivityFragment myActivityFragment, UserInfo userInfo) {
        if (myActivityFragment.x0() == null) {
            return;
        }
        myActivityFragment.m0(userInfo);
    }

    private final void v0() {
        this.isLoginDialogShowing = false;
        ILoginApi loginApi = getLoginApi();
        if (loginApi == null || !loginApi.a()) {
            this.pendingRefreshTabIndex = null;
            final n mViewBinding = getMViewBinding();
            if (mViewBinding == null) {
                return;
            }
            mViewBinding.f75626g.post(new Runnable() { // from class: wo.e
                @Override // java.lang.Runnable
                public final void run() {
                    MyActivityFragment.w0(this.f77922a, mViewBinding);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(MyActivityFragment myActivityFragment, n nVar) {
        if (myActivityFragment.x0() == null || nVar.f75626g.getCurrentItem() == 0) {
            return;
        }
        nVar.f75626g.setCurrentItem(0, false);
    }

    private final FragmentActivity x0() {
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return null;
        }
        return activity;
    }

    private final void y0() {
        HashMap mapG;
        this.loadStartedAt = SystemClock.elapsedRealtime();
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0(TabLayout.Tab tab, boolean selected) {
        View customView = tab != null ? tab.getCustomView() : null;
        TextView textView = customView instanceof TextView ? (TextView) customView : null;
        if (textView == null) {
            return;
        }
        A0(textView, selected);
        textView.setSelected(selected);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        ConstraintLayout root;
        Intrinsics.h(view, "view");
        n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (root = mViewBinding.getRoot()) != null) {
            c.e(root);
        }
        ILoginApi loginApi = getLoginApi();
        if (loginApi != null) {
            loginApi.g(this);
        }
        y0();
        q0();
        l0(o0());
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public n getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        n nVarC = n.c(inflater);
        Intrinsics.g(nVarC, "inflate(...)");
        return nVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b("/profile/my_activity", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        ViewPager2 viewPager2;
        ILoginApi loginApi = getLoginApi();
        if (loginApi != null) {
            loginApi.p(this);
        }
        this.pendingRefreshTabIndex = null;
        this.isLoginDialogShowing = false;
        TabLayoutMediator tabLayoutMediator = this.tabMediator;
        if (tabLayoutMediator != null) {
            tabLayoutMediator.detach();
        }
        this.tabMediator = null;
        n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (viewPager2 = mViewBinding.f75626g) != null) {
            viewPager2.setAdapter(null);
        }
        super.onDestroyView();
    }

    @Override // dz.a
    public void onLogin(final UserInfo user) {
        Intrinsics.h(user, "user");
        this.pendingRefreshTabIndex = null;
        this.isLoginDialogShowing = false;
        n mViewBinding = getMViewBinding();
        if (mViewBinding == null) {
            return;
        }
        mViewBinding.f75626g.post(new Runnable() { // from class: wo.f
            @Override // java.lang.Runnable
            public final void run() {
                MyActivityFragment.u0(this.f77924a, user);
            }
        });
    }

    @Override // dz.a
    public void onLogout() {
        a.C0737a.b(this);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ILoginApi loginApi = getLoginApi();
        if (loginApi == null || !loginApi.a()) {
            this.isLoginDialogShowing = false;
        }
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo userInfo) {
        a.C0737a.c(this, userInfo);
    }
}
