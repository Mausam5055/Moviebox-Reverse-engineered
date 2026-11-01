package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.o0;
import androidx.p009lifecycle.q0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;

/* JADX INFO: loaded from: classes.dex */
class z implements androidx.p009lifecycle.m, androidx.p010savedstate.e, y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f9522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0 f9523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private v0.c f9524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.p009lifecycle.w f9525d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.p010savedstate.d f9526e = null;

    z(Fragment fragment, x0 x0Var) {
        this.f9522a = fragment;
        this.f9523b = x0Var;
    }

    void a(Lifecycle.Event event) {
        this.f9525d.i(event);
    }

    void b() {
        if (this.f9525d == null) {
            this.f9525d = new androidx.p009lifecycle.w(this);
            androidx.p010savedstate.d dVarA = androidx.p010savedstate.d.a(this);
            this.f9526e = dVarA;
            dVarA.c();
            o0.c(this);
        }
    }

    boolean c() {
        return this.f9525d != null;
    }

    void d(Bundle bundle) {
        this.f9526e.d(bundle);
    }

    void e(Bundle bundle) {
        this.f9526e.e(bundle);
    }

    void f(Lifecycle.State state) {
        this.f9525d.n(state);
    }

    @Override // androidx.p009lifecycle.m
    public p1.a getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = this.f9522a.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        p1.b bVar = new p1.b();
        if (application != null) {
            bVar.c(v0.a.f9654g, application);
        }
        bVar.c(o0.f9631a, this);
        bVar.c(o0.f9632b, this);
        if (this.f9522a.getArguments() != null) {
            bVar.c(o0.f9633c, this.f9522a.getArguments());
        }
        return bVar;
    }

    @Override // androidx.p009lifecycle.m
    public v0.c getDefaultViewModelProviderFactory() {
        Application application;
        v0.c defaultViewModelProviderFactory = this.f9522a.getDefaultViewModelProviderFactory();
        if (!defaultViewModelProviderFactory.equals(this.f9522a.mDefaultFactory)) {
            this.f9524c = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.f9524c == null) {
            Context applicationContext = this.f9522a.requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            this.f9524c = new q0(application, this, this.f9522a.getArguments());
        }
        return this.f9524c;
    }

    @Override // androidx.p009lifecycle.u
    public Lifecycle getLifecycle() {
        b();
        return this.f9525d;
    }

    @Override // androidx.p010savedstate.e
    public androidx.p010savedstate.c getSavedStateRegistry() {
        b();
        return this.f9526e.b();
    }

    @Override // androidx.p009lifecycle.y0
    public x0 getViewModelStore() {
        b();
        return this.f9523b;
    }
}
