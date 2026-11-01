package kotlinx.serialization.internal;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class ObjectSerializer implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f68082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f68083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f68084c;

    public ObjectSerializer(final String serialName, Object objectInstance) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(objectInstance, "objectInstance");
        this.f68082a = objectInstance;
        this.f68083b = CollectionsKt.l();
        this.f68084c = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0<kotlinx.serialization.descriptors.f>() { // from class: kotlinx.serialization.internal.ObjectSerializer$descriptor$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlinx.serialization.descriptors.f invoke() {
                final ObjectSerializer objectSerializer = this;
                return SerialDescriptorsKt.c(serialName, kotlinx.serialization.descriptors.i.d.f68073a, new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() { // from class: kotlinx.serialization.internal.ObjectSerializer$descriptor$2.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((kotlinx.serialization.descriptors.a) obj);
                        return Unit.f67061a;
                    }

                    public final void invoke(kotlinx.serialization.descriptors.a buildSerialDescriptor) {
                        Intrinsics.h(buildSerialDescriptor, "$this$buildSerialDescriptor");
                        buildSerialDescriptor.h(objectSerializer.f68083b);
                    }
                });
            }
        });
    }

    @Override // kotlinx.serialization.a
    public Object deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        kotlinx.serialization.descriptors.f descriptor = getDescriptor();
        e00.c cVarB = decoder.b(descriptor);
        int iO = cVarB.o(getDescriptor());
        if (iO == -1) {
            Unit unit = Unit.f67061a;
            cVarB.c(descriptor);
            return this.f68082a;
        }
        throw new SerializationException("Unexpected index " + iO);
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return (kotlinx.serialization.descriptors.f) this.f68084c.getValue();
    }

    @Override // kotlinx.serialization.g
    public void serialize(e00.f encoder, Object value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        encoder.b(getDescriptor()).c(getDescriptor());
    }
}
