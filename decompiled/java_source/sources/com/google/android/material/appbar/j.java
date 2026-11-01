package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes4.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f28272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f28275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f28276e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f28277f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f28278g = true;

    public j(View view) {
        this.f28272a = view;
    }

    void a() {
        View view = this.f28272a;
        ViewCompat.offsetTopAndBottom(view, this.f28275d - (view.getTop() - this.f28273b));
        View view2 = this.f28272a;
        ViewCompat.offsetLeftAndRight(view2, this.f28276e - (view2.getLeft() - this.f28274c));
    }

    public int b() {
        return this.f28273b;
    }

    public int c() {
        return this.f28275d;
    }

    void d() {
        this.f28273b = this.f28272a.getTop();
        this.f28274c = this.f28272a.getLeft();
    }

    public boolean e(int i11) {
        if (!this.f28278g || this.f28276e == i11) {
            return false;
        }
        this.f28276e = i11;
        a();
        return true;
    }

    public boolean f(int i11) {
        if (!this.f28277f || this.f28275d == i11) {
            return false;
        }
        this.f28275d = i11;
        a();
        return true;
    }
}
