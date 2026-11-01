package q1;

import androidx.p009lifecycle.t0;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f73046a = new d();

    private d() {
    }

    public final t0 a(Class modelClass) throws InvocationTargetException {
        Intrinsics.h(modelClass, "modelClass");
        try {
            Object objNewInstance = modelClass.getDeclaredConstructor(null).newInstance(null);
            Intrinsics.g(objNewInstance, "{\n            modelClass…).newInstance()\n        }");
            return (t0) objNewInstance;
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e11);
        } catch (InstantiationException e12) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e12);
        } catch (NoSuchMethodException e13) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e13);
        }
    }
}
