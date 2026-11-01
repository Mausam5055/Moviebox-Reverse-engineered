package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.internal.v1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {
    public static final KClass a(f fVar) {
        Intrinsics.h(fVar, "<this>");
        if (fVar instanceof c) {
            return ((c) fVar).f68049b;
        }
        if (fVar instanceof v1) {
            return a(((v1) fVar).k());
        }
        return null;
    }

    public static final f b(f00.c cVar, f descriptor) {
        kotlinx.serialization.b bVarC;
        Intrinsics.h(cVar, "<this>");
        Intrinsics.h(descriptor, "descriptor");
        KClass kClassA = a(descriptor);
        if (kClassA == null || (bVarC = f00.c.c(cVar, kClassA, null, 2, null)) == null) {
            return null;
        }
        return bVarC.getDescriptor();
    }

    public static final f c(f fVar, KClass context) {
        Intrinsics.h(fVar, "<this>");
        Intrinsics.h(context, "context");
        return new c(fVar, context);
    }
}
