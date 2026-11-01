package p1;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.v0;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    public static final t0 a(v0.c factory, KClass modelClass, a extras) {
        Intrinsics.h(factory, "factory");
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(extras, "extras");
        try {
            try {
                return factory.create(modelClass, extras);
            } catch (AbstractMethodError unused) {
                return factory.create(JvmClassMappingKt.a(modelClass));
            }
        } catch (AbstractMethodError unused2) {
            return factory.create(JvmClassMappingKt.a(modelClass), extras);
        }
    }
}
