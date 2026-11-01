package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList f9441a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FragmentManager f9442b;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final FragmentManager.k f9443a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f9444b;

        a(FragmentManager.k kVar, boolean z10) {
            this.f9443a = kVar;
            this.f9444b = z10;
        }
    }

    k(FragmentManager fragmentManager) {
        this.f9442b = fragmentManager;
    }

    void a(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().a(fragment, bundle, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentActivityCreated(this.f9442b, fragment, bundle);
            }
        }
    }

    void b(Fragment fragment, boolean z10) {
        Context contextF = this.f9442b.z0().f();
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().b(fragment, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentAttached(this.f9442b, fragment, contextF);
            }
        }
    }

    void c(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().c(fragment, bundle, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentCreated(this.f9442b, fragment, bundle);
            }
        }
    }

    void d(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().d(fragment, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentDestroyed(this.f9442b, fragment);
            }
        }
    }

    void e(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().e(fragment, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentDetached(this.f9442b, fragment);
            }
        }
    }

    void f(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().f(fragment, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentPaused(this.f9442b, fragment);
            }
        }
    }

    void g(Fragment fragment, boolean z10) {
        Context contextF = this.f9442b.z0().f();
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().g(fragment, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentPreAttached(this.f9442b, fragment, contextF);
            }
        }
    }

    void h(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().h(fragment, bundle, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentPreCreated(this.f9442b, fragment, bundle);
            }
        }
    }

    void i(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().i(fragment, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentResumed(this.f9442b, fragment);
            }
        }
    }

    void j(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().j(fragment, bundle, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentSaveInstanceState(this.f9442b, fragment, bundle);
            }
        }
    }

    void k(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().k(fragment, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentStarted(this.f9442b, fragment);
            }
        }
    }

    void l(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().l(fragment, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentStopped(this.f9442b, fragment);
            }
        }
    }

    void m(Fragment fragment, View view, Bundle bundle, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().m(fragment, view, bundle, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentViewCreated(this.f9442b, fragment, view, bundle);
            }
        }
    }

    void n(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9442b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().n(fragment, true);
        }
        for (a aVar : this.f9441a) {
            if (!z10 || aVar.f9444b) {
                aVar.f9443a.onFragmentViewDestroyed(this.f9442b, fragment);
            }
        }
    }

    public void o(FragmentManager.k kVar, boolean z10) {
        this.f9441a.add(new a(kVar, z10));
    }

    public void p(FragmentManager.k kVar) {
        synchronized (this.f9441a) {
            try {
                int size = this.f9441a.size();
                for (int i11 = 0; i11 < size; i11++) {
                    if (((a) this.f9441a.get(i11)).f9443a == kVar) {
                        this.f9441a.remove(i11);
                        break;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
