package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuProvider;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.google.firebase.InitX;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class FragmentActivity extends ComponentActivity implements ActivityCompat.e, ActivityCompat.f {
    static final String LIFECYCLE_TAG = "android:support:lifecycle";
    boolean mCreated;
    final androidx.p009lifecycle.w mFragmentLifecycleRegistry;
    final g mFragments;
    boolean mResumed;
    boolean mStopped;

    class a extends i implements androidx.core.content.d, androidx.core.content.e, androidx.core.app.u, androidx.core.app.v, y0, androidx.activity.x, androidx.activity.result.d, androidx.p010savedstate.e, s, MenuHost {
        public a() {
            super(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.s
        public void a(FragmentManager fragmentManager, Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override // androidx.core.view.MenuHost
        public void addMenuProvider(MenuProvider menuProvider) {
            FragmentActivity.this.addMenuProvider(menuProvider);
        }

        @Override // androidx.core.view.MenuHost
        public void addMenuProvider(MenuProvider menuProvider, androidx.p009lifecycle.u uVar) {
            FragmentActivity.this.addMenuProvider(menuProvider, uVar);
        }

        @Override // androidx.core.view.MenuHost
        public void addMenuProvider(MenuProvider menuProvider, androidx.p009lifecycle.u uVar, Lifecycle.State state) {
            FragmentActivity.this.addMenuProvider(menuProvider, uVar, state);
        }

        @Override // androidx.core.content.d
        public void addOnConfigurationChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.addOnConfigurationChangedListener(aVar);
        }

        @Override // androidx.core.app.u
        public void addOnMultiWindowModeChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.addOnMultiWindowModeChangedListener(aVar);
        }

        @Override // androidx.core.app.v
        public void addOnPictureInPictureModeChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.addOnPictureInPictureModeChangedListener(aVar);
        }

        @Override // androidx.core.content.e
        public void addOnTrimMemoryListener(androidx.core.util.a aVar) {
            FragmentActivity.this.addOnTrimMemoryListener(aVar);
        }

        @Override // androidx.fragment.app.f
        public View c(int i11) {
            return FragmentActivity.this.findViewById(i11);
        }

        @Override // androidx.fragment.app.f
        public boolean d() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.activity.result.d
        public ActivityResultRegistry getActivityResultRegistry() {
            return FragmentActivity.this.getActivityResultRegistry();
        }

        @Override // androidx.p009lifecycle.u
        public Lifecycle getLifecycle() {
            return FragmentActivity.this.mFragmentLifecycleRegistry;
        }

        @Override // androidx.activity.x
        public OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return FragmentActivity.this.getOnBackPressedDispatcher();
        }

        @Override // androidx.p010savedstate.e
        public androidx.p010savedstate.c getSavedStateRegistry() {
            return FragmentActivity.this.getSavedStateRegistry();
        }

        @Override // androidx.p009lifecycle.y0
        public x0 getViewModelStore() {
            return FragmentActivity.this.getViewModelStore();
        }

        @Override // androidx.fragment.app.i
        public void h(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.core.view.MenuHost
        public void invalidateMenu() {
            FragmentActivity.this.invalidateOptionsMenu();
        }

        @Override // androidx.fragment.app.i
        public LayoutInflater j() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.i
        public boolean l(String str) {
            return ActivityCompat.j(FragmentActivity.this, str);
        }

        @Override // androidx.fragment.app.i
        public void o() {
            invalidateMenu();
        }

        @Override // androidx.fragment.app.i
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public FragmentActivity i() {
            return FragmentActivity.this;
        }

        @Override // androidx.core.view.MenuHost
        public void removeMenuProvider(MenuProvider menuProvider) {
            FragmentActivity.this.removeMenuProvider(menuProvider);
        }

        @Override // androidx.core.content.d
        public void removeOnConfigurationChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.removeOnConfigurationChangedListener(aVar);
        }

        @Override // androidx.core.app.u
        public void removeOnMultiWindowModeChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.removeOnMultiWindowModeChangedListener(aVar);
        }

        @Override // androidx.core.app.v
        public void removeOnPictureInPictureModeChangedListener(androidx.core.util.a aVar) {
            FragmentActivity.this.removeOnPictureInPictureModeChangedListener(aVar);
        }

        @Override // androidx.core.content.e
        public void removeOnTrimMemoryListener(androidx.core.util.a aVar) {
            FragmentActivity.this.removeOnTrimMemoryListener(aVar);
        }
    }

    public FragmentActivity() {
        this.mFragments = g.b(new a());
        this.mFragmentLifecycleRegistry = new androidx.p009lifecycle.w(this);
        this.mStopped = true;
        init();
    }

    public FragmentActivity(int i11) {
        super(i11);
        this.mFragments = g.b(new a());
        this.mFragmentLifecycleRegistry = new androidx.p009lifecycle.w(this);
        this.mStopped = true;
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bundle J() {
        markFragmentsCreated();
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_STOP);
        return new Bundle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(Configuration configuration) {
        this.mFragments.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(Intent intent) {
        this.mFragments.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M(Context context) {
        this.mFragments.a(null);
    }

    private static boolean N(FragmentManager fragmentManager, Lifecycle.State state) {
        boolean zN = false;
        for (Fragment fragment : fragmentManager.y0()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    zN |= N(fragment.getChildFragmentManager(), state);
                }
                z zVar = fragment.mViewLifecycleOwner;
                if (zVar != null && zVar.getLifecycle().b().isAtLeast(Lifecycle.State.STARTED)) {
                    fragment.mViewLifecycleOwner.f(state);
                    zN = true;
                }
                if (fragment.mLifecycleRegistry.b().isAtLeast(Lifecycle.State.STARTED)) {
                    fragment.mLifecycleRegistry.n(state);
                    zN = true;
                }
            }
        }
        return zN;
    }

    private void init() {
        getSavedStateRegistry().h(LIFECYCLE_TAG, new androidx.p010savedstate.c.InterfaceC0122c() { // from class: androidx.fragment.app.b
            @Override // androidx.p010savedstate.c.InterfaceC0122c
            public final Bundle saveState() {
                return this.f9428a.J();
            }
        });
        addOnConfigurationChangedListener(new androidx.core.util.a() { // from class: androidx.fragment.app.c
            @Override // androidx.core.util.a
            public final void accept(Object obj) {
                this.f9429a.K((Configuration) obj);
            }
        });
        addOnNewIntentListener(new androidx.core.util.a() { // from class: androidx.fragment.app.d
            @Override // androidx.core.util.a
            public final void accept(Object obj) {
                this.f9430a.L((Intent) obj);
            }
        });
        addOnContextAvailableListener(new androidx.activity.contextaware.d() { // from class: androidx.fragment.app.e
            @Override // androidx.activity.contextaware.d
            public final void a(Context context) {
                this.f9431a.M(context);
            }
        });
    }

    @Nullable
    final View dispatchFragmentsOnCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return this.mFragments.n(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (shouldDumpInternalState(strArr)) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            String str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            if (getApplication() != null) {
                androidx.loader.app.a.b(this).a(str2, fileDescriptor, printWriter, strArr);
            }
            this.mFragments.l().Y(str, fileDescriptor, printWriter, strArr);
        }
    }

    @NonNull
    public FragmentManager getSupportFragmentManager() {
        return this.mFragments.l();
    }

    @NonNull
    @Deprecated
    public androidx.loader.app.a getSupportLoaderManager() {
        return androidx.loader.app.a.b(this);
    }

    void markFragmentsCreated() {
        while (N(getSupportFragmentManager(), Lifecycle.State.CREATED)) {
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i11, int i12, @Nullable Intent intent) {
        this.mFragments.m();
        super.onActivityResult(i11, i12, intent);
    }

    @Deprecated
    public void onAttachFragment(@NonNull Fragment fragment) {
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_CREATE);
        this.mFragments.e();
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    @Nullable
    public View onCreateView(@NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mFragments.f();
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_DESTROY);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i11, @NonNull MenuItem menuItem) {
        if (super.onMenuItemSelected(i11, menuItem)) {
            return true;
        }
        if (i11 == 6) {
            return this.mFragments.d(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.g();
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i11, @NonNull String[] strArr, @NonNull int[] iArr) {
        this.mFragments.m();
        super.onRequestPermissionsResult(i11, strArr, iArr);
    }

    @Override // android.app.Activity
    protected native void onResume();

    protected void onResumeFragments() {
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_RESUME);
        this.mFragments.h();
    }

    @Override // android.app.Activity
    protected void onStart() {
        new InitX(this);
        this.mFragments.m();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.c();
        }
        this.mFragments.k();
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_START);
        this.mFragments.i();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.m();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.j();
        this.mFragmentLifecycleRegistry.i(Lifecycle.Event.ON_STOP);
    }

    public void setEnterSharedElementCallback(@Nullable androidx.core.app.a0 a0Var) {
        ActivityCompat.h(this, a0Var);
    }

    public void setExitSharedElementCallback(@Nullable androidx.core.app.a0 a0Var) {
        ActivityCompat.i(this, a0Var);
    }

    public void startActivityFromFragment(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i11) {
        startActivityFromFragment(fragment, intent, i11, (Bundle) null);
    }

    public void startActivityFromFragment(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i11, @Nullable Bundle bundle) {
        if (i11 == -1) {
            ActivityCompat.k(this, intent, -1, bundle);
        } else {
            fragment.startActivityForResult(intent, i11, bundle);
        }
    }

    @Deprecated
    public void startIntentSenderFromFragment(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i11, @Nullable Intent intent, int i12, int i13, int i14, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        if (i11 == -1) {
            ActivityCompat.l(this, intentSender, i11, intent, i12, i13, i14, bundle);
        } else {
            fragment.startIntentSenderForResult(intentSender, i11, intent, i12, i13, i14, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        ActivityCompat.c(this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        ActivityCompat.e(this);
    }

    public void supportStartPostponedEnterTransition() {
        ActivityCompat.m(this);
    }

    @Override // androidx.core.app.ActivityCompat.f
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i11) {
    }
}
