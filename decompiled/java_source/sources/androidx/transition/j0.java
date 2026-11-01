package androidx.transition;

import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
class j0 extends h0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f15078g = true;

    static class a {
        static void a(View view, int i11) {
            view.setTransitionVisibility(i11);
        }
    }

    j0() {
    }

    @Override // androidx.transition.c0
    public void f(View view, int i11) {
        if (Build.VERSION.SDK_INT == 28) {
            super.f(view, i11);
        } else if (f15078g) {
            try {
                a.a(view, i11);
            } catch (NoSuchMethodError unused) {
                f15078g = false;
            }
        }
    }
}
