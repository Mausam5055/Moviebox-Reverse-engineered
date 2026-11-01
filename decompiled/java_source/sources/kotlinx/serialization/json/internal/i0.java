package kotlinx.serialization.json.internal;

import java.lang.annotation.Annotation;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes7.dex */
public abstract class i0 {
    public static final void b(kotlinx.serialization.descriptors.h kind) {
        Intrinsics.h(kind, "kind");
        if (kind instanceof kotlinx.serialization.descriptors.h.b) {
            throw new IllegalStateException("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
        }
        if (kind instanceof kotlinx.serialization.descriptors.e) {
            throw new IllegalStateException("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
        }
        if (kind instanceof kotlinx.serialization.descriptors.d) {
            throw new IllegalStateException("Actual serializer for polymorphic cannot be polymorphic itself");
        }
    }

    public static final String c(kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.json.a json) {
        Intrinsics.h(fVar, "<this>");
        Intrinsics.h(json, "json");
        for (Annotation annotation : fVar.getAnnotations()) {
            if (annotation instanceof kotlinx.serialization.json.e) {
                return ((kotlinx.serialization.json.e) annotation).discriminator();
            }
        }
        return json.e().c();
    }

    public static final Object d(kotlinx.serialization.json.g gVar, kotlinx.serialization.a deserializer) {
        kotlinx.serialization.json.u uVarL;
        Intrinsics.h(gVar, "<this>");
        Intrinsics.h(deserializer, "deserializer");
        if (!(deserializer instanceof kotlinx.serialization.internal.b) || gVar.d().e().k()) {
            return deserializer.deserialize(gVar);
        }
        String strC = c(deserializer.getDescriptor(), gVar.d());
        kotlinx.serialization.json.h hVarG = gVar.g();
        kotlinx.serialization.descriptors.f descriptor = deserializer.getDescriptor();
        if (hVarG instanceof JsonObject) {
            JsonObject jsonObject = (JsonObject) hVarG;
            kotlinx.serialization.json.h hVar = (kotlinx.serialization.json.h) jsonObject.get(strC);
            String strA = (hVar == null || (uVarL = kotlinx.serialization.json.j.l(hVar)) == null) ? null : uVarL.a();
            kotlinx.serialization.a aVarC = ((kotlinx.serialization.internal.b) deserializer).c(gVar, strA);
            if (aVarC != null) {
                return p0.b(gVar.d(), strC, jsonObject, aVarC);
            }
            e(strA, jsonObject);
            throw new KotlinNothingValueException();
        }
        throw w.e(-1, "Expected " + Reflection.b(JsonObject.class) + " as the serialized body of " + descriptor.i() + ", but had " + Reflection.b(hVarG.getClass()));
    }

    public static final Void e(String str, JsonObject jsonTree) {
        String str2;
        Intrinsics.h(jsonTree, "jsonTree");
        if (str == null) {
            str2 = "missing class discriminator ('null')";
        } else {
            str2 = "class discriminator '" + str + '\'';
        }
        throw w.f(-1, "Polymorphic serializer was not found for " + str2, jsonTree.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(kotlinx.serialization.g gVar, kotlinx.serialization.g gVar2, String str) {
    }
}
