package f00;

import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.g;
import kotlinx.serialization.internal.k1;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f62126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f62127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f62128c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f62129d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f62130e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Map class2ContextualFactory, Map polyBase2Serializers, Map polyBase2DefaultSerializerProvider, Map polyBase2NamedSerializers, Map polyBase2DefaultDeserializerProvider) {
        super(null);
        Intrinsics.h(class2ContextualFactory, "class2ContextualFactory");
        Intrinsics.h(polyBase2Serializers, "polyBase2Serializers");
        Intrinsics.h(polyBase2DefaultSerializerProvider, "polyBase2DefaultSerializerProvider");
        Intrinsics.h(polyBase2NamedSerializers, "polyBase2NamedSerializers");
        Intrinsics.h(polyBase2DefaultDeserializerProvider, "polyBase2DefaultDeserializerProvider");
        this.f62126a = class2ContextualFactory;
        this.f62127b = polyBase2Serializers;
        this.f62128c = polyBase2DefaultSerializerProvider;
        this.f62129d = polyBase2NamedSerializers;
        this.f62130e = polyBase2DefaultDeserializerProvider;
    }

    @Override // f00.c
    public void a(e collector) {
        Intrinsics.h(collector, "collector");
        for (Map.Entry entry : this.f62126a.entrySet()) {
            android.support.v4.media.session.c.a(entry.getValue());
        }
        for (Map.Entry entry2 : this.f62127b.entrySet()) {
            KClass kClass = (KClass) entry2.getKey();
            for (Map.Entry entry3 : ((Map) entry2.getValue()).entrySet()) {
                KClass kClass2 = (KClass) entry3.getKey();
                kotlinx.serialization.b bVar = (kotlinx.serialization.b) entry3.getValue();
                Intrinsics.f(kClass, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                Intrinsics.f(kClass2, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                Intrinsics.f(bVar, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                collector.a(kClass, kClass2, bVar);
            }
        }
        for (Map.Entry entry4 : this.f62128c.entrySet()) {
            KClass kClass3 = (KClass) entry4.getKey();
            Function1 function1 = (Function1) entry4.getValue();
            Intrinsics.f(kClass3, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            Intrinsics.f(function1, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = 'value')] kotlin.Any, kotlinx.serialization.SerializationStrategy<kotlin.Any>?>{ kotlinx.serialization.modules.SerializersModuleKt.PolymorphicSerializerProvider<kotlin.Any> }");
            collector.c(kClass3, (Function1) TypeIntrinsics.e(function1, 1));
        }
        for (Map.Entry entry5 : this.f62130e.entrySet()) {
            KClass kClass4 = (KClass) entry5.getKey();
            Function1 function2 = (Function1) entry5.getValue();
            Intrinsics.f(kClass4, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            Intrinsics.f(function2, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = 'className')] kotlin.String?, kotlinx.serialization.DeserializationStrategy<out kotlin.Any>?>{ kotlinx.serialization.modules.SerializersModuleKt.PolymorphicDeserializerProvider<out kotlin.Any> }");
            collector.b(kClass4, (Function1) TypeIntrinsics.e(function2, 1));
        }
    }

    @Override // f00.c
    public kotlinx.serialization.b b(KClass kClass, List typeArgumentsSerializers) {
        Intrinsics.h(kClass, "kClass");
        Intrinsics.h(typeArgumentsSerializers, "typeArgumentsSerializers");
        android.support.v4.media.session.c.a(this.f62126a.get(kClass));
        return null;
    }

    @Override // f00.c
    public kotlinx.serialization.a d(KClass baseClass, String str) {
        Intrinsics.h(baseClass, "baseClass");
        Map map = (Map) this.f62129d.get(baseClass);
        kotlinx.serialization.b bVar = map != null ? (kotlinx.serialization.b) map.get(str) : null;
        if (!(bVar instanceof kotlinx.serialization.b)) {
            bVar = null;
        }
        if (bVar != null) {
            return bVar;
        }
        Object obj = this.f62130e.get(baseClass);
        Function1 function1 = TypeIntrinsics.k(obj, 1) ? (Function1) obj : null;
        if (function1 != null) {
            return (kotlinx.serialization.a) function1.invoke(str);
        }
        return null;
    }

    @Override // f00.c
    public g e(KClass baseClass, Object value) {
        Intrinsics.h(baseClass, "baseClass");
        Intrinsics.h(value, "value");
        if (!k1.i(value, baseClass)) {
            return null;
        }
        Map map = (Map) this.f62127b.get(baseClass);
        kotlinx.serialization.b bVar = map != null ? (kotlinx.serialization.b) map.get(Reflection.b(value.getClass())) : null;
        if (!(bVar instanceof g)) {
            bVar = null;
        }
        if (bVar != null) {
            return bVar;
        }
        Object obj = this.f62128c.get(baseClass);
        Function1 function1 = TypeIntrinsics.k(obj, 1) ? (Function1) obj : null;
        if (function1 != null) {
            return (g) function1.invoke(value);
        }
        return null;
    }
}
