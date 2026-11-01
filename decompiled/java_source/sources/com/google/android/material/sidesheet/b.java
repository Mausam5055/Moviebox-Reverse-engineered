package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes4.dex */
final class b extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final SideSheetBehavior f29664a;

    b(SideSheetBehavior sideSheetBehavior) {
        this.f29664a = sideSheetBehavior;
    }

    @Override // com.google.android.material.sidesheet.d
    int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.sidesheet.d
    float b(int i11) {
        float fE = e();
        return (fE - i11) / (fE - d());
    }

    @Override // com.google.android.material.sidesheet.d
    int c(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.sidesheet.d
    int d() {
        return Math.max(0, (e() - this.f29664a.Z()) - this.f29664a.g0());
    }

    @Override // com.google.android.material.sidesheet.d
    int e() {
        return this.f29664a.j0();
    }

    @Override // com.google.android.material.sidesheet.d
    int f() {
        return this.f29664a.j0();
    }

    @Override // com.google.android.material.sidesheet.d
    int g() {
        return d();
    }

    @Override // com.google.android.material.sidesheet.d
    int h(View view) {
        return view.getLeft() - this.f29664a.g0();
    }

    @Override // com.google.android.material.sidesheet.d
    public int i(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getRight();
    }

    @Override // com.google.android.material.sidesheet.d
    int j() {
        return 0;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean k(float f11) {
        return f11 < 0.0f;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean l(View view) {
        return view.getLeft() > (e() + d()) / 2;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean m(float f11, float f12) {
        return e.a(f11, f12) && Math.abs(f11) > ((float) this.f29664a.k0());
    }

    @Override // com.google.android.material.sidesheet.d
    boolean n(View view, float f11) {
        return Math.abs(((float) view.getRight()) + (f11 * this.f29664a.e0())) > this.f29664a.f0();
    }

    @Override // com.google.android.material.sidesheet.d
    void o(ViewGroup.MarginLayoutParams marginLayoutParams, int i11) {
        marginLayoutParams.rightMargin = i11;
    }

    @Override // com.google.android.material.sidesheet.d
    void p(ViewGroup.MarginLayoutParams marginLayoutParams, int i11, int i12) {
        int iJ0 = this.f29664a.j0();
        if (i11 <= iJ0) {
            marginLayoutParams.rightMargin = iJ0 - i11;
        }
    }
}
