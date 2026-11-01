package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.u;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import androidx.slidingpanelayout.widget.SlidingPaneLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0017¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J+\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\t\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00112\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ!\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00112\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0017¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\bH\u0017¢\u0006\u0004\b\u001f\u0010\u001dR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0011\u0010.\u001a\u00020+8F¢\u0006\u0006\u001a\u0004\b,\u0010-¨\u0006/"}, d2 = {"Landroidx/navigation/fragment/AbstractListDetailFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "Landroid/os/Bundle;", "savedInstanceState", "", "onInflate", "(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Y", "Landroidx/navigation/fragment/NavHostFragment;", "X", "()Landroidx/navigation/fragment/NavHostFragment;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Z", "onViewStateRestored", "(Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "Landroidx/activity/u;", "a", "Landroidx/activity/u;", "onBackPressedCallback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/navigation/fragment/NavHostFragment;", "_detailPaneNavHostFragment", "", "c", "I", "graphId", "Landroidx/slidingpanelayout/widget/SlidingPaneLayout;", "W", "()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;", "slidingPaneLayout", "navigation-fragment_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class AbstractListDetailFragment extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private u onBackPressedCallback;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private NavHostFragment _detailPaneNavHostFragment;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int graphId;

    private static final class a extends u implements SlidingPaneLayout.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SlidingPaneLayout f13878a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(SlidingPaneLayout slidingPaneLayout) {
            super(true);
            Intrinsics.h(slidingPaneLayout, "slidingPaneLayout");
            this.f13878a = slidingPaneLayout;
            slidingPaneLayout.addPanelSlideListener(this);
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.e
        public void a(View panel) {
            Intrinsics.h(panel, "panel");
            setEnabled(true);
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.e
        public void b(View panel) {
            Intrinsics.h(panel, "panel");
            setEnabled(false);
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.e
        public void c(View panel, float f11) {
            Intrinsics.h(panel, "panel");
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            this.f13878a.closePane();
        }
    }

    public static final class b implements View.OnLayoutChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SlidingPaneLayout f13880b;

        public b(SlidingPaneLayout slidingPaneLayout) {
            this.f13880b = slidingPaneLayout;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            Intrinsics.i(view, "view");
            view.removeOnLayoutChangeListener(this);
            u uVar = AbstractListDetailFragment.this.onBackPressedCallback;
            Intrinsics.e(uVar);
            uVar.setEnabled(this.f13880b.isSlideable() && this.f13880b.isOpen());
        }
    }

    public final SlidingPaneLayout W() {
        return (SlidingPaneLayout) requireView();
    }

    public NavHostFragment X() {
        int i11 = this.graphId;
        return i11 != 0 ? NavHostFragment.Companion.b(NavHostFragment.INSTANCE, i11, null, 2, null) : new NavHostFragment();
    }

    public abstract View Y(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState);

    public void Z(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        NavHostFragment navHostFragmentX;
        Intrinsics.h(inflater, "inflater");
        if (savedInstanceState != null) {
            this.graphId = savedInstanceState.getInt("android-support-nav:fragment:graphId");
        }
        SlidingPaneLayout slidingPaneLayout = new SlidingPaneLayout(inflater.getContext());
        slidingPaneLayout.setId(R$id.sliding_pane_layout);
        View viewY = Y(inflater, slidingPaneLayout, savedInstanceState);
        if (!Intrinsics.c(viewY, slidingPaneLayout) && !Intrinsics.c(viewY.getParent(), slidingPaneLayout)) {
            slidingPaneLayout.addView(viewY);
        }
        Context context = inflater.getContext();
        Intrinsics.g(context, "inflater.context");
        FragmentContainerView fragmentContainerView = new FragmentContainerView(context);
        fragmentContainerView.setId(R$id.sliding_pane_detail_container);
        SlidingPaneLayout.d dVar = new SlidingPaneLayout.d(inflater.getContext().getResources().getDimensionPixelSize(R$dimen.sliding_pane_detail_pane_width), -1);
        dVar.f14879a = 1.0f;
        slidingPaneLayout.addView(fragmentContainerView, dVar);
        Fragment fragmentJ0 = getChildFragmentManager().j0(R$id.sliding_pane_detail_container);
        if (fragmentJ0 != null) {
            navHostFragmentX = (NavHostFragment) fragmentJ0;
        } else {
            navHostFragmentX = X();
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "childFragmentManager");
            w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            wVarP.x(true);
            wVarP.b(R$id.sliding_pane_detail_container, navHostFragmentX);
            wVarP.i();
        }
        this._detailPaneNavHostFragment = navHostFragmentX;
        this.onBackPressedCallback = new a(slidingPaneLayout);
        if (!ViewCompat.isLaidOut(slidingPaneLayout) || slidingPaneLayout.isLayoutRequested()) {
            slidingPaneLayout.addOnLayoutChangeListener(new b(slidingPaneLayout));
        } else {
            u uVar = this.onBackPressedCallback;
            Intrinsics.e(uVar);
            uVar.setEnabled(slidingPaneLayout.isSlideable() && slidingPaneLayout.isOpen());
        }
        OnBackPressedDispatcher onBackPressedDispatcher = requireActivity().getOnBackPressedDispatcher();
        androidx.p009lifecycle.u viewLifecycleOwner = getViewLifecycleOwner();
        u uVar2 = this.onBackPressedCallback;
        Intrinsics.e(uVar2);
        onBackPressedDispatcher.i(viewLifecycleOwner, uVar2);
        return slidingPaneLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public void onInflate(Context context, AttributeSet attrs, Bundle savedInstanceState) {
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        super.onInflate(context, attrs, savedInstanceState);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, androidx.navigation.R$styleable.NavHost);
        Intrinsics.g(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…yleable.NavHost\n        )");
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(androidx.navigation.R$styleable.NavHost_navGraph, 0);
        if (resourceId != 0) {
            this.graphId = resourceId;
        }
        Unit unit = Unit.f67061a;
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        int i11 = this.graphId;
        if (i11 != 0) {
            outState.putInt("android-support-nav:fragment:graphId", i11);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        View listPaneView = W().getChildAt(0);
        Intrinsics.g(listPaneView, "listPaneView");
        Z(listPaneView, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        u uVar = this.onBackPressedCallback;
        Intrinsics.e(uVar);
        uVar.setEnabled(W().isSlideable() && W().isOpen());
    }
}
