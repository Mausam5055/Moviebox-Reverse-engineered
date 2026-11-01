package androidx.p009lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.p010savedstate.c;
import androidx.p010savedstate.e;
import java.lang.reflect.Constructor;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import p1.a;

/* JADX INFO: loaded from: classes.dex */
public final class q0 extends v0.e implements v0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Application f9641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v0.c f9642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f9643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Lifecycle f9644d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f9645e;

    public q0() {
        this.f9642b = new v0.a();
    }

    public q0(Application application, e owner, Bundle bundle) {
        Intrinsics.h(owner, "owner");
        this.f9645e = owner.getSavedStateRegistry();
        this.f9644d = owner.getLifecycle();
        this.f9643c = bundle;
        this.f9641a = application;
        this.f9642b = application != null ? v0.a.f9652e.a(application) : new v0.a();
    }

    @Override // androidx.lifecycle.v0.e
    public void a(t0 viewModel) {
        Intrinsics.h(viewModel, "viewModel");
        if (this.f9644d != null) {
            c cVar = this.f9645e;
            Intrinsics.e(cVar);
            Lifecycle lifecycle = this.f9644d;
            Intrinsics.e(lifecycle);
            n.a(viewModel, cVar, lifecycle);
        }
    }

    public final t0 b(String key, Class modelClass) {
        t0 t0VarD;
        Application application;
        Intrinsics.h(key, "key");
        Intrinsics.h(modelClass, "modelClass");
        Lifecycle lifecycle = this.f9644d;
        if (lifecycle == null) {
            throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        }
        boolean zIsAssignableFrom = b.class.isAssignableFrom(modelClass);
        Constructor constructorC = (!zIsAssignableFrom || this.f9641a == null) ? r0.c(modelClass, r0.f9647b) : r0.c(modelClass, r0.f9646a);
        if (constructorC == null) {
            return this.f9641a != null ? this.f9642b.create(modelClass) : v0.d.f9656a.a().create(modelClass);
        }
        c cVar = this.f9645e;
        Intrinsics.e(cVar);
        n0 n0VarB = n.b(cVar, lifecycle, key, this.f9643c);
        if (!zIsAssignableFrom || (application = this.f9641a) == null) {
            t0VarD = r0.d(modelClass, constructorC, n0VarB.d());
        } else {
            Intrinsics.e(application);
            t0VarD = r0.d(modelClass, constructorC, application, n0VarB.d());
        }
        t0VarD.addCloseable("androidx.lifecycle.savedstate.vm.tag", n0VarB);
        return t0VarD;
    }

    @Override // androidx.lifecycle.v0.c
    public t0 create(Class modelClass) {
        Intrinsics.h(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return b(canonicalName, modelClass);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.v0.c
    public t0 create(Class modelClass, a extras) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(extras, "extras");
        String str = (String) extras.a(v0.d.f9658c);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (extras.a(o0.f9631a) == null || extras.a(o0.f9632b) == null) {
            if (this.f9644d != null) {
                return b(str, modelClass);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) extras.a(v0.a.f9654g);
        boolean zIsAssignableFrom = b.class.isAssignableFrom(modelClass);
        Constructor constructorC = (!zIsAssignableFrom || application == null) ? r0.c(modelClass, r0.f9647b) : r0.c(modelClass, r0.f9646a);
        if (constructorC == null) {
            return this.f9642b.create(modelClass, extras);
        }
        return (!zIsAssignableFrom || application == null) ? r0.d(modelClass, constructorC, o0.b(extras)) : r0.d(modelClass, constructorC, application, o0.b(extras));
    }

    @Override // androidx.lifecycle.v0.c
    public /* synthetic */ t0 create(KClass kClass, a aVar) {
        return w0.c(this, kClass, aVar);
    }
}
