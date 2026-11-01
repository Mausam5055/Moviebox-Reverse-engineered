package kotlinx.serialization;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d {
    public static final a a(kotlinx.serialization.internal.b bVar, e00.c decoder, String str) {
        Intrinsics.h(bVar, "<this>");
        Intrinsics.h(decoder, "decoder");
        a aVarC = bVar.c(decoder, str);
        if (aVarC != null) {
            return aVarC;
        }
        kotlinx.serialization.internal.c.a(str, bVar.e());
        throw new KotlinNothingValueException();
    }

    public static final g b(kotlinx.serialization.internal.b bVar, e00.f encoder, Object value) {
        Intrinsics.h(bVar, "<this>");
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        g gVarD = bVar.d(encoder, value);
        if (gVarD != null) {
            return gVarD;
        }
        kotlinx.serialization.internal.c.b(Reflection.b(value.getClass()), bVar.e());
        throw new KotlinNothingValueException();
    }
}
