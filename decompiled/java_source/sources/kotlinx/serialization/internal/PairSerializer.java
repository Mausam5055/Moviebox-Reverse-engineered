package kotlinx.serialization.internal;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class PairSerializer extends t0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.f f68085c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PairSerializer(final kotlinx.serialization.b keySerializer, final kotlinx.serialization.b valueSerializer) {
        super(keySerializer, valueSerializer, null);
        Intrinsics.h(keySerializer, "keySerializer");
        Intrinsics.h(valueSerializer, "valueSerializer");
        this.f68085c = SerialDescriptorsKt.b("kotlin.Pair", new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() { // from class: kotlinx.serialization.internal.PairSerializer$descriptor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "first", keySerializer.getDescriptor(), null, false, 12, null);
                kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "second", valueSerializer.getDescriptor(), null, false, 12, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.t0
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Object a(Pair pair) {
        Intrinsics.h(pair, "<this>");
        return pair.getFirst();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.t0
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Object b(Pair pair) {
        Intrinsics.h(pair, "<this>");
        return pair.getSecond();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.t0
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Pair c(Object obj, Object obj2) {
        return TuplesKt.a(obj, obj2);
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f68085c;
    }
}
