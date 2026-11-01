package androidx.transition;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
abstract class h0 extends f0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f15037f = true;

    static class a {
        static void a(View view, int i11, int i12, int i13, int i14) {
            view.setLeftTopRightBottom(i11, i12, i13, i14);
        }
    }

    h0() {
    }

    @Override // androidx.transition.c0
    public void d(View view, int i11, int i12, int i13, int i14) {
        if (f15037f) {
            try {
                a.a(view, i11, i12, i13, i14);
            } catch (NoSuchMethodError unused) {
                f15037f = false;
            }
        }
    }
}
