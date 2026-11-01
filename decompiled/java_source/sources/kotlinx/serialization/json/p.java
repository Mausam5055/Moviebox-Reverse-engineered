package kotlinx.serialization.json;

import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

/* JADX INFO: loaded from: classes7.dex */
final class p implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f68355a = new p();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f f68356b = SerialDescriptorsKt.a("kotlinx.serialization.json.JsonLiteral", kotlinx.serialization.descriptors.e.i.f68061a);

    private p() {
    }

    @Override // kotlinx.serialization.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public o deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        h hVarG = k.d(decoder).g();
        if (hVarG instanceof o) {
            return (o) hVarG;
        }
        throw kotlinx.serialization.json.internal.w.f(-1, "Unexpected JSON element, expected JsonLiteral, had " + Reflection.b(hVarG.getClass()), hVarG.toString());
    }

    @Override // kotlinx.serialization.g
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(e00.f encoder, o value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        k.h(encoder);
        if (value.c()) {
            encoder.G(value.a());
            return;
        }
        Long lN = j.n(value);
        if (lN != null) {
            encoder.m(lN.longValue());
            return;
        }
        ULong uLongH = UStringsKt.h(value.a());
        if (uLongH != null) {
            encoder.l(d00.a.v(ULong.INSTANCE).getDescriptor()).m(uLongH.getData());
            return;
        }
        Double dH = j.h(value);
        if (dH != null) {
            encoder.g(dH.doubleValue());
            return;
        }
        Boolean boolE = j.e(value);
        if (boolE != null) {
            encoder.r(boolE.booleanValue());
        } else {
            encoder.G(value.a());
        }
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f68356b;
    }
}
