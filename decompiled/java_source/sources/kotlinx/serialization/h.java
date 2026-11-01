package kotlinx.serialization;

import java.util.List;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: loaded from: classes7.dex */
public abstract class h {
    public static final b a(KClass kClass, List list, List list2) {
        return i.d(kClass, list, list2);
    }

    public static final b b(f00.c cVar, KType kType) {
        return i.e(cVar, kType);
    }

    public static final b c(f00.c cVar, KType kType) {
        return i.g(cVar, kType);
    }

    public static final b d(KClass kClass) {
        return i.h(kClass);
    }

    public static final List e(f00.c cVar, List list, boolean z10) {
        return i.i(cVar, list, z10);
    }
}
