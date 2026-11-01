package com.transsion.home.fragment.subscription;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.d;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.commercializationapi.IPsLinkApi;
import com.transsion.home.R$id;
import com.transsion.home.fragment.subscription.SubscriptionBottomOpFragment;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.room.sub.fragment.subscription.SubscriptionFragment;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.k;
import java.util.LinkedHashMap;
import jg.c;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import yj.a;
import yj.b;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u0000 !2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lcom/transsion/home/fragment/subscription/SubscriptionBottomOpFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lgl/k;", "<init>", "()V", "", "h0", "g0", "d0", "Landroid/view/LayoutInflater;", "inflater", "c0", "(Landroid/view/LayoutInflater;)Lgl/k;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "hidden", "onHiddenChanged", "(Z)V", "lazyLoadData", "onResume", "", "a", "I", "tabId", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "tabCode", "c", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubscriptionBottomOpFragment extends BaseFragment<k> {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f45264d = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int tabId = HomeTabId.INSTANCE.e();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String tabCode;

    /* JADX INFO: renamed from: com.transsion.home.fragment.subscription.SubscriptionBottomOpFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubscriptionBottomOpFragment a(int i11, String str) {
            Bundle bundle = new Bundle();
            bundle.putInt("tab_id", i11);
            bundle.putString(WebConstants.TAB_CODE, str);
            SubscriptionBottomOpFragment subscriptionBottomOpFragment = new SubscriptionBottomOpFragment();
            subscriptionBottomOpFragment.setArguments(bundle);
            return subscriptionBottomOpFragment;
        }
    }

    private final void d0() {
        getChildFragmentManager().p().s(R$id.bottom_op_container, SubscriptionFragment.INSTANCE.a()).i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(SubscriptionBottomOpFragment subscriptionBottomOpFragment, View view) {
        b bVar = (b) a.f79022a.a(b.class);
        if (bVar != null) {
            Context contextRequireContext = subscriptionBottomOpFragment.requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            bVar.c("", contextRequireContext);
        }
        subscriptionBottomOpFragment.h0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(SubscriptionBottomOpFragment subscriptionBottomOpFragment, View view) {
        Navigator.x(TheRouter.c("/commercial/playstore"), subscriptionBottomOpFragment.requireContext(), null, 2, null);
        subscriptionBottomOpFragment.g0();
    }

    private final void g0() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "app_center");
        com.transsion.baselib.helper.a.f43262a.i(SubTabFragment.INSTANCE.a(this.tabId), linkedHashMap);
    }

    private final void h0() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "search");
        linkedHashMap.put("hot_search_word", "");
        com.transsion.baselib.helper.a.f43262a.i(SubTabFragment.INSTANCE.a(this.tabId), linkedHashMap);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public k getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        k kVarC = k.c(inflater);
        Intrinsics.g(kVarC, "inflate(...)");
        return kVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        k mViewBinding;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        ConstraintLayout constraintLayout;
        Intrinsics.h(view, "view");
        Bundle arguments = getArguments();
        this.tabId = arguments != null ? arguments.getInt("tab_id") : this.tabId;
        Bundle arguments2 = getArguments();
        ViewGroup.LayoutParams layoutParams = null;
        this.tabCode = arguments2 != null ? arguments2.getString(WebConstants.TAB_CODE) : null;
        d0();
        k mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (constraintLayout = mViewBinding2.f63754f) != null) {
            layoutParams = constraintLayout.getLayoutParams();
        }
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams)).topMargin = d.c();
        k mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (appCompatImageView3 = mViewBinding3.f63751c) != null) {
            appCompatImageView3.setOnClickListener(new View.OnClickListener() { // from class: ml.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubscriptionBottomOpFragment.e0(this.f69619a, view2);
                }
            });
        }
        k mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatImageView2 = mViewBinding4.f63752d) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: ml.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubscriptionBottomOpFragment.f0(this.f69620a, view2);
                }
            });
        }
        IPsLinkApi iPsLinkApi = (IPsLinkApi) TheRouter.d(IPsLinkApi.class, new Object[0]);
        if ((iPsLinkApi != null && iPsLinkApi.a() && !rl.a.f74545a.a()) || (mViewBinding = getMViewBinding()) == null || (appCompatImageView = mViewBinding.f63752d) == null) {
            return;
        }
        c.g(appCompatImageView);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
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
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }
}
