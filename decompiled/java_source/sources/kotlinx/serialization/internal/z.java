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
final class z implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function2 f68219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap f68220b;

    public z(Function2 compute) {
        Intrinsics.h(compute, "compute");
        this.f68219a = compute;
        this.f68220b = new ConcurrentHashMap();
    }

    @Override // kotlinx.serialization.internal.j1
    public Object a(KClass key, List types) {
        Object objM454constructorimpl;
        Object objPutIfAbsent;
        Intrinsics.h(key, "key");
        Intrinsics.h(types, "types");
        ConcurrentHashMap concurrentHashMap = this.f68220b;
        Class clsA = JvmClassMappingKt.a(key);
        Object i1Var = concurrentHashMap.get(clsA);
        if (i1Var == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(clsA, (i1Var = new i1()))) != null) {
            i1Var = objPutIfAbsent;
        }
        ConcurrentHashMap concurrentHashMap2 = ((i1) i1Var).f68154a;
        Object obj = concurrentHashMap2.get(types);
        if (obj == null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl((kotlinx.serialization.b) this.f68219a.invoke(key, types));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Result resultM453boximpl = Result.m453boximpl(objM454constructorimpl);
            Object objPutIfAbsent2 = concurrentHashMap2.putIfAbsent(types, resultM453boximpl);
            obj = objPutIfAbsent2 == null ? resultM453boximpl : objPutIfAbsent2;
        }
        Intrinsics.g(obj, "serializers.getOrPut(typ… { producer() }\n        }");
        return ((Result) obj).getValue();
    }
}
