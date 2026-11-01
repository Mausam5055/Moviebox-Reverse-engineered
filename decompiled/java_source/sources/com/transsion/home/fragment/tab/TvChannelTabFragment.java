package com.transsion.home.fragment.tab;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.home.R$id;
import com.transsion.home.tv.fragment.TVChannelHomeFragment;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000  2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Lcom/transsion/home/fragment/tab/TvChannelTabFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lgl/b0;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "r0", "(Landroid/view/LayoutInflater;)Lgl/b0;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;", "g", "Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;", "tvChannelHomeFragment", "h", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TvChannelTabFragment extends BaseHomeSubFragment<gl.b0> {

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f45388i = 8;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private TVChannelHomeFragment tvChannelHomeFragment;

    /* JADX INFO: renamed from: com.transsion.home.fragment.tab.TvChannelTabFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TvChannelTabFragment a(int i11, String str) {
            TvChannelTabFragment tvChannelTabFragment = new TvChannelTabFragment();
            tvChannelTabFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("tab_id", Integer.valueOf(i11)), TuplesKt.a(WebConstants.TAB_CODE, str)));
            return tvChannelTabFragment;
        }
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public RecyclerView f0() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        View view2;
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.l(false);
            logViewConfig.m(false);
        }
        gl.b0 b0Var = (gl.b0) getMViewBinding();
        if (b0Var == null || (view2 = b0Var.f63645c) == null || (layoutParams = view2.getLayoutParams()) == null) {
            return;
        }
        layoutParams.height = h0();
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void l0(int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        TVChannelHomeFragment tVChannelHomeFragment = this.tvChannelHomeFragment;
        if (tVChannelHomeFragment != null) {
            getChildFragmentManager().p().s(R$id.fl_container, tVChannelHomeFragment).i();
        }
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        int i11 = arguments != null ? arguments.getInt("tab_id") : 0;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string = arguments2.getString(WebConstants.TAB_CODE)) == null) {
            string = "";
        }
        this.tvChannelHomeFragment = TVChannelHomeFragment.INSTANCE.c(i11, string);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public gl.b0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gl.b0 b0VarC = gl.b0.c(inflater);
        Intrinsics.g(b0VarC, "inflate(...)");
        return b0VarC;
    }
}
