package ua;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f76706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f76707b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f76708c = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public b(a aVar) {
        this.f76706a = (View) aVar;
    }

    private void a() {
        ViewParent parent = this.f76706a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.f76706a);
        }
    }

    public int b() {
        return this.f76708c;
    }

    public boolean c() {
        return this.f76707b;
    }

    public void d(Bundle bundle) {
        this.f76707b = bundle.getBoolean("expanded", false);
        this.f76708c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f76707b) {
            a();
        }
    }

    public Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f76707b);
        bundle.putInt("expandedComponentIdHint", this.f76708c);
        return bundle;
    }

    public boolean f(boolean z10) {
        if (this.f76707b == z10) {
            return false;
        }
        this.f76707b = z10;
        a();
        return true;
    }

    public void g(int i11) {
        this.f76708c = i11;
    }
}
