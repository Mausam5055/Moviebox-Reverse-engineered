package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes4.dex */
class i extends CoordinatorLayout.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j f28269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28271c;

    public i() {
        this.f28270b = 0;
        this.f28271c = 0;
    }

    public i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28270b = 0;
        this.f28271c = 0;
    }

    public int E() {
        j jVar = this.f28269a;
        if (jVar != null) {
            return jVar.c();
        }
        return 0;
    }

    protected void F(CoordinatorLayout coordinatorLayout, View view, int i11) {
        coordinatorLayout.onLayoutChild(view, i11);
    }

    public boolean G(int i11) {
        j jVar = this.f28269a;
        if (jVar != null) {
            return jVar.f(i11);
        }
        this.f28270b = i11;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i11) {
        F(coordinatorLayout, view, i11);
        if (this.f28269a == null) {
            this.f28269a = new j(view);
        }
        this.f28269a.d();
        this.f28269a.a();
        int i12 = this.f28270b;
        if (i12 != 0) {
            this.f28269a.f(i12);
            this.f28270b = 0;
        }
        int i13 = this.f28271c;
        if (i13 == 0) {
            return true;
        }
        this.f28269a.e(i13);
        this.f28271c = 0;
        return true;
    }
}
