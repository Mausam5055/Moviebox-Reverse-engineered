package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.reflect.KClass;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b implements kotlinx.serialization.b {
    /* JADX INFO: Access modifiers changed from: private */
    public final Object b(e00.c cVar) {
        return e00.c.a.c(cVar, getDescriptor(), 1, kotlinx.serialization.d.a(this, cVar, cVar.m(getDescriptor(), 0)), null, 8, null);
    }

    public kotlinx.serialization.a c(e00.c decoder, String str) {
        Intrinsics.h(decoder, "decoder");
        return decoder.a().d(e(), str);
    }

    public kotlinx.serialization.g d(e00.f encoder, Object value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        return encoder.a().e(e(), value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [T, java.lang.String] */
    @Override // kotlinx.serialization.a
    public final Object deserialize(e00.e decoder) {
        Object objC;
        Intrinsics.h(decoder, "decoder");
        kotlinx.serialization.descriptors.f descriptor = getDescriptor();
        e00.c cVarB = decoder.b(descriptor);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (cVarB.p()) {
            objC = b(cVarB);
        } else {
            objC = null;
            while (true) {
                int iO = cVarB.o(getDescriptor());
                if (iO == -1) {
                    if (objC != null) {
                        Intrinsics.f(objC, "null cannot be cast to non-null type T of kotlinx.serialization.internal.AbstractPolymorphicSerializer.deserialize$lambda$3");
                        break;
                    }
                    throw new IllegalArgumentException(("Polymorphic value has not been read for class " + ((String) objectRef.element)).toString());
                }
                if (iO == 0) {
                    objectRef.element = cVarB.m(getDescriptor(), iO);
                } else {
                    if (iO != 1) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Invalid index in polymorphic deserialization of ");
                        String str = (String) objectRef.element;
                        if (str == null) {
                            str = "unknown class";
                        }
                        sb2.append(str);
                        sb2.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                        sb2.append(iO);
                        throw new SerializationException(sb2.toString());
                    }
                    T t11 = objectRef.element;
                    if (t11 == 0) {
                        throw new IllegalArgumentException("Cannot read polymorphic value before its type token");
                    }
                    objectRef.element = t11;
                    objC = e00.c.a.c(cVarB, getDescriptor(), iO, kotlinx.serialization.d.a(this, cVarB, (String) t11), null, 8, null);
                }
            }
        }
        cVarB.c(descriptor);
        return objC;
    }

    public abstract KClass e();

    @Override // kotlinx.serialization.g
    public final void serialize(e00.f encoder, Object value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        kotlinx.serialization.g gVarB = kotlinx.serialization.d.b(this, encoder, value);
        kotlinx.serialization.descriptors.f descriptor = getDescriptor();
        e00.d dVarB = encoder.b(descriptor);
        dVarB.y(getDescriptor(), 0, gVarB.getDescriptor().i());
        kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
        Intrinsics.f(gVarB, "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        dVarB.C(descriptor2, 1, gVarB, value);
        dVarB.c(descriptor);
    }
}
