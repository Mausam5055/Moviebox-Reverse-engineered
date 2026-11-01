package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.google.android.material.R$styleable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class f0 {

    /* JADX INFO: loaded from: classes4.dex */
    class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f29201a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f29202b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f29203c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ d f29204d;

        a(boolean z10, boolean z11, boolean z12, d dVar) {
            this.f29201a = z10;
            this.f29202b = z11;
            this.f29203c = z12;
            this.f29204d = dVar;
        }

        @Override // com.google.android.material.internal.f0.d
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, e eVar) {
            if (this.f29201a) {
                eVar.f29210d += windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean zP = f0.p(view);
            if (this.f29202b) {
                if (zP) {
                    eVar.f29209c += windowInsetsCompat.getSystemWindowInsetLeft();
                } else {
                    eVar.f29207a += windowInsetsCompat.getSystemWindowInsetLeft();
                }
            }
            if (this.f29203c) {
                if (zP) {
                    eVar.f29207a += windowInsetsCompat.getSystemWindowInsetRight();
                } else {
                    eVar.f29209c += windowInsetsCompat.getSystemWindowInsetRight();
                }
            }
            eVar.a(view);
            d dVar = this.f29204d;
            return dVar != null ? dVar.a(view, windowInsetsCompat, eVar) : windowInsetsCompat;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class b implements OnApplyWindowInsetsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f29205a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f29206b;

        b(d dVar, e eVar) {
            this.f29205a = dVar;
            this.f29206b = eVar;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return this.f29205a.a(view, windowInsetsCompat, new e(this.f29206b));
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class c implements View.OnAttachStateChangeListener {
        c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            ViewCompat.requestApplyInsets(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface d {
        WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, e eVar);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f29207a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f29208b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f29209c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f29210d;

        public e(int i11, int i12, int i13, int i14) {
            this.f29207a = i11;
            this.f29208b = i12;
            this.f29209c = i13;
            this.f29210d = i14;
        }

        public e(e eVar) {
            this.f29207a = eVar.f29207a;
            this.f29208b = eVar.f29208b;
            this.f29209c = eVar.f29209c;
            this.f29210d = eVar.f29210d;
        }

        public void a(View view) {
            ViewCompat.setPaddingRelative(view, this.f29207a, this.f29208b, this.f29209c, this.f29210d);
        }
    }

    public static Rect b(View view, View view2) {
        int[] iArr = new int[2];
        view2.getLocationOnScreen(iArr);
        int i11 = iArr[0];
        int i12 = iArr[1];
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        int i13 = i11 - iArr2[0];
        int i14 = i12 - iArr2[1];
        return new Rect(i13, i14, view2.getWidth() + i13, view2.getHeight() + i14);
    }

    public static Rect c(View view) {
        return d(view, 0);
    }

    public static Rect d(View view, int i11) {
        return new Rect(view.getLeft(), view.getTop() + i11, view.getRight(), view.getBottom() + i11);
    }

    public static void e(View view, AttributeSet attributeSet, int i11, int i12, d dVar) {
        TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R$styleable.Insets, i11, i12);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingBottomSystemWindowInsets, false);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingLeftSystemWindowInsets, false);
        boolean z12 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.Insets_paddingRightSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        f(view, new a(z10, z11, z12, dVar));
    }

    public static void f(View view, d dVar) {
        ViewCompat.setOnApplyWindowInsetsListener(view, new b(dVar, new e(ViewCompat.getPaddingStart(view), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom())));
        s(view);
    }

    public static float g(Context context, int i11) {
        return TypedValue.applyDimension(1, i11, context.getResources().getDisplayMetrics());
    }

    public static Integer h(View view) {
        ColorStateList colorStateListG = com.google.android.material.drawable.d.g(view.getBackground());
        if (colorStateListG != null) {
            return Integer.valueOf(colorStateListG.getDefaultColor());
        }
        return null;
    }

    public static List i(View view) {
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                arrayList.add(viewGroup.getChildAt(i11));
            }
        }
        return arrayList;
    }

    public static ViewGroup j(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    public static d0 k(View view) {
        return m(j(view));
    }

    private static InputMethodManager l(View view) {
        return (InputMethodManager) androidx.core.content.b.getSystemService(view.getContext(), InputMethodManager.class);
    }

    public static d0 m(View view) {
        if (view == null) {
            return null;
        }
        return new c0(view);
    }

    public static float n(View view) {
        float elevation = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            elevation += ViewCompat.getElevation((View) parent);
        }
        return elevation;
    }

    public static void o(View view, boolean z10) {
        WindowInsetsControllerCompat windowInsetsController;
        if (z10 && (windowInsetsController = ViewCompat.getWindowInsetsController(view)) != null) {
            windowInsetsController.hide(WindowInsetsCompat.Type.ime());
            return;
        }
        InputMethodManager inputMethodManagerL = l(view);
        if (inputMethodManagerL != null) {
            inputMethodManagerL.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static boolean p(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    public static PorterDuff.Mode r(int i11, PorterDuff.Mode mode) {
        if (i11 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i11 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i11 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i11) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static void s(View view) {
        if (ViewCompat.isAttachedToWindow(view)) {
            ViewCompat.requestApplyInsets(view);
        } else {
            view.addOnAttachStateChangeListener(new c());
        }
    }

    public static void t(final View view, final boolean z10) {
        view.requestFocus();
        view.post(new Runnable() { // from class: com.google.android.material.internal.e0
            @Override // java.lang.Runnable
            public final void run() {
                f0.v(view, z10);
            }
        });
    }

    public static void u(View view, Rect rect) {
        view.setLeft(rect.left);
        view.setTop(rect.top);
        view.setRight(rect.right);
        view.setBottom(rect.bottom);
    }

    public static void v(View view, boolean z10) {
        WindowInsetsControllerCompat windowInsetsController;
        if (!z10 || (windowInsetsController = ViewCompat.getWindowInsetsController(view)) == null) {
            l(view).showSoftInput(view, 1);
        } else {
            windowInsetsController.show(WindowInsetsCompat.Type.ime());
        }
    }
}
