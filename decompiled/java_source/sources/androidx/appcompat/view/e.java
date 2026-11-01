package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class e extends b implements androidx.appcompat.view.menu.f.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f1267c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ActionBarContextView f1268d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b.a f1269e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WeakReference f1270f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1271g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1272h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.appcompat.view.menu.f f1273i;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z10) {
        this.f1267c = context;
        this.f1268d = actionBarContextView;
        this.f1269e = aVar;
        androidx.appcompat.view.menu.f fVarX = new androidx.appcompat.view.menu.f(actionBarContextView.getContext()).X(1);
        this.f1273i = fVarX;
        fVarX.W(this);
        this.f1272h = z10;
    }

    @Override // androidx.appcompat.view.menu.f.a
    public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
        return this.f1269e.c(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.f.a
    public void b(androidx.appcompat.view.menu.f fVar) {
        k();
        this.f1268d.showOverflowMenu();
    }

    @Override // androidx.appcompat.view.b
    public void c() {
        if (this.f1271g) {
            return;
        }
        this.f1271g = true;
        this.f1269e.a(this);
    }

    @Override // androidx.appcompat.view.b
    public View d() {
        WeakReference weakReference = this.f1270f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // androidx.appcompat.view.b
    public Menu e() {
        return this.f1273i;
    }

    @Override // androidx.appcompat.view.b
    public MenuInflater f() {
        return new g(this.f1268d.getContext());
    }

    @Override // androidx.appcompat.view.b
    public CharSequence g() {
        return this.f1268d.getSubtitle();
    }

    @Override // androidx.appcompat.view.b
    public CharSequence i() {
        return this.f1268d.getTitle();
    }

    @Override // androidx.appcompat.view.b
    public void k() {
        this.f1269e.d(this, this.f1273i);
    }

    @Override // androidx.appcompat.view.b
    public boolean l() {
        return this.f1268d.isTitleOptional();
    }

    @Override // androidx.appcompat.view.b
    public void m(View view) {
        this.f1268d.setCustomView(view);
        this.f1270f = view != null ? new WeakReference(view) : null;
    }

    @Override // androidx.appcompat.view.b
    public void n(int i11) {
        o(this.f1267c.getString(i11));
    }

    @Override // androidx.appcompat.view.b
    public void o(CharSequence charSequence) {
        this.f1268d.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public void q(int i11) {
        r(this.f1267c.getString(i11));
    }

    @Override // androidx.appcompat.view.b
    public void r(CharSequence charSequence) {
        this.f1268d.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public void s(boolean z10) {
        super.s(z10);
        this.f1268d.setTitleOptional(z10);
    }
}
