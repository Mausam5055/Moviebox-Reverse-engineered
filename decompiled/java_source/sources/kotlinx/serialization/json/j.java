package kotlinx.serialization.json;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.o0;

/* JADX INFO: loaded from: classes7.dex */
public abstract class j {
    public static final u a(Boolean bool) {
        return bool == null ? JsonNull.f68226c : new o(bool, false);
    }

    public static final u b(Number number) {
        return number == null ? JsonNull.f68226c : new o(number, false);
    }

    public static final u c(String str) {
        return str == null ? JsonNull.f68226c : new o(str, true);
    }

    private static final Void d(h hVar, String str) {
        throw new IllegalArgumentException("Element " + Reflection.b(hVar.getClass()) + " is not a " + str);
    }

    public static final Boolean e(u uVar) {
        Intrinsics.h(uVar, "<this>");
        return o0.d(uVar.a());
    }

    public static final String f(u uVar) {
        Intrinsics.h(uVar, "<this>");
        if (uVar instanceof JsonNull) {
            return null;
        }
        return uVar.a();
    }

    public static final double g(u uVar) {
        Intrinsics.h(uVar, "<this>");
        return Double.parseDouble(uVar.a());
    }

    public static final Double h(u uVar) {
        Intrinsics.h(uVar, "<this>");
        return StringsKt.s(uVar.a());
    }

    public static final float i(u uVar) {
        Intrinsics.h(uVar, "<this>");
        return Float.parseFloat(uVar.a());
    }

    public static final int j(u uVar) {
        Intrinsics.h(uVar, "<this>");
        return Integer.parseInt(uVar.a());
    }

    public static final JsonObject k(h hVar) {
        Intrinsics.h(hVar, "<this>");
        JsonObject jsonObject = hVar instanceof JsonObject ? (JsonObject) hVar : null;
        if (jsonObject != null) {
            return jsonObject;
        }
        d(hVar, "JsonObject");
        throw new KotlinNothingValueException();
    }

    public static final u l(h hVar) {
        Intrinsics.h(hVar, "<this>");
        u uVar = hVar instanceof u ? (u) hVar : null;
        if (uVar != null) {
            return uVar;
        }
        d(hVar, "JsonPrimitive");
        throw new KotlinNothingValueException();
    }

    public static final long m(u uVar) {
        Intrinsics.h(uVar, "<this>");
        return Long.parseLong(uVar.a());
    }

    public static final Long n(u uVar) {
        Intrinsics.h(uVar, "<this>");
        return StringsKt.x(uVar.a());
    }
}
