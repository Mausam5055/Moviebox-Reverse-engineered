package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes4.dex */
final class a extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final SideSheetBehavior f29663a;

    a(SideSheetBehavior sideSheetBehavior) {
        this.f29663a = sideSheetBehavior;
    }

    @Override // com.google.android.material.sidesheet.d
    int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // com.google.android.material.sidesheet.d
    float b(int i11) {
        float fE = e();
        return (i11 - fE) / (d() - fE);
    }

    @Override // com.google.android.material.sidesheet.d
    int c(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // com.google.android.material.sidesheet.d
    int d() {
        return Math.max(0, this.f29663a.i0() + this.f29663a.g0());
    }

    @Override // com.google.android.material.sidesheet.d
    int e() {
        return (-this.f29663a.Z()) - this.f29663a.g0();
    }

    @Override // com.google.android.material.sidesheet.d
    int f() {
        return this.f29663a.g0();
    }

    @Override // com.google.android.material.sidesheet.d
    int g() {
        return -this.f29663a.Z();
    }

    @Override // com.google.android.material.sidesheet.d
    int h(View view) {
        return view.getRight() + this.f29663a.g0();
    }

    @Override // com.google.android.material.sidesheet.d
    public int i(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getLeft();
    }

    @Override // com.google.android.material.sidesheet.d
    int j() {
        return 1;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean k(float f11) {
        return f11 > 0.0f;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean l(View view) {
        return view.getRight() < (d() - e()) / 2;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean m(float f11, float f12) {
        return e.a(f11, f12) && Math.abs(f11) > ((float) this.f29663a.k0());
    }

    @Override // com.google.android.material.sidesheet.d
    boolean n(View view, float f11) {
        return Math.abs(((float) view.getLeft()) + (f11 * this.f29663a.e0())) > this.f29663a.f0();
    }

    @Override // com.google.android.material.sidesheet.d
    void o(ViewGroup.MarginLayoutParams marginLayoutParams, int i11) {
        marginLayoutParams.leftMargin = i11;
    }

    @Override // com.google.android.material.sidesheet.d
    void p(ViewGroup.MarginLayoutParams marginLayoutParams, int i11, int i12) {
        if (i11 <= this.f29663a.j0()) {
            marginLayoutParams.leftMargin = i12;
        }
    }
}
