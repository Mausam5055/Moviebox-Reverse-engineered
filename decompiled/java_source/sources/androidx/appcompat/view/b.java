package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f1259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1260b;

    public interface a {
        void a(b bVar);

        boolean b(b bVar, Menu menu);

        boolean c(b bVar, MenuItem menuItem);

        boolean d(b bVar, Menu menu);
    }

    public abstract void c();

    public abstract View d();

    public abstract Menu e();

    public abstract MenuInflater f();

    public abstract CharSequence g();

    public Object h() {
        return this.f1259a;
    }

    public abstract CharSequence i();

    public boolean j() {
        return this.f1260b;
    }

    public abstract void k();

    public boolean l() {
        return false;
    }

    public abstract void m(View view);

    public abstract void n(int i11);

    public abstract void o(CharSequence charSequence);

    public void p(Object obj) {
        this.f1259a = obj;
    }

    public abstract void q(int i11);

    public abstract void r(CharSequence charSequence);

    public void s(boolean z10) {
        this.f1260b = z10;
    }
}
