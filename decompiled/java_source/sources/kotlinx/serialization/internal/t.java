package kotlinx.serialization.internal;

import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes7.dex */
final class t implements x1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f68197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f68198b;

    public static final class a extends ClassValue {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ClassValue
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public m computeValue(Class type) {
            Intrinsics.h(type, "type");
            return new m((kotlinx.serialization.b) t.this.f68197a.invoke(JvmClassMappingKt.c(type)));
        }
    }

    public t(Function1 compute) {
        Intrinsics.h(compute, "compute");
        this.f68197a = compute;
        this.f68198b = c();
    }

    private final a c() {
        return new a();
    }

    @Override // kotlinx.serialization.internal.x1
    public kotlinx.serialization.b a(KClass key) {
        Intrinsics.h(key, "key");
        return ((m) this.f68198b.get(JvmClassMappingKt.a(key))).f68168a;
    }
}
