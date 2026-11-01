package androidx.p010savedstate;

import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final b f14827g = new b(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f14829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f14830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f14831d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.savedstate.a.b f14832e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k.b f14828a = new k.b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f14833f = true;

    /* JADX INFO: loaded from: classes.dex */
    public interface a {
        void a(e eVar);
    }

    private static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: renamed from: androidx.savedstate.c$c, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes.dex */
    public interface InterfaceC0122c {
        Bundle saveState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(c this$0, u uVar, Lifecycle.Event event) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(uVar, "<anonymous parameter 0>");
        Intrinsics.h(event, "event");
        if (event == Lifecycle.Event.ON_START) {
            this$0.f14833f = true;
        } else if (event == Lifecycle.Event.ON_STOP) {
            this$0.f14833f = false;
        }
    }

    public final Bundle b(String key) {
        Intrinsics.h(key, "key");
        if (!this.f14831d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.f14830c;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle != null ? bundle.getBundle(key) : null;
        Bundle bundle3 = this.f14830c;
        if (bundle3 != null) {
            bundle3.remove(key);
        }
        Bundle bundle4 = this.f14830c;
        if (bundle4 == null || bundle4.isEmpty()) {
            this.f14830c = null;
        }
        return bundle2;
    }

    public final InterfaceC0122c c(String key) {
        Intrinsics.h(key, "key");
        for (Map.Entry components : this.f14828a) {
            Intrinsics.g(components, "components");
            String str = (String) components.getKey();
            InterfaceC0122c interfaceC0122c = (InterfaceC0122c) components.getValue();
            if (Intrinsics.c(str, key)) {
                return interfaceC0122c;
            }
        }
        return null;
    }

    public final void e(Lifecycle lifecycle) {
        Intrinsics.h(lifecycle, "lifecycle");
        if (this.f14829b) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        lifecycle.a(new r() { // from class: androidx.savedstate.b
            @Override // androidx.p009lifecycle.r
            public final void onStateChanged(u uVar, Lifecycle.Event event) {
                c.d(this.f14826a, uVar, event);
            }
        });
        this.f14829b = true;
    }

    public final void f(Bundle bundle) {
        if (!this.f14829b) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        if (this.f14831d) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        this.f14830c = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        this.f14831d = true;
    }

    public final void g(Bundle outBundle) {
        Intrinsics.h(outBundle, "outBundle");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f14830c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        k.b.d dVarC = this.f14828a.c();
        Intrinsics.g(dVarC, "this.components.iteratorWithAdditions()");
        while (dVarC.hasNext()) {
            Map.Entry entry = (Map.Entry) dVarC.next();
            bundle.putBundle((String) entry.getKey(), ((InterfaceC0122c) entry.getValue()).saveState());
        }
        if (bundle.isEmpty()) {
            return;
        }
        outBundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle);
    }

    public final void h(String key, InterfaceC0122c provider) {
        Intrinsics.h(key, "key");
        Intrinsics.h(provider, "provider");
        if (((InterfaceC0122c) this.f14828a.g(key, provider)) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public final void i(Class clazz) {
        Intrinsics.h(clazz, "clazz");
        if (!this.f14833f) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        androidx.savedstate.a.b bVar = this.f14832e;
        if (bVar == null) {
            bVar = new androidx.savedstate.a.b(this);
        }
        this.f14832e = bVar;
        try {
            clazz.getDeclaredConstructor(null);
            androidx.savedstate.a.b bVar2 = this.f14832e;
            if (bVar2 != null) {
                String name = clazz.getName();
                Intrinsics.g(name, "clazz.name");
                bVar2.a(name);
            }
        } catch (NoSuchMethodException e11) {
            throw new IllegalArgumentException("Class " + clazz.getSimpleName() + " must have default constructor in order to be automatically recreated", e11);
        }
    }

    public final void j(String key) {
        Intrinsics.h(key, "key");
        this.f14828a.h(key);
    }
}
