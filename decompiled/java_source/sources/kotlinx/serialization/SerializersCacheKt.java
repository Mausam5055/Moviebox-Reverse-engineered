package kotlinx.serialization;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.internal.j1;
import kotlinx.serialization.internal.o;
import kotlinx.serialization.internal.x1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SerializersCacheKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final x1 f68025a = o.a(new Function1<KClass<?>, b>() { // from class: kotlinx.serialization.SerializersCacheKt$SERIALIZERS_CACHE$1
        @Override // kotlin.jvm.functions.Function1
        public final b invoke(KClass<?> it) {
            Intrinsics.h(it, "it");
            return h.d(it);
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final x1 f68026b = o.a(new Function1<KClass<?>, b>() { // from class: kotlinx.serialization.SerializersCacheKt$SERIALIZERS_CACHE_NULLABLE$1
        @Override // kotlin.jvm.functions.Function1
        public final b invoke(KClass<?> it) {
            b bVarS;
            Intrinsics.h(it, "it");
            b bVarD = h.d(it);
            if (bVarD == null || (bVarS = d00.a.s(bVarD)) == null) {
                return null;
            }
            return bVarS;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final j1 f68027c = o.b(new Function2<KClass<Object>, List<? extends KType>, b>() { // from class: kotlinx.serialization.SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE$1
        @Override // kotlin.jvm.functions.Function2
        public final b invoke(KClass<Object> clazz, List<? extends KType> types) {
            Intrinsics.h(clazz, "clazz");
            Intrinsics.h(types, "types");
            List listE = h.e(f00.d.a(), types, true);
            Intrinsics.e(listE);
            return h.a(clazz, types, listE);
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final j1 f68028d = o.b(new Function2<KClass<Object>, List<? extends KType>, b>() { // from class: kotlinx.serialization.SerializersCacheKt$PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$1
        @Override // kotlin.jvm.functions.Function2
        public final b invoke(KClass<Object> clazz, List<? extends KType> types) {
            b bVarS;
            Intrinsics.h(clazz, "clazz");
            Intrinsics.h(types, "types");
            List listE = h.e(f00.d.a(), types, true);
            Intrinsics.e(listE);
            b bVarA = h.a(clazz, types, listE);
            if (bVarA == null || (bVarS = d00.a.s(bVarA)) == null) {
                return null;
            }
            return bVarS;
        }
    });

    public static final b a(KClass clazz, boolean z10) {
        Intrinsics.h(clazz, "clazz");
        if (z10) {
            return f68026b.a(clazz);
        }
        b bVarA = f68025a.a(clazz);
        if (bVarA != null) {
            return bVarA;
        }
        return null;
    }

    public static final Object b(KClass clazz, List types, boolean z10) {
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(types, "types");
        return !z10 ? f68027c.a(clazz, types) : f68028d.a(clazz, types);
    }
}
