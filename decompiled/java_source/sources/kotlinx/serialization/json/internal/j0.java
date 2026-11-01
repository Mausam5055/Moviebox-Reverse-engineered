package kotlinx.serialization.json.internal;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes7.dex */
public final class j0 implements f00.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f68315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f68316b;

    public j0(boolean z10, String discriminator) {
        Intrinsics.h(discriminator, "discriminator");
        this.f68315a = z10;
        this.f68316b = discriminator;
    }

    private final void d(kotlinx.serialization.descriptors.f fVar, KClass kClass) {
        int iE = fVar.e();
        for (int i11 = 0; i11 < iE; i11++) {
            String strF = fVar.f(i11);
            if (Intrinsics.c(strF, this.f68316b)) {
                throw new IllegalArgumentException("Polymorphic serializer for " + kClass + " has property '" + strF + "' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism");
            }
        }
    }

    private final void e(kotlinx.serialization.descriptors.f fVar, KClass kClass) {
        kotlinx.serialization.descriptors.h hVarD = fVar.d();
        if ((hVarD instanceof kotlinx.serialization.descriptors.d) || Intrinsics.c(hVarD, kotlinx.serialization.descriptors.h.a.f68068a)) {
            throw new IllegalArgumentException("Serializer for " + kClass.g() + " can't be registered as a subclass for polymorphic serialization because its kind " + hVarD + " is not concrete. To work with multiple hierarchies, register it as a base class.");
        }
        if (this.f68315a) {
            return;
        }
        if (Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.b.f68071a) || Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.c.f68072a) || (hVarD instanceof kotlinx.serialization.descriptors.e) || (hVarD instanceof kotlinx.serialization.descriptors.h.b)) {
            throw new IllegalArgumentException("Serializer for " + kClass.g() + " of kind " + hVarD + " cannot be serialized polymorphically with class discriminator.");
        }
    }

    @Override // f00.e
    public void a(KClass baseClass, KClass actualClass, kotlinx.serialization.b actualSerializer) {
        Intrinsics.h(baseClass, "baseClass");
        Intrinsics.h(actualClass, "actualClass");
        Intrinsics.h(actualSerializer, "actualSerializer");
        kotlinx.serialization.descriptors.f descriptor = actualSerializer.getDescriptor();
        e(descriptor, actualClass);
        if (this.f68315a) {
            return;
        }
        d(descriptor, actualClass);
    }

    @Override // f00.e
    public void b(KClass baseClass, Function1 defaultDeserializerProvider) {
        Intrinsics.h(baseClass, "baseClass");
        Intrinsics.h(defaultDeserializerProvider, "defaultDeserializerProvider");
    }

    @Override // f00.e
    public void c(KClass baseClass, Function1 defaultSerializerProvider) {
        Intrinsics.h(baseClass, "baseClass");
        Intrinsics.h(defaultSerializerProvider, "defaultSerializerProvider");
    }
}
