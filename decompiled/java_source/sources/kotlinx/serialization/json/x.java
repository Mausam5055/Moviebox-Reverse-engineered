package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.TreeJsonEncoderKt;

/* JADX INFO: loaded from: classes7.dex */
public abstract class x implements kotlinx.serialization.b {
    private final kotlinx.serialization.b tSerializer;

    public x(kotlinx.serialization.b tSerializer) {
        Intrinsics.h(tSerializer, "tSerializer");
        this.tSerializer = tSerializer;
    }

    @Override // kotlinx.serialization.a
    public final Object deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        g gVarD = k.d(decoder);
        return gVarD.d().d(this.tSerializer, transformDeserialize(gVarD.g()));
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.tSerializer.getDescriptor();
    }

    @Override // kotlinx.serialization.g
    public final void serialize(e00.f encoder, Object value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        l lVarE = k.e(encoder);
        lVarE.A(transformSerialize(TreeJsonEncoderKt.c(lVarE.d(), value, this.tSerializer)));
    }

    protected abstract h transformDeserialize(h hVar);

    protected h transformSerialize(h element) {
        Intrinsics.h(element, "element");
        return element;
    }
}
