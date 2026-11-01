package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f30155a;

    class a implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f30156a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f30157b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ua.a f30158c;

        a(View view, int i11, ua.a aVar) {
            this.f30156a = view;
            this.f30157b = i11;
            this.f30158c = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f30156a.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f30155a == this.f30157b) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                ua.a aVar = this.f30158c;
                expandableBehavior.H((View) aVar, this.f30156a, aVar.isExpanded(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f30155a = 0;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30155a = 0;
    }

    private boolean F(boolean z10) {
        if (!z10) {
            return this.f30155a == 1;
        }
        int i11 = this.f30155a;
        return i11 == 0 || i11 == 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected ua.a G(CoordinatorLayout coordinatorLayout, View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i11 = 0; i11 < size; i11++) {
            View view2 = dependencies.get(i11);
            if (e(coordinatorLayout, view, view2)) {
                return (ua.a) view2;
            }
        }
        return null;
    }

    protected abstract boolean H(View view, View view2, boolean z10, boolean z11);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public abstract boolean e(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        ua.a aVar = (ua.a) view2;
        if (!F(aVar.isExpanded())) {
            return false;
        }
        this.f30155a = aVar.isExpanded() ? 1 : 2;
        return H((View) aVar, view, aVar.isExpanded(), true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i11) {
        ua.a aVarG;
        if (ViewCompat.isLaidOut(view) || (aVarG = G(coordinatorLayout, view)) == null || !F(aVarG.isExpanded())) {
            return false;
        }
        int i12 = aVarG.isExpanded() ? 1 : 2;
        this.f30155a = i12;
        view.getViewTreeObserver().addOnPreDrawListener(new a(view, i12, aVarG));
        return false;
    }
}
