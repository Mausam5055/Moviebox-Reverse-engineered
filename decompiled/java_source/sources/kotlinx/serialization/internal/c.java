package kotlinx.serialization.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c {
    public static final Void a(String str, KClass baseClass) {
        String str2;
        Intrinsics.h(baseClass, "baseClass");
        String str3 = "in the scope of '" + baseClass.g() + '\'';
        if (str == null) {
            str2 = "Class discriminator was missing and no default polymorphic serializers were registered " + str3;
        } else {
            str2 = "Class '" + str + "' is not registered for polymorphic serialization " + str3 + ".\nMark the base class as 'sealed' or register the serializer explicitly.";
        }
        throw new SerializationException(str2);
    }

    public static final Void b(KClass subClass, KClass baseClass) {
        Intrinsics.h(subClass, "subClass");
        Intrinsics.h(baseClass, "baseClass");
        String strG = subClass.g();
        if (strG == null) {
            strG = String.valueOf(subClass);
        }
        a(strG, baseClass);
        throw new KotlinNothingValueException();
    }
}
