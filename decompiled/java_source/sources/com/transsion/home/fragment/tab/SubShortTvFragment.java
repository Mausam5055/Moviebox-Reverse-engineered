package com.transsion.home.fragment.tab;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.home.R$id;
import com.transsion.shorttv.ui.fragment.ShortTVDiscoverFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0007*\u0001/\b\u0007\u0018\u0000 32\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00014B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u001f\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0011\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b \u0010!R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010$R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u00102\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101¨\u00065"}, d2 = {"Lcom/transsion/home/fragment/tab/SubShortTvFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lgl/x;", "<init>", "()V", "", "y0", "", "alpha", "E0", "(F)V", "z0", "()F", "Landroid/view/LayoutInflater;", "inflater", "A0", "(Landroid/view/LayoutInflater;)Lgl/x;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "p0", "", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "", "g", "Z", "mHasTranslateWindow", "h", "I", "mHeaderBgHeight", "i", "mIsFirstRender", "Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;", "j", "Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;", "shorTvFragment", "com/transsion/home/fragment/tab/SubShortTvFragment$b", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/home/fragment/tab/SubShortTvFragment$b;", "mRecycleScrollListener", "l", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubShortTvFragment extends BaseHomeSubFragment<gl.x> {

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f45308m = 8;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean mHasTranslateWindow;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int mHeaderBgHeight;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private ShortTVDiscoverFragment shorTvFragment;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean mIsFirstRender = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final b mRecycleScrollListener = new b();

    /* JADX INFO: renamed from: com.transsion.home.fragment.tab.SubShortTvFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubShortTvFragment a(int i11) {
            SubShortTvFragment subShortTvFragment = new SubShortTvFragment();
            subShortTvFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("tab_id", Integer.valueOf(i11))));
            return subShortTvFragment;
        }
    }

    public static final class b extends RecyclerView.r {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (SubShortTvFragment.this.mHasTranslateWindow) {
                int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                SubShortTvFragment subShortTvFragment = SubShortTvFragment.this;
                subShortTvFragment.E0(RangesKt.h((iComputeVerticalScrollOffset * 1.0f) / subShortTvFragment.mHeaderBgHeight, 1.0f));
                if (!SubShortTvFragment.this.getMIsWhite() && SubShortTvFragment.this.z0() < 0.7f) {
                    SubShortTvFragment.this.b0(true);
                } else {
                    if (!SubShortTvFragment.this.getMIsWhite() || SubShortTvFragment.this.z0() < 0.7f) {
                        return;
                    }
                    SubShortTvFragment.this.b0(false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final rs.a B0() {
        return new com.transsion.postdetail.shorttv.factory.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tt.a C0() {
        return new com.transsion.postdetail.shorttv.factory.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D0(SubShortTvFragment subShortTvFragment, boolean z10) {
        subShortTvFragment.mHasTranslateWindow = z10;
        if (subShortTvFragment.mIsFirstRender) {
            subShortTvFragment.y0();
            subShortTvFragment.mIsFirstRender = false;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void E0(float alpha) {
        View view;
        gl.x xVar = (gl.x) getMViewBinding();
        if (xVar == null || (view = xVar.f63863c) == null) {
            return;
        }
        view.setAlpha(alpha);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void y0() {
        View view;
        FrameLayout frameLayout;
        gl.x xVar = (gl.x) getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (xVar == null || (frameLayout = xVar.f63862b) == null) ? null : frameLayout.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        if (this.mHasTranslateWindow) {
            layoutParams2.topMargin = 0;
            E0(0.0f);
            b0(true);
        } else {
            gl.x xVar2 = (gl.x) getMViewBinding();
            layoutParams2.topMargin = (xVar2 == null || (view = xVar2.f63863c) == null) ? 0 : view.getHeight();
            E0(1.0f);
            b0(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final float z0() {
        View view;
        gl.x xVar = (gl.x) getMViewBinding();
        if (xVar == null || (view = xVar.f63863c) == null) {
            return 0.0f;
        }
        return view.getAlpha();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: A0, reason: merged with bridge method [inline-methods] */
    public gl.x getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gl.x xVarC = gl.x.c(inflater);
        Intrinsics.g(xVarC, "inflate(...)");
        return xVarC;
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
        lr.c.f69031a.a(new Function0() { // from class: com.transsion.home.fragment.tab.v
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SubShortTvFragment.B0();
            }
        });
        ys.a.f79056a.a(new Function0() { // from class: com.transsion.home.fragment.tab.w
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SubShortTvFragment.C0();
            }
        });
        this.shorTvFragment = ShortTVDiscoverFragment.INSTANCE.a(true, getArguments());
        this.mHeaderBgHeight = h0();
        gl.x xVar = (gl.x) getMViewBinding();
        if (xVar != null && (view2 = xVar.f63863c) != null && (layoutParams = view2.getLayoutParams()) != null) {
            layoutParams.height = this.mHeaderBgHeight;
        }
        ShortTVDiscoverFragment shortTVDiscoverFragment = this.shorTvFragment;
        if (shortTVDiscoverFragment != null) {
            shortTVDiscoverFragment.B1(this.mRecycleScrollListener, new Function1() { // from class: com.transsion.home.fragment.tab.x
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubShortTvFragment.D0(this.f45510a, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void l0(int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        y0();
        ShortTVDiscoverFragment shortTVDiscoverFragment = this.shorTvFragment;
        if (shortTVDiscoverFragment != null) {
            getChildFragmentManager().p().s(R$id.sub_shor_tv_container, shortTVDiscoverFragment).i();
        }
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void p0() {
        ShortTVDiscoverFragment shortTVDiscoverFragment = this.shorTvFragment;
        if (shortTVDiscoverFragment != null) {
            shortTVDiscoverFragment.u1();
        }
    }
}
