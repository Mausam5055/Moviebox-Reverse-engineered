package kotlinx.serialization.internal;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes7.dex */
final class v implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function2 f68205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f68206b;

    public static final class a extends ClassValue {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ClassValue
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public i1 computeValue(Class type) {
            Intrinsics.h(type, "type");
            return new i1();
        }
    }

    public v(Function2 compute) {
        Intrinsics.h(compute, "compute");
        this.f68205a = compute;
        this.f68206b = b();
    }

    private final a b() {
        return new a();
    }

    @Override // kotlinx.serialization.internal.j1
    public Object a(KClass key, List types) {
        Object objM454constructorimpl;
        Intrinsics.h(key, "key");
        Intrinsics.h(types, "types");
        ConcurrentHashMap concurrentHashMap = ((i1) this.f68206b.get(JvmClassMappingKt.a(key))).f68154a;
        Object obj = concurrentHashMap.get(types);
        if (obj == null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl((kotlinx.serialization.b) this.f68205a.invoke(key, types));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Result resultM453boximpl = Result.m453boximpl(objM454constructorimpl);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(types, resultM453boximpl);
            obj = objPutIfAbsent == null ? resultM453boximpl : objPutIfAbsent;
        }
        Intrinsics.g(obj, "serializers.getOrPut(typ… { producer() }\n        }");
        return ((Result) obj).getValue();
    }
}
