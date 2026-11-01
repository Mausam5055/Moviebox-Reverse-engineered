package androidx.fragment.app;

import android.util.Log;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.w0;
import androidx.p009lifecycle.x0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
final class r extends t0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final v0.c f9450h = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9454d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f9451a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f9452b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f9453c = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9455e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9456f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f9457g = false;

    class a implements v0.c {
        a() {
        }

        @Override // androidx.lifecycle.v0.c
        public t0 create(Class cls) {
            return new r(true);
        }

        @Override // androidx.lifecycle.v0.c
        public /* synthetic */ t0 create(Class cls, p1.a aVar) {
            return w0.b(this, cls, aVar);
        }

        @Override // androidx.lifecycle.v0.c
        public /* synthetic */ t0 create(KClass kClass, p1.a aVar) {
            return w0.c(this, kClass, aVar);
        }
    }

    r(boolean z10) {
        this.f9454d = z10;
    }

    private void e(String str) {
        r rVar = (r) this.f9452b.get(str);
        if (rVar != null) {
            rVar.onCleared();
            this.f9452b.remove(str);
        }
        x0 x0Var = (x0) this.f9453c.get(str);
        if (x0Var != null) {
            x0Var.a();
            this.f9453c.remove(str);
        }
    }

    static r h(x0 x0Var) {
        return (r) new v0(x0Var, f9450h).a(r.class);
    }

    void b(Fragment fragment) {
        if (this.f9457g) {
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f9451a.containsKey(fragment.mWho)) {
                return;
            }
            this.f9451a.put(fragment.mWho, fragment);
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
            }
        }
    }

    void c(Fragment fragment) {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Clearing non-config state for ");
            sb2.append(fragment);
        }
        e(fragment.mWho);
    }

    void d(String str) {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Clearing non-config state for saved state of Fragment ");
            sb2.append(str);
        }
        e(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r.class != obj.getClass()) {
            return false;
        }
        r rVar = (r) obj;
        return this.f9451a.equals(rVar.f9451a) && this.f9452b.equals(rVar.f9452b) && this.f9453c.equals(rVar.f9453c);
    }

    Fragment f(String str) {
        return (Fragment) this.f9451a.get(str);
    }

    r g(Fragment fragment) {
        r rVar = (r) this.f9452b.get(fragment.mWho);
        if (rVar != null) {
            return rVar;
        }
        r rVar2 = new r(this.f9454d);
        this.f9452b.put(fragment.mWho, rVar2);
        return rVar2;
    }

    public int hashCode() {
        return (((this.f9451a.hashCode() * 31) + this.f9452b.hashCode()) * 31) + this.f9453c.hashCode();
    }

    Collection i() {
        return new ArrayList(this.f9451a.values());
    }

    x0 j(Fragment fragment) {
        x0 x0Var = (x0) this.f9453c.get(fragment.mWho);
        if (x0Var != null) {
            return x0Var;
        }
        x0 x0Var2 = new x0();
        this.f9453c.put(fragment.mWho, x0Var2);
        return x0Var2;
    }

    boolean k() {
        return this.f9455e;
    }

    void l(Fragment fragment) {
        if (this.f9457g) {
            if (FragmentManager.M0(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f9451a.remove(fragment.mWho) == null || !FragmentManager.M0(2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    void m(boolean z10) {
        this.f9457g = z10;
    }

    boolean n(Fragment fragment) {
        if (this.f9451a.containsKey(fragment.mWho)) {
            return this.f9454d ? this.f9455e : !this.f9456f;
        }
        return true;
    }

    @Override // androidx.p009lifecycle.t0
    protected void onCleared() {
        if (FragmentManager.M0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCleared called for ");
            sb2.append(this);
        }
        this.f9455e = true;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("FragmentManagerViewModel{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("} Fragments (");
        Iterator it = this.f9451a.values().iterator();
        while (it.hasNext()) {
            sb2.append(it.next());
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(") Child Non Config (");
        Iterator it2 = this.f9452b.keySet().iterator();
        while (it2.hasNext()) {
            sb2.append((String) it2.next());
            if (it2.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(") ViewModelStores (");
        Iterator it3 = this.f9453c.keySet().iterator();
        while (it3.hasNext()) {
            sb2.append((String) it3.next());
            if (it3.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(')');
        return sb2.toString();
    }
}
