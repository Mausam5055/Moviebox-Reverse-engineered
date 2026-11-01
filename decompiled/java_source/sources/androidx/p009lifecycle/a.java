package androidx.p009lifecycle;

import android.os.Bundle;
import androidx.p010savedstate.c;
import androidx.p010savedstate.e;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends v0.e implements v0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f9573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Lifecycle f9574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bundle f9575c;

    public a() {
    }

    public a(e owner, Bundle bundle) {
        Intrinsics.h(owner, "owner");
        this.f9573a = owner.getSavedStateRegistry();
        this.f9574b = owner.getLifecycle();
        this.f9575c = bundle;
    }

    private final t0 b(String str, Class cls) {
        c cVar = this.f9573a;
        Intrinsics.e(cVar);
        Lifecycle lifecycle = this.f9574b;
        Intrinsics.e(lifecycle);
        n0 n0VarB = n.b(cVar, lifecycle, str, this.f9575c);
        t0 t0VarC = c(str, cls, n0VarB.d());
        t0VarC.addCloseable("androidx.lifecycle.savedstate.vm.tag", n0VarB);
        return t0VarC;
    }

    @Override // androidx.lifecycle.v0.e
    public void a(t0 viewModel) {
        Intrinsics.h(viewModel, "viewModel");
        c cVar = this.f9573a;
        if (cVar != null) {
            Intrinsics.e(cVar);
            Lifecycle lifecycle = this.f9574b;
            Intrinsics.e(lifecycle);
            n.a(viewModel, cVar, lifecycle);
        }
    }

    protected abstract t0 c(String str, Class cls, l0 l0Var);

    @Override // androidx.lifecycle.v0.c
    public t0 create(Class modelClass) {
        Intrinsics.h(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        if (this.f9574b != null) {
            return b(canonicalName, modelClass);
        }
        throw new UnsupportedOperationException("AbstractSavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
    }

    @Override // androidx.lifecycle.v0.c
    public t0 create(Class modelClass, p1.a extras) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(extras, "extras");
        String str = (String) extras.a(v0.d.f9658c);
        if (str != null) {
            return this.f9573a != null ? b(str, modelClass) : c(str, modelClass, o0.b(extras));
        }
        throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
    }

    @Override // androidx.lifecycle.v0.c
    public /* synthetic */ t0 create(KClass kClass, p1.a aVar) {
        return w0.c(this, kClass, aVar);
    }
}
