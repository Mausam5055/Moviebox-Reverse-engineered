package kotlinx.serialization.internal;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class l1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f[] f68166a = new kotlinx.serialization.descriptors.f[0];

    public static final Set a(kotlinx.serialization.descriptors.f fVar) {
        Intrinsics.h(fVar, "<this>");
        if (fVar instanceof n) {
            return ((n) fVar).a();
        }
        HashSet hashSet = new HashSet(fVar.e());
        int iE = fVar.e();
        for (int i11 = 0; i11 < iE; i11++) {
            hashSet.add(fVar.f(i11));
        }
        return hashSet;
    }

    public static final kotlinx.serialization.descriptors.f[] b(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            list = null;
        }
        if (list != null) {
            Object[] array = list.toArray(new kotlinx.serialization.descriptors.f[0]);
            Intrinsics.f(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            kotlinx.serialization.descriptors.f[] fVarArr = (kotlinx.serialization.descriptors.f[]) array;
            if (fVarArr != null) {
                return fVarArr;
            }
        }
        return f68166a;
    }

    public static final KClass c(KType kType) {
        Intrinsics.h(kType, "<this>");
        KClassifier kClassifierC = kType.c();
        if (kClassifierC instanceof KClass) {
            return (KClass) kClassifierC;
        }
        if (!(kClassifierC instanceof KTypeParameter)) {
            throw new IllegalStateException(("Only KClass supported as classifier, got " + kClassifierC).toString());
        }
        throw new IllegalStateException(("Captured type paramerer " + kClassifierC + " from generic non-reified function. Such functionality cannot be supported as " + kClassifierC + " is erased, either specify serializer explicitly or make calling function inline with reified " + kClassifierC).toString());
    }

    public static final Void d(KClass kClass) {
        Intrinsics.h(kClass, "<this>");
        throw new SerializationException("Serializer for class '" + kClass.g() + "' is not found.\nMark the class as @Serializable or provide the serializer explicitly.");
    }
}
