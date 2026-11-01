package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
class e extends WindowInsetsAnimationCompat.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f28475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28477c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f28478d;

    public e(View view) {
        super(0);
        this.f28478d = new int[2];
        this.f28475a = view;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f28475a.setTranslationY(0.0f);
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.f28475a.getLocationOnScreen(this.f28478d);
        this.f28476b = this.f28478d[1];
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) it.next();
            if ((windowInsetsAnimationCompat.getTypeMask() & WindowInsetsCompat.Type.ime()) != 0) {
                this.f28475a.setTranslationY(oa.a.c(this.f28477c, 0, windowInsetsAnimationCompat.getInterpolatedFraction()));
                break;
            }
        }
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        this.f28475a.getLocationOnScreen(this.f28478d);
        int i11 = this.f28476b - this.f28478d[1];
        this.f28477c = i11;
        this.f28475a.setTranslationY(i11);
        return boundsCompat;
    }
}
