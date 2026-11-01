package androidx.fragment.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f9432a;

    private g(i iVar) {
        this.f9432a = iVar;
    }

    public static g b(i iVar) {
        return new g((i) androidx.core.util.i.h(iVar, "callbacks == null"));
    }

    public void a(Fragment fragment) {
        i iVar = this.f9432a;
        iVar.f9437e.n(iVar, iVar, fragment);
    }

    public void c() {
        this.f9432a.f9437e.z();
    }

    public boolean d(MenuItem menuItem) {
        return this.f9432a.f9437e.C(menuItem);
    }

    public void e() {
        this.f9432a.f9437e.D();
    }

    public void f() {
        this.f9432a.f9437e.F();
    }

    public void g() {
        this.f9432a.f9437e.O();
    }

    public void h() {
        this.f9432a.f9437e.S();
    }

    public void i() {
        this.f9432a.f9437e.T();
    }

    public void j() {
        this.f9432a.f9437e.V();
    }

    public boolean k() {
        return this.f9432a.f9437e.c0(true);
    }

    public FragmentManager l() {
        return this.f9432a.f9437e;
    }

    public void m() {
        this.f9432a.f9437e.d1();
    }

    public View n(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f9432a.f9437e.A0().onCreateView(view, str, context, attributeSet);
    }
}
