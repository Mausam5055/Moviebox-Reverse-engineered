package kotlinx.serialization;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.internal.l1;

/* JADX INFO: loaded from: classes7.dex */
public final class ContextualSerializer implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KClass f68018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f68019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f68020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.f f68021d;

    public ContextualSerializer(KClass serializableClass, b bVar, b[] typeArgumentsSerializers) {
        Intrinsics.h(serializableClass, "serializableClass");
        Intrinsics.h(typeArgumentsSerializers, "typeArgumentsSerializers");
        this.f68018a = serializableClass;
        this.f68019b = bVar;
        this.f68020c = ArraysKt.i(typeArgumentsSerializers);
        this.f68021d = kotlinx.serialization.descriptors.b.c(SerialDescriptorsKt.c("kotlinx.serialization.ContextualSerializer", kotlinx.serialization.descriptors.h.a.f68068a, new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() { // from class: kotlinx.serialization.ContextualSerializer$descriptor$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((kotlinx.serialization.descriptors.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(kotlinx.serialization.descriptors.a buildSerialDescriptor) {
                kotlinx.serialization.descriptors.f descriptor;
                Intrinsics.h(buildSerialDescriptor, "$this$buildSerialDescriptor");
                b bVar2 = this.this$0.f68019b;
                List annotations = (bVar2 == null || (descriptor = bVar2.getDescriptor()) == null) ? null : descriptor.getAnnotations();
                if (annotations == null) {
                    annotations = CollectionsKt.l();
                }
                buildSerialDescriptor.h(annotations);
            }
        }), serializableClass);
    }

    private final b b(f00.c cVar) {
        b bVarB = cVar.b(this.f68018a, this.f68020c);
        if (bVarB != null || (bVarB = this.f68019b) != null) {
            return bVarB;
        }
        l1.d(this.f68018a);
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.a
    public Object deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return decoder.G(b(decoder.a()));
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f68021d;
    }

    @Override // kotlinx.serialization.g
    public void serialize(e00.f encoder, Object value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        encoder.e(b(encoder.a()), value);
    }
}
