package androidx.p009lifecycle;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f9646a = CollectionsKt.o(Application.class, l0.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List f9647b = CollectionsKt.e(l0.class);

    public static final Constructor c(Class modelClass, List signature) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(signature, "signature");
        Constructor<?>[] constructors = modelClass.getConstructors();
        Intrinsics.g(constructors, "modelClass.constructors");
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            Intrinsics.g(parameterTypes, "constructor.parameterTypes");
            List listK0 = ArraysKt.K0(parameterTypes);
            if (Intrinsics.c(signature, listK0)) {
                Intrinsics.f(constructor, "null cannot be cast to non-null type java.lang.reflect.Constructor<T of androidx.lifecycle.SavedStateViewModelFactoryKt.findMatchingConstructor>");
                return constructor;
            }
            if (signature.size() == listK0.size() && listK0.containsAll(signature)) {
                throw new UnsupportedOperationException("Class " + modelClass.getSimpleName() + " must have parameters in the proper order: " + signature);
            }
        }
        return null;
    }

    public static final t0 d(Class modelClass, Constructor constructor, Object... params) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(constructor, "constructor");
        Intrinsics.h(params, "params");
        try {
            return (t0) constructor.newInstance(Arrays.copyOf(params, params.length));
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("Failed to access " + modelClass, e11);
        } catch (InstantiationException e12) {
            throw new RuntimeException("A " + modelClass + " cannot be instantiated.", e12);
        } catch (InvocationTargetException e13) {
            throw new RuntimeException("An exception happened in constructor of " + modelClass, e13.getCause());
        }
    }
}
