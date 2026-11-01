package androidx.core.view;

import android.R;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class SoftwareKeyboardControllerCompat {
    private final c mImpl;

    /* JADX INFO: Access modifiers changed from: private */
    static class a extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f8294a;

        a(View view) {
            this.f8294a = view;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void d(View view) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
        }

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.c
        void a() {
            View view = this.f8294a;
            if (view != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f8294a.getWindowToken(), 0);
            }
        }

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.c
        void b() {
            final View viewFindViewById = this.f8294a;
            if (viewFindViewById == null) {
                return;
            }
            if (viewFindViewById.isInEditMode() || viewFindViewById.onCheckIsTextEditor()) {
                viewFindViewById.requestFocus();
            } else {
                viewFindViewById = viewFindViewById.getRootView().findFocus();
            }
            if (viewFindViewById == null) {
                viewFindViewById = this.f8294a.getRootView().findViewById(R.id.content);
            }
            if (viewFindViewById == null || !viewFindViewById.hasWindowFocus()) {
                return;
            }
            viewFindViewById.post(new Runnable() { // from class: androidx.core.view.y
                @Override // java.lang.Runnable
                public final void run() {
                    SoftwareKeyboardControllerCompat.a.d(viewFindViewById);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b extends a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private View f8295b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WindowInsetsController f8296c;

        b(View view) {
            super(view);
            this.f8295b = view;
        }

        b(WindowInsetsController windowInsetsController) {
            super(null);
            this.f8296c = windowInsetsController;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void f(AtomicBoolean atomicBoolean, WindowInsetsController windowInsetsController, int i11) {
            atomicBoolean.set((i11 & 8) != 0);
        }

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.a, androidx.core.view.SoftwareKeyboardControllerCompat.c
        void a() {
            View view;
            WindowInsetsController windowInsetsController = this.f8296c;
            if (windowInsetsController == null) {
                View view2 = this.f8295b;
                windowInsetsController = view2 != null ? view2.getWindowInsetsController() : null;
            }
            if (windowInsetsController == null) {
                super.a();
                return;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListener = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: androidx.core.view.f0
                @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController2, int i11) {
                    SoftwareKeyboardControllerCompat.b.f(atomicBoolean, windowInsetsController2, i11);
                }
            };
            windowInsetsController.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
            if (!atomicBoolean.get() && (view = this.f8295b) != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f8295b.getWindowToken(), 0);
            }
            windowInsetsController.removeOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
            windowInsetsController.hide(WindowInsets.Type.ime());
        }

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.a, androidx.core.view.SoftwareKeyboardControllerCompat.c
        void b() {
            View view = this.f8295b;
            if (view != null && Build.VERSION.SDK_INT < 33) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).isActive();
            }
            WindowInsetsController windowInsetsController = this.f8296c;
            if (windowInsetsController == null) {
                View view2 = this.f8295b;
                windowInsetsController = view2 != null ? view2.getWindowInsetsController() : null;
            }
            if (windowInsetsController != null) {
                windowInsetsController.show(WindowInsets.Type.ime());
            }
            super.b();
        }
    }

    private static class c {
        c() {
        }

        abstract void a();

        abstract void b();
    }

    public SoftwareKeyboardControllerCompat(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new b(view);
        } else {
            this.mImpl = new a(view);
        }
    }

    @Deprecated
    SoftwareKeyboardControllerCompat(WindowInsetsController windowInsetsController) {
        this.mImpl = new b(windowInsetsController);
    }

    public void hide() {
        this.mImpl.a();
    }

    public void show() {
        this.mImpl.b();
    }
}
