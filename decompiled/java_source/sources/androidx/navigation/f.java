package androidx.navigation;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.w0;
import androidx.p009lifecycle.x0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends t0 implements p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f13872b = new b(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final v0.c f13873c = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f13874a = new LinkedHashMap();

    public static final class a implements v0.c {
        a() {
        }

        @Override // androidx.lifecycle.v0.c
        public t0 create(Class modelClass) {
            Intrinsics.h(modelClass, "modelClass");
            return new f();
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

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a(x0 viewModelStore) {
            Intrinsics.h(viewModelStore, "viewModelStore");
            t0 t0VarA = new v0(viewModelStore, f.f13873c).a(f.class);
            Intrinsics.g(t0VarA, "get(VM::class.java)");
            return (f) t0VarA;
        }
    }

    @Override // androidx.navigation.p
    public x0 a(String backStackEntryId) {
        Intrinsics.h(backStackEntryId, "backStackEntryId");
        x0 x0Var = (x0) this.f13874a.get(backStackEntryId);
        if (x0Var != null) {
            return x0Var;
        }
        x0 x0Var2 = new x0();
        this.f13874a.put(backStackEntryId, x0Var2);
        return x0Var2;
    }

    public final void c(String backStackEntryId) {
        Intrinsics.h(backStackEntryId, "backStackEntryId");
        x0 x0Var = (x0) this.f13874a.remove(backStackEntryId);
        if (x0Var == null) {
            return;
        }
        x0Var.a();
    }

    @Override // androidx.p009lifecycle.t0
    protected void onCleared() {
        Iterator it = this.f13874a.values().iterator();
        while (it.hasNext()) {
            ((x0) it.next()).a();
        }
        this.f13874a.clear();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("NavControllerViewModel{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("} ViewModelStores (");
        Iterator it = this.f13874a.keySet().iterator();
        while (it.hasNext()) {
            sb2.append((String) it.next());
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(')');
        String string = sb2.toString();
        Intrinsics.g(string, "sb.toString()");
        return string;
    }
}
