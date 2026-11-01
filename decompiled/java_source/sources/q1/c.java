package q1;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.w0;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements v0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f73045a = new c();

    private c() {
    }

    @Override // androidx.lifecycle.v0.c
    public /* synthetic */ t0 create(Class cls) {
        return w0.a(this, cls);
    }

    @Override // androidx.lifecycle.v0.c
    public /* synthetic */ t0 create(Class cls, p1.a aVar) {
        return w0.b(this, cls, aVar);
    }

    @Override // androidx.lifecycle.v0.c
    public t0 create(KClass modelClass, p1.a extras) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(extras, "extras");
        return d.f73046a.a(JvmClassMappingKt.a(modelClass));
    }
}
