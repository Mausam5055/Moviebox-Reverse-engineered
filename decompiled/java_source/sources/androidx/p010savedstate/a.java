package androidx.p010savedstate;

import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a implements r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0121a f14823b = new C0121a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f14824a;

    /* JADX INFO: renamed from: androidx.savedstate.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes2.dex */
    public static final class C0121a {
        private C0121a() {
        }

        public /* synthetic */ C0121a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class b implements c.InterfaceC0122c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set f14825a;

        public b(c registry) {
            Intrinsics.h(registry, "registry");
            this.f14825a = new LinkedHashSet();
            registry.h("androidx.savedstate.Restarter", this);
        }

        public final void a(String className) {
            Intrinsics.h(className, "className");
            this.f14825a.add(className);
        }

        @Override // androidx.p010savedstate.c.InterfaceC0122c
        public Bundle saveState() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f14825a));
            return bundle;
        }
    }

    public a(e owner) {
        Intrinsics.h(owner, "owner");
        this.f14824a = owner;
    }

    private final void a(String str) {
        try {
            Class<? extends U> clsAsSubclass = Class.forName(str, false, a.class.getClassLoader()).asSubclass(c.a.class);
            Intrinsics.g(clsAsSubclass, "{\n                Class.…class.java)\n            }");
            try {
                Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(null);
                declaredConstructor.setAccessible(true);
                try {
                    Object objNewInstance = declaredConstructor.newInstance(null);
                    Intrinsics.g(objNewInstance, "{\n                constr…wInstance()\n            }");
                    ((c.a) objNewInstance).a(this.f14824a);
                } catch (Exception e11) {
                    throw new RuntimeException("Failed to instantiate " + str, e11);
                }
            } catch (NoSuchMethodException e12) {
                throw new IllegalStateException("Class " + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e12);
            }
        } catch (ClassNotFoundException e13) {
            throw new RuntimeException("Class " + str + " wasn't found", e13);
        }
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (event != Lifecycle.Event.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        source.getLifecycle().d(this);
        Bundle bundleB = this.f14824a.getSavedStateRegistry().b("androidx.savedstate.Restarter");
        if (bundleB == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleB.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }
}
