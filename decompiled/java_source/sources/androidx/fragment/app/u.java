package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import androidx.fragment.R$id;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.y0;
import com.cloud.tmc.kernel.constants.TmcConstants;

/* JADX INFO: loaded from: classes.dex */
class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f9464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f9465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Fragment f9466c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9467d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9468e = -1;

    class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f9469a;

        a(View view) {
            this.f9469a = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f9469a.removeOnAttachStateChangeListener(this);
            ViewCompat.requestApplyInsets(this.f9469a);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f9471a;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f9471a = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9471a[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9471a[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9471a[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    u(k kVar, v vVar, Fragment fragment) {
        this.f9464a = kVar;
        this.f9465b = vVar;
        this.f9466c = fragment;
    }

    u(k kVar, v vVar, Fragment fragment, FragmentState fragmentState) {
        this.f9464a = kVar;
        this.f9465b = vVar;
        this.f9466c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = fragmentState.f9379m;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }

    u(k kVar, v vVar, ClassLoader classLoader, h hVar, FragmentState fragmentState) {
        this.f9464a = kVar;
        this.f9465b = vVar;
        Fragment fragmentA = fragmentState.a(hVar, classLoader);
        this.f9466c = fragmentA;
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + fragmentA);
        }
    }

    private boolean l(View view) {
        if (view == this.f9466c.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.f9466c.mView) {
                return true;
            }
        }
        return false;
    }

    private Bundle q() {
        Bundle bundle = new Bundle();
        this.f9466c.performSaveInstanceState(bundle);
        this.f9464a.j(this.f9466c, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.f9466c.mView != null) {
            t();
        }
        if (this.f9466c.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", this.f9466c.mSavedViewState);
        }
        if (this.f9466c.mSavedViewRegistryState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle("android:view_registry_state", this.f9466c.mSavedViewRegistryState);
        }
        if (!this.f9466c.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", this.f9466c.mUserVisibleHint);
        }
        return bundle;
    }

    void a() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto ACTIVITY_CREATED: ");
            sb2.append(this.f9466c);
        }
        Fragment fragment = this.f9466c;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        k kVar = this.f9464a;
        Fragment fragment2 = this.f9466c;
        kVar.a(fragment2, fragment2.mSavedFragmentState, false);
    }

    void b() {
        int iJ = this.f9465b.j(this.f9466c);
        Fragment fragment = this.f9466c;
        fragment.mContainer.addView(fragment.mView, iJ);
    }

    void c() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto ATTACHED: ");
            sb2.append(this.f9466c);
        }
        Fragment fragment = this.f9466c;
        Fragment fragment2 = fragment.mTarget;
        u uVarN = null;
        if (fragment2 != null) {
            u uVarN2 = this.f9465b.n(fragment2.mWho);
            if (uVarN2 == null) {
                throw new IllegalStateException("Fragment " + this.f9466c + " declared target fragment " + this.f9466c.mTarget + " that does not belong to this FragmentManager!");
            }
            Fragment fragment3 = this.f9466c;
            fragment3.mTargetWho = fragment3.mTarget.mWho;
            fragment3.mTarget = null;
            uVarN = uVarN2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (uVarN = this.f9465b.n(str)) == null) {
                throw new IllegalStateException("Fragment " + this.f9466c + " declared target fragment " + this.f9466c.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (uVarN != null) {
            uVarN.m();
        }
        Fragment fragment4 = this.f9466c;
        fragment4.mHost = fragment4.mFragmentManager.z0();
        Fragment fragment5 = this.f9466c;
        fragment5.mParentFragment = fragment5.mFragmentManager.C0();
        this.f9464a.g(this.f9466c, false);
        this.f9466c.performAttach();
        this.f9464a.b(this.f9466c, false);
    }

    int d() {
        Fragment fragment = this.f9466c;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int iMin = this.f9468e;
        int i11 = b.f9471a[fragment.mMaxState.ordinal()];
        if (i11 != 1) {
            if (i11 == 2) {
                iMin = Math.min(iMin, 5);
            } else if (i11 != 3) {
                iMin = i11 != 4 ? Math.min(iMin, -1) : Math.min(iMin, 0);
            } else {
                iMin = Math.min(iMin, 1);
            }
        }
        Fragment fragment2 = this.f9466c;
        if (fragment2.mFromLayout) {
            if (fragment2.mInLayout) {
                iMin = Math.max(this.f9468e, 2);
                View view = this.f9466c.mView;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f9468e < 4 ? Math.min(iMin, fragment2.mState) : Math.min(iMin, 1);
            }
        }
        if (!this.f9466c.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        Fragment fragment3 = this.f9466c;
        ViewGroup viewGroup = fragment3.mContainer;
        SpecialEffectsController.Operation.LifecycleImpact lifecycleImpactL = viewGroup != null ? SpecialEffectsController.n(viewGroup, fragment3.getParentFragmentManager()).l(this) : null;
        if (lifecycleImpactL == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
            iMin = Math.min(iMin, 6);
        } else if (lifecycleImpactL == SpecialEffectsController.Operation.LifecycleImpact.REMOVING) {
            iMin = Math.max(iMin, 3);
        } else {
            Fragment fragment4 = this.f9466c;
            if (fragment4.mRemoving) {
                iMin = fragment4.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
            }
        }
        Fragment fragment5 = this.f9466c;
        if (fragment5.mDeferStart && fragment5.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + this.f9466c);
        }
        return iMin;
    }

    void e() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto CREATED: ");
            sb2.append(this.f9466c);
        }
        Fragment fragment = this.f9466c;
        if (fragment.mIsCreated) {
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.f9466c.mState = 1;
            return;
        }
        this.f9464a.h(fragment, fragment.mSavedFragmentState, false);
        Fragment fragment2 = this.f9466c;
        fragment2.performCreate(fragment2.mSavedFragmentState);
        k kVar = this.f9464a;
        Fragment fragment3 = this.f9466c;
        kVar.c(fragment3, fragment3.mSavedFragmentState, false);
    }

    void f() {
        String resourceName;
        if (this.f9466c.mFromLayout) {
            return;
        }
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto CREATE_VIEW: ");
            sb2.append(this.f9466c);
        }
        Fragment fragment = this.f9466c;
        LayoutInflater layoutInflaterPerformGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        Fragment fragment2 = this.f9466c;
        ViewGroup viewGroup = fragment2.mContainer;
        if (viewGroup == null) {
            int i11 = fragment2.mContainerId;
            if (i11 == 0) {
                viewGroup = null;
            } else {
                if (i11 == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f9466c + " for a container view with no id");
                }
                viewGroup = (ViewGroup) fragment2.mFragmentManager.t0().c(this.f9466c.mContainerId);
                if (viewGroup == null) {
                    Fragment fragment3 = this.f9466c;
                    if (!fragment3.mRestored) {
                        try {
                            resourceName = fragment3.getResources().getResourceName(this.f9466c.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = TmcConstants.ROUTE_UNKNOWN;
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f9466c.mContainerId) + " (" + resourceName + ") for fragment " + this.f9466c);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    FragmentStrictMode.n(this.f9466c, viewGroup);
                }
            }
        }
        Fragment fragment4 = this.f9466c;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        View view = this.f9466c.mView;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f9466c;
            fragment5.mView.setTag(R$id.fragment_container_view_tag, fragment5);
            if (viewGroup != null) {
                b();
            }
            Fragment fragment6 = this.f9466c;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            if (ViewCompat.isAttachedToWindow(this.f9466c.mView)) {
                ViewCompat.requestApplyInsets(this.f9466c.mView);
            } else {
                View view2 = this.f9466c.mView;
                view2.addOnAttachStateChangeListener(new a(view2));
            }
            this.f9466c.performViewCreated();
            k kVar = this.f9464a;
            Fragment fragment7 = this.f9466c;
            kVar.m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.f9466c.mView.getVisibility();
            this.f9466c.setPostOnViewCreatedAlpha(this.f9466c.mView.getAlpha());
            Fragment fragment8 = this.f9466c;
            if (fragment8.mContainer != null && visibility == 0) {
                View viewFindFocus = fragment8.mView.findFocus();
                if (viewFindFocus != null) {
                    this.f9466c.setFocusedView(viewFindFocus);
                    if (FragmentManager.M0(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + this.f9466c);
                    }
                }
                this.f9466c.mView.setAlpha(0.0f);
            }
        }
        this.f9466c.mState = 2;
    }

    void g() {
        Fragment fragmentF;
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom CREATED: ");
            sb2.append(this.f9466c);
        }
        Fragment fragment = this.f9466c;
        boolean zIsChangingConfigurations = true;
        boolean z10 = fragment.mRemoving && !fragment.isInBackStack();
        if (z10) {
            Fragment fragment2 = this.f9466c;
            if (!fragment2.mBeingSaved) {
                this.f9465b.B(fragment2.mWho, null);
            }
        }
        if (!z10 && !this.f9465b.p().n(this.f9466c)) {
            String str = this.f9466c.mTargetWho;
            if (str != null && (fragmentF = this.f9465b.f(str)) != null && fragmentF.mRetainInstance) {
                this.f9466c.mTarget = fragmentF;
            }
            this.f9466c.mState = 0;
            return;
        }
        i iVar = this.f9466c.mHost;
        if (iVar instanceof y0) {
            zIsChangingConfigurations = this.f9465b.p().k();
        } else if (iVar.f() instanceof Activity) {
            zIsChangingConfigurations = true ^ ((Activity) iVar.f()).isChangingConfigurations();
        }
        if ((z10 && !this.f9466c.mBeingSaved) || zIsChangingConfigurations) {
            this.f9465b.p().c(this.f9466c);
        }
        this.f9466c.performDestroy();
        this.f9464a.d(this.f9466c, false);
        for (u uVar : this.f9465b.k()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                if (this.f9466c.mWho.equals(fragmentK.mTargetWho)) {
                    fragmentK.mTarget = this.f9466c;
                    fragmentK.mTargetWho = null;
                }
            }
        }
        Fragment fragment3 = this.f9466c;
        String str2 = fragment3.mTargetWho;
        if (str2 != null) {
            fragment3.mTarget = this.f9465b.f(str2);
        }
        this.f9465b.s(this);
    }

    void h() {
        View view;
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom CREATE_VIEW: ");
            sb2.append(this.f9466c);
        }
        Fragment fragment = this.f9466c;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.f9466c.performDestroyView();
        this.f9464a.n(this.f9466c, false);
        Fragment fragment2 = this.f9466c;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.q(null);
        this.f9466c.mInLayout = false;
    }

    void i() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom ATTACHED: ");
            sb2.append(this.f9466c);
        }
        this.f9466c.performDetach();
        this.f9464a.e(this.f9466c, false);
        Fragment fragment = this.f9466c;
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if ((!fragment.mRemoving || fragment.isInBackStack()) && !this.f9465b.p().n(this.f9466c)) {
            return;
        }
        if (FragmentManager.M0(3)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("initState called for fragment: ");
            sb3.append(this.f9466c);
        }
        this.f9466c.initState();
    }

    void j() {
        Fragment fragment = this.f9466c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.M0(3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("moveto CREATE_VIEW: ");
                sb2.append(this.f9466c);
            }
            Fragment fragment2 = this.f9466c;
            fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.f9466c.mSavedFragmentState);
            View view = this.f9466c.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.f9466c;
                fragment3.mView.setTag(R$id.fragment_container_view_tag, fragment3);
                Fragment fragment4 = this.f9466c;
                if (fragment4.mHidden) {
                    fragment4.mView.setVisibility(8);
                }
                this.f9466c.performViewCreated();
                k kVar = this.f9464a;
                Fragment fragment5 = this.f9466c;
                kVar.m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
                this.f9466c.mState = 2;
            }
        }
    }

    Fragment k() {
        return this.f9466c;
    }

    void m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f9467d) {
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + k());
                return;
            }
            return;
        }
        try {
            this.f9467d = true;
            boolean z10 = false;
            while (true) {
                int iD = d();
                Fragment fragment = this.f9466c;
                int i11 = fragment.mState;
                if (iD == i11) {
                    if (!z10 && i11 == -1 && fragment.mRemoving && !fragment.isInBackStack() && !this.f9466c.mBeingSaved) {
                        if (FragmentManager.M0(3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Cleaning up state of never attached fragment: ");
                            sb2.append(this.f9466c);
                        }
                        this.f9465b.p().c(this.f9466c);
                        this.f9465b.s(this);
                        if (FragmentManager.M0(3)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("initState called for fragment: ");
                            sb3.append(this.f9466c);
                        }
                        this.f9466c.initState();
                    }
                    Fragment fragment2 = this.f9466c;
                    if (fragment2.mHiddenChanged) {
                        if (fragment2.mView != null && (viewGroup = fragment2.mContainer) != null) {
                            SpecialEffectsController specialEffectsControllerN = SpecialEffectsController.n(viewGroup, fragment2.getParentFragmentManager());
                            if (this.f9466c.mHidden) {
                                specialEffectsControllerN.c(this);
                            } else {
                                specialEffectsControllerN.e(this);
                            }
                        }
                        Fragment fragment3 = this.f9466c;
                        FragmentManager fragmentManager = fragment3.mFragmentManager;
                        if (fragmentManager != null) {
                            fragmentManager.K0(fragment3);
                        }
                        Fragment fragment4 = this.f9466c;
                        fragment4.mHiddenChanged = false;
                        fragment4.onHiddenChanged(fragment4.mHidden);
                        this.f9466c.mChildFragmentManager.K();
                    }
                    return;
                }
                if (iD <= i11) {
                    switch (i11 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            if (fragment.mBeingSaved && this.f9465b.q(fragment.mWho) == null) {
                                s();
                            }
                            g();
                            break;
                        case 1:
                            h();
                            this.f9466c.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (FragmentManager.M0(3)) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("movefrom ACTIVITY_CREATED: ");
                                sb4.append(this.f9466c);
                            }
                            Fragment fragment5 = this.f9466c;
                            if (fragment5.mBeingSaved) {
                                s();
                            } else if (fragment5.mView != null && fragment5.mSavedViewState == null) {
                                t();
                            }
                            Fragment fragment6 = this.f9466c;
                            if (fragment6.mView != null && (viewGroup2 = fragment6.mContainer) != null) {
                                SpecialEffectsController.n(viewGroup2, fragment6.getParentFragmentManager()).d(this);
                            }
                            this.f9466c.mState = 3;
                            break;
                        case 4:
                            w();
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            n();
                            break;
                    }
                } else {
                    switch (i11 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup3 = fragment.mContainer) != null) {
                                SpecialEffectsController.n(viewGroup3, fragment.getParentFragmentManager()).b(SpecialEffectsController.Operation.State.from(this.f9466c.mView.getVisibility()), this);
                            }
                            this.f9466c.mState = 4;
                            break;
                        case 5:
                            v();
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            p();
                            break;
                    }
                }
                z10 = true;
            }
        } finally {
            this.f9467d = false;
        }
    }

    void n() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom RESUMED: ");
            sb2.append(this.f9466c);
        }
        this.f9466c.performPause();
        this.f9464a.f(this.f9466c, false);
    }

    void o(ClassLoader classLoader) {
        Bundle bundle = this.f9466c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f9466c;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f9466c;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f9466c;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
        Fragment fragment4 = this.f9466c;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.f9466c;
        Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.f9466c.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.f9466c;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    void p() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto RESUMED: ");
            sb2.append(this.f9466c);
        }
        View focusedView = this.f9466c.getFocusedView();
        if (focusedView != null && l(focusedView)) {
            boolean zRequestFocus = focusedView.requestFocus();
            if (FragmentManager.M0(2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("requestFocus: Restoring focused view ");
                sb3.append(focusedView);
                sb3.append(" ");
                sb3.append(zRequestFocus ? "succeeded" : "failed");
                sb3.append(" on Fragment ");
                sb3.append(this.f9466c);
                sb3.append(" resulting in focused view ");
                sb3.append(this.f9466c.mView.findFocus());
                Log.v("FragmentManager", sb3.toString());
            }
        }
        this.f9466c.setFocusedView(null);
        this.f9466c.performResume();
        this.f9464a.i(this.f9466c, false);
        Fragment fragment = this.f9466c;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    Fragment.SavedState r() {
        Bundle bundleQ;
        if (this.f9466c.mState <= -1 || (bundleQ = q()) == null) {
            return null;
        }
        return new Fragment.SavedState(bundleQ);
    }

    void s() {
        FragmentState fragmentState = new FragmentState(this.f9466c);
        Fragment fragment = this.f9466c;
        if (fragment.mState <= -1 || fragmentState.f9379m != null) {
            fragmentState.f9379m = fragment.mSavedFragmentState;
        } else {
            Bundle bundleQ = q();
            fragmentState.f9379m = bundleQ;
            if (this.f9466c.mTargetWho != null) {
                if (bundleQ == null) {
                    fragmentState.f9379m = new Bundle();
                }
                fragmentState.f9379m.putString("android:target_state", this.f9466c.mTargetWho);
                int i11 = this.f9466c.mTargetRequestCode;
                if (i11 != 0) {
                    fragmentState.f9379m.putInt("android:target_req_state", i11);
                }
            }
        }
        this.f9465b.B(this.f9466c.mWho, fragmentState);
    }

    void t() {
        if (this.f9466c.mView == null) {
            return;
        }
        if (FragmentManager.M0(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + this.f9466c + " with view " + this.f9466c.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f9466c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f9466c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f9466c.mViewLifecycleOwner.e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f9466c.mSavedViewRegistryState = bundle;
    }

    void u(int i11) {
        this.f9468e = i11;
    }

    void v() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("moveto STARTED: ");
            sb2.append(this.f9466c);
        }
        this.f9466c.performStart();
        this.f9464a.k(this.f9466c, false);
    }

    void w() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("movefrom STARTED: ");
            sb2.append(this.f9466c);
        }
        this.f9466c.performStop();
        this.f9464a.l(this.f9466c, false);
    }
}
