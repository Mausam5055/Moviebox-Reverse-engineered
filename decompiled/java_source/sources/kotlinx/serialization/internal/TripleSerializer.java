package kotlinx.serialization.internal;

import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class TripleSerializer implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.serialization.b f68100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.serialization.b f68101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlinx.serialization.b f68102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.f f68103d;

    public TripleSerializer(kotlinx.serialization.b aSerializer, kotlinx.serialization.b bSerializer, kotlinx.serialization.b cSerializer) {
        Intrinsics.h(aSerializer, "aSerializer");
        Intrinsics.h(bSerializer, "bSerializer");
        Intrinsics.h(cSerializer, "cSerializer");
        this.f68100a = aSerializer;
        this.f68101b = bSerializer;
        this.f68102c = cSerializer;
        this.f68103d = SerialDescriptorsKt.b("kotlin.Triple", new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() { // from class: kotlinx.serialization.internal.TripleSerializer$descriptor$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((kotlinx.serialization.descriptors.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(kotlinx.serialization.descriptors.a buildClassSerialDescriptor) {
                Intrinsics.h(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
                kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "first", this.this$0.f68100a.getDescriptor(), null, false, 12, null);
                kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "second", this.this$0.f68101b.getDescriptor(), null, false, 12, null);
                kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "third", this.this$0.f68102c.getDescriptor(), null, false, 12, null);
            }
        });
    }

    private final Triple d(e00.c cVar) {
        Object objC = e00.c.a.c(cVar, getDescriptor(), 0, this.f68100a, null, 8, null);
        Object objC2 = e00.c.a.c(cVar, getDescriptor(), 1, this.f68101b, null, 8, null);
        Object objC3 = e00.c.a.c(cVar, getDescriptor(), 2, this.f68102c, null, 8, null);
        cVar.c(getDescriptor());
        return new Triple(objC, objC2, objC3);
    }

    private final Triple e(e00.c cVar) {
        Object objC = d2.f68125a;
        Object objC2 = d2.f68125a;
        Object objC3 = d2.f68125a;
        while (true) {
            int iO = cVar.o(getDescriptor());
            if (iO == -1) {
                cVar.c(getDescriptor());
                if (objC == d2.f68125a) {
                    throw new SerializationException("Element 'first' is missing");
                }
                if (objC2 == d2.f68125a) {
                    throw new SerializationException("Element 'second' is missing");
                }
                if (objC3 != d2.f68125a) {
                    return new Triple(objC, objC2, objC3);
                }
                throw new SerializationException("Element 'third' is missing");
            }
            if (iO == 0) {
                objC = e00.c.a.c(cVar, getDescriptor(), 0, this.f68100a, null, 8, null);
            } else if (iO == 1) {
                objC2 = e00.c.a.c(cVar, getDescriptor(), 1, this.f68101b, null, 8, null);
            } else {
                if (iO != 2) {
                    throw new SerializationException("Unexpected index " + iO);
                }
                objC3 = e00.c.a.c(cVar, getDescriptor(), 2, this.f68102c, null, 8, null);
            }
        }
    }

    @Override // kotlinx.serialization.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Triple deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        e00.c cVarB = decoder.b(getDescriptor());
        return cVarB.p() ? d(cVarB) : e(cVarB);
    }

    @Override // kotlinx.serialization.g
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void serialize(e00.f encoder, Triple value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        e00.d dVarB = encoder.b(getDescriptor());
        dVarB.C(getDescriptor(), 0, this.f68100a, value.getFirst());
        dVarB.C(getDescriptor(), 1, this.f68101b, value.getSecond());
        dVarB.C(getDescriptor(), 2, this.f68102c, value.getThird());
        dVarB.c(getDescriptor());
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f68103d;
    }
}
