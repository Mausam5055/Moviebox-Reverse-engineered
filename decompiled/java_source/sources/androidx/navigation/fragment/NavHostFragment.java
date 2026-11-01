package androidx.navigation.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.x;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.Navigator;
import androidx.navigation.j;
import androidx.navigation.q;
import androidx.p009lifecycle.x0;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\n\b\u0016\u0018\u0000 @2\u00020\u00012\u00020\u0002:\u0001/B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0017¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0015¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0015¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001b0\u001aH\u0015¢\u0006\u0004\b\u001c\u0010\u001dJ-\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010 2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b#\u0010$J!\u0010&\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\"2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b&\u0010'J)\u0010*\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010)\u001a\u00020(2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0017¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\nH\u0017¢\u0006\u0004\b-\u0010\rJ\u000f\u0010.\u001a\u00020\u0007H\u0016¢\u0006\u0004\b.\u0010\u0004R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00103\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00106\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010\u0010R\u0014\u0010?\u001a\u0002078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>¨\u0006A"}, d2 = {"Landroidx/navigation/fragment/NavHostFragment;", "Landroidx/fragment/app/Fragment;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroidx/navigation/j;", "navHostController", "Z", "(Landroidx/navigation/j;)V", "Landroidx/navigation/NavController;", "navController", "Y", "(Landroidx/navigation/NavController;)V", "", "isPrimaryNavigationFragment", "onPrimaryNavigationFragmentChanged", "(Z)V", "Landroidx/navigation/Navigator;", "Landroidx/navigation/fragment/e$b;", "W", "()Landroidx/navigation/Navigator;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/util/AttributeSet;", "attrs", "onInflate", "(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "onDestroyView", "a", "Landroidx/navigation/j;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/Boolean;", "isPrimaryBeforeOnCreate", "c", "Landroid/view/View;", "viewParent", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "graphId", "e", "defaultNavHost", "X", "()I", "containerId", "f", "navigation-fragment_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class NavHostFragment extends Fragment {

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private j navHostController;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Boolean isPrimaryBeforeOnCreate;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private View viewParent;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int graphId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean defaultNavHost;

    /* JADX INFO: renamed from: androidx.navigation.fragment.NavHostFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ NavHostFragment b(Companion companion, int i11, Bundle bundle, int i12, Object obj) {
            if ((i12 & 2) != 0) {
                bundle = null;
            }
            return companion.a(i11, bundle);
        }

        public final NavHostFragment a(int i11, Bundle bundle) {
            Bundle bundle2;
            if (i11 != 0) {
                bundle2 = new Bundle();
                bundle2.putInt("android-support-nav:fragment:graphId", i11);
            } else {
                bundle2 = null;
            }
            if (bundle != null) {
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                bundle2.putBundle("android-support-nav:fragment:startDestinationArgs", bundle);
            }
            NavHostFragment navHostFragment = new NavHostFragment();
            if (bundle2 != null) {
                navHostFragment.setArguments(bundle2);
            }
            return navHostFragment;
        }

        public final NavController c(Fragment fragment) {
            Dialog dialog;
            Window window;
            Intrinsics.h(fragment, "fragment");
            for (Fragment parentFragment = fragment; parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
                if (parentFragment instanceof NavHostFragment) {
                    j jVar = ((NavHostFragment) parentFragment).navHostController;
                    if (jVar != null) {
                        return jVar;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type androidx.navigation.NavController");
                }
                Fragment fragmentD0 = parentFragment.getParentFragmentManager().D0();
                if (fragmentD0 instanceof NavHostFragment) {
                    j jVar2 = ((NavHostFragment) fragmentD0).navHostController;
                    if (jVar2 != null) {
                        return jVar2;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type androidx.navigation.NavController");
                }
            }
            View view = fragment.getView();
            if (view != null) {
                return Navigation.b(view);
            }
            View decorView = null;
            DialogFragment dialogFragment = fragment instanceof DialogFragment ? (DialogFragment) fragment : null;
            if (dialogFragment != null && (dialog = dialogFragment.getDialog()) != null && (window = dialog.getWindow()) != null) {
                decorView = window.getDecorView();
            }
            if (decorView != null) {
                return Navigation.b(decorView);
            }
            throw new IllegalStateException("Fragment " + fragment + " does not have a NavController set");
        }
    }

    private final int X() {
        int id2 = getId();
        return (id2 == 0 || id2 == -1) ? R$id.nav_host_fragment_container : id2;
    }

    protected Navigator W() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext()");
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "childFragmentManager");
        return new e(contextRequireContext, childFragmentManager, X());
    }

    protected void Y(NavController navController) {
        Intrinsics.h(navController, "navController");
        q qVarF = navController.F();
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext()");
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "childFragmentManager");
        qVarF.b(new c(contextRequireContext, childFragmentManager));
        navController.F().b(W());
    }

    protected void Z(j navHostController) {
        Intrinsics.h(navHostController, "navHostController");
        Y(navHostController);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.h(context, "context");
        super.onAttach(context);
        if (this.defaultNavHost) {
            getParentFragmentManager().p().w(this).i();
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005b  */
    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        boolean z10;
        Bundle bundle;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext()");
        j jVar = new j(contextRequireContext);
        this.navHostController = jVar;
        Intrinsics.e(jVar);
        jVar.d0(this);
        Object obj = contextRequireContext;
        while (obj instanceof ContextWrapper) {
            if (obj instanceof x) {
                j jVar2 = this.navHostController;
                Intrinsics.e(jVar2);
                OnBackPressedDispatcher onBackPressedDispatcher = ((x) obj).getOnBackPressedDispatcher();
                Intrinsics.g(onBackPressedDispatcher, "context as OnBackPressed…).onBackPressedDispatcher");
                jVar2.e0(onBackPressedDispatcher);
                break;
            }
            Context baseContext = ((ContextWrapper) obj).getBaseContext();
            Intrinsics.g(baseContext, "context.baseContext");
            obj = baseContext;
        }
        j jVar3 = this.navHostController;
        Intrinsics.e(jVar3);
        Boolean bool = this.isPrimaryBeforeOnCreate;
        if (bool == null) {
            z10 = false;
        } else {
            if (bool == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
            }
            if (bool.booleanValue()) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        jVar3.r(z10);
        this.isPrimaryBeforeOnCreate = null;
        j jVar4 = this.navHostController;
        Intrinsics.e(jVar4);
        x0 viewModelStore = getViewModelStore();
        Intrinsics.g(viewModelStore, "viewModelStore");
        jVar4.f0(viewModelStore);
        j jVar5 = this.navHostController;
        Intrinsics.e(jVar5);
        Z(jVar5);
        if (savedInstanceState != null) {
            bundle = savedInstanceState.getBundle("android-support-nav:fragment:navControllerState");
            if (savedInstanceState.getBoolean("android-support-nav:fragment:defaultHost", false)) {
                this.defaultNavHost = true;
                getParentFragmentManager().p().w(this).i();
            }
            this.graphId = savedInstanceState.getInt("android-support-nav:fragment:graphId");
        } else {
            bundle = null;
        }
        if (bundle != null) {
            j jVar6 = this.navHostController;
            Intrinsics.e(jVar6);
            jVar6.X(bundle);
        }
        if (this.graphId != 0) {
            j jVar7 = this.navHostController;
            Intrinsics.e(jVar7);
            jVar7.a0(this.graphId);
        } else {
            Bundle arguments = getArguments();
            int i11 = arguments != null ? arguments.getInt("android-support-nav:fragment:graphId") : 0;
            Bundle bundle2 = arguments != null ? arguments.getBundle("android-support-nav:fragment:startDestinationArgs") : null;
            if (i11 != 0) {
                j jVar8 = this.navHostController;
                Intrinsics.e(jVar8);
                jVar8.b0(i11, bundle2);
            }
        }
        super.onCreate(savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.h(inflater, "inflater");
        Context context = inflater.getContext();
        Intrinsics.g(context, "inflater.context");
        FragmentContainerView fragmentContainerView = new FragmentContainerView(context);
        fragmentContainerView.setId(X());
        return fragmentContainerView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        View view = this.viewParent;
        if (view != null && Navigation.b(view) == this.navHostController) {
            Navigation.e(view, null);
        }
        this.viewParent = null;
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
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attrs, R$styleable.NavHostFragment);
        Intrinsics.g(typedArrayObtainStyledAttributes2, "context.obtainStyledAttr…tyleable.NavHostFragment)");
        if (typedArrayObtainStyledAttributes2.getBoolean(R$styleable.NavHostFragment_defaultNavHost, false)) {
            this.defaultNavHost = true;
        }
        typedArrayObtainStyledAttributes2.recycle();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrimaryNavigationFragmentChanged(boolean isPrimaryNavigationFragment) {
        j jVar = this.navHostController;
        if (jVar == null) {
            this.isPrimaryBeforeOnCreate = Boolean.valueOf(isPrimaryNavigationFragment);
        } else {
            if (jVar == null) {
                return;
            }
            jVar.r(isPrimaryNavigationFragment);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        j jVar = this.navHostController;
        Intrinsics.e(jVar);
        Bundle bundleZ = jVar.Z();
        if (bundleZ != null) {
            outState.putBundle("android-support-nav:fragment:navControllerState", bundleZ);
        }
        if (this.defaultNavHost) {
            outState.putBoolean("android-support-nav:fragment:defaultHost", true);
        }
        int i11 = this.graphId;
        if (i11 != 0) {
            outState.putInt("android-support-nav:fragment:graphId", i11);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (!(view instanceof ViewGroup)) {
            throw new IllegalStateException(("created host view " + view + " is not a ViewGroup").toString());
        }
        Navigation.e(view, this.navHostController);
        if (view.getParent() != null) {
            Object parent = view.getParent();
            if (parent == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.View");
            }
            View view2 = (View) parent;
            this.viewParent = view2;
            Intrinsics.e(view2);
            if (view2.getId() == getId()) {
                View view3 = this.viewParent;
                Intrinsics.e(view3);
                Navigation.e(view3, this.navHostController);
            }
        }
    }
}
