package kotlinx.serialization.internal;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes7.dex */
final class y implements x1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f68213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentHashMap f68214b;

    public y(Function1 compute) {
        Intrinsics.h(compute, "compute");
        this.f68213a = compute;
        this.f68214b = new ConcurrentHashMap();
    }

    @Override // kotlinx.serialization.internal.x1
    public kotlinx.serialization.b a(KClass key) {
        Object objPutIfAbsent;
        Intrinsics.h(key, "key");
        ConcurrentHashMap concurrentHashMap = this.f68214b;
        Class clsA = JvmClassMappingKt.a(key);
        Object mVar = concurrentHashMap.get(clsA);
        if (mVar == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(clsA, (mVar = new m((kotlinx.serialization.b) this.f68213a.invoke(key))))) != null) {
            mVar = objPutIfAbsent;
        }
        return ((m) mVar).f68168a;
    }
}
