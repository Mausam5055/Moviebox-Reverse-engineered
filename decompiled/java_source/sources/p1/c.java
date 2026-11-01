package p1;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import q1.g;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x0 f72271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v0.c f72272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f72273c;

    public c(x0 store, v0.c factory, a extras) {
        Intrinsics.h(store, "store");
        Intrinsics.h(factory, "factory");
        Intrinsics.h(extras, "extras");
        this.f72271a = store;
        this.f72272b = factory;
        this.f72273c = extras;
    }

    public static /* synthetic */ t0 b(c cVar, KClass kClass, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = g.f73051a.c(kClass);
        }
        return cVar.a(kClass, str);
    }

    public final t0 a(KClass modelClass, String key) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(key, "key");
        t0 t0VarB = this.f72271a.b(key);
        if (!modelClass.d(t0VarB)) {
            b bVar = new b(this.f72273c);
            bVar.c(g.a.f73052a, key);
            t0 t0VarA = d.a(this.f72272b, modelClass, bVar);
            this.f72271a.d(key, t0VarA);
            return t0VarA;
        }
        Object obj = this.f72272b;
        if (obj instanceof v0.e) {
            Intrinsics.e(t0VarB);
            ((v0.e) obj).a(t0VarB);
        }
        Intrinsics.f(t0VarB, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel");
        return t0VarB;
    }
}
